package com.android.dx.command.dump;

import com.android.dx.cf.code.ConcreteMethod;
import com.android.dx.cf.code.Ropper;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.Method;
import com.android.dx.rop.code.AccessFlags;
import com.android.dx.rop.code.DexTranslationAdvice;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.ssa.Optimizer;
import com.android.dx.ssa.SsaBasicBlock;
import com.android.dx.ssa.SsaInsn;
import com.android.dx.ssa.SsaMethod;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import com.android.dx.util.IntList;
import com.uc.crashsdk.export.LogType;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class SsaDumper extends BlockDumper {
    private SsaDumper(byte[] bArr, PrintStream printStream, String str, Args args) {
        super(bArr, printStream, str, true, args);
    }

    public static void dump(byte[] bArr, PrintStream printStream, String str, Args args) {
        new SsaDumper(bArr, printStream, str, args).dump();
    }

    @Override // com.android.dx.command.dump.BlockDumper, com.android.dx.command.dump.BaseDumper, com.android.dx.cf.iface.ParseObserver
    public void endParsingMember(ByteArray byteArray, int i10, String str, String str2, Member member) {
        SsaMethod ssaMethodDebugDeadCodeRemover;
        if (!(member instanceof Method) || !shouldDumpMethod(str) || (member.getAccessFlags() & LogType.UNEXP_ANR) != 0) {
            return;
        }
        ConcreteMethod concreteMethod = new ConcreteMethod((Method) member, this.classFile, true, true);
        DexTranslationAdvice dexTranslationAdvice = DexTranslationAdvice.THE_ONE;
        RopMethod ropMethodConvert = Ropper.convert(concreteMethod, dexTranslationAdvice, this.classFile.getMethods(), this.dexOptions);
        boolean zIsStatic = AccessFlags.isStatic(concreteMethod.getAccessFlags());
        int iComputeParamWidth = BaseDumper.computeParamWidth(concreteMethod, zIsStatic);
        String str3 = this.args.ssaStep;
        if (str3 == null) {
            ssaMethodDebugDeadCodeRemover = Optimizer.debugNoRegisterAllocation(ropMethodConvert, iComputeParamWidth, zIsStatic, true, dexTranslationAdvice, EnumSet.allOf(Optimizer.OptionalStep.class));
        } else if ("edge-split".equals(str3)) {
            ssaMethodDebugDeadCodeRemover = Optimizer.debugEdgeSplit(ropMethodConvert, iComputeParamWidth, zIsStatic, true, dexTranslationAdvice);
        } else if ("phi-placement".equals(this.args.ssaStep)) {
            ssaMethodDebugDeadCodeRemover = Optimizer.debugPhiPlacement(ropMethodConvert, iComputeParamWidth, zIsStatic, true, dexTranslationAdvice);
        } else if ("renaming".equals(this.args.ssaStep)) {
            ssaMethodDebugDeadCodeRemover = Optimizer.debugRenaming(ropMethodConvert, iComputeParamWidth, zIsStatic, true, dexTranslationAdvice);
        } else {
            ssaMethodDebugDeadCodeRemover = "dead-code".equals(this.args.ssaStep) ? Optimizer.debugDeadCodeRemover(ropMethodConvert, iComputeParamWidth, zIsStatic, true, dexTranslationAdvice) : null;
        }
        StringBuilder sb2 = new StringBuilder(2000);
        sb2.append("first ");
        sb2.append(Hex.u2(ssaMethodDebugDeadCodeRemover.blockIndexToRopLabel(ssaMethodDebugDeadCodeRemover.getEntryBlockIndex())));
        sb2.append('\n');
        ArrayList arrayList = (ArrayList) ssaMethodDebugDeadCodeRemover.getBlocks().clone();
        Collections.sort(arrayList, SsaBasicBlock.LABEL_COMPARATOR);
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                this.suppressDump = false;
                parsed(byteArray, 0, byteArray.size(), sb2.toString());
                this.suppressDump = true;
                return;
            }
            SsaBasicBlock ssaBasicBlock = (SsaBasicBlock) it2.next();
            sb2.append("block ");
            sb2.append(Hex.u2(ssaBasicBlock.getRopLabel()));
            sb2.append('\n');
            BitSet predecessors = ssaBasicBlock.getPredecessors();
            for (int iNextSetBit = predecessors.nextSetBit(0); iNextSetBit >= 0; iNextSetBit = predecessors.nextSetBit(iNextSetBit + 1)) {
                sb2.append("  pred ");
                sb2.append(Hex.u2(ssaMethodDebugDeadCodeRemover.blockIndexToRopLabel(iNextSetBit)));
                sb2.append('\n');
            }
            sb2.append("  live in:" + ssaBasicBlock.getLiveInRegs());
            sb2.append("\n");
            for (SsaInsn ssaInsn : ssaBasicBlock.getInsns()) {
                sb2.append("  ");
                sb2.append(ssaInsn.toHuman());
                sb2.append('\n');
            }
            if (ssaBasicBlock.getSuccessors().cardinality() == 0) {
                sb2.append("  returns\n");
            } else {
                int primarySuccessorRopLabel = ssaBasicBlock.getPrimarySuccessorRopLabel();
                IntList ropLabelSuccessorList = ssaBasicBlock.getRopLabelSuccessorList();
                int size = ropLabelSuccessorList.size();
                for (int i11 = 0; i11 < size; i11++) {
                    sb2.append("  next ");
                    sb2.append(Hex.u2(ropLabelSuccessorList.get(i11)));
                    if (size != 1 && primarySuccessorRopLabel == ropLabelSuccessorList.get(i11)) {
                        sb2.append(" *");
                    }
                    sb2.append('\n');
                }
            }
            sb2.append("  live out:" + ssaBasicBlock.getLiveOutRegs());
            sb2.append("\n");
        }
    }
}
