package com.byazt.oy;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.gqp.t;
import com.byazt.nr.m;
import com.byazt.nr.sp;
import java.io.File;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 706, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f18547a = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f18548c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static t f18549n;
    public static Context tt;
    public static boolean uj;
    public static String ve;

    public static String c() {
        if (TextUtils.isEmpty(ve)) {
            try {
                File file = new File(sp.c(getContext(), false, null), "ttad_dir");
                if (!file.exists()) {
                    file.mkdirs();
                }
                ve = file.getAbsolutePath();
            } catch (Throwable th) {
                m.c(th);
            }
        }
        return ve;
    }

    public static Context getContext() {
        return tt;
    }

    public static int n() {
        return f18547a;
    }

    public static boolean tt() {
        return uj;
    }

    public static boolean uj() {
        return f18548c;
    }

    public static t ve() {
        if (f18549n == null) {
            t.c cVar = new t.c("v_config");
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            f18549n = cVar.c(10000L, timeUnit).tt(10000L, timeUnit).ve(10000L, timeUnit).c();
        }
        return f18549n;
    }

    public static void c(Context context, String str) {
        tt = context.getApplicationContext();
        ve = str;
    }

    public static void c(boolean z10) {
        uj = z10;
    }

    public static void c(t tVar) {
        f18549n = tVar;
    }
}
