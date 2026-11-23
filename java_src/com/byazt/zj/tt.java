package com.byazt.zj;

import android.os.Build;
import android.text.TextUtils;
import com.byazt.aas.DeviceUtils;
import com.byazt.aas.nb;
import com.byazt.bwm.sp;
import com.byazt.dna.u;
import com.byazt.nr.a;
import com.byazt.nr.rh;
import com.byazt.nys.PluginConstants;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import com.byazt.omf.x;
import com.byazt.ut.uj;
import com.byazt.va.n;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bm;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, 13})
public class tt extends sp {

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, 194})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final tt f22772c = new tt();
    }

    private JSONObject n() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectCu = x.m().cu();
        boolean zDh = gt.tt().dh();
        if (jSONObjectCu != null) {
            Iterator<String> itKeys = jSONObjectCu.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!TextUtils.isEmpty(next)) {
                    JSONObject jSONObjectOptJSONObject = jSONObjectCu.optJSONObject(next);
                    if (jSONObjectOptJSONObject != null) {
                        jSONObjectOptJSONObject.put("plugin_update_network", x.m().zm().c(next));
                    }
                    if (zDh && next.equals("com.byted.live.lite")) {
                        jSONObject.putOpt(ve.tt(), jSONObjectOptJSONObject);
                    } else {
                        jSONObject.putOpt(next, jSONObjectOptJSONObject);
                    }
                }
            }
        }
        return jSONObject;
    }

    public static tt tt() {
        return c.f22772c;
    }

    private JSONObject uj() {
        JSONObject jSONObject = new JSONObject();
        try {
            uj.getService("device_info_new");
            com.byazt.dna.ve veVar = (com.byazt.dna.ve) uj.getService("embed_applog");
            jSONObject.put("oaid", veVar.getOAID(false));
            jSONObject.put("conn_type", rh.tt(gt.getContext()));
            jSONObject.put(bm.f84421x, 1);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("sdk_version", p.f18094n);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.1.1");
            jSONObject.put("package_name", nb.x());
            jSONObject.put("app_version", nb.da());
            jSONObject.put("app_code", nb.i());
            jSONObject.put("vendor", Build.MANUFACTURER);
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            String strRl = x.m().rl();
            jSONObject.put("ts", jCurrentTimeMillis);
            jSONObject.put(PluginConstants.KEY_APP_ID, strRl);
            jSONObject.put("req_sign", a.tt(strRl != null ? strRl.concat(String.valueOf(jCurrentTimeMillis)).concat(p.f18094n) : ""));
            jSONObject.put("channel", p.f18095x);
            jSONObject.put("applog_did", veVar.getDid());
            jSONObject.put("imei", DeviceUtils.c((Boolean) null));
            jSONObject.put("source", 1);
            jSONObject.put("device_abi", com.byazt.qya.tt.c());
            jSONObject.put("plugins", n());
            jSONObject.put("csj_type", x.m().bx() ? 1 : 0);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    @Override // java.lang.Runnable
    public void run() {
        n nVarTt = com.byazt.hy.n.c().tt().tt();
        nVarTt.c(nb.sl("/api/ad/union/sdk/settings/plugins"));
        nVarTt.tt("User-Agent", ((u) uj.getService("device_info_new")).getWebViewUA(false));
        nVarTt.c(com.byazt.nr.c.c(uj()));
        nVarTt.c(new com.byazt.mh.c() { // from class: com.byazt.zj.tt.1
            @Override // com.byazt.mh.c
            public void c(com.byazt.va.uj ujVar, com.byazt.hm.tt ttVar) {
                if (ttVar == null || !ttVar.i() || TextUtils.isEmpty(ttVar.n())) {
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(ttVar.n());
                    if (jSONObject.optInt("cypher") == 3) {
                        String strVe = com.byazt.nr.c.ve(jSONObject.optString("message"));
                        if (TextUtils.isEmpty(strVe)) {
                            return;
                        }
                        ve.c().c(new JSONObject(strVe).optJSONArray("plugins"));
                    }
                } catch (JSONException unused) {
                }
            }

            @Override // com.byazt.mh.c
            public void c(com.byazt.va.uj ujVar, IOException iOException) {
                try {
                    Iterator<String> itKeys = x.m().cu().keys();
                    while (itKeys.hasNext()) {
                        ve.c().c(itKeys.next(), 1007);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void ve() {
        if (rh.c(gt.getContext())) {
            com.byazt.bwm.n.tt(this);
        }
    }

    private tt() {
        super("PluginSettingsFetchTask");
    }
}
