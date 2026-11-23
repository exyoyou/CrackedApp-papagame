package com.join.mgps.Util;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class h0 extends g0 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static h0 f49746m;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Context f49747k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Object f49748l;

    private h0(Context context) {
        this.f49747k = context;
    }

    public static h0 h0(Context context) {
        if (f49746m == null) {
            zc.c cVarC = zc.c.c(null);
            h0 h0Var = new h0(context.getApplicationContext());
            f49746m = h0Var;
            h0Var.i0();
            zc.c.c(cVarC);
        }
        return f49746m;
    }

    private void i0() {
    }

    private h0(Context context, Object rootFragment) {
        this.f49747k = context;
        this.f49748l = rootFragment;
    }
}
