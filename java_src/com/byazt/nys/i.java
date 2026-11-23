package com.byazt.nys;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.uk.t;
import com.byazt.uk.yp;
import com.byazt.uq.u;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.IZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.PluginManager;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTPluginListener;
import com.join.mgps.Util.o0;
import com.join.mgps.dto.Constant;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.tencent.cos.common.COSHttpResponseKey;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 430, 42})
public class i {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static volatile TTPluginListener f17702t;
    public static volatile BaseDexClassLoader uj;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Context f17705i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f17700c = "next" + File.separator;
    public static final HashMap<String, TTPluginListener> tt = new HashMap<>();
    public static final HashMap<String, Handler> ve = new HashMap<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile i f17701n = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CountDownLatch f17703a = new CountDownLatch(1);
    public volatile boolean sp = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile String f17706x = "none";

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public JSONObject f17704da = new JSONObject();
    public EventListener sl = null;

    @com.byazt.zqa.c(c = {0, 1, 430, 64})
    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f17713a;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f17717n;
        public String sp;
        public int uj;
        public String ve;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f17714c = "";
        public File tt = null;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f17716i = 0;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public int f17715da = Integer.MAX_VALUE;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public List<String> f17718x = null;

        public boolean c() {
            return this.f17713a == 3;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 430, 1937})
    private static final class tt implements IZeusLogger {
        private tt() {
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void e(String str, String str2, Throwable th) {
            com.byazt.bog.a.n(str, str2, th);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void i(String str, String str2) {
            com.byazt.bog.a.ve(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void v(String str, String str2) {
            com.byazt.bog.a.c(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void w(String str, String str2) {
            com.byazt.bog.a.uj(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void w(String str, String str2, Throwable th) {
            com.byazt.bog.a.uj(str, str2, th);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 430, 1943})
    static final class ve implements Serializable, Function<SparseArray<Object>, Object> {
        private void c(c cVar) {
            try {
                if (TextUtils.isEmpty(cVar.ve) || !cVar.ve.equals("com.byted.pangle")) {
                    return;
                }
                i.c(TTAppContextHolder.getContext()).tt();
            } catch (Exception unused) {
            }
        }

        public SparseArray<Object> onEvent(int i10, Result result) {
            com.byazt.rl.ve veVarC = com.byazt.rl.ve.c();
            if (i10 == 1) {
                n.c("plugin_download", "plugin update start");
                ValueSet valueSetValues = result.values();
                if (valueSetValues == null) {
                    n.c("plugin_download", "valueSet empty");
                    return null;
                }
                String strStringValue = valueSetValues.stringValue(3);
                int iCode = result.code();
                if (!result.isSuccess()) {
                    n.c("plugin_download", "plugin update received failed");
                    com.byazt.bog.a.uj("TTPluginManager", "plugin update received failed");
                    i.ve(strStringValue, iCode);
                    return null;
                }
                c cVarUj = i.uj(valueSetValues.stringValue(2));
                if (cVarUj == null || TextUtils.isEmpty(cVarUj.ve)) {
                    n.c("plugin_download", "plugin update received with invalid config");
                    com.byazt.bog.a.uj("TTPluginManager", "plugin update received with invalid config");
                    return null;
                }
                n.c("plugin_download", "plugin update received: " + cVarUj.ve);
                com.byazt.bog.a.uj("TTPluginManager", "plugin update received: " + cVarUj.ve);
                if (cVarUj.c()) {
                    n.c("plugin_download", "plugin revert " + cVarUj.ve);
                    Zeus.unInstallPlugin(cVarUj.ve);
                } else {
                    c(cVarUj);
                    n.c("plugin_download", "plugin install");
                    if (i.tt(cVarUj)) {
                        veVarC.c(4, true);
                    }
                }
            }
            return veVarC.tt().sparseArray();
        }

        @Override // java.util.function.Function
        public Object apply(SparseArray<Object> sparseArray) {
            if (sparseArray == null) {
                return null;
            }
            ValueSet valueSetTt = com.byazt.rl.ve.c(sparseArray).tt();
            int iIntValue = valueSetTt.intValue(-99999987);
            SparseArray sparseArray2 = (SparseArray) valueSetTt.objectValue(-99999979, SparseArray.class);
            if (sparseArray2 == null) {
                return null;
            }
            ValueSet valueSetTt2 = com.byazt.rl.ve.c((SparseArray<Object>) sparseArray2).tt();
            return onEvent(iIntValue, com.byazt.rl.tt.c().c(valueSetTt2.intValue(-999900)).c(valueSetTt2.stringValue(-999901)).c(valueSetTt2.booleanValue(-999903)).c(com.byazt.rl.ve.c((SparseArray<Object>) valueSetTt2.objectValue(-999902, SparseArray.class)).tt()).tt());
        }
    }

    private i(Context context) {
        this.f17705i = context.getApplicationContext();
        try {
            GlobalParam.getInstance().closeHookHuaweiOnInit(true);
        } catch (Throwable th) {
            com.byazt.bog.a.uj("TTPluginManager", "Unexpected error for closeHookHuaweiOnInit.", th);
        }
        tt(context.getApplicationContext());
        Plugin plugin = Zeus.getPlugin("com.byted.pangle");
        if (plugin != null) {
            plugin.setApiBridge(com.byazt.lm.uj.instance());
        }
    }

    private static boolean uj(Context context) {
        File fileVe = ve(context);
        return fileVe.exists() && fileVe.listFiles().length != 0;
    }

    private void tt(Context context) {
        try {
            u.c().c(new sl());
            com.byazt.th.n.c(new com.byazt.uk.a() { // from class: com.byazt.nys.i.1
                @Override // com.byazt.uk.a
                public void c(Runnable runnable) {
                    com.byazt.qy.c.c().uj().execute(runnable);
                }

                @Override // com.byazt.uk.a
                public void tt(Runnable runnable) {
                    com.byazt.qy.c.c().uj().execute(runnable);
                }

                @Override // com.byazt.uk.a
                public void ve(Runnable runnable) {
                    new Handler(Looper.getMainLooper()).post(runnable);
                }
            });
            com.byazt.blh.c cVar = new com.byazt.blh.c() { // from class: com.byazt.nys.i.2
                @Override // com.byazt.blh.c
                public void c(String str, JSONObject jSONObject) {
                    if ("load_finish".equals(str) && jSONObject != null && "com.byted.pangle".endsWith(jSONObject.optString("plugin_package_name"))) {
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("duration", jSONObject.opt("duration"));
                            jSONObject2.put("message", jSONObject.opt("message"));
                            i.this.f17704da.put("zeus", jSONObject2);
                        } catch (Exception e10) {
                            com.byazt.bog.a.c(e10);
                        }
                    }
                    if (TTAdSdk.isInitSuccess()) {
                        a.c(str, jSONObject);
                    } else {
                        a.tt(str, jSONObject);
                    }
                }

                @Override // com.byazt.blh.c
                public void c(String str, String str2) {
                    n.c(str, str2);
                }
            };
            com.byazt.th.n.c(new com.byazt.uk.a() { // from class: com.byazt.nys.i.3
                @Override // com.byazt.uk.a
                public void c(Runnable runnable) {
                    com.byazt.qy.c.c().uj().execute(runnable);
                }

                @Override // com.byazt.uk.a
                public void tt(Runnable runnable) {
                    com.byazt.qy.c.c().uj().execute(runnable);
                }

                @Override // com.byazt.uk.a
                public void ve(Runnable runnable) {
                    new Handler(Looper.getMainLooper()).post(runnable);
                }
            });
            GlobalParam globalParam = GlobalParam.getInstance();
            globalParam.setReporter(cVar);
            globalParam.setCheckPermission(false);
            globalParam.setDownloadDir(ve(context));
            globalParam.setLogger(new tt());
            globalParam.setSignature("com.byted.pangle", "MIIDfTCCAmWgAwIBAgIEfRwYPjANBgkqhkiG9w0BAQsFADBvMQswCQYDVQQGEwJDTjEQMA4GA1UECBMHQmVpamluZzEQMA4GA1UEBxMHQmVpamluZzESMBAGA1UEChMJQnl0ZURhbmNlMQ8wDQYDVQQLEwZQYW5nbGUxFzAVBgNVBAMTDkNodWFuIFNoYW4gSmlhMB4XDTIxMTEwODA2MjQzOVoXDTQ2MTEwMjA2MjQzOVowbzELMAkGA1UEBhMCQ04xEDAOBgNVBAgTB0JlaWppbmcxEDAOBgNVBAcTB0JlaWppbmcxEjAQBgNVBAoTCUJ5dGVEYW5jZTEPMA0GA1UECxMGUGFuZ2xlMRcwFQYDVQQDEw5DaHVhbiBTaGFuIEppYTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAIBKeRL+4mfCn1SLYv6OemfwwItkjlLPyqOEugkV6lanFTcZgLwEl5LIkL0y28UncPtMX1Mii6DzCdJ/plw7S9+RT/hYDneu339IKWojaU2qai/5FokHlQ0MMnYl5yry00ghVPsl1u+03cQA2ZnjIMiFhrBJpQzHt7IYvq2aEEMBcY8uT7iFoBI848e1mL1joVS2z02C3NliP7ZNARkXH+rTQAlCJulT5IZk+V/PTaKqzgNrkhsKh0/tBmU7m8u79x/xpgGsE19H18AgS4P/9/MDCRe2Z35boZeccaUy2MXCwv3djzUcDk3rRzQPYzdpyyRnrFMuhiKesc5VHgUMs9kCAwEAAaMhMB8wHQYDVR0OBBYEFENENrNWGzc2WhxdvhoMDs57U70zMA0GCSqGSIb3DQEBCwUAA4IBAQAHqDCrmvyBBmIGXwuL1rwS/Qv9ZJIZykBIaNMm+H1IfitCl4yXd9N2n+PjE0UZtxZ21UZOt9wAr+RFiSl5YRXqpt7WLARTy4YW3RiQ+wiL7bshzeSYBoSiC427Bfeq0WjwY0/jHlr8uouppyJOz++6U9hrYX2EW/6UjH5XlWiKQJ6b2ZzPcP8Xpg/TJn4tWvXJP6jw9kRRP2GmMttY78leWQst2QEZILmWJubXRLPj9O+qx2uP9oGTD4sc1vb9hzkOHBIHzGaalqLFbbGaeFpLFHoGTsnOfPTwUVKDZYmxbkcmR1bp7eYOW+nSQNMLn0FjDewZl5l37Sa/gz0WVHon");
            globalParam.setSignature("com.byted.csj.ext", "MIIDezCCAmOgAwIBAgIENkE1KDANBgkqhkiG9w0BAQsFADBtMQswCQYDVQQGEwI4NjEQMA4GA1UECBMHYmVpamluZzEQMA4GA1UEBxMHYmVpamluZzESMBAGA1UEChMJYnl0ZWRhbmNlMRIwEAYDVQQLEwlieXRlZGFuY2UxEjAQBgNVBAMTCWJ5dGVkYW5jZTAgFw0yMjExMDIwODI3MzlaGA8yMDUwMDMyMDA4MjczOVowbTELMAkGA1UEBhMCODYxEDAOBgNVBAgTB2JlaWppbmcxEDAOBgNVBAcTB2JlaWppbmcxEjAQBgNVBAoTCWJ5dGVkYW5jZTESMBAGA1UECxMJYnl0ZWRhbmNlMRIwEAYDVQQDEwlieXRlZGFuY2UwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCc9Z2F3xxOMX1qTXMy2aPmS9OSkqrp8C8bHwS1hkNVR4umKREuqOn73INNo+R706jaCVnlPwxDwWjtX6H74DE4CveivyM9f2wNC3yIyDW+5j7lW/keTQcOlGLDEJQv4O/6FbB/jNU6epjyNaNIZhgZcvTpgaSixbdyHzRTFmvMh+WovdVK/J9LnHOQ+pmPZj7NB6MQRGMUrPEotLHQca3cmnLrnPAaZQaVoaFE9lOt9syyqEuf361SprNIGDtbkJuX3EqV/QOKWFwZX94IS7ZGSvfyCojcD4kaUSbaSoZC7zEuBb7l69g+ZMrJ/v6wkm01wxsNNssUwF7k6Sp0zubbAgMBAAGjITAfMB0GA1UdDgQWBBSxk+gVdDco1dP65hP67qoKNlMEYDANBgkqhkiG9w0BAQsFAAOCAQEAfosExl/AYEbS2xqHBTHa28cvnp/SElUQuzW6aWLqkfk9cxmFSI/euUV3/eB8RN+U2X47Y05u6+XUxTv0tSSEtyXNawm0qWH8jkR4gZY38YqBChKjhea668oT5X3Uocrw7SYXO/BfI8SKPa0uI/U8Cyl3uctbmmq/pPUkd3mKAy+HgyJoThD6K0oyiADlygngUMVTv6Uvid4qPj/bBnxI+LvVeX4l1dxGqWkiafQW9sz+RbFdge3X2XsSH4eo01BsCwOYEv1lHO2FrbAtFNpnIsSqrERdFaAJZ3tlJmg9bA03png8A2AajEjkhaOhduJB8zkSlvHNpoQMIAS9WtkG/w==");
            globalParam.setSignature("com.byted.live.lite", "MIIDSTCCAjGgAwIBAgIEaLy5tzANBgkqhkiG9w0BAQsFADBVMQswCQYDVQQGEwIxMTEMMAoGA1UECBMDMTExMQ4wDAYDVQQHEwUxMTExMTEMMAoGA1UEChMDMTExMQwwCgYDVQQLEwMxMTExDDAKBgNVBAMTAzExMTAeFw0yMDEyMDMxMjQyMTJaFw00NTExMjcxMjQyMTJaMFUxCzAJBgNVBAYTAjExMQwwCgYDVQQIEwMxMTExDjAMBgNVBAcTBTExMTExMQwwCgYDVQQKEwMxMTExDDAKBgNVBAsTAzExMTEMMAoGA1UEAxMDMTExMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA45E52YdkJm4gPCXZq7KDoM1h6pgSswllC/CwDOmh8pDGvX4ROaYP1vr2biRlXMHg7G0iXpxWVdlTtx+4QFd3dC+cGJQk0f6apGo2n2RpMA0zIsSf0VO1a3GjWLei5INo+4RDdciqJ4jfsoqBIjZETRkky+UU4eO/oyrAwOu4KdMln3Bg3u7eHWU4kMFrXxrRruT3Q/9gzlO90yQa0CZPWVDrk6cGJtJwJGhWm+62S3U8D26HE++eGP7ve83QBDGtKqx7HpCAFWUiYBgXGq12H0amQDkKcPcr/EFCaBlombSgkN0t6zBX80m+wcUPC75IBTmMV/DT2dXcgjZ2I1JSCQIDAQABoyEwHzAdBgNVHQ4EFgQUPDyIeKI0KhZFPHyn36gMMIYrpukwDQYJKoZIhvcNAQELBQADggEBAHkl0DoCRwn+XKsDJE+wGMpBBqUDzL6DSOnJx4SNqb7YZZU0ThcDK7jY4If3QRkvMio6ODrVZc2U/m/Tc3VeMk5h2W2UZRUWHNH3k9Xe0720uL20ZeH2Y6IG4L5HG8kIbTbFtX3gJpPG/xAcez+CzyCFLWQAZt1N+csG0syWkXJ0Nryq8VrgSCyCXD1KzFxrOe+65wtu50Vi68Vlbk7BZe/G8Qm0RhKmxq5BPMBJ4uY3be+03Ba5qC//o1XQHOEAjrJKXcN5wqHdFZTkmuxVyIPogZOzx4JlNl0zOrYGDJxp7aZfKF9FkXQyF7x0Ns3mZEtjx/+flXRzAAU9MDhPr/0=");
            Zeus.setDecodeCallback(new t() { // from class: com.byazt.nys.i.4
                @Override // com.byazt.uk.t
                public String c(String str) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        String strOptString = jSONObject.optString("cypher");
                        String strOptString2 = jSONObject.optString("message");
                        if (!TextUtils.equals(strOptString, "3") || TextUtils.isEmpty(strOptString2)) {
                            return null;
                        }
                        return com.byazt.zyp.tt.tt(strOptString2);
                    } catch (Throwable th) {
                        com.byazt.bog.a.tt("TTPluginManager", "dex plugin decode throw error ".concat(String.valueOf(th)));
                        return null;
                    }
                }
            });
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("isDexPlugin", 1);
                jSONObject.put("apiVersionCode", 1000);
                jSONObject.put("packageName", "com.byted.mixed");
                jSONObject.put("hostPackageName", "com.byted.pangle");
                jSONObject.put("minPluginVersion", 1000);
                jSONObject.put("maxPluginVersion", 999999999);
                jSONObject.put("internalPath", "");
                jSONObject.put("internalVersionCode", -1);
                jSONObject.put("appKey", "");
                jSONObject.put("appSecretKey", "");
                Zeus.addPackageDexManager("com.byted.mixed", jSONObject);
            } catch (Throwable th) {
                com.byazt.bog.a.tt("TTPluginManager", "init dex plugin config throw error " + th);
            }
            globalParam.closeBgDex2oat(true);
            Zeus.init((Application) context);
            Zeus.registerPluginInstallListener(new yp() { // from class: com.byazt.nys.i.5
                @Override // com.byazt.uk.yp
                public void c(String str, int i10, String str2) {
                    if (i10 == 7) {
                        i.this.tt(str, i10);
                        return;
                    }
                    if (i10 == 6) {
                        i.this.tt(str, i10);
                        if (i.this.sl == null || !"com.byted.pangle".equals(str)) {
                            com.byazt.bog.a.tt("TTPluginManager", "no main pl");
                        } else {
                            i.this.sl.onEvent(0, com.byazt.rl.tt.c().c(true).tt());
                        }
                    }
                }
            });
            this.sp = true;
        } catch (Throwable th2) {
            com.byazt.bog.a.uj("TTPluginManager", "Unexpected error for init zeus.", th2);
            this.f17706x = th2.getMessage();
        }
        PluginManager pluginManager = PluginManager.getInstance();
        pluginManager.registerPlugin("{apiVersionCode:7611,packageName:com.byted.pangle,minPluginVersion:7611,internalPath:'',internalVersionCode:7611}");
        pluginManager.registerPlugin("{apiVersionCode:1000,packageName:com.byted.csj.ext,minPluginVersion:1000,maxPluginVersion:999999999,internalPath:'',internalVersionCode:-1,appKey:'',appSecretKey:''}");
        pluginManager.registerPlugin("{apiVersionCode:2114,packageName:com.byted.live.lite,minPluginVersion:211400,maxPluginVersion:999999,isSupportLibIsolate:true}");
    }

    private static File ve(Context context) {
        return new File(com.byazt.nys.tt.c(context, "tt_pangle_bykv_file", 0), f17700c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c uj(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return c(new JSONObject(str));
        } catch (JSONException unused) {
            com.byazt.bog.a.n("TTPluginManager", "Invalid plugin info:" + str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ve(String str, int i10) {
        com.byazt.bog.a.uj("TTPluginManager", "plugin update failed");
        Bundle bundle = new Bundle();
        bundle.putInt("code", i10);
        TTPluginListener tTPluginListener = tt.get(str);
        if (tTPluginListener != null) {
            tTPluginListener.onPluginListener(1001, null, null, bundle);
        }
    }

    public static i c(Context context) {
        if (f17701n == null) {
            synchronized (i.class) {
                if (f17701n == null) {
                    f17701n = new i(context);
                }
            }
        }
        return f17701n;
    }

    public JSONObject c() {
        return this.f17704da;
    }

    public BaseDexClassLoader c(sp spVar, int i10) throws Exception {
        boolean z10;
        String str;
        if (this.sp) {
            boolean zTt = com.byazt.zyp.ve.tt();
            int i11 = 8;
            if (!Zeus.isPluginInstalled("com.byted.pangle")) {
                if (zTt) {
                    new x(this.f17705i).c();
                }
                if (uj(this.f17705i)) {
                    Zeus.installFromDownloadDir();
                }
                try {
                    if (!zTt) {
                        com.byazt.bog.a.tt("TTPluginManager", "dont wait pl");
                    } else {
                        com.byazt.bog.a.tt("TTPluginManager", "wait start");
                        this.f17703a.await(i10, TimeUnit.MILLISECONDS);
                    }
                    com.byazt.bog.a.tt("TTPluginManager", "wait done");
                    spVar.tt("wait_install_cost");
                } catch (Exception unused) {
                    com.byazt.bog.a.tt("TTPluginManager", "Install wait time out");
                    throw new uj(8, "install wait timeout");
                }
            }
            if (Zeus.isPluginLoaded("com.byted.pangle") || Zeus.loadPlugin("com.byted.pangle")) {
                uj = Zeus.getPlugin("com.byted.pangle").mClassLoader;
                z10 = true;
            } else {
                z10 = false;
            }
            spVar.tt("get_classloader_cost");
            Zeus.installFromDownloadDir();
            if (uj == null) {
                if (this.f17703a.getCount() != 0) {
                    if (zTt) {
                        i11 = 10;
                        str = "this device does not support arm64-v8a, and install wait time out";
                    } else {
                        str = "install wait time out";
                    }
                    com.byazt.bog.a.uj("TTPluginManager", "Install wait time out");
                    throw new uj(i11, str);
                }
                if (z10) {
                    com.byazt.bog.a.uj("TTPluginManager", "Get null after load");
                    throw new uj(9, "Get null after load");
                }
            }
            spVar.tt("get_classloader_done");
            return uj;
        }
        com.byazt.bog.a.uj("TTPluginManager", "Zeus init failed.");
        throw new uj(4, this.f17706x);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(String str, int i10) {
        if ("com.byted.pangle".equals(str) && i10 == 6) {
            com.byazt.bog.a.uj("TTPluginManager", "notify to end wait");
            this.f17703a.countDown();
        }
        c(i10 == 6, str);
    }

    public static String tt(String str) {
        int installedMaxVer;
        try {
            Plugin plugin = Zeus.getPlugin(str, false);
            if (plugin == null || (installedMaxVer = plugin.getInstalledMaxVer()) <= 0) {
                return null;
            }
            return c(installedMaxVer);
        } catch (Throwable unused) {
            com.byazt.bog.a.uj("TTPluginManager", "Get local version failed");
            return null;
        }
    }

    public Bundle c(String str, Bundle bundle) {
        String strC = c(str);
        if (!TextUtils.isEmpty(strC)) {
            bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, strC);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putBundle(str, bundle);
        Bundle bundle3 = new Bundle();
        bundle3.putBundle(PluginConstants.KEY_PL_CONFIG_INFO, bundle2);
        return bundle3;
    }

    public void tt(TTPluginListener tTPluginListener) {
        String strPackageName = tTPluginListener.packageName();
        Plugin plugin = (Zeus.isPluginInstalled(strPackageName) && (Zeus.isPluginLoaded(strPackageName) || Zeus.loadPlugin(strPackageName))) ? Zeus.getPlugin(strPackageName) : null;
        StringBuilder sb2 = new StringBuilder("Find plugin:");
        sb2.append(plugin != null);
        com.byazt.bog.a.tt("TTPluginManager", sb2.toString());
        if (plugin != null) {
            c(plugin);
            tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
        } else {
            f17702t = tTPluginListener;
        }
    }

    public static String c(String str) {
        Plugin plugin;
        try {
            if (!Zeus.isPluginInstalled(str, false) || (plugin = Zeus.getPlugin(str, false)) == null) {
                return null;
            }
            return c(plugin.getVersion());
        } catch (Throwable th) {
            com.byazt.bog.a.uj("TTPluginManager", "Get local version failed");
            Context context = TTAppContextHolder.getContext();
            if (context == null) {
                return null;
            }
            String packageName = context.getPackageName();
            if ("com.union_test.toutiao".equals(packageName) || "com.pangolin_demo.toutiao".equals(packageName) || "com.bytedance.mediation_demo_csj".equals(packageName)) {
                throw th;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean tt(c cVar) {
        File file;
        if (cVar != null && (file = cVar.tt) != null) {
            boolean zSyncInstallPlugin = Zeus.syncInstallPlugin(cVar.ve, file.getAbsolutePath());
            c(zSyncInstallPlugin, cVar.ve);
            return zSyncInstallPlugin;
        }
        com.byazt.bog.a.uj("TTPluginManager", "plugin config is null");
        return false;
    }

    public void tt() {
        EventListener eventListener = this.sl;
        if (eventListener != null) {
            eventListener.onEvent(1, com.byazt.rl.tt.c().c(true).tt());
        }
    }

    public void c(final TTPluginListener tTPluginListener) {
        if (!this.sp) {
            com.byazt.bog.a.uj("TTPluginManager", "Zeus init failed.");
            if (tTPluginListener != null) {
                tTPluginListener.onPluginListener(1002, null, null, null);
                return;
            }
            return;
        }
        Handler handlerTt = com.byazt.qy.c.c().tt();
        Runnable runnable = new Runnable() { // from class: com.byazt.nys.i.6
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.bog.a.tt("TTPluginManager", "Load plugin failed, caused by timeout.");
                tTPluginListener.onPluginListener(1001, null, null, null);
            }
        };
        handlerTt.postDelayed(runnable, 180000L);
        String strPackageName = tTPluginListener.packageName();
        Plugin plugin = (Zeus.isPluginInstalled(strPackageName) && (Zeus.isPluginLoaded(strPackageName) || Zeus.loadPlugin(strPackageName))) ? Zeus.getPlugin(strPackageName) : null;
        StringBuilder sb2 = new StringBuilder("Find plugin:");
        sb2.append(plugin != null);
        com.byazt.bog.a.tt("TTPluginManager", sb2.toString());
        if (plugin != null) {
            c(plugin);
            handlerTt.removeCallbacks(runnable);
            tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
        } else {
            tt.put(strPackageName, tTPluginListener);
            ve.put(strPackageName, handlerTt);
        }
    }

    public void c(EventListener eventListener) {
        this.sl = eventListener;
    }

    private static c c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        c cVar = new c();
        cVar.ve = jSONObject.optString("package_name");
        cVar.uj = jSONObject.optInt("version_code");
        cVar.f17717n = jSONObject.optString(COSHttpResponseKey.DOWNLOAD_URL);
        cVar.sp = jSONObject.optString(TKDownloadReason.KSAD_TK_MD5);
        cVar.f17716i = jSONObject.optInt("min_version");
        cVar.f17715da = jSONObject.optInt("max_version");
        cVar.f17714c = jSONObject.optString(Constant.MD5);
        cVar.f17713a = jSONObject.optBoolean("is_revert") ? 3 : 2;
        cVar.tt = new File(jSONObject.optString("plugin_file"));
        return cVar;
    }

    private static void c(Plugin plugin) {
        if (plugin == null) {
            com.byazt.bog.a.uj("TTPluginManager", "plugin is null.");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("action", 0);
        bundle.putString("plugin_pkg_name", plugin.mPkgName);
        bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, c(plugin.getVersion()));
        TTAdManager adManager = TTAdSdk.getAdManager();
        if (adManager != null) {
            adManager.getExtra(Bundle.class, bundle);
        }
    }

    public static String c(int i10) {
        char[] charArray = String.valueOf(i10).toCharArray();
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < charArray.length; i11++) {
            sb2.append(charArray[i11]);
            if (i11 < charArray.length - 1) {
                sb2.append(o0.f49827a);
            }
        }
        return sb2.toString();
    }

    private static boolean c(TTPluginListener tTPluginListener, String str) {
        if (tTPluginListener == null || tTPluginListener.packageName() == null) {
            return false;
        }
        return tTPluginListener.packageName().equals(str);
    }

    private static void c(boolean z10, String str) {
        HashMap<String, TTPluginListener> map = tt;
        TTPluginListener tTPluginListener = map.get(str);
        StringBuilder sb2 = new StringBuilder("Install dl plugin ");
        sb2.append(str);
        sb2.append(z10 ? " success" : " failed");
        sb2.append(", need notify: ");
        sb2.append(tTPluginListener != null);
        com.byazt.bog.a.tt("TTPluginManager", sb2.toString());
        HashMap<String, Handler> map2 = ve;
        Handler handler = map2.get(str);
        if (z10) {
            TTPluginListener tTPluginListener2 = f17702t;
            if (!c(tTPluginListener2, str) && (tTPluginListener == null || handler == null)) {
                return;
            }
            if (Zeus.loadPlugin(str)) {
                Plugin plugin = Zeus.getPlugin(str);
                c(plugin);
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                if (tTPluginListener != null) {
                    tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
                }
                if (c(tTPluginListener2, str)) {
                    tTPluginListener2.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
                    f17702t = null;
                }
            } else {
                com.byazt.bog.a.tt("TTPluginManager", "handle installed, load failed");
                ve(str, 1002);
            }
        } else {
            com.byazt.bog.a.tt("TTPluginManager", "handle installed failed");
            ve(str, 1003);
        }
        map.remove(str);
        map2.remove(str);
    }

    public static void c(Throwable th) {
        if (th instanceof AbstractMethodError) {
            Zeus.unInstallPlugin("com.byted.pangle");
            com.byazt.bog.a.uj("TTPluginManager", "AbstractMethodError, rollback to builtin version.");
            a.c("uninstall_plugin", null, th);
        }
    }
}
