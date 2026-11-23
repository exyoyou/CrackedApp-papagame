package com.kwad.components.ad.splashscreen.local;

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
public class a extends com.kwad.sdk.core.response.a.a {

    /* JADX INFO: renamed from: kc, reason: collision with root package name */
    private static SimpleDateFormat f75261kc = new SimpleDateFormat("yyyy-MM-dd");
    public long kd = 0;
    public int ke = 0;

    public static void V(Context context) {
        String strVl = ai.Vl();
        a aVar = new a();
        if (TextUtils.isEmpty(strVl)) {
            aVar.ke = 1;
            aVar.kd = System.currentTimeMillis();
            ai.al(context, aVar.toJson().toString());
            return;
        }
        try {
            aVar.parseJson(new JSONObject(strVl));
            if (b(aVar.kd, System.currentTimeMillis())) {
                aVar.ke++;
            } else {
                aVar.ke = 1;
            }
            aVar.kd = System.currentTimeMillis();
            ai.al(context, aVar.toJson().toString());
        } catch (Exception e10) {
            c.printStackTraceOnly(e10);
        }
    }

    private static boolean b(long j10, long j11) {
        if (j10 > 0 && j11 > 0) {
            try {
                return f75261kc.format(new Date(j10)).equals(f75261kc.format(new Date(j11)));
            } catch (Exception e10) {
                c.printStackTraceOnly(e10);
            }
        }
        return false;
    }
}
