package com.android.dx.ssa.back;

import com.android.dx.rop.code.CstInsn;
import com.android.dx.rop.code.LocalItem;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.ssa.InterferenceRegisterMapper;
import com.android.dx.ssa.NormalSsaInsn;
import com.android.dx.ssa.Optimizer;
import com.android.dx.ssa.PhiInsn;
import com.android.dx.ssa.RegisterMapper;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.IntIterator;
import com.android.dx.util.IntSet;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes7.dex */
public class FirstFitLocalCombiningAllocator extends RegisterAllocator {
    private static final boolean DEBUG = false;
    private final ArrayList<NormalSsaInsn> invokeRangeInsns;
    private final Map<LocalItem, ArrayList<RegisterSpec>> localVariables;
    private final InterferenceRegisterMapper mapper;
    private final boolean minimizeRegisters;
    private final ArrayList<NormalSsaInsn> moveResultPseudoInsns;
    private final int paramRangeEnd;
    private final ArrayList<PhiInsn> phiInsns;
    private final BitSet reservedRopRegs;
    private final BitSet ssaRegsMapped;
    private final BitSet usedRopRegs;

    private enum Alignment {
        EVEN { // from class: com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment.1
            @Override // com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment
            int nextClearBit(BitSet bitSet, int i10) {
                int iNextClearBit = bitSet.nextClearBit(i10);
                while (!FirstFitLocalCombiningAllocator.isEven(iNextClearBit)) {
                    iNextClearBit = bitSet.nextClearBit(iNextClearBit + 1);
                }
                return iNextClearBit;
            }
        },
        ODD { // from class: com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment.2
            @Override // com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment
            int nextClearBit(BitSet bitSet, int i10) {
                int iNextClearBit = bitSet.nextClearBit(i10);
                while (FirstFitLocalCombiningAllocator.isEven(iNextClearBit)) {
                    iNextClearBit = bitSet.nextClearBit(iNextClearBit + 1);
                }
                return iNextClearBit;
            }
        },
        UNSPECIFIED { // from class: com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment.3
            @Override // com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.Alignment
            int nextClearBit(BitSet bitSet, int i10) {
                return bitSet.nextClearBit(i10);
            }
        };

        abstract int nextClearBit(BitSet bitSet, int i10);
    }

    private static class Multiset {
        private final int[] count;
        private final int[] reg;
        private int size = 0;

        public Multiset(int i10) {
            this.reg = new int[i10];
            this.count = new int[i10];
        }

        public void add(int i10) {
            int i11 = 0;
            while (true) {
                int i12 = this.size;
                if (i11 >= i12) {
                    this.reg[i12] = i10;
                    this.count[i12] = 1;
                    this.size = i12 + 1;
                    return;
                } else {
                    if (this.reg[i11] == i10) {
                        int[] iArr = this.count;
                        iArr[i11] = iArr[i11] + 1;
                        return;
                    }
                    i11++;
                }
            }
        }

        public int getAndRemoveHighestCount() {
            int i10 = -1;
            int i11 = -1;
            int i12 = 0;
            for (int i13 = 0; i13 < this.size; i13++) {
                int i14 = this.count[i13];
                if (i12 < i14) {
                    i11 = this.reg[i13];
                    i10 = i13;
                    i12 = i14;
                }
            }
            this.count[i10] = 0;
            return i11;
        }

        public int getSize() {
            return this.size;
        }
    }

    public FirstFitLocalCombiningAllocator(SsaMethod ssaMethod, InterferenceGraph interferenceGraph, boolean z10) {
        super(ssaMethod, interferenceGraph);
        this.ssaRegsMapped = new BitSet(ssaMethod.getRegCount());
        this.mapper = new InterferenceRegisterMapper(interferenceGraph, ssaMethod.getRegCount());
        this.minimizeRegisters = z10;
        int paramWidth = ssaMethod.getParamWidth();
        this.paramRangeEnd = paramWidth;
        BitSet bitSet = new BitSet(paramWidth * 2);
        this.reservedRopRegs = bitSet;
        bitSet.set(0, paramWidth);
        this.usedRopRegs = new BitSet(paramWidth * 2);
        this.localVariables = new TreeMap();
        this.moveResultPseudoInsns = new ArrayList<>();
        this.invokeRangeInsns = new ArrayList<>();
        this.phiInsns = new ArrayList<>();
    }

