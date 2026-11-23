package com.tencent.bugly.proguard;

/* JADX INFO: loaded from: classes2.dex */
public final class bn extends m implements Cloneable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static byte[] f83476d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte f83477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f83478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f83479c;

    public bn() {
        this.f83477a = (byte) 0;
        this.f83478b = "";
        this.f83479c = null;
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb2, int i10) {
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f83477a, 0);
        lVar.a(this.f83478b, 1);
        byte[] bArr = this.f83479c;
        if (bArr != null) {
            lVar.a(bArr, 2);
        }
    }

    public bn(byte b10, String str, byte[] bArr) {
        this.f83477a = b10;
        this.f83478b = str;
        this.f83479c = bArr;
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f83477a = kVar.a(this.f83477a, 0, true);
        this.f83478b = kVar.b(1, true);
        if (f83476d == null) {
            f83476d = new byte[]{0};
        }
        this.f83479c = kVar.c(2, false);
    }
}
