package com.join.android.app.common.utils;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class g extends APKUtils {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static g f34772e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f34773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f34774d;

    private g(Context context) {
        this.f34773c = context;
    }

    public static g t0(Context context) {
        if (f34772e == null) {
            zc.c cVarC = zc.c.c(null);
            g gVar = new g(context.getApplicationContext());
            f34772e = gVar;
            gVar.u0();
            zc.c.c(cVarC);
        }
        return f34772e;
    }

    private void u0() {
    }

    private g(Context context, Object rootFragment) {
        this.f34773c = context;
        this.f34774d = rootFragment;
    }
}
