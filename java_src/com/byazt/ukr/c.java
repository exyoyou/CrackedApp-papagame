package com.byazt.ukr;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.byakv.z.TTEncryptUtils;
import com.byazt.aas.DeviceUtils;
import com.byazt.aas.gr;
import com.byazt.aas.my;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.aas.z;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.nys.PluginConstants;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import com.byazt.quv.AbsServerManager;
import com.haima.hmcp.BuildConfig;
import com.tencent.stat.DeviceInfo;
import com.umeng.analytics.pro.aw;
import com.umeng.analytics.pro.bm;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1081, 20})
public class c implements com.byazt.vb.x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f20616c = new c();
    public long tt;
    public String uj;
    public int ve;

    private c() {
    }

    public static String c(int i10) {
        if (i10 == 120) {
            return "ldpi";
        }
        if (i10 == 160) {
            return "mdpi";
        }
        if (i10 == 240) {
            return "hdpi";
        }
        if (i10 == 320) {
            return "xhdpi";
        }
        if (i10 != 480) {
            return i10 != 640 ? "mdpi" : "xxxhdpi";
        }
        return "xxhdpi";
    }

    @Override // com.byazt.vb.x
    public String a() {
        return nb.gr();
    }

    @Override // com.byazt.vb.x
    public int da() {
        return gt.tt().di() ? 4 : 3;
    }

    @Override // com.byazt.vb.x
    public JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device_id", z.c());
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.byazt.vb.x
    public com.byazt.gs.a n() {
        return new t(com.byazt.hy.n.c().tt().tt());
    }

    @Override // com.byazt.vb.x
    public String sp() {
        return nb.t("/api/ad/union/sdk/stats/batch/");
    }

    @Override // com.byazt.vb.x
    public byte[] tt(JSONObject jSONObject, int i10) throws Throwable {
        byte[] bArrTt = tt(jSONObject);
        com.byazt.dna.n nVarTt = gr.tt();
        if (bArrTt == null || nVarTt == null || !nVarTt.getArmorLoadStatus() || i10 <= 3) {
            return null;
        }
        byte[] bArrEncrypt = nVarTt.encrypt(bArrTt);
        if (bArrEncrypt != null) {
            return bArrEncrypt;
        }
        yp.c().c(3, -1L, "stats", nVarTt.getSpecificArmorLoadStatus());
        return bArrEncrypt;
    }

    @Override // com.byazt.vb.x
    public int uj() {
        int iNb = gt.tt().nb();
        if (iNb < 0 || iNb == Integer.MAX_VALUE) {
            return 10;
        }
        return iNb;
    }

    @Override // com.byazt.vb.x
    public long ve() {
        long jCu = gt.tt().cu();
        if (jCu < 0 || jCu == 2147483647L) {
            return 5000L;
        }
        return jCu;
    }

    @Override // com.byazt.vb.x
    public boolean x() {
        return p.c();
    }

    public String c(Context context) {
        try {
            if (DeviceUtils.tt(context)) {
                return BuildConfig.PRODUCT_TV;
            }
            return DeviceUtils.c(context) ? "android_pad" : "android";
        } catch (Throwable unused) {
            return "android";
        }
    }

    @SuppressLint({"HardwareIds"})
    private JSONObject c(List<com.byazt.vb.tt> list, boolean z10, boolean z11) {
        JSONObject jSONObject = new JSONObject();
        Context context = gt.getContext();
        try {
            com.byazt.dna.u uVar = (com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new");
            int i10 = 0;
            if (z10) {
                jSONObject.put("sdk_version", p.f18094n);
                jSONObject.put(bm.f84416s, com.byazt.fh.c.a());
                jSONObject.put("app_version", com.byazt.fh.c.n());
                jSONObject.put(AbsServerManager.PACKAGE_QUERY_BINDER, nb.x());
                jSONObject.put("region", Locale.getDefault().getCountry());
                jSONObject.put("tz_name", Calendar.getInstance().getTimeZone().getID());
                jSONObject.put("tz_offset", Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 1000);
                ArrayList<String> arrayListC = com.byazt.nr.ve.c(context, "MD5");
                if (arrayListC != null && !arrayListC.isEmpty()) {
                    jSONObject.put("sig_hash", arrayListC.get(0));
                }
                jSONObject.put("version_code", nb.i());
            }
            jSONObject.put(aw.f84323d, uVar.getWebViewUA(false));
            com.byazt.qh.tt.c(context, jSONObject);
            jSONObject.put("openudid", DeviceUtils.tt());
            jSONObject.put("oaid", ((com.byazt.dna.ve) com.byazt.ut.uj.getService("embed_applog")).getOAID(false));
            jSONObject.put("ad_sdk_version", p.f18094n);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.1.1");
            jSONObject.put("is_plugin", p.c());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("client_ipv4", my.tt((String) null));
            jSONObject2.put("client_ipv6", my.tt());
            jSONObject.put("custom", jSONObject2);
            jSONObject.put("sim_op", uVar.getSimOperator());
            jSONObject.put("root", z11 ? 1 : 0);
            jSONObject.put(bm.M, uVar.getTimeZoneInt());
            jSONObject.put(bm.Q, rh.sp(context));
            jSONObject.put(bm.f84421x, "Android");
            jSONObject.put(bm.f84422y, Build.VERSION.RELEASE);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            if (TextUtils.isEmpty(this.uj)) {
                this.uj = c(context);
            }
            jSONObject.put(bm.ai, this.uj);
            jSONObject.put("device_model", uVar.getDeviceModel());
            jSONObject.put(bm.F, Build.BRAND);
            jSONObject.put(bm.H, Build.MANUFACTURER);
            jSONObject.put("language", Locale.getDefault().getLanguage());
            jSONObject.put(bm.f84423z, pf.n(context) + "x" + pf.uj(context));
            jSONObject.put("display_density", c(uVar.getDisplayDpi()));
            jSONObject.put("density_dpi", uVar.getDisplayDpi());
            jSONObject.put("device_id", z.c());
            int iVe = com.byazt.ml.c.ve(list, com.byazt.epi.c.uj("csj"));
            if (iVe != 0) {
                jSONObject.put(DeviceInfo.TAG_ANDROID_ID, String.valueOf(iVe));
            } else {
                jSONObject.put(DeviceInfo.TAG_ANDROID_ID, "1371");
            }
            jSONObject.put("rom", uVar.getRom());
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put("build_serial", uVar.getBuildSerial());
            jSONObject.put("ut", this.ve);
            jSONObject.put("uid", this.tt);
            jSONObject.put("locale_language", uVar.getLocalLanguage());
            jSONObject.put("screen_bright", Math.ceil(DeviceUtils.n() * 10.0f) / 10.0d);
            if (!DeviceUtils.c()) {
                i10 = 1;
            }
            jSONObject.put("is_screen_off", i10);
            jSONObject.put("download_channel", com.byazt.fh.c.i());
            jSONObject.put("mnc", uVar.getMnc());
            jSONObject.put("mcc", uVar.getMcc());
            jSONObject.put("pan_code_serial", com.sigmob.sdk.base.n.f79582i);
        } catch (Throwable th) {
            m.uj("log_net", th.getMessage());
        }
        return jSONObject;
    }

    private byte[] tt(JSONObject jSONObject) throws Throwable {
        GZIPOutputStream gZIPOutputStream = null;
        if (jSONObject == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        try {
            try {
                try {
                    GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(byteArrayOutputStream);
                    try {
                        gZIPOutputStream2.write(jSONObject.toString().getBytes());
                        gZIPOutputStream2.close();
                    } catch (Exception e10) {
                        e = e10;
                        gZIPOutputStream = gZIPOutputStream2;
                        m.c(e);
                        if (gZIPOutputStream != null) {
                            gZIPOutputStream.close();
                        }
                        return byteArrayOutputStream.toByteArray();
                    } catch (Throwable th) {
                        th = th;
                        gZIPOutputStream = gZIPOutputStream2;
                        if (gZIPOutputStream != null) {
                            try {
                                gZIPOutputStream.close();
                            } catch (IOException e11) {
                                m.c(e11);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e12) {
                e = e12;
            }
        } catch (IOException e13) {
            m.c(e13);
        }
        return byteArrayOutputStream.toByteArray();
    }

    @Override // com.byazt.vb.x
    public String tt() {
        return nb.zm();
    }

    @Override // com.byazt.vb.x
    public JSONObject c(List<com.byazt.vb.tt> list, boolean z10) {
        if (list != null && !list.isEmpty()) {
            JSONObject jSONObject = new JSONObject();
            boolean z11 = false;
            try {
                c(list.get(0));
                JSONArray jSONArray = new JSONArray();
                Iterator<com.byazt.vb.tt> it2 = list.iterator();
                while (it2.hasNext()) {
                    JSONObject jSONObjectSp = it2.next().sp();
                    if (TextUtils.equals("pangle_live_sdk_monitor", jSONObjectSp.optString(NotificationCompat.CATEGORY_EVENT))) {
                        if (!z11) {
                            z11 = true;
                        }
                        jSONObjectSp.putOpt("nt", Integer.valueOf(rh.ve(gt.getContext())));
                    }
                    jSONArray.put(jSONObjectSp);
                }
                jSONObject.put("header", c(list, z11, z10));
                jSONObject.put("event_v3", jSONArray);
                jSONObject.put("magic_tag", "ss_app_log");
                jSONObject.put("_gen_time", System.currentTimeMillis());
                return jSONObject;
            } catch (JSONException e10) {
                m.ve(e10.getMessage());
            }
        }
        return null;
    }

    @Override // com.byazt.vb.x
    public byte[] c(JSONObject jSONObject, int i10) throws Throwable {
        byte[] bArrTt = tt(jSONObject);
        if (bArrTt == null) {
            return null;
        }
        com.byazt.dna.n nVarTt = gr.tt();
        if (i10 > 3 && nVarTt != null) {
            byte[] bArrEncrypt = nVarTt.encrypt(bArrTt);
            if (bArrEncrypt != null) {
                return bArrEncrypt;
            }
            yp.c().c(3, -1L, "applog", nVarTt.getSpecificArmorLoadStatus());
            return bArrEncrypt;
        }
        return TTEncryptUtils.c(bArrTt, bArrTt.length);
    }

    @Override // com.byazt.vb.x
    public boolean c() {
        return com.byazt.omf.x.m().bm();
    }

    @Override // com.byazt.vb.x
    public JSONObject c(JSONObject jSONObject) {
        if (gt.tt().jf() == 1) {
            return new JSONObject();
        }
        return com.byazt.nr.c.c(jSONObject);
    }

    private void c(com.byazt.vb.tt ttVar) {
        String strOptString;
        if (ttVar == null) {
            return;
        }
        JSONObject jSONObjectSp = ttVar.sp();
        JSONObject jSONObjectOptJSONObject = jSONObjectSp.optJSONObject("params");
        if (jSONObjectOptJSONObject != null) {
            strOptString = jSONObjectOptJSONObject.optString("log_extra", "");
        } else {
            strOptString = jSONObjectSp.optString("log_extra", "");
        }
        long jA = nb.a(strOptString);
        int iSp = nb.sp(strOptString);
        if (jA == 0) {
            jA = this.tt;
        }
        this.tt = jA;
        if (iSp == 0) {
            iSp = this.ve;
        }
        this.ve = iSp;
    }
}
