package com.umeng.commonsdk.internal;

import android.content.Context;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f85222b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f85223a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f85224c;

    private b(Context context) {
        this.f85223a = context;
        this.f85224c = new c(context);
    }

    public static synchronized b a(Context context) {
        if (f85222b == null) {
            f85222b = new b(context.getApplicationContext());
        }
        return f85222b;
    }

    public c a() {
        return this.f85224c;
    }
}
