package ms.bz.bd.c.Pgl;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class pblw {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final pblw f94450c = new pblw();
    private Context tt;

    public static pblw c() {
        return f94450c;
    }

    public final Context tt() {
        return this.tt;
    }

    public final void c(Context context) {
        this.tt = context != null ? context.getApplicationContext() : null;
    }
}
