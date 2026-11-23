package com.efs.sdk.base.core.c;

import com.efs.sdk.base.http.HttpResponse;

/* JADX INFO: loaded from: classes9.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.efs.sdk.base.core.d.b f26274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f26275b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f26276c;

    public e(com.efs.sdk.base.core.d.b bVar, c cVar, String str) {
        this.f26274a = bVar;
        this.f26275b = cVar;
        this.f26276c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar;
        com.efs.sdk.base.core.d.b bVar = this.f26274a;
        HttpResponse httpResponse = (bVar == null || (cVar = this.f26275b) == null) ? new HttpResponse() : cVar.a(bVar, true);
        d.a().a(this.f26276c, httpResponse.succ ? 0 : httpResponse.getHttpCode());
        this.f26276c = null;
        this.f26275b = null;
    }
}
