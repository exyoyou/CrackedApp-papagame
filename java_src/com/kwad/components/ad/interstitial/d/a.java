package com.kwad.components.ad.interstitial.d;

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
    private static SimpleDateFormat f75152kc = new SimpleDateFormat("yyyy-MM-dd");
    public long mC = -1;
    public int mD = 0;

    public static void L(Context context) {
        String strVn = ai.Vn();
        a aVar = new a();
        if (TextUtils.isEmpty(strVn)) {
            aVar.mD = 1;
            aVar.mC = System.currentTimeMillis();
            ai.an(context, aVar.toJson().toString());
            return;
        }
        try {
            aVar.parseJson(new JSONObject(strVn));
            if (b(aVar.mC, System.currentTimeMillis())) {
                aVar.mD++;
            } else {
                aVar.mD = 1;
                aVar.mC = System.currentTimeMillis();
            }
            ai.an(context, aVar.toJson().toString());
        } catch (Exception e10) {
            c.printStackTrace(e10);
        }
    }

    private static boolean b(long j10, long j11) {
        if (j10 > 0 && j11 > 0) {
            try {
                return f75152kc.format(new Date(j10)).equals(f75152kc.format(new Date(j11)));
            } catch (Exception e10) {
                c.printStackTrace(e10);
            }
        }
        return false;
    }

    public static int dX() {
        String strVn = ai.Vn();
        if (TextUtils.isEmpty(strVn)) {
            return 0;
        }
        a aVar = new a();
        try {
            aVar.parseJson(new JSONObject(strVn));
            if (b(aVar.mC, System.currentTimeMillis())) {
                return aVar.mD;
            }
            return 0;
        } catch (Exception e10) {
            c.printStackTrace(e10);
            return 0;
        }
    }
}
