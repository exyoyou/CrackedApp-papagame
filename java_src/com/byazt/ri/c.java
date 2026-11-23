package com.byazt.ri;

import android.content.Context;
import android.os.Build;
import com.baidu.mobads.sdk.internal.bn;
import com.byazt.lt.tt;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kwad.sdk.api.model.AdnName;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsNextDownloadThreshold, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f19464c = 10;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static com.byazt.fk.c f19465n = null;
    public static int tt = 10;
    public static int uj = 10;
    public static int ve = 10;

    public static void c(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            com.byazt.ns.c.c();
        }
    }

    public static int n() {
        return uj;
    }

    public static int tt() {
        return f19464c;
    }

    public static int uj() {
        return ve;
    }

    public static int ve() {
        return tt;
    }

    public static void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            f19464c = jSONObject.optInt(MediationConstant.RIT_TYPE_SPLASH, 10);
            tt = jSONObject.optInt("reward", 10);
            ve = jSONObject.optInt(bn.f7598j, 10);
            int iOptInt = jSONObject.optInt(AdnName.OTHER, 10);
            uj = iOptInt;
            if (f19464c < 0) {
                f19464c = 10;
            }
            if (tt < 0) {
                tt = 10;
            }
            if (ve < 0) {
                ve = 10;
            }
            if (iOptInt < 0) {
                uj = 10;
            }
            tt.c("MediaConfig", "splash=", Integer.valueOf(f19464c), ",reward=", Integer.valueOf(tt), ",brand=", Integer.valueOf(ve), ",other=", Integer.valueOf(uj));
        } catch (Throwable th) {
            tt.ve("MediaConfig", th.getMessage());
        }
    }

    public static void c(com.byazt.fk.c cVar) {
        f19465n = cVar;
    }

    public static void c() {
        com.byazt.fk.c cVar = f19465n;
        if (cVar != null) {
            cVar.clearCache();
        }
    }
}
