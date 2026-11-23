package com.alipay.android.phone.mrpc.core;

/* JADX INFO: loaded from: classes7.dex */
public final class a extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f6868a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f6869b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f6870c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f6871d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f6872e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f6873f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f6874g = 6;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f6875h = 7;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f6876i = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f6877j = 9;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final long f6878k = -6320569206365033676L;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f6879l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f6880m;

    public a(Integer num, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Http Transport error");
        if (num != null) {
            sb2.append("[");
            sb2.append(num);
            sb2.append("]");
        }
        sb2.append(" : ");
        if (str != null) {
            sb2.append(str);
        }
        super(sb2.toString());
        this.f6879l = num.intValue();
        this.f6880m = str;
    }

    public final int a() {
        return this.f6879l;
    }

    public final String b() {
        return this.f6880m;
    }

    private a(String str) {
        super(str);
        this.f6879l = 0;
        this.f6880m = str;
    }
}
