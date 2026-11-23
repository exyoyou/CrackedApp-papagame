package com.byazt.vx;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.aas.DeviceUtils;
import com.byazt.aas.pf;
import com.byazt.nys.PluginConstants;
import com.byazt.quv.AbsServerManager;
import com.coremedia.iso.boxes.k1;
import com.join.mgps.activity.BuildQRCodeActivity_;
import com.tencent.stat.DeviceInfo;
import com.umeng.analytics.pro.aw;
import com.umeng.analytics.pro.bm;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 117})
public class rl {
    public static JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.dna.u uVar = (com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new");
            com.byazt.dna.ve veVar = (com.byazt.dna.ve) com.byazt.ut.uj.getService("embed_applog");
            jSONObject.put(bm.f84421x, uVar.getOs());
            String strC = DeviceUtils.c((Boolean) null);
            jSONObject.put("imei", strC);
            jSONObject.put("imei_md5", gt.c(strC));
            jSONObject.put("oaid", veVar.getOAID(false));
            jSONObject.put("applog_did", veVar.getDid());
            jSONObject.put("device_model", uVar.getDeviceModel());
            jSONObject.put("vendor", uVar.getVendor());
            jSONObject.put(aw.f84323d, uVar.getUserAgent());
            jSONObject.put("ip", com.byazt.aas.my.c());
            jSONObject.put("package_name", eo.c());
            jSONObject.put("publisher_did", com.byazt.bp.c.t().rh());
            jSONObject.put("android_id", DeviceUtils.tt());
            jSONObject.put(bm.f84422y, uVar.getOsVersion());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public static JSONObject tt() {
        JSONObject jSONObject = new JSONObject();
        Context context = com.byazt.bp.tt.getContext();
        try {
            com.byazt.dna.u uVar = (com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new");
            String did = ((com.byazt.dna.ve) com.byazt.ut.uj.getService("embed_applog")).getDid();
            jSONObject.put("device_id", did);
            if (TextUtils.isEmpty(did)) {
                did = UUID.randomUUID().toString();
            }
            jSONObject.put("user_unique_id", did);
            jSONObject.put("sdk_version", com.byazt.yl.tt.tt());
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, com.byazt.yl.tt.uj());
            jSONObject.put(bm.f84421x, "Android");
            jSONObject.put(bm.f84422y, uVar.getOsVersion());
            jSONObject.put("device_model", uVar.getDeviceModel());
            jSONObject.put(bm.f84423z, com.byazt.eu.a.ve(com.byazt.bp.tt.getContext()) + "x" + com.byazt.eu.a.tt(com.byazt.bp.tt.getContext()));
            jSONObject.put("language", uVar.getLanguage());
            jSONObject.put(bm.M, uVar.getTimeZoneInt());
            jSONObject.put(bm.Q, qy.ve());
            jSONObject.put("openudid", DeviceUtils.tt());
            jSONObject.put(DeviceInfo.TAG_ANDROID_ID, "5685");
            jSONObject.put(bm.f84416s, sp.tt());
            jSONObject.put("app_version", sp.c());
            jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, eo.c());
            jSONObject.put("region", Locale.getDefault().getCountry());
            jSONObject.put("tz_name", Calendar.getInstance().getTimeZone().getID());
            jSONObject.put("tz_offset", Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 1000);
            jSONObject.put("rom", uVar.getRom());
            jSONObject.put(bm.H, Build.MANUFACTURER);
            c(context, jSONObject);
            jSONObject.put("display_density", pf.a());
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("density_dpi", com.byazt.eu.a.n(context));
            jSONObject.put(bm.F, Build.BRAND);
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put("build_serial", uVar.getBuildSerial());
            jSONObject.put("version_code", eo.tt());
            jSONObject.put("udid", DeviceUtils.c((Boolean) null));
            jSONObject.put("custom", ve());
            String strC = com.byazt.aas.my.c();
            if (TextUtils.isEmpty(strC)) {
                strC = "127.0.0.1";
            } else if (strC.contains(",")) {
                strC = c(strC);
            }
            jSONObject.put("ip", strC);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
        return jSONObject;
    }

    private static JSONObject ve() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.dna.ve veVar = (com.byazt.dna.ve) com.byazt.ut.uj.getService("embed_applog");
            String strC = DeviceUtils.c((Boolean) null);
            jSONObject.put("imei", strC);
            jSONObject.put("imei_md5", gt.c(strC));
            jSONObject.put("applog_did", veVar.getDid());
            jSONObject.put("publisher_did", com.byazt.bp.c.t().rh());
            jSONObject.put("android_id", DeviceUtils.tt());
            jSONObject.put("oaid", veVar.getOAID(false));
            return jSONObject;
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static JSONObject c(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.dna.u uVar = (com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new");
            jSONObject.put("imei", DeviceUtils.c((Boolean) null));
            jSONObject.put("android_id", DeviceUtils.tt());
            jSONObject.put(k1.f24950p, com.byazt.by.c.ve());
            jSONObject.put(BuildQRCodeActivity_.SSID_EXTRA, uVar.getSSID(null));
            jSONObject.put("wifi_mac", uVar.getWifiMac(null));
            jSONObject.put("imsi", uVar.getImsi(null));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SystemClock.elapsedRealtime());
            jSONObject.put("power_on_time", sb2.toString());
            jSONObject.put("rom_version", zm.c());
            jSONObject.put("sys_compiling_time", uVar.getCompilingTime());
            jSONObject.put("type", uVar.getDeviceType(false));
            jSONObject.put(bm.f84421x, uVar.getOs());
            jSONObject.put(bm.f84422y, uVar.getOsVersion());
            jSONObject.put("vendor", uVar.getVendor());
            jSONObject.put("device_model", uVar.getDeviceModel());
            jSONObject.put("language", uVar.getLanguage());
            jSONObject.put("conn_type", com.byazt.aas.qy.c());
            jSONObject.put("mac", uVar.getMacAddress(null));
            jSONObject.put("screen_width", com.byazt.eu.a.tt(context));
            jSONObject.put("screen_height", com.byazt.eu.a.ve(context));
            jSONObject.put("oaid", ((com.byazt.dna.ve) com.byazt.ut.uj.getService("embed_applog")).getOAID(false));
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private static void c(Context context, JSONObject jSONObject) {
        ArrayList<String> arrayListC;
        if (context == null || jSONObject == null || (arrayListC = x.c(context, "MD5")) == null || arrayListC.isEmpty()) {
            return;
        }
        try {
            jSONObject.put("sig_hash", Build.MANUFACTURER);
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    private static String c(String str) {
        String[] strArrSplit = str.split(",");
        return (strArrSplit == null || strArrSplit.length <= 0 || TextUtils.isEmpty(strArrSplit[0])) ? "127.0.0.1" : strArrSplit[0].trim();
    }
}