    private void addMapping(RegisterSpec registerSpec, int i10) {
        int reg = registerSpec.getReg();
        if (this.ssaRegsMapped.get(reg) || !canMapReg(registerSpec, i10)) {
            throw new RuntimeException("attempt to add invalid register mapping");
        }
        int category = registerSpec.getCategory();
        this.mapper.addMapping(registerSpec.getReg(), i10, category);
        this.ssaRegsMapped.set(reg);
        this.usedRopRegs.set(i10, category + i10);
    }

    private void adjustAndMapSourceRangeRange(NormalSsaInsn normalSsaInsn) {
        int iFindRangeAndAdjust = findRangeAndAdjust(normalSsaInsn);
        RegisterSpecList sources = normalSsaInsn.getSources();
        int size = sources.size();
        int i10 = 0;
        while (i10 < size) {
            RegisterSpec registerSpec = sources.get(i10);
            int reg = registerSpec.getReg();
            int category = registerSpec.getCategory();
            int i11 = iFindRangeAndAdjust + category;
            if (!this.ssaRegsMapped.get(reg)) {
                LocalItem localItemForReg = getLocalItemForReg(reg);
                addMapping(registerSpec, iFindRangeAndAdjust);
                if (localItemForReg != null) {
                    markReserved(iFindRangeAndAdjust, category);
                    ArrayList<RegisterSpec> arrayList = this.localVariables.get(localItemForReg);
                    int size2 = arrayList.size();
                    for (int i12 = 0; i12 < size2; i12++) {
                        RegisterSpec registerSpec2 = arrayList.get(i12);
                        if (-1 == sources.indexOfRegister(registerSpec2.getReg())) {
                            tryMapReg(registerSpec2, iFindRangeAndAdjust, category);
                        }
                    }
                }
            }
            i10++;
            iFindRangeAndAdjust = i11;
        }
    }

