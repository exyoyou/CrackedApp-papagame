package com.byazt.ds;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.tencent.stat.DeviceInfo;
import org.json.JSONException;
import org.json.JSONObject;
import u.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 91})
public class sp extends ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f13157a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Context f13158n;

    public sp(Context context, x xVar) {
        super(false, false);
        this.f13158n = context;
        this.f13157a = xVar;
    }

    @Override // com.byazt.ds.ve
    public boolean c(JSONObject jSONObject) throws JSONException {
        jSONObject.put("sdk_version", MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_START_TIME);
        jSONObject.put("sdk_version_name", "7.5.0.0.baseChina-alpha.3");
        jSONObject.put("channel", this.f13157a.sl());
        i.c(jSONObject, DeviceInfo.TAG_ANDROID_ID, this.f13157a.da());
        i.c(jSONObject, "release_build", this.f13157a.yv());
        i.c(jSONObject, "app_region", this.f13157a.u());
        i.c(jSONObject, "app_language", this.f13157a.t());
        i.c(jSONObject, b.f97416b, this.f13157a.p());
        i.c(jSONObject, "ab_sdk_version", this.f13157a.z());
        i.c(jSONObject, "ab_version", this.f13157a.my());
        i.c(jSONObject, "aliyun_uuid", this.f13157a.tt());
        String strZm = this.f13157a.zm();
        if (!TextUtils.isEmpty(strZm)) {
            try {
                jSONObject.put("app_track", new JSONObject(strZm));
            } catch (Throwable th) {
                com.byazt.yv.da.tt(th);
            }
        }
        String strYp = this.f13157a.yp();
        if (strYp != null && strYp.length() > 0) {
            jSONObject.put("custom", new JSONObject(strYp));
        }
        i.c(jSONObject, "user_unique_id", this.f13157a.m());
        return true;
    }
}
