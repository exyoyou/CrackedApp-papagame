package com.switfpass.pay.activity;

/* JADX INFO: loaded from: classes2.dex */
final class a0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ BasePayActivity f82503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f82504c;

    a0(BasePayActivity basePayActivity, String str) {
        this.f82503b = basePayActivity;
        this.f82504c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        new com.switfpass.pay.utils.c0().a(this.f82503b, this.f82504c);
    }
}
