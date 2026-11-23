package com.android.dx.dex.code;

import com.android.dx.rop.code.BasicBlock;
import com.android.dx.rop.code.BasicBlockList;
import com.android.dx.rop.code.RopMethod;
import com.android.dx.rop.cst.CstType;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.IntList;
import java.util.ArrayList;
import java.util.HashSet;

/* JADX INFO: loaded from: classes7.dex */
public final class StdCatchBuilder implements CatchBuilder {
    private static final int MAX_CATCH_RANGE = 65535;
    private final BlockAddresses addresses;
    private final RopMethod method;
    private final int[] order;

    public StdCatchBuilder(RopMethod ropMethod, int[] iArr, BlockAddresses blockAddresses) {
        if (ropMethod == null) {
            throw new NullPointerException("method == null");
        }
        if (iArr == null) {
            throw new NullPointerException("order == null");
        }
        if (blockAddresses == null) {
            throw new NullPointerException("addresses == null");
        }
        this.method = ropMethod;
        this.order = iArr;
        this.addresses = blockAddresses;
    }

    private static CatchHandlerList handlersFor(BasicBlock basicBlock, BlockAddresses blockAddresses) {
        IntList successors = basicBlock.getSuccessors();
        int size = successors.size();
        int primarySuccessor = basicBlock.getPrimarySuccessor();
        TypeList catches = basicBlock.getLastInsn().getCatches();
        int size2 = catches.size();
        if (size2 == 0) {
            return CatchHandlerList.EMPTY;
        }
        if ((primarySuccessor == -1 && size != size2) || (primarySuccessor != -1 && (size != size2 + 1 || primarySuccessor != successors.get(size2)))) {
            throw new RuntimeException("shouldn't happen: weird successors list");
        }
        for (int i10 = 0; i10 < size2; i10++) {
            if (catches.getType(i10).equals(Type.OBJECT)) {
                size2 = i10 + 1;
                break;
            }
        }
        CatchHandlerList catchHandlerList = new CatchHandlerList(size2);
        for (int i11 = 0; i11 < size2; i11++) {
            catchHandlerList.set(i11, new CstType(catches.getType(i11)), blockAddresses.getStart(successors.get(i11)).getAddress());
        }
        catchHandlerList.setImmutable();
        return catchHandlerList;
    }

    private static CatchTable.Entry makeEntry(BasicBlock basicBlock, BasicBlock basicBlock2, CatchHandlerList catchHandlerList, BlockAddresses blockAddresses) {
        return new CatchTable.Entry(blockAddresses.getLast(basicBlock).getAddress(), blockAddresses.getEnd(basicBlock2).getAddress(), catchHandlerList);
    }

    private static boolean rangeIsValid(BasicBlock basicBlock, BasicBlock basicBlock2, BlockAddresses blockAddresses) {
        if (basicBlock == null) {
            throw new NullPointerException("start == null");
        }
        if (basicBlock2 != null) {
            return blockAddresses.getEnd(basicBlock2).getAddress() - blockAddresses.getLast(basicBlock).getAddress() <= 65535;
        }
        throw new NullPointerException("end == null");
    }

    @Override // com.android.dx.dex.code.CatchBuilder
    public CatchTable build() {
        return build(this.method, this.order, this.addresses);
    }

    @Override // com.android.dx.dex.code.CatchBuilder
    public HashSet<Type> getCatchTypes() {
        HashSet<Type> hashSet = new HashSet<>(20);
        BasicBlockList blocks = this.method.getBlocks();
        int size = blocks.size();
        for (int i10 = 0; i10 < size; i10++) {
            TypeList catches = blocks.get(i10).getLastInsn().getCatches();
            int size2 = catches.size();
            for (int i11 = 0; i11 < size2; i11++) {
                hashSet.add(catches.getType(i11));
            }
        }
        return hashSet;
    }

    @Override // com.android.dx.dex.code.CatchBuilder
    public boolean hasAnyCatches() {
        BasicBlockList blocks = this.method.getBlocks();
        int size = blocks.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (blocks.get(i10).getLastInsn().getCatches().size() != 0) {
                return true;
            }
        }
        return false;
    }

    public static CatchTable build(RopMethod ropMethod, int[] iArr, BlockAddresses blockAddresses) {
        int length = iArr.length;
        BasicBlockList blocks = ropMethod.getBlocks();
        ArrayList arrayList = new ArrayList(length);
        CatchHandlerList catchHandlerList = CatchHandlerList.EMPTY;
        BasicBlock basicBlock = null;
        BasicBlock basicBlock2 = null;
        for (int i10 : iArr) {
            BasicBlock basicBlockLabelToBlock = blocks.labelToBlock(i10);
            if (basicBlockLabelToBlock.canThrow()) {
                CatchHandlerList catchHandlerListHandlersFor = handlersFor(basicBlockLabelToBlock, blockAddresses);
                if (catchHandlerList.size() == 0) {
                    basicBlock = basicBlockLabelToBlock;
                    basicBlock2 = basicBlock;
                    catchHandlerList = catchHandlerListHandlersFor;
                } else if (catchHandlerList.equals(catchHandlerListHandlersFor) && rangeIsValid(basicBlock, basicBlockLabelToBlock, blockAddresses)) {
                    basicBlock2 = basicBlockLabelToBlock;
                } else {
                    if (catchHandlerList.size() != 0) {
                        arrayList.add(makeEntry(basicBlock, basicBlock2, catchHandlerList, blockAddresses));
                    }
                    basicBlock = basicBlockLabelToBlock;
                    basicBlock2 = basicBlock;
                    catchHandlerList = catchHandlerListHandlersFor;
                }
            }
        }
        if (catchHandlerList.size() != 0) {
            arrayList.add(makeEntry(basicBlock, basicBlock2, catchHandlerList, blockAddresses));
        }
        int size = arrayList.size();
        if (size == 0) {
            return CatchTable.EMPTY;
        }
        CatchTable catchTable = new CatchTable(size);
        for (int i11 = 0; i11 < size; i11++) {
            catchTable.set(i11, (CatchTable.Entry) arrayList.get(i11));
        }
        catchTable.setImmutable();
        return catchTable;
    }
}
