package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class d1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f94396c = true;
    public static String tt;
    private static volatile d1 ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f94397n = null;
    private pblk uj;

    final class pgla implements pblk.pblb {
        pgla() {
        }

        @Override // ms.bz.bd.c.Pgl.pblk.pblb
        public final void c(String str) {
            d1.this.f94397n = str;
        }
    }

    private d1(Context context) {
        try {
            this.uj = new pblk(new pgla());
            if (!f94396c || Build.VERSION.SDK_INT > 32) {
                return;
            }
            this.uj.c(context);
        } catch (Throwable unused) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "60714a", new byte[]{40, 39, 71});
        }
    }

    public final String c() {
        String str = tt;
        return str != null ? str : this.f94397n;
    }

    public static d1 c(Context context) {
        if (ve == null) {
            synchronized (d1.class) {
                if (ve == null) {
                    ve = new d1(context);
                }
            }
        }
        return ve;
    }
}
