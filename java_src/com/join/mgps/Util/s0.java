package com.join.mgps.Util;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class s0 extends r0 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static s0 f50019p;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Context f50020n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Object f50021o;

    private s0(Context context) {
        this.f50020n = context;
    }

    public static s0 I1(Context context) {
        if (f50019p == null) {
            zc.c cVarC = zc.c.c(null);
            s0 s0Var = new s0(context.getApplicationContext());
            f50019p = s0Var;
            s0Var.J1();
            zc.c.c(cVarC);
        }
        return f50019p;
    }

    private void J1() {
    }

    private s0(Context context, Object rootFragment) {
        this.f50020n = context;
        this.f50021o = rootFragment;
    }
}
