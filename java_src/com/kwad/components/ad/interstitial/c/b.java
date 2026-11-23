package com.kwad.components.ad.interstitial.c;

import android.content.Context;
import android.text.TextUtils;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.utils.ai;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class b extends com.kwad.sdk.core.response.a.a {

    /* JADX INFO: renamed from: kc, reason: collision with root package name */
    private static SimpleDateFormat f75151kc = new SimpleDateFormat("yyyy-MM-dd");
    public long kd = -1;
    public int mA = 0;
    public int mB = 0;

    public static void J(Context context) {
        String strVj = ai.Vj();
        b bVar = new b();
        if (TextUtils.isEmpty(strVj)) {
            bVar.mA = 1;
            bVar.kd = System.currentTimeMillis();
            ai.ai(context, bVar.toJson().toString());
            return;
        }
        try {
            bVar.parseJson(new JSONObject(strVj));
            if (b(bVar.kd, System.currentTimeMillis())) {
                bVar.mA++;
            } else {
                bVar.mA = 1;
                bVar.mB = 0;
                bVar.kd = System.currentTimeMillis();
            }
            ai.ai(context, bVar.toJson().toString());
        } catch (Exception e10) {
            c.printStackTraceOnly(e10);
        }
    }

    public static void K(Context context) {
        String strVj = ai.Vj();
        b bVar = new b();
        if (TextUtils.isEmpty(strVj)) {
            bVar.mB = 1;
            bVar.kd = System.currentTimeMillis();
            ai.ai(context, bVar.toJson().toString());
            return;
        }
        try {
            bVar.parseJson(new JSONObject(strVj));
            if (b(bVar.kd, System.currentTimeMillis())) {
                bVar.mB++;
            } else {
                bVar.mB = 1;
                bVar.mA = 0;
                bVar.kd = System.currentTimeMillis();
            }
            ai.ai(context, bVar.toJson().toString());
        } catch (Exception e10) {
            c.printStackTraceOnly(e10);
        }
    }

    private static boolean b(long j10, long j11) {
        if (j10 > 0 && j11 > 0) {
            try {
                return f75151kc.format(new Date(j10)).equals(f75151kc.format(new Date(j11)));
            } catch (Exception e10) {
                c.printStackTraceOnly(e10);
            }
        }
        return false;
    }

    public static int dV() {
        String strVj = ai.Vj();
        if (TextUtils.isEmpty(strVj)) {
            return 0;
        }
        b bVar = new b();
        try {
            bVar.parseJson(new JSONObject(strVj));
            return bVar.mA;
        } catch (Exception e10) {
            c.printStackTraceOnly(e10);
            return 0;
        }
    }

    public static int dW() {
        String strVj = ai.Vj();
        if (TextUtils.isEmpty(strVj)) {
            return 0;
        }
        b bVar = new b();
        try {
            bVar.parseJson(new JSONObject(strVj));
            return bVar.mB;
        } catch (Exception e10) {
            c.printStackTraceOnly(e10);
            return 0;
        }
    }
}
