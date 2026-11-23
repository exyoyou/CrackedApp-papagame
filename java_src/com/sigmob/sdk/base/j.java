package com.sigmob.sdk.base;

/* JADX INFO: loaded from: classes5.dex */
public enum j {
    AppSWith(1),
    AutoNextPreload(2),
    NormalRequest(3),
    SplashCloseRequest(5),
    ReloadAfterExpiration(6),
    ActiveFailureReload(7),
    OtherRequest(999);


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f79464h;

    j(int type) {
        this.f79464h = type;
    }

    public int a() {
        return this.f79464h;
    }
}
