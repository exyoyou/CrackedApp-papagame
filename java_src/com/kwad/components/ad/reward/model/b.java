package com.kwad.components.ad.reward.model;

import android.content.Context;
import android.text.TextUtils;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.utils.ai;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class b extends com.kwad.sdk.core.response.a.a {

    /* JADX INFO: renamed from: kc, reason: collision with root package name */
    private static SimpleDateFormat f75197kc = new SimpleDateFormat("yyyy-MM-dd");
    public long mC = -1;
    public int mD = 0;

    public static void L(Context context) {
        String strVm = ai.Vm();
        b bVar = new b();
        if (TextUtils.isEmpty(strVm)) {
            bVar.mD = 1;
            bVar.mC = System.currentTimeMillis();
            ai.am(context, bVar.toJson().toString());
            return;
        }
        try {
            bVar.parseJson(new JSONObject(strVm));
            if (b(bVar.mC, System.currentTimeMillis())) {
                bVar.mD++;
            } else {
                bVar.mD = 1;
                bVar.mC = System.currentTimeMillis();
            }
            ai.am(context, bVar.toJson().toString());
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
        }
    }

    private static boolean b(long j10, long j11) {
        if (j10 > 0 && j11 > 0) {
            try {
                return f75197kc.format(new Date(j10)).equals(f75197kc.format(new Date(j11)));
            } catch (Exception e10) {
                com.kwad.sdk.core.d.c.printStackTrace(e10);
            }
        }
        return false;
    }

    public static int dX() {
        String strVm = ai.Vm();
        if (TextUtils.isEmpty(strVm)) {
            return 0;
        }
        b bVar = new b();
        try {
            bVar.parseJson(new JSONObject(strVm));
            if (b(bVar.mC, System.currentTimeMillis())) {
                return bVar.mD;
            }
            return 0;
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
            return 0;
        }
    }
}
