package com.join.android.app.common.db;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f34444c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f34445a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f34446b;

    private b(Context context) {
        this.f34445a = context;
    }

    public static b b(Context context) {
        if (f34444c == null) {
            zc.c cVarC = zc.c.c(null);
            b bVar = new b(context.getApplicationContext());
            f34444c = bVar;
            bVar.c();
            zc.c.c(cVarC);
        }
        return f34444c;
    }

    private void c() {
    }

    private b(Context context, Object rootFragment) {
        this.f34445a = context;
        this.f34446b = rootFragment;
    }
}
