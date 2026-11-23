package com.byazt.yp;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.byazt.jj.uj;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 215, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile tt f22388c;
    public Context tt;
    public final com.byazt.hm.c ve;

    private tt(Context context) {
        Map<String, Object> map;
        this.tt = context == null ? com.byazt.bp.tt.getContext() : context.getApplicationContext();
        com.byazt.hm.c.C0328c c0328c = new com.byazt.hm.c.C0328c();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        com.byazt.hm.c.C0328c c0328cC = c0328c.c(10000L, timeUnit).tt(10000L, timeUnit).ve(10000L, timeUnit).c(true);
        if (uj.c() && (map = uj.f15846c) != null) {
            Object obj = map.get("case_id");
            if ((obj instanceof String) && !TextUtils.isEmpty((String) obj)) {
                c0328cC.c(new uj.c());
            }
        }
        com.byazt.hm.c cVarC = c0328cC.c();
        this.ve = cVarC;
        com.byazt.gqp.uj ujVarC = cVarC.a().c();
        if (ujVarC != null) {
            ujVarC.c(16);
        }
    }

    public static tt c() {
        if (f22388c == null) {
            synchronized (tt.class) {
                if (f22388c == null) {
                    f22388c = new tt(com.byazt.bp.tt.getContext());
                }
            }
        }
        return f22388c;
    }

    public com.byazt.hm.c tt() {
        return this.ve;
    }
}
