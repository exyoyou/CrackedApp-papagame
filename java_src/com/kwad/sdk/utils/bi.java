package com.kwad.sdk.utils;

import com.kwad.sdk.service.ServiceProvider;

/* JADX INFO: loaded from: classes2.dex */
public abstract class bi implements Runnable {
    private boolean needReport;

    public bi() {
        this.needReport = true;
    }

    public abstract void doTask();

    @Override // java.lang.Runnable
    public final void run() {
        com.kwad.sdk.service.a.e eVar;
        try {
            doTask();
        } catch (Throwable th) {
            if (!this.needReport || (eVar = (com.kwad.sdk.service.a.e) ServiceProvider.get(com.kwad.sdk.service.a.e.class)) == null) {
                return;
            }
            eVar.gatherException(th);
        }
    }

    public bi(boolean z10) {
        this.needReport = z10;
    }
}
