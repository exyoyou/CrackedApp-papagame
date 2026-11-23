package com.kwad.sdk.a.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.utils.ai;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public static int auj = 0;
    public static long vL = -1;

    public static void J(Context context) {
        a aVar = new a();
        if (m(System.currentTimeMillis())) {
            auj++;
        } else {
            auj = 1;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        vL = jCurrentTimeMillis;
        aVar.auj = auj;
        aVar.kd = jCurrentTimeMillis;
        ai.at(context, aVar.toJson().toString());
    }

    public static int dV() {
        if (!m(System.currentTimeMillis())) {
            auj = 0;
        }
        return auj;
    }

    private static long ir() {
        long j10 = vL;
        if (j10 != -1) {
            return j10;
        }
        String strVv = ai.Vv();
        if (TextUtils.isEmpty(strVv)) {
            return 0L;
        }
        a aVar = new a();
        try {
            aVar.parseJson(new JSONObject(strVv));
            vL = aVar.kd;
            auj = aVar.auj;
        } catch (Exception e10) {
            c.printStackTraceOnly(e10);
        }
        return vL;
    }

    private static boolean m(long j10) {
        return ir() > 0 && j10 > 0 && ir() / 2460601000L == j10 / 2460601000L;
    }
}
