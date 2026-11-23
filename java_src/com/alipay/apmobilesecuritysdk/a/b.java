package com.alipay.apmobilesecuritysdk.a;

/* JADX INFO: loaded from: classes7.dex */
final class b extends Thread {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f6983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f6984c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ String f6985d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ a f6986e;

    b(a aVar, String str, String str2, String str3) {
        this.f6986e = aVar;
        this.f6983b = str;
        this.f6984c = str2;
        this.f6985d = str3;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        a.c(this.f6986e, this.f6983b, this.f6984c, this.f6985d);
    }
}
