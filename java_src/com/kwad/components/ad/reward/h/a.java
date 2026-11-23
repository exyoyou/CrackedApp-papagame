package com.kwad.components.ad.reward.h;

import android.content.Context;
import android.text.TextUtils;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.utils.ai;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static long vL = -1;
    public static int vM;

    public static void J(Context context) {
        b bVar = new b();
        if (m(System.currentTimeMillis())) {
            vM++;
        } else {
            vM = 1;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        vL = jCurrentTimeMillis;
        bVar.vN = vM;
        bVar.kd = jCurrentTimeMillis;
        ai.ak(context, bVar.toJson().toString());
    }

    public static int dV() {
        if (!m(System.currentTimeMillis())) {
            vM = 0;
        }
        return vM;
    }

    private static long ir() {
        long j10 = vL;
        if (j10 != -1) {
            return j10;
        }
        String strVk = ai.Vk();
        if (TextUtils.isEmpty(strVk)) {
            return 0L;
        }
        b bVar = new b();
        try {
            bVar.parseJson(new JSONObject(strVk));
            vL = bVar.kd;
            vM = bVar.vN;
        } catch (Exception e10) {
            c.printStackTraceOnly(e10);
        }
        return vL;
    }

    private static boolean m(long j10) {
        return ir() > 0 && j10 > 0 && ir() / 2460601000L == j10 / 2460601000L;
    }
}
