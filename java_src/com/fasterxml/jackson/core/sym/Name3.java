package com.fasterxml.jackson.core.sym;

/* JADX INFO: loaded from: classes9.dex */
public final class Name3 extends Name {

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private final int f29086q1;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    private final int f29087q2;

    /* JADX INFO: renamed from: q3, reason: collision with root package name */
    private final int f29088q3;

    Name3(String str, int i10, int i11, int i12, int i13) {
        super(str, i10);
        this.f29086q1 = i11;
        this.f29087q2 = i12;
        this.f29088q3 = i13;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i10) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i10, int i11) {
        return false;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int i10, int i11, int i12) {
        return this.f29086q1 == i10 && this.f29087q2 == i11 && this.f29088q3 == i12;
    }

    @Override // com.fasterxml.jackson.core.sym.Name
    public boolean equals(int[] iArr, int i10) {
        return i10 == 3 && iArr[0] == this.f29086q1 && iArr[1] == this.f29087q2 && iArr[2] == this.f29088q3;
    }
}
