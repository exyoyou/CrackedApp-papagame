package com.efs.sdk.base.core.e;

import com.efs.sdk.base.core.util.Log;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.efs.sdk.base.core.e.a.a f26348a;

    public abstract com.efs.sdk.base.core.e.a.a a();

    public final void a(com.efs.sdk.base.core.d.b bVar) {
        try {
            if (this.f26348a == null) {
                synchronized (this) {
                    if (this.f26348a == null) {
                        com.efs.sdk.base.core.e.a.a aVarA = a();
                        this.f26348a = aVarA;
                        if (aVarA == null) {
                            return;
                        }
                    }
                }
            }
            this.f26348a.a(bVar);
        } catch (Throwable th) {
            Log.e("efs.processor", "log handle error", th);
        }
    }
}