    private void analyzeInstructions() {
        this.ssaMeth.forEachInsn(new SsaInsn.Visitor() { // from class: com.android.dx.ssa.back.FirstFitLocalCombiningAllocator.1
            private void processInsn(SsaInsn ssaInsn) {
                RegisterSpec localAssignment = ssaInsn.getLocalAssignment();
                if (localAssignment != null) {
                    LocalItem localItem = localAssignment.getLocalItem();
                    ArrayList arrayList = (ArrayList) FirstFitLocalCombiningAllocator.this.localVariables.get(localItem);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        FirstFitLocalCombiningAllocator.this.localVariables.put(localItem, arrayList);
                    }
                    arrayList.add(localAssignment);
                }
                if (!(ssaInsn instanceof NormalSsaInsn)) {
                    if (ssaInsn instanceof PhiInsn) {
                        FirstFitLocalCombiningAllocator.this.phiInsns.add((PhiInsn) ssaInsn);
                    }
                } else if (ssaInsn.getOpcode().getOpcode() == 56) {
                    FirstFitLocalCombiningAllocator.this.moveResultPseudoInsns.add((NormalSsaInsn) ssaInsn);
                } else if (Optimizer.getAdvice().requiresSourcesInOrder(ssaInsn.getOriginalRopInsn().getOpcode(), ssaInsn.getSources())) {
                    FirstFitLocalCombiningAllocator.this.invokeRangeInsns.add((NormalSsaInsn) ssaInsn);
                }
            }

            @Override // com.android.dx.ssa.SsaInsn.Visitor
            public void visitMoveInsn(NormalSsaInsn normalSsaInsn) {
                processInsn(normalSsaInsn);
            }

            @Override // com.android.dx.ssa.SsaInsn.Visitor
            public void visitNonMoveInsn(NormalSsaInsn normalSsaInsn) {
                processInsn(normalSsaInsn);
            }

            @Override // com.android.dx.ssa.SsaInsn.Visitor
            public void visitPhiInsn(PhiInsn phiInsn) {
                processInsn(phiInsn);
            }
        });
    }

    private boolean canMapReg(RegisterSpec registerSpec, int i10) {
        return (spansParamRange(i10, registerSpec.getCategory()) || this.mapper.interferes(registerSpec, i10)) ? false : true;
    }

    private boolean canMapRegs(ArrayList<RegisterSpec> arrayList, int i10) {
        for (RegisterSpec registerSpec : arrayList) {
            if (!this.ssaRegsMapped.get(registerSpec.getReg()) && !canMapReg(registerSpec, i10)) {
                return false;
            }
        }
        return true;
    }

    private int findAnyFittingRange(NormalSsaInsn normalSsaInsn, int i10, int[] iArr, BitSet bitSet) {
        Alignment alignment = Alignment.UNSPECIFIED;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 : iArr) {
            if (i14 == 2) {
                if (isEven(i13)) {
                    i12++;
                } else {
                    i11++;
                }
                i13 += 2;
            } else {
                i13++;
            }
        }
        if (i11 > i12) {
            alignment = isEven(this.paramRangeEnd) ? Alignment.ODD : Alignment.EVEN;
        } else if (i12 > 0) {
            alignment = isEven(this.paramRangeEnd) ? Alignment.EVEN : Alignment.ODD;
        }
        int i15 = this.paramRangeEnd;
        while (true) {
            int iFindNextUnreservedRopReg = findNextUnreservedRopReg(i15, i10, alignment);
            if (fitPlanForRange(iFindNextUnreservedRopReg, normalSsaInsn, iArr, bitSet) >= 0) {
                return iFindNextUnreservedRopReg;
            }
            i15 = iFindNextUnreservedRopReg + 1;
            bitSet.clear();
        }
    }

    private int findNextUnreservedRopReg(int i10, int i11) {
        return findNextUnreservedRopReg(i10, i11, getAlignment(i11));
    }

    private int findRangeAndAdjust(NormalSsaInsn normalSsaInsn) {
        int iOldToNew;
        BitSet bitSet;
        int iFitPlanForRange;
        RegisterSpecList sources = normalSsaInsn.getSources();
        int size = sources.size();
        int[] iArr = new int[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            int category = sources.get(i11).getCategory();
            iArr[i11] = category;
            i10 += category;
        }
        int i12 = Integer.MIN_VALUE;
        BitSet bitSet2 = null;
        int i13 = 0;
        int iFindAnyFittingRange = -1;
        for (int i14 = 0; i14 < size; i14++) {
            int reg = sources.get(i14).getReg();
            if (i14 != 0) {
                i13 -= iArr[i14 - 1];
            }
            if (this.ssaRegsMapped.get(reg) && (iOldToNew = this.mapper.oldToNew(reg) + i13) >= 0 && !spansParamRange(iOldToNew, i10) && (iFitPlanForRange = fitPlanForRange(iOldToNew, normalSsaInsn, iArr, (bitSet = new BitSet(size)))) >= 0) {
                int iCardinality = iFitPlanForRange - bitSet.cardinality();
                if (iCardinality > i12) {
                    i12 = iCardinality;
                    iFindAnyFittingRange = iOldToNew;
                    bitSet2 = bitSet;
                }
                if (iFitPlanForRange == i10) {
                    break;
                }
            }
        }
        if (iFindAnyFittingRange == -1) {
            bitSet2 = new BitSet(size);
            iFindAnyFittingRange = findAnyFittingRange(normalSsaInsn, i10, iArr, bitSet2);
        }
        for (int iNextSetBit = bitSet2.nextSetBit(0); iNextSetBit >= 0; iNextSetBit = bitSet2.nextSetBit(iNextSetBit + 1)) {
            normalSsaInsn.changeOneSource(iNextSetBit, insertMoveBefore(normalSsaInsn, sources.get(iNextSetBit)));
        }
        return iFindAnyFittingRange;
    }

    private int findRopRegForLocal(int i10, int i11) {
        Alignment alignment = getAlignment(i11);
        int iNextClearBit = alignment.nextClearBit(this.usedRopRegs, i10);
        while (true) {
            int i12 = 1;
            while (i12 < i11 && !this.usedRopRegs.get(iNextClearBit + i12)) {
                i12++;
            }
            if (i12 == i11) {
                return iNextClearBit;
            }
            iNextClearBit = alignment.nextClearBit(this.usedRopRegs, iNextClearBit + i12);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0044  */
    private int fitPlanForRange(int i10, NormalSsaInsn normalSsaInsn, int[] iArr, BitSet bitSet) {
        RegisterSpecList sources = normalSsaInsn.getSources();
        int size = sources.size();
        RegisterSpecList registerSpecListSsaSetToSpecs = ssaSetToSpecs(normalSsaInsn.getBlock().getLiveOutRegs());
        BitSet bitSet2 = new BitSet(this.ssaMeth.getRegCount());
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            RegisterSpec registerSpec = sources.get(i12);
            int reg = registerSpec.getReg();
            int i13 = iArr[i12];
            if (i12 != 0) {
                i10 += iArr[i12 - 1];
            }
            if (!this.ssaRegsMapped.get(reg) || this.mapper.oldToNew(reg) != i10) {
                if (!rangeContainsReserved(i10, i13)) {
                    if (!this.ssaRegsMapped.get(reg) && canMapReg(registerSpec, i10) && !bitSet2.get(reg)) {
                        i11 += i13;
                    } else if (!this.mapper.areAnyPinned(registerSpecListSsaSetToSpecs, i10, i13) && !this.mapper.areAnyPinned(sources, i10, i13)) {
                        bitSet.set(i12);
                    }
                }
                return -1;
            }
            i11 += i13;
            bitSet2.set(reg);
        }
        return i11;
    }

    private Alignment getAlignment(int i10) {
        Alignment alignment = Alignment.UNSPECIFIED;
        if (i10 == 2) {
            return isEven(this.paramRangeEnd) ? Alignment.EVEN : Alignment.ODD;
        }
        return alignment;
    }

    private LocalItem getLocalItemForReg(int i10) {
        for (Map.Entry<LocalItem, ArrayList<RegisterSpec>> entry : this.localVariables.entrySet()) {
            Iterator<RegisterSpec> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                if (it2.next().getReg() == i10) {
                    return entry.getKey();
                }
            }
        }
        return null;
    }

    private int getParameterIndexForReg(int i10) {
        Rop opcode;
        SsaInsn definitionForRegister = this.ssaMeth.getDefinitionForRegister(i10);
        if (definitionForRegister == null || (opcode = definitionForRegister.getOpcode()) == null || opcode.getOpcode() != 3) {
            return -1;
        }
        return ((CstInteger) ((CstInsn) definitionForRegister.getOriginalRopInsn()).getConstant()).getValue();
    }

    private void handleCheckCastResults() {
        for (NormalSsaInsn normalSsaInsn : this.moveResultPseudoInsns) {
            RegisterSpec result = normalSsaInsn.getResult();
            int reg = result.getReg();
            BitSet predecessors = normalSsaInsn.getBlock().getPredecessors();
            if (predecessors.cardinality() == 1) {
                ArrayList<SsaInsn> insns = this.ssaMeth.getBlocks().get(predecessors.nextSetBit(0)).getInsns();
                SsaInsn ssaInsn = insns.get(insns.size() - 1);
                if (ssaInsn.getOpcode().getOpcode() == 43) {
                    RegisterSpec registerSpec = ssaInsn.getSources().get(0);
                    int reg2 = registerSpec.getReg();
                    int category = registerSpec.getCategory();
                    boolean zTryMapReg = this.ssaRegsMapped.get(reg);
                    boolean zTryMapReg2 = this.ssaRegsMapped.get(reg2);
                    if ((!zTryMapReg2) & zTryMapReg) {
                        zTryMapReg2 = tryMapReg(registerSpec, this.mapper.oldToNew(reg), category);
                    }
                    if ((!zTryMapReg) & zTryMapReg2) {
                        zTryMapReg = tryMapReg(result, this.mapper.oldToNew(reg2), category);
                    }
                    if (!zTryMapReg || !zTryMapReg2) {
                        int iFindNextUnreservedRopReg = findNextUnreservedRopReg(this.paramRangeEnd, category);
                        ArrayList<RegisterSpec> arrayList = new ArrayList<>(2);
                        arrayList.add(result);
                        arrayList.add(registerSpec);
                        while (!tryMapRegs(arrayList, iFindNextUnreservedRopReg, category, false)) {
                            iFindNextUnreservedRopReg = findNextUnreservedRopReg(iFindNextUnreservedRopReg + 1, category);
                        }
                    }
                    boolean z10 = ssaInsn.getOriginalRopInsn().getCatches().size() != 0;
                    int iOldToNew = this.mapper.oldToNew(reg);
                    if (iOldToNew != this.mapper.oldToNew(reg2) && !z10) {
                        ((NormalSsaInsn) ssaInsn).changeOneSource(0, insertMoveBefore(ssaInsn, registerSpec));
                        addMapping(ssaInsn.getSources().get(0), iOldToNew);
                    }
                }
            }
        }
    }

    private void handleInvokeRangeInsns() {
        Iterator<NormalSsaInsn> it2 = this.invokeRangeInsns.iterator();
        while (it2.hasNext()) {
            adjustAndMapSourceRangeRange(it2.next());
        }
    }

    private void handleLocalAssociatedOther() {
        for (ArrayList<RegisterSpec> arrayList : this.localVariables.values()) {
            int i10 = this.paramRangeEnd;
            boolean zTryMapRegs = false;
            do {
                int size = arrayList.size();
                int i11 = 1;
                for (int i12 = 0; i12 < size; i12++) {
                    RegisterSpec registerSpec = arrayList.get(i12);
                    int category = registerSpec.getCategory();
                    if (!this.ssaRegsMapped.get(registerSpec.getReg()) && category > i11) {
                        i11 = category;
                    }
                }
                int iFindRopRegForLocal = findRopRegForLocal(i10, i11);
                if (canMapRegs(arrayList, iFindRopRegForLocal)) {
                    zTryMapRegs = tryMapRegs(arrayList, iFindRopRegForLocal, i11, true);
                }
                i10 = iFindRopRegForLocal + 1;
            } while (!zTryMapRegs);
        }
    }

    private void handleLocalAssociatedParams() {
        for (ArrayList<RegisterSpec> arrayList : this.localVariables.values()) {
            int size = arrayList.size();
            int category = 0;
            int i10 = -1;
            int i11 = 0;
            while (i11 < size) {
                RegisterSpec registerSpec = arrayList.get(i11);
                int parameterIndexForReg = getParameterIndexForReg(registerSpec.getReg());
                if (parameterIndexForReg >= 0) {
                    category = registerSpec.getCategory();
                    addMapping(registerSpec, parameterIndexForReg);
                    i10 = parameterIndexForReg;
                    break;
                }
                i11++;
                i10 = parameterIndexForReg;
            }
            if (i10 >= 0) {
                tryMapRegs(arrayList, i10, category, true);
            }
        }
    }

    private void handleNormalUnassociated() {
        RegisterSpec definitionSpecForSsaReg;
        int regCount = this.ssaMeth.getRegCount();
        for (int i10 = 0; i10 < regCount; i10++) {
            if (!this.ssaRegsMapped.get(i10) && (definitionSpecForSsaReg = getDefinitionSpecForSsaReg(i10)) != null) {
                int category = definitionSpecForSsaReg.getCategory();
                int iFindNextUnreservedRopReg = findNextUnreservedRopReg(this.paramRangeEnd, category);
                while (!canMapReg(definitionSpecForSsaReg, iFindNextUnreservedRopReg)) {
                    iFindNextUnreservedRopReg = findNextUnreservedRopReg(iFindNextUnreservedRopReg + 1, category);
                }
                addMapping(definitionSpecForSsaReg, iFindNextUnreservedRopReg);
            }
        }
    }

    private void handlePhiInsns() {
        Iterator<PhiInsn> it2 = this.phiInsns.iterator();
        while (it2.hasNext()) {
            processPhiInsn(it2.next());
        }
    }

    private void handleUnassociatedParameters() {
        int regCount = this.ssaMeth.getRegCount();
        for (int i10 = 0; i10 < regCount; i10++) {
            if (!this.ssaRegsMapped.get(i10)) {
                int parameterIndexForReg = getParameterIndexForReg(i10);
                RegisterSpec definitionSpecForSsaReg = getDefinitionSpecForSsaReg(i10);
                if (parameterIndexForReg >= 0) {
                    addMapping(definitionSpecForSsaReg, parameterIndexForReg);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isEven(int i10) {
        return (i10 & 1) == 0;
    }

    private boolean isThisPointerReg(int i10) {
        return i10 == 0 && !this.ssaMeth.isStatic();
    }

    private void markReserved(int i10, int i11) {
        this.reservedRopRegs.set(i10, i11 + i10, true);
    }

    private void printLocalVars() {
        System.out.println("Printing local vars");
        for (Map.Entry<LocalItem, ArrayList<RegisterSpec>> entry : this.localVariables.entrySet()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('{');
            sb2.append(' ');
            for (RegisterSpec registerSpec : entry.getValue()) {
                sb2.append('v');
                sb2.append(registerSpec.getReg());
                sb2.append(' ');
            }
            sb2.append('}');
            System.out.printf("Local: %s Registers: %s\n", entry.getKey(), sb2);
        }
    }

    private void processPhiInsn(PhiInsn phiInsn) {
        RegisterSpec result = phiInsn.getResult();
        int reg = result.getReg();
        int category = result.getCategory();
        RegisterSpecList sources = phiInsn.getSources();
        int size = sources.size();
        ArrayList<RegisterSpec> arrayList = new ArrayList<>();
        Multiset multiset = new Multiset(size + 1);
        if (this.ssaRegsMapped.get(reg)) {
            multiset.add(this.mapper.oldToNew(reg));
        } else {
            arrayList.add(result);
        }
        for (int i10 = 0; i10 < size; i10++) {
            RegisterSpec result2 = this.ssaMeth.getDefinitionForRegister(sources.get(i10).getReg()).getResult();
            int reg2 = result2.getReg();
            if (this.ssaRegsMapped.get(reg2)) {
                multiset.add(this.mapper.oldToNew(reg2));
            } else {
                arrayList.add(result2);
            }
        }
        for (int i11 = 0; i11 < multiset.getSize(); i11++) {
            tryMapRegs(arrayList, multiset.getAndRemoveHighestCount(), category, false);
        }
        int iFindNextUnreservedRopReg = findNextUnreservedRopReg(this.paramRangeEnd, category);
        while (!tryMapRegs(arrayList, iFindNextUnreservedRopReg, category, false)) {
            iFindNextUnreservedRopReg = findNextUnreservedRopReg(iFindNextUnreservedRopReg + 1, category);
        }
    }

    private boolean rangeContainsReserved(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            if (this.reservedRopRegs.get(i12)) {
                return true;
            }
        }
        return false;
    }

    private boolean spansParamRange(int i10, int i11) {
        int i12 = this.paramRangeEnd;
        return i10 < i12 && i10 + i11 > i12;
    }

    private boolean tryMapReg(RegisterSpec registerSpec, int i10, int i11) {
        if (registerSpec.getCategory() > i11 || this.ssaRegsMapped.get(registerSpec.getReg()) || !canMapReg(registerSpec, i10)) {
            return false;
        }
        addMapping(registerSpec, i10);
        return true;
    }

    private boolean tryMapRegs(ArrayList<RegisterSpec> arrayList, int i10, int i11, boolean z10) {
        boolean z11 = false;
        for (RegisterSpec registerSpec : arrayList) {
            if (!this.ssaRegsMapped.get(registerSpec.getReg())) {
                boolean zTryMapReg = tryMapReg(registerSpec, i10, i11);
                z11 = !zTryMapReg || z11;
                if (zTryMapReg && z10) {
                    markReserved(i10, registerSpec.getCategory());
                }
            }
        }
        return !z11;
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public RegisterMapper allocateRegisters() {
        analyzeInstructions();
        handleLocalAssociatedParams();
        handleUnassociatedParameters();
        handleInvokeRangeInsns();
        handleLocalAssociatedOther();
        handleCheckCastResults();
        handlePhiInsns();
        handleNormalUnassociated();
        return this.mapper;
    }

    RegisterSpecList ssaSetToSpecs(IntSet intSet) {
        RegisterSpecList registerSpecList = new RegisterSpecList(intSet.elements());
        IntIterator it2 = intSet.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            registerSpecList.set(i10, getDefinitionSpecForSsaReg(it2.next()));
            i10++;
        }
        return registerSpecList;
    }

    @Override // com.android.dx.ssa.back.RegisterAllocator
    public boolean wantsParamsMovedHigh() {
        return true;
    }

    private int findNextUnreservedRopReg(int i10, int i11, Alignment alignment) {
        int iNextClearBit = alignment.nextClearBit(this.reservedRopRegs, i10);
        while (true) {
            int i12 = 1;
            while (i12 < i11 && !this.reservedRopRegs.get(iNextClearBit + i12)) {
                i12++;
            }
            if (i12 == i11) {
                return iNextClearBit;
            }
            iNextClearBit = alignment.nextClearBit(this.reservedRopRegs, iNextClearBit + i12);
        }
    }
}
