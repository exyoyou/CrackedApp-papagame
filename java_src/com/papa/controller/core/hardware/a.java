package com.papa.controller.core.hardware;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final String f76639e = "GB";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static final int f76640f = 16;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f76641g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f76642h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f76643i = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f76644j = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f76645k = 5;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f76646l = 6;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f76647m = 246;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f76648n = 19;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f76649o = 20;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f76650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f76651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f76652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f76653d;

    a() {
    }

    public byte[] a() {
        return null;
    }

    protected byte[] b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        byte[] bytes = f76639e.getBytes();
        int length = bytes.length + 2 + bArr.length;
        byte[] bArr2 = {16, (byte) length};
        byte[] bArr3 = new byte[length];
        System.arraycopy(bytes, 0, bArr3, 0, bytes.length);
        System.arraycopy(bArr2, 0, bArr3, bytes.length, 2);
        System.arraycopy(bArr, 0, bArr3, bytes.length + 2, bArr.length);
        return bArr3;
    }

    public String c() {
        return this.f76650a;
    }

    protected int d(byte b10) {
        return b10 & 255;
    }

    public int e() {
        return this.f76652c;
    }

    public int f() {
        return this.f76651b;
    }

    public void g(String str) {
        this.f76650a = str;
    }

    public int getType() {
        return this.f76653d;
    }

    public void h(int i10) {
        this.f76652c = i10;
    }

    public void i(int i10) {
        this.f76653d = i10;
    }

    public void j(int i10) {
        this.f76651b = i10;
    }

    public a(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        int length = bArr.length;
        this.f76652c = length;
        if (length > 5) {
            byte[] bArr2 = new byte[2];
            this.f76651b = d(bArr[2]);
            this.f76653d = d(bArr[4]);
            System.arraycopy(bArr, 0, bArr2, 0, 2);
            this.f76650a = new String(bArr2);
        }
    }
}
