package com.android.dx.cf.code;

import com.android.dx.cf.iface.MethodList;
import com.android.dx.dex.DexOptions;
import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.Insn;
import com.android.dx.rop.code.InsnList;
import com.android.dx.rop.code.PlainCstInsn;
import com.android.dx.rop.code.PlainInsn;
import com.android.dx.rop.code.RegisterSpec;
import com.android.dx.rop.code.RegisterSpecList;
import com.android.dx.rop.code.Rop;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.code.Rops;
import com.android.dx.rop.code.SourcePosition;
import com.android.dx.rop.code.ThrowingCstInsn;
import com.android.dx.rop.code.ThrowingInsn;
import com.android.dx.rop.code.TranslationAdvice;
import com.android.dx.rop.cst.CstInteger;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.Bits;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class Ropper {
    private static final int PARAM_ASSIGNMENT = -1;
    private static final int RETURN = -2;
    private static final int SPECIAL_LABEL_COUNT = 7;
    private static final int SYNCH_CATCH_1 = -6;
    private static final int SYNCH_CATCH_2 = -7;
    private static final int SYNCH_RETURN = -3;
    private static final int SYNCH_SETUP_1 = -4;
    private static final int SYNCH_SETUP_2 = -5;
    private final ByteBlockList blocks;
    private final CatchInfo[] catchInfos;
    private final ExceptionSetupLabelAllocator exceptionSetupLabelAllocator;
    private boolean hasSubroutines;
    private final RopperMachine machine;
    private final int maxLabel;
    private final int maxLocals;
    private final ConcreteMethod method;
    private final ArrayList<BasicBlock> result;
    private final ArrayList<IntList> resultSubroutines;
    private final Simulator sim;
    private final Frame[] startFrames;
    private final Subroutine[] subroutines;
    private boolean synchNeedsExceptionHandler;

    private class CatchInfo {
        private final Map<Type, ExceptionHandlerSetup> setups;

        private CatchInfo() {
            this.setups = new HashMap();
        }

        ExceptionHandlerSetup getSetup(Type type) {
            ExceptionHandlerSetup exceptionHandlerSetup = this.setups.get(type);
            if (exceptionHandlerSetup != null) {
                return exceptionHandlerSetup;
            }
            ExceptionHandlerSetup exceptionHandlerSetup2 = new ExceptionHandlerSetup(type, Ropper.this.exceptionSetupLabelAllocator.getNextLabel());
            this.setups.put(type, exceptionHandlerSetup2);
            return exceptionHandlerSetup2;
        }

        Collection<ExceptionHandlerSetup> getSetups() {
            return this.setups.values();
        }
    }

    private static class ExceptionHandlerSetup {
        private Type caughtType;
        private int label;

        ExceptionHandlerSetup(Type type, int i10) {
            this.caughtType = type;
            this.label = i10;
        }

        Type getCaughtType() {
            return this.caughtType;
        }

        public int getLabel() {
            return this.label;
        }
    }

    private class ExceptionSetupLabelAllocator extends LabelAllocator {
        int maxSetupLabel;

        ExceptionSetupLabelAllocator() {
            super(Ropper.this.maxLabel);
            this.maxSetupLabel = Ropper.this.maxLabel + Ropper.this.method.getCatches().size();
        }

        @Override // com.android.dx.cf.code.Ropper.LabelAllocator
        int getNextLabel() {
            int i10 = this.nextAvailableLabel;
            if (i10 >= this.maxSetupLabel) {
                throw new IndexOutOfBoundsException();
            }
            this.nextAvailableLabel = i10 + 1;
            return i10;
        }
    }

    private static class LabelAllocator {
        int nextAvailableLabel;

        LabelAllocator(int i10) {
            this.nextAvailableLabel = i10;
        }

        int getNextLabel() {
            int i10 = this.nextAvailableLabel;
            this.nextAvailableLabel = i10 + 1;
            return i10;
        }
    }

    private class SubroutineInliner {
        private final LabelAllocator labelAllocator;
        private final ArrayList<IntList> labelToSubroutines;
        private final HashMap<Integer, Integer> origLabelToCopiedLabel = new HashMap<>();
        private int subroutineStart;
        private int subroutineSuccessor;
        private final BitSet workList;

        SubroutineInliner(LabelAllocator labelAllocator, ArrayList<IntList> arrayList) {
            this.workList = new BitSet(Ropper.this.maxLabel);
            this.labelAllocator = labelAllocator;
            this.labelToSubroutines = arrayList;
        }

        private void copyBlock(int i10, int i11) {
            IntList intListMakeImmutable;
            BasicBlock basicBlockLabelToBlock = Ropper.this.labelToBlock(i10);
            IntList successors = basicBlockLabelToBlock.getSuccessors();
            int i12 = -1;
            if (Ropper.this.isSubroutineCaller(basicBlockLabelToBlock)) {
                intListMakeImmutable = IntList.makeImmutable(mapOrAllocateLabel(successors.get(0)), successors.get(1));
            } else {
                Subroutine subroutineSubroutineFromRetBlock = Ropper.this.subroutineFromRetBlock(i10);
                if (subroutineSubroutineFromRetBlock == null) {
                    int primarySuccessor = basicBlockLabelToBlock.getPrimarySuccessor();
                    int size = successors.size();
                    IntList intList = new IntList(size);
                    for (int i13 = 0; i13 < size; i13++) {
                        int i14 = successors.get(i13);
                        int iMapOrAllocateLabel = mapOrAllocateLabel(i14);
                        intList.add(iMapOrAllocateLabel);
                        if (primarySuccessor == i14) {
                            i12 = iMapOrAllocateLabel;
                        }
                    }
                    intList.setImmutable();
                    intListMakeImmutable = intList;
                } else {
                    if (subroutineSubroutineFromRetBlock.startBlock != this.subroutineStart) {
                        throw new RuntimeException("ret instruction returns to label " + Hex.u2(subroutineSubroutineFromRetBlock.startBlock) + " expected: " + Hex.u2(this.subroutineStart));
                    }
                    intListMakeImmutable = IntList.makeImmutable(this.subroutineSuccessor);
                    i12 = this.subroutineSuccessor;
                }
            }
            Ropper ropper = Ropper.this;
            ropper.addBlock(new BasicBlock(i11, ropper.filterMoveReturnAddressInsns(basicBlockLabelToBlock.getInsns()), intListMakeImmutable, i12), this.labelToSubroutines.get(i11));
        }

        private boolean involvedInSubroutine(int i10, int i11) {
            IntList intList = this.labelToSubroutines.get(i10);
            return intList != null && intList.size() > 0 && intList.top() == i11;
        }

        private int mapOrAllocateLabel(int i10) {
            Integer num = this.origLabelToCopiedLabel.get(Integer.valueOf(i10));
            if (num != null) {
                return num.intValue();
            }
            if (!involvedInSubroutine(i10, this.subroutineStart)) {
                return i10;
            }
            int nextLabel = this.labelAllocator.getNextLabel();
            this.workList.set(i10);
            this.origLabelToCopiedLabel.put(Integer.valueOf(i10), Integer.valueOf(nextLabel));
            while (this.labelToSubroutines.size() <= nextLabel) {
                this.labelToSubroutines.add(null);
            }
            ArrayList<IntList> arrayList = this.labelToSubroutines;
            arrayList.set(nextLabel, arrayList.get(i10));
            return nextLabel;
        }

        void inlineSubroutineCalledFrom(BasicBlock basicBlock) {
            this.subroutineSuccessor = basicBlock.getSuccessors().get(0);
            int i10 = basicBlock.getSuccessors().get(1);
            this.subroutineStart = i10;
            int iMapOrAllocateLabel = mapOrAllocateLabel(i10);
            int iNextSetBit = this.workList.nextSetBit(0);
            while (iNextSetBit >= 0) {
                this.workList.clear(iNextSetBit);
                int iIntValue = this.origLabelToCopiedLabel.get(Integer.valueOf(iNextSetBit)).intValue();
                copyBlock(iNextSetBit, iIntValue);
                Ropper ropper = Ropper.this;
                if (ropper.isSubroutineCaller(ropper.labelToBlock(iNextSetBit))) {
                    Ropper.this.new SubroutineInliner(this.labelAllocator, this.labelToSubroutines).inlineSubroutineCalledFrom(Ropper.this.labelToBlock(iIntValue));
                }
                iNextSetBit = this.workList.nextSetBit(0);
            }
            Ropper.this.addOrReplaceBlockNoDelete(new BasicBlock(basicBlock.getLabel(), basicBlock.getInsns(), IntList.makeImmutable(iMapOrAllocateLabel), iMapOrAllocateLabel), this.labelToSubroutines.get(basicBlock.getLabel()));
        }
    }

    private Ropper(ConcreteMethod concreteMethod, TranslationAdvice translationAdvice, MethodList methodList, DexOptions dexOptions) {
        if (concreteMethod == null) {
            throw new NullPointerException("method == null");
        }
        if (translationAdvice == null) {
            throw new NullPointerException("advice == null");
        }
        this.method = concreteMethod;
        ByteBlockList byteBlockListIdentifyBlocks = BasicBlocker.identifyBlocks(concreteMethod);
        this.blocks = byteBlockListIdentifyBlocks;
        int maxLabel = byteBlockListIdentifyBlocks.getMaxLabel();
        this.maxLabel = maxLabel;
        int maxLocals = concreteMethod.getMaxLocals();
        this.maxLocals = maxLocals;
        RopperMachine ropperMachine = new RopperMachine(this, concreteMethod, translationAdvice, methodList);
        this.machine = ropperMachine;
        this.sim = new Simulator(ropperMachine, concreteMethod, dexOptions);
        Frame[] frameArr = new Frame[maxLabel];
        this.startFrames = frameArr;
        this.subroutines = new Subroutine[maxLabel];
        this.result = new ArrayList<>((byteBlockListIdentifyBlocks.size() * 2) + 10);
        this.resultSubroutines = new ArrayList<>((byteBlockListIdentifyBlocks.size() * 2) + 10);
        this.catchInfos = new CatchInfo[maxLabel];
        this.synchNeedsExceptionHandler = false;
        frameArr[0] = new Frame(maxLocals, concreteMethod.getMaxStack());
        this.exceptionSetupLabelAllocator = new ExceptionSetupLabelAllocator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addBlock(BasicBlock basicBlock, IntList intList) {
        if (basicBlock == null) {
            throw new NullPointerException("block == null");
        }
        this.result.add(basicBlock);
        intList.throwIfMutable();
        this.resultSubroutines.add(intList);
    }

    private void addExceptionSetupBlocks() {
        int length = this.catchInfos.length;
        for (int i10 = 0; i10 < length; i10++) {
            CatchInfo catchInfo = this.catchInfos[i10];
            if (catchInfo != null) {
                for (ExceptionHandlerSetup exceptionHandlerSetup : catchInfo.getSetups()) {
                    SourcePosition position = labelToBlock(i10).getFirstInsn().getPosition();
                    InsnList insnList = new InsnList(2);
                    Rop ropOpMoveException = Rops.opMoveException(exceptionHandlerSetup.getCaughtType());
                    RegisterSpec registerSpecMake = RegisterSpec.make(this.maxLocals, exceptionHandlerSetup.getCaughtType());
                    RegisterSpecList registerSpecList = RegisterSpecList.EMPTY;
                    insnList.set(0, new PlainInsn(ropOpMoveException, position, registerSpecMake, registerSpecList));
                    insnList.set(1, new PlainInsn(Rops.GOTO, position, (RegisterSpec) null, registerSpecList));
                    insnList.setImmutable();
                    addBlock(new BasicBlock(exceptionHandlerSetup.getLabel(), insnList, IntList.makeImmutable(i10), i10), this.startFrames[i10].getSubroutines());
                }
            }
        }
    }

    private boolean addOrReplaceBlock(BasicBlock basicBlock, IntList intList) {
        boolean z10;
        if (basicBlock == null) {
            throw new NullPointerException("block == null");
        }
        int iLabelToResultIndex = labelToResultIndex(basicBlock.getLabel());
        if (iLabelToResultIndex < 0) {
            z10 = false;
        } else {
            removeBlockAndSpecialSuccessors(iLabelToResultIndex);
            z10 = true;
        }
        this.result.add(basicBlock);
        intList.throwIfMutable();
        this.resultSubroutines.add(intList);
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean addOrReplaceBlockNoDelete(BasicBlock basicBlock, IntList intList) {
        boolean z10;
        if (basicBlock == null) {
            throw new NullPointerException("block == null");
        }
        int iLabelToResultIndex = labelToResultIndex(basicBlock.getLabel());
        if (iLabelToResultIndex < 0) {
            z10 = false;
        } else {
            this.result.remove(iLabelToResultIndex);
            this.resultSubroutines.remove(iLabelToResultIndex);
            z10 = true;
        }
        this.result.add(basicBlock);
        intList.throwIfMutable();
        this.resultSubroutines.add(intList);
        return z10;
    }

    private void addReturnBlock() {
        Rop returnOp = this.machine.getReturnOp();
        if (returnOp == null) {
            return;
        }
        SourcePosition returnPosition = this.machine.getReturnPosition();
        int specialLabel = getSpecialLabel(-2);
        if (isSynchronized()) {
            InsnList insnList = new InsnList(1);
            insnList.set(0, new ThrowingInsn(Rops.MONITOR_EXIT, returnPosition, RegisterSpecList.make(getSynchReg()), StdTypeList.EMPTY));
            insnList.setImmutable();
            int specialLabel2 = getSpecialLabel(-3);
            addBlock(new BasicBlock(specialLabel, insnList, IntList.makeImmutable(specialLabel2), specialLabel2), IntList.EMPTY);
            specialLabel = specialLabel2;
        }
        InsnList insnList2 = new InsnList(1);
        TypeList sources = returnOp.getSources();
        insnList2.set(0, new PlainInsn(returnOp, returnPosition, (RegisterSpec) null, sources.size() == 0 ? RegisterSpecList.EMPTY : RegisterSpecList.make(RegisterSpec.make(0, sources.getType(0)))));
        insnList2.setImmutable();
        IntList intList = IntList.EMPTY;
        addBlock(new BasicBlock(specialLabel, insnList2, intList, -1), intList);
    }

    private void addSetupBlocks() {
        InsnList insnList;
        LocalVariableList localVariables = this.method.getLocalVariables();
        int i10 = 0;
        SourcePosition sourcePositionMakeSourcePosistion = this.method.makeSourcePosistion(0);
        StdTypeList parameterTypes = this.method.getEffectiveDescriptor().getParameterTypes();
        int size = parameterTypes.size();
        InsnList insnList2 = new InsnList(size + 1);
        int i11 = 0;
        int category = 0;
        while (i11 < size) {
            Type type = parameterTypes.get(i11);
            LocalVariableList.Item itemPcAndIndexToLocal = localVariables.pcAndIndexToLocal(i10, category);
            insnList2.set(i11, new PlainCstInsn(Rops.opMoveParam(type), sourcePositionMakeSourcePosistion, itemPcAndIndexToLocal == null ? RegisterSpec.make(category, type) : RegisterSpec.makeLocalOptional(category, type, itemPcAndIndexToLocal.getLocalItem()), RegisterSpecList.EMPTY, CstInteger.make(category)));
            category += type.getCategory();
            i11++;
            i10 = 0;
        }
        Rop rop = Rops.GOTO;
        RegisterSpecList registerSpecList = RegisterSpecList.EMPTY;
        insnList2.set(size, new PlainInsn(rop, sourcePositionMakeSourcePosistion, (RegisterSpec) null, registerSpecList));
        insnList2.setImmutable();
        boolean zIsSynchronized = isSynchronized();
        int specialLabel = zIsSynchronized ? getSpecialLabel(-4) : 0;
        BasicBlock basicBlock = new BasicBlock(getSpecialLabel(-1), insnList2, IntList.makeImmutable(specialLabel), specialLabel);
        IntList intList = IntList.EMPTY;
        addBlock(basicBlock, intList);
        if (zIsSynchronized) {
            RegisterSpec synchReg = getSynchReg();
            if (isStatic()) {
                ThrowingCstInsn throwingCstInsn = new ThrowingCstInsn(Rops.CONST_OBJECT, sourcePositionMakeSourcePosistion, registerSpecList, StdTypeList.EMPTY, this.method.getDefiningClass());
                insnList = new InsnList(1);
                insnList.set(0, throwingCstInsn);
            } else {
                InsnList insnList3 = new InsnList(2);
                insnList3.set(0, new PlainCstInsn(Rops.MOVE_PARAM_OBJECT, sourcePositionMakeSourcePosistion, synchReg, registerSpecList, CstInteger.VALUE_0));
                insnList3.set(1, new PlainInsn(rop, sourcePositionMakeSourcePosistion, (RegisterSpec) null, registerSpecList));
                insnList = insnList3;
            }
            int specialLabel2 = getSpecialLabel(-5);
            insnList.setImmutable();
            addBlock(new BasicBlock(specialLabel, insnList, IntList.makeImmutable(specialLabel2), specialLabel2), intList);
            InsnList insnList4 = new InsnList(isStatic() ? 2 : 1);
            if (isStatic()) {
                insnList4.set(0, new PlainInsn(Rops.opMoveResultPseudo(synchReg), sourcePositionMakeSourcePosistion, synchReg, registerSpecList));
            }
            insnList4.set(isStatic() ? 1 : 0, new ThrowingInsn(Rops.MONITOR_ENTER, sourcePositionMakeSourcePosistion, RegisterSpecList.make(synchReg), StdTypeList.EMPTY));
            insnList4.setImmutable();
            addBlock(new BasicBlock(specialLabel2, insnList4, IntList.makeImmutable(0), 0), intList);
        }
    }

    private void addSynchExceptionHandlerBlock() {
        if (this.synchNeedsExceptionHandler) {
            SourcePosition sourcePositionMakeSourcePosistion = this.method.makeSourcePosistion(0);
            Type type = Type.THROWABLE;
            RegisterSpec registerSpecMake = RegisterSpec.make(0, type);
            InsnList insnList = new InsnList(2);
            insnList.set(0, new PlainInsn(Rops.opMoveException(type), sourcePositionMakeSourcePosistion, registerSpecMake, RegisterSpecList.EMPTY));
            Rop rop = Rops.MONITOR_EXIT;
            RegisterSpecList registerSpecListMake = RegisterSpecList.make(getSynchReg());
            StdTypeList stdTypeList = StdTypeList.EMPTY;
            insnList.set(1, new ThrowingInsn(rop, sourcePositionMakeSourcePosistion, registerSpecListMake, stdTypeList));
            insnList.setImmutable();
            int specialLabel = getSpecialLabel(-7);
            BasicBlock basicBlock = new BasicBlock(getSpecialLabel(-6), insnList, IntList.makeImmutable(specialLabel), specialLabel);
            IntList intList = IntList.EMPTY;
            addBlock(basicBlock, intList);
            InsnList insnList2 = new InsnList(1);
            insnList2.set(0, new ThrowingInsn(Rops.THROW, sourcePositionMakeSourcePosistion, RegisterSpecList.make(registerSpecMake), stdTypeList));
            insnList2.setImmutable();
            addBlock(new BasicBlock(specialLabel, insnList2, intList, -1), intList);
        }
    }

    public static RopMethod convert(ConcreteMethod concreteMethod, TranslationAdvice translationAdvice, MethodList methodList, DexOptions dexOptions) {
        try {
            Ropper ropper = new Ropper(concreteMethod, translationAdvice, methodList, dexOptions);
            ropper.doit();
            return ropper.getRopMethod();
        } catch (SimException e10) {
            e10.addContext("...while working on method " + concreteMethod.getNat().toHuman());
            throw e10;
        }
    }

    private void deleteUnreachableBlocks() {
        final IntList intList = new IntList(this.result.size());
        this.resultSubroutines.clear();
        forEachNonSubBlockDepthFirst(getSpecialLabel(-1), new BasicBlock.Visitor() { // from class: com.android.dx.cf.code.Ropper.2
            @Override // com.android.dx.rop.code.BasicBlock.Visitor
            public void visitBlock(BasicBlock basicBlock) {
                intList.add(basicBlock.getLabel());
            }
        });
        intList.sort();
        for (int size = this.result.size() - 1; size >= 0; size--) {
            if (intList.indexOf(this.result.get(size).getLabel()) < 0) {
                this.result.remove(size);
            }
        }
    }

    private void doit() {
        int[] iArrMakeBitSet = Bits.makeBitSet(this.maxLabel);
        Bits.set(iArrMakeBitSet, 0);
        addSetupBlocks();
        setFirstFrame();
        while (true) {
            int iFindFirst = Bits.findFirst(iArrMakeBitSet, 0);
            if (iFindFirst < 0) {
                break;
            }
            Bits.clear(iArrMakeBitSet, iFindFirst);
            try {
                processBlock(this.blocks.labelToBlock(iFindFirst), this.startFrames[iFindFirst], iArrMakeBitSet);
            } catch (SimException e10) {
                e10.addContext("...while working on block " + Hex.u2(iFindFirst));
                throw e10;
            }
        }
        addReturnBlock();
        addSynchExceptionHandlerBlock();
        addExceptionSetupBlocks();
        if (this.hasSubroutines) {
            inlineSubroutines();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InsnList filterMoveReturnAddressInsns(InsnList insnList) {
        int size = insnList.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            if (insnList.get(i11).getOpcode() != Rops.MOVE_RETURN_ADDRESS) {
                i10++;
            }
        }
        if (i10 == size) {
            return insnList;
        }
        InsnList insnList2 = new InsnList(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            Insn insn = insnList.get(i13);
            if (insn.getOpcode() != Rops.MOVE_RETURN_ADDRESS) {
                insnList2.set(i12, insn);
                i12++;
            }
        }
        insnList2.setImmutable();
        return insnList2;
    }

    private void forEachNonSubBlockDepthFirst(int i10, BasicBlock.Visitor visitor) {
        forEachNonSubBlockDepthFirst0(labelToBlock(i10), visitor, new BitSet(this.maxLabel));
    }

    private void forEachNonSubBlockDepthFirst0(BasicBlock basicBlock, BasicBlock.Visitor visitor, BitSet bitSet) {
        int iLabelToResultIndex;
        visitor.visitBlock(basicBlock);
        bitSet.set(basicBlock.getLabel());
        IntList successors = basicBlock.getSuccessors();
        int size = successors.size();
        for (int i10 = 0; i10 < size; i10++) {
            int i11 = successors.get(i10);
            if (!bitSet.get(i11) && ((!isSubroutineCaller(basicBlock) || i10 <= 0) && (iLabelToResultIndex = labelToResultIndex(i11)) >= 0)) {
                forEachNonSubBlockDepthFirst0(this.result.get(iLabelToResultIndex), visitor, bitSet);
            }
        }
    }

    private int getAvailableLabel() {
        int minimumUnreservedLabel = getMinimumUnreservedLabel();
        Iterator<BasicBlock> it2 = this.result.iterator();
        while (it2.hasNext()) {
            int label = it2.next().getLabel();
            if (label >= minimumUnreservedLabel) {
                minimumUnreservedLabel = label + 1;
            }
        }
        return minimumUnreservedLabel;
    }

    private int getMinimumUnreservedLabel() {
        return this.maxLabel + this.method.getCatches().size() + 7;
    }

    private int getNormalRegCount() {
        return this.maxLocals + this.method.getMaxStack();
    }

    private RopMethod getRopMethod() {
        int size = this.result.size();
        BasicBlockList basicBlockList = new BasicBlockList(size);
        for (int i10 = 0; i10 < size; i10++) {
            basicBlockList.set(i10, this.result.get(i10));
        }
        basicBlockList.setImmutable();
        return new RopMethod(basicBlockList, getSpecialLabel(-1));
    }

    private int getSpecialLabel(int i10) {
        return this.maxLabel + this.method.getCatches().size() + (~i10);
    }

    private RegisterSpec getSynchReg() {
        int normalRegCount = getNormalRegCount();
        if (normalRegCount < 1) {
            normalRegCount = 1;
        }
        return RegisterSpec.make(normalRegCount, Type.OBJECT);
    }

    private void inlineSubroutines() {
        final IntList intList = new IntList(4);
        forEachNonSubBlockDepthFirst(0, new BasicBlock.Visitor() { // from class: com.android.dx.cf.code.Ropper.1
            @Override // com.android.dx.rop.code.BasicBlock.Visitor
            public void visitBlock(BasicBlock basicBlock) {
                if (Ropper.this.isSubroutineCaller(basicBlock)) {
                    intList.add(basicBlock.getLabel());
                }
            }
        });
        int availableLabel = getAvailableLabel();
        ArrayList arrayList = new ArrayList(availableLabel);
        for (int i10 = 0; i10 < availableLabel; i10++) {
            arrayList.add(null);
        }
        for (int i11 = 0; i11 < this.result.size(); i11++) {
            BasicBlock basicBlock = this.result.get(i11);
            if (basicBlock != null) {
                arrayList.set(basicBlock.getLabel(), this.resultSubroutines.get(i11));
            }
        }
        int size = intList.size();
        for (int i12 = 0; i12 < size; i12++) {
            new SubroutineInliner(new LabelAllocator(getAvailableLabel()), arrayList).inlineSubroutineCalledFrom(labelToBlock(intList.get(i12)));
        }
        deleteUnreachableBlocks();
    }

    private boolean isStatic() {
        return (this.method.getAccessFlags() & 8) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSubroutineCaller(BasicBlock basicBlock) {
        IntList successors = basicBlock.getSuccessors();
        if (successors.size() < 2) {
            return false;
        }
        int i10 = successors.get(1);
        Subroutine[] subroutineArr = this.subroutines;
        return i10 < subroutineArr.length && subroutineArr[i10] != null;
    }

    private boolean isSynchronized() {
        return (this.method.getAccessFlags() & 32) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BasicBlock labelToBlock(int i10) {
        int iLabelToResultIndex = labelToResultIndex(i10);
        if (iLabelToResultIndex >= 0) {
            return this.result.get(iLabelToResultIndex);
        }
        throw new IllegalArgumentException("no such label " + Hex.u2(i10));
    }

    private int labelToResultIndex(int i10) {
        int size = this.result.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.result.get(i11).getLabel() == i10) {
                return i11;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeAndWorkAsNecessary(int i10, int i11, Subroutine subroutine, Frame frame, int[] iArr) {
        Frame[] frameArr = this.startFrames;
        Frame frame2 = frameArr[i10];
        if (frame2 == null) {
            if (subroutine != null) {
                frameArr[i10] = frame.makeNewSubroutineStartFrame(i10, i11);
            } else {
                frameArr[i10] = frame;
            }
            Bits.set(iArr, i10);
            return;
        }
        Frame frameMergeWithSubroutineCaller = subroutine != null ? frame2.mergeWithSubroutineCaller(frame, subroutine.getStartBlock(), i11) : frame2.mergeWith(frame);
        if (frameMergeWithSubroutineCaller != frame2) {
            this.startFrames[i10] = frameMergeWithSubroutineCaller;
            Bits.set(iArr, i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x028a  */
    /* JADX WARN: Code duplicated, block: B:101:0x028d  */
    /* JADX WARN: Code duplicated, block: B:99:0x0288 A[DONT_INVERT] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.android.dx.rop.code.Insn] */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.android.dx.cf.code.Ropper$1, com.android.dx.rop.code.RegisterSpec] */
    private void processBlock(ByteBlock byteBlock, Frame frame, int[] iArr) {
        IntList intList;
        Subroutine subroutine;
        int size;
        IntList intListMutableCopy;
        int i10;
        int i11;
        int i12;
        Insn insn;
        ?? r10;
        SourcePosition position;
        IntList intListMakeImmutable;
        ByteCatchList catches = byteBlock.getCatches();
        this.machine.startBlock(catches.toRopCatchList());
        Frame frameCopy = frame.copy();
        this.sim.simulate(byteBlock, frameCopy);
        frameCopy.setImmutable();
        int extraBlockCount = this.machine.getExtraBlockCount();
        ArrayList<Insn> insns = this.machine.getInsns();
        int size2 = insns.size();
        int size3 = catches.size();
        IntList successors = byteBlock.getSuccessors();
        Object obj = null;
        if (this.machine.hasJsr()) {
            int i13 = successors.get(1);
            Subroutine[] subroutineArr = this.subroutines;
            if (subroutineArr[i13] == null) {
                subroutineArr[i13] = new Subroutine(i13);
            }
            this.subroutines[i13].addCallerBlock(byteBlock.getLabel());
            intList = successors;
            subroutine = this.subroutines[i13];
            size = 1;
        } else if (this.machine.hasRet()) {
            int subroutineAddress = this.machine.getReturnAddress().getSubroutineAddress();
            Subroutine[] subroutineArr2 = this.subroutines;
            Subroutine subroutine2 = subroutineArr2[subroutineAddress];
            if (subroutine2 == null) {
                subroutineArr2[subroutineAddress] = new Subroutine(this, subroutineAddress, byteBlock.getLabel());
            } else {
                subroutine2.addRetBlock(byteBlock.getLabel());
            }
            IntList successors2 = this.subroutines[subroutineAddress].getSuccessors();
            this.subroutines[subroutineAddress].mergeToSuccessors(frameCopy, iArr);
            size = successors2.size();
            intList = successors2;
            subroutine = null;
        } else if (this.machine.wereCatchesUsed()) {
            intList = successors;
            subroutine = null;
            size = size3;
        } else {
            intList = successors;
            subroutine = null;
            size = 0;
        }
        int size4 = intList.size();
        int i14 = size;
        while (i14 < size4) {
            int i15 = intList.get(i14);
            try {
                int i16 = i14;
                int i17 = size4;
                IntList intList2 = intList;
                Object obj2 = obj;
                mergeAndWorkAsNecessary(i15, byteBlock.getLabel(), subroutine, frameCopy, iArr);
                i14 = i16 + 1;
                obj = obj2;
                intList = intList2;
                size4 = i17;
            } catch (SimException e10) {
                e10.addContext("...while merging to block " + Hex.u2(i15));
                throw e10;
            }
        }
        int i18 = size4;
        IntList intList3 = intList;
        ?? r14 = obj;
        if (i18 == 0 && this.machine.returns()) {
            intListMutableCopy = IntList.makeImmutable(getSpecialLabel(-2));
            i10 = 1;
        } else {
            intListMutableCopy = intList3;
            i10 = i18;
        }
        if (i10 == 0) {
            i11 = -1;
        } else {
            int primarySuccessorIndex = this.machine.getPrimarySuccessorIndex();
            if (primarySuccessorIndex >= 0) {
                primarySuccessorIndex = intListMutableCopy.get(primarySuccessorIndex);
            }
            i11 = primarySuccessorIndex;
        }
        boolean z10 = isSynchronized() && this.machine.canThrow();
        if (z10 || size3 != 0) {
            IntList intList4 = new IntList(i10);
            boolean z11 = false;
            int i19 = 0;
            while (i19 < size3) {
                ByteCatchList.Item item = catches.get(i19);
                CstType exceptionClass = item.getExceptionClass();
                int handlerPc = item.getHandlerPc();
                boolean z12 = z11 | (exceptionClass == CstType.OBJECT);
                try {
                    int i20 = i19;
                    IntList intList5 = intList4;
                    int i21 = i11;
                    mergeAndWorkAsNecessary(handlerPc, byteBlock.getLabel(), null, frameCopy.makeExceptionHandlerStartFrame(exceptionClass), iArr);
                    CatchInfo catchInfo = this.catchInfos[handlerPc];
                    if (catchInfo == null) {
                        catchInfo = new CatchInfo();
                        this.catchInfos[handlerPc] = catchInfo;
                    }
                    intList5.add(catchInfo.getSetup(exceptionClass.getClassType()).getLabel());
                    i19 = i20 + 1;
                    intList4 = intList5;
                    z11 = z12;
                    i11 = i21;
                } catch (SimException e11) {
                    e11.addContext("...while merging exception to block " + Hex.u2(handlerPc));
                    throw e11;
                }
            }
            IntList intList6 = intList4;
            int i22 = i11;
            if (z10 && !z11) {
                intList6.add(getSpecialLabel(-6));
                this.synchNeedsExceptionHandler = true;
                for (int i23 = (size2 - extraBlockCount) - 1; i23 < size2; i23++) {
                    Insn insn2 = insns.get(i23);
                    if (insn2.canThrow()) {
                        insns.set(i23, insn2.withAddedCatch(Type.OBJECT));
                    }
                }
            }
            i12 = i22;
            if (i12 >= 0) {
                intList6.add(i12);
            }
            intList6.setImmutable();
            intListMutableCopy = intList6;
        } else {
            i12 = i11;
        }
        int iIndexOf = intListMutableCopy.indexOf(i12);
        int i24 = i12;
        while (extraBlockCount > 0) {
            size2--;
            Insn insn3 = insns.get(size2);
            boolean z13 = insn3.getOpcode().getBranchingness() == 1;
            InsnList insnList = new InsnList(z13 ? 2 : 1);
            insnList.set(0, insn3);
            if (z13) {
                insnList.set(1, new PlainInsn(Rops.GOTO, insn3.getPosition(), (RegisterSpec) r14, RegisterSpecList.EMPTY));
                intListMakeImmutable = IntList.makeImmutable(i24);
            } else {
                intListMakeImmutable = intListMutableCopy;
            }
            insnList.setImmutable();
            int availableLabel = getAvailableLabel();
            addBlock(new BasicBlock(availableLabel, insnList, intListMakeImmutable, i24), frameCopy.getSubroutines());
            intListMutableCopy = intListMutableCopy.mutableCopy();
            intListMutableCopy.set(iIndexOf, availableLabel);
            intListMutableCopy.setImmutable();
            extraBlockCount--;
            i24 = availableLabel;
        }
        if (size2 == 0) {
            r10 = r14;
        } else {
            insn = insns.get(size2 - 1);
        }
        if (r10 != 0) {
            r10 = insn;
            if (r10.getOpcode().getBranchingness() == 1) {
                if (r10 == 0) {
                    position = SourcePosition.NO_INFO;
                } else {
                    position = r10.getPosition();
                }
                insns.add(new PlainInsn(Rops.GOTO, position, (RegisterSpec) r14, RegisterSpecList.EMPTY));
                size2++;
            }
        } else {
            if (r10 == 0) {
                position = SourcePosition.NO_INFO;
            } else {
                position = r10.getPosition();
            }
            insns.add(new PlainInsn(Rops.GOTO, position, (RegisterSpec) r14, RegisterSpecList.EMPTY));
            size2++;
        }
        InsnList insnList2 = new InsnList(size2);
        for (int i25 = 0; i25 < size2; i25++) {
            insnList2.set(i25, insns.get(i25));
        }
        insnList2.setImmutable();
        addOrReplaceBlock(new BasicBlock(byteBlock.getLabel(), insnList2, intListMutableCopy, i24), frameCopy.getSubroutines());
    }

    private void removeBlockAndSpecialSuccessors(int i10) {
        int minimumUnreservedLabel = getMinimumUnreservedLabel();
        IntList successors = this.result.get(i10).getSuccessors();
        int size = successors.size();
        this.result.remove(i10);
        this.resultSubroutines.remove(i10);
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = successors.get(i11);
            if (i12 >= minimumUnreservedLabel) {
                int iLabelToResultIndex = labelToResultIndex(i12);
                if (iLabelToResultIndex < 0) {
                    throw new RuntimeException("Invalid label " + Hex.u2(i12));
                }
                removeBlockAndSpecialSuccessors(iLabelToResultIndex);
            }
        }
    }

    private void setFirstFrame() {
        this.startFrames[0].initializeWithParameters(this.method.getEffectiveDescriptor().getParameterTypes());
        this.startFrames[0].setImmutable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Subroutine subroutineFromRetBlock(int i10) {
        for (int length = this.subroutines.length - 1; length >= 0; length--) {
            Subroutine subroutine = this.subroutines[length];
            if (subroutine != null && subroutine.retBlocks.get(i10)) {
                return subroutine;
            }
        }
        return null;
    }

    int getFirstTempStackReg() {
        int normalRegCount = getNormalRegCount();
        return isSynchronized() ? normalRegCount + 1 : normalRegCount;
    }

    private class Subroutine {
        private BitSet callerBlocks;
        private BitSet retBlocks;
        private int startBlock;

        Subroutine(int i10) {
            this.startBlock = i10;
            this.retBlocks = new BitSet(Ropper.this.maxLabel);
            this.callerBlocks = new BitSet(Ropper.this.maxLabel);
            Ropper.this.hasSubroutines = true;
        }

        void addCallerBlock(int i10) {
            this.callerBlocks.set(i10);
        }

        void addRetBlock(int i10) {
            this.retBlocks.set(i10);
        }

        int getStartBlock() {
            return this.startBlock;
        }

        IntList getSuccessors() {
            IntList intList = new IntList(this.callerBlocks.size());
            int iNextSetBit = this.callerBlocks.nextSetBit(0);
            while (iNextSetBit >= 0) {
                intList.add(Ropper.this.labelToBlock(iNextSetBit).getSuccessors().get(0));
                iNextSetBit = this.callerBlocks.nextSetBit(iNextSetBit + 1);
            }
            intList.setImmutable();
            return intList;
        }

        void mergeToSuccessors(Frame frame, int[] iArr) {
            int iNextSetBit = this.callerBlocks.nextSetBit(0);
            while (iNextSetBit >= 0) {
                int i10 = Ropper.this.labelToBlock(iNextSetBit).getSuccessors().get(0);
                Frame frameSubFrameForLabel = frame.subFrameForLabel(this.startBlock, iNextSetBit);
                if (frameSubFrameForLabel != null) {
                    Ropper.this.mergeAndWorkAsNecessary(i10, -1, null, frameSubFrameForLabel, iArr);
                } else {
                    Bits.set(iArr, iNextSetBit);
                }
                iNextSetBit = this.callerBlocks.nextSetBit(iNextSetBit + 1);
            }
        }

        Subroutine(Ropper ropper, int i10, int i11) {
            this(i10);
            addRetBlock(i11);
        }
    }
}
