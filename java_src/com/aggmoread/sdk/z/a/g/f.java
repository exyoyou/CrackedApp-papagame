package com.aggmoread.sdk.z.a.g;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final f f3448c = new f(50005, "容器已销毁！");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final f f3449d = new f(50005, "未指定广告容器！");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final f f3450e = new f(50006, "图片加载失败！");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final f f3451f = new f(50007, "图片加载失败！");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final f f3452g = new f(50008, "activity is null！");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final f f3453h = new f(50001, "广告未初始化！");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3455b;

    public f(int i10, String str) {
        this.f3454a = i10;
        this.f3455b = str;
    }

    public int a() {
        return this.f3454a;
    }

    public String b() {
        return this.f3455b;
    }

    public String toString() {
        return "JuHeApiError{errorCode=" + this.f3454a + ", errorMessage='" + this.f3455b + "'}";
    }
}
