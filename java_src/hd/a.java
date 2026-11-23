package hd;

import android.content.Context;
import gd.b;

/* JADX INFO: loaded from: classes10.dex */
public class a {
    public static void a(Context context) {
        gd.a.f91371b = b.C1168b.f91378a.b(context.getApplicationContext());
        gd.a.f91370a = true;
    }

    public static boolean b() {
        if (gd.a.f91370a) {
            return gd.a.f91371b;
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    public static String c(Context context) {
        if (gd.a.f91370a) {
            return b.C1168b.f91378a.a(context.getApplicationContext(), "GUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    public static String d(Context context) {
        if (gd.a.f91370a) {
            return b.C1168b.f91378a.a(context.getApplicationContext(), "OUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    public static String e(Context context) {
        if (gd.a.f91370a) {
            return b.C1168b.f91378a.a(context.getApplicationContext(), "DUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    public static String f(Context context) {
        if (gd.a.f91370a) {
            return b.C1168b.f91378a.a(context.getApplicationContext(), "AUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }
}
