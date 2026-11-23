package com.php25.PDownload;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f78097d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f78098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f78099c;

    private b(Context context) {
        super(context);
        this.f78098b = context;
    }

    public static b i(Context context) {
        if (f78097d == null) {
            zc.c cVarC = zc.c.c(null);
            b bVar = new b(context.getApplicationContext());
            f78097d = bVar;
            bVar.j();
            zc.c.c(cVarC);
        }
        return f78097d;
    }

    private void j() {
    }

    private b(Context context, Object rootFragment) {
        super(context);
        this.f78098b = context;
        this.f78099c = rootFragment;
    }
}
