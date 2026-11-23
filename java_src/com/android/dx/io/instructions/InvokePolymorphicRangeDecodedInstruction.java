package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

/* JADX INFO: loaded from: classes7.dex */
public class InvokePolymorphicRangeDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f7319c;
    private final int protoIndex;
    private final int registerCount;

    public InvokePolymorphicRangeDecodedInstruction(InstructionCodec instructionCodec, int i10, int i11, IndexType indexType, int i12, int i13, int i14) {
        super(instructionCodec, i10, i11, indexType, 0, 0L);
        if (i14 == ((short) i14)) {
            this.f7319c = i12;
            this.registerCount = i13;
            this.protoIndex = i14;
        } else {
            throw new IllegalArgumentException("protoIndex doesn't fit in a short: " + i14);
        }
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getC() {
        return this.f7319c;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public short getProtoIndex() {
        return (short) this.protoIndex;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return this.registerCount;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i10) {
        throw new UnsupportedOperationException("use withProtoIndex to update both the method and proto indices for invoke-polymorphic/range");
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withProtoIndex(int i10, int i11) {
        return new InvokePolymorphicRangeDecodedInstruction(getFormat(), getOpcode(), i10, getIndexType(), this.f7319c, this.registerCount, i11);
    }
}
