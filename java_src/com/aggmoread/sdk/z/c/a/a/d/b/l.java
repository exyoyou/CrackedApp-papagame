package com.aggmoread.sdk.z.c.a.a.d.b;

/* JADX INFO: loaded from: classes7.dex */
public class l implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.h f5151b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private h f5152c;

    public l(h hVar, com.aggmoread.sdk.z.c.a.a.c.h hVar2) {
        this.f5151b = hVar2;
        this.f5152c = hVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.aggmoread.sdk.z.c.a.a.c.h hVar;
        h hVar2 = this.f5152c;
        if (hVar2 == null || (hVar = this.f5151b) == null) {
            return;
        }
        hVar2.c(hVar);
    }
}
