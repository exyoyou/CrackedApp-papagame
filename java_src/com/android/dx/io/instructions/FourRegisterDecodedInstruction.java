package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

/* JADX INFO: loaded from: classes7.dex */
public final class FourRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f7317c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f7318d;

    public FourRegisterDecodedInstruction(InstructionCodec instructionCodec, int i10, int i11, IndexType indexType, int i12, long j10, int i13, int i14, int i15, int i16) {
        super(instructionCodec, i10, i11, indexType, i12, j10);
        this.f7315a = i13;
        this.f7316b = i14;
        this.f7317c = i15;
        this.f7318d = i16;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f7315a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getB() {
        return this.f7316b;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getC() {
        return this.f7317c;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getD() {
        return this.f7318d;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 4;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i10) {
        return new FourRegisterDecodedInstruction(getFormat(), getOpcode(), i10, getIndexType(), getTarget(), getLiteral(), this.f7315a, this.f7316b, this.f7317c, this.f7318d);
    }
}
