package com.android.dx.io.instructions;

import com.android.dx.io.IndexType;

/* JADX INFO: loaded from: classes7.dex */
public final class FiveRegisterDecodedInstruction extends DecodedInstruction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7310a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f7311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f7312c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f7313d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f7314e;

    public FiveRegisterDecodedInstruction(InstructionCodec instructionCodec, int i10, int i11, IndexType indexType, int i12, long j10, int i13, int i14, int i15, int i16, int i17) {
        super(instructionCodec, i10, i11, indexType, i12, j10);
        this.f7310a = i13;
        this.f7311b = i14;
        this.f7312c = i15;
        this.f7313d = i16;
        this.f7314e = i17;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getA() {
        return this.f7310a;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getB() {
        return this.f7311b;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getC() {
        return this.f7312c;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getD() {
        return this.f7313d;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getE() {
        return this.f7314e;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public int getRegisterCount() {
        return 5;
    }

    @Override // com.android.dx.io.instructions.DecodedInstruction
    public DecodedInstruction withIndex(int i10) {
        return new FiveRegisterDecodedInstruction(getFormat(), getOpcode(), i10, getIndexType(), getTarget(), getLiteral(), this.f7310a, this.f7311b, this.f7312c, this.f7313d, this.f7314e);
    }
}
