package com.sigmob.sdk;

import android.content.Context;
import android.util.Base64;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.exceptions.CrashHandler;
import com.czhj.sdk.common.models.BidRequest;
import com.czhj.sdk.common.mta.PointEntitySuper;
import com.czhj.sdk.common.network.BuriedPointRequest;
import com.czhj.sdk.common.network.JsonRequest;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyError;
import com.czhj.volley.VolleyLog;
import com.join.mgps.Util.o0;
import com.sdk.base.framework.utils.log.LogFile;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointEntitySigmobCrash;
import com.sigmob.sdk.base.mta.PointInitEntity;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdOptions;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.WindCustomController;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.net.URLEncoder;
import java.util.Map;
import java.util.zip.DeflaterOutputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class Sigmob {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Sigmob f78696a;
    public static SigMacroCommon macroCommon;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WindAdError f78697b;

    private Sigmob() {
    }

    private String a(byte[] str) {
        if (str == null || str.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream);
        try {
            deflaterOutputStream.write(str);
            deflaterOutputStream.flush();
            deflaterOutputStream.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }

    public static BidRequest createRequest() {
        BidRequest.Builder builder = new BidRequest.Builder();
        try {
            builder = com.sigmob.sdk.base.network.a.a((LoadAdRequest) null);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
        return builder.build();
    }

    public static synchronized Sigmob getInstance() {
        if (f78696a == null) {
            synchronized (Sigmob.class) {
                f78696a = new Sigmob();
            }
        }
        return f78696a;
    }

    private void h() {
        try {
            File[] fileArrK = com.sigmob.sdk.base.utils.o.k();
            if (fileArrK == null) {
                return;
            }
            for (File file : fileArrK) {
                String fileToString = FileUtil.readFileToString(file);
                if (!com.sigmob.sdk.base.utils.t.a((CharSequence) fileToString)) {
                    a(file, fileToString);
                }
            }
        } catch (Throwable th) {
            SigmobLog.e("send crash Log fail", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        f();
        b.d();
        com.sigmob.sdk.base.o.a().a(new com.sigmob.sdk.base.o.a() { // from class: com.sigmob.sdk.h
            @Override // com.sigmob.sdk.base.o.a
            public final void onUpdate(boolean z10) {
                this.f80816a.a(z10);
            }
        }).f();
        if (com.sigmob.sdk.base.o.a().Z()) {
            String[] strArrSplit = WindAds.class.getName().split("\\.");
            if (strArrSplit.length <= 2) {
                return;
            }
            final String str = strArrSplit[0] + o0.f49827a + strArrSplit[1] + o0.f49827a;
            CrashHandler.getInstance().add(new CrashHandler.CrashHandlerListener() { // from class: com.sigmob.sdk.i
                @Override // com.czhj.sdk.common.exceptions.CrashHandler.CrashHandlerListener
                public final void reportCrash(String str2) {
                    this.f80817a.a(str, str2);
                }
            });
            h();
        }
        j();
    }

    private void j() {
        Context contextE = b.e();
        if (contextE == null) {
            return;
        }
        ImageManager.with(contextE).clearCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        ad.a("app");
        this.f78697b = com.sigmob.sdk.base.common.f.b();
        g();
    }

    public static void updateLocationMonitor() {
        try {
            if (com.sigmob.sdk.base.o.a().R()) {
                return;
            }
            com.sigmob.sdk.base.services.f.a(com.sigmob.sdk.base.services.f.f79691a, com.sigmob.sdk.base.i.a().i());
        } catch (Throwable th) {
            SigmobLog.e("updateLocationMonitor fail", th);
        }
    }

    public SigMacroCommon getMacroCommon() {
        if (macroCommon == null) {
            macroCommon = new SigMacroCommon();
        }
        return macroCommon;
    }

    public String getSDKToken() {
        b.a(true);
        String str = "2.01|" + a(createRequest().encode());
        ad.a("token_request", (String) null, (BaseAdUnit) null, (ad.a) null);
        SigmobLog.d("getSDKToken: " + str);
        return str;
    }

    public WindAdError getSigMobError() {
        return this.f78697b;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0039  */
    public void init() {
        boolean zIsCanUseAppList;
        int i10;
        boolean z10;
        WindCustomController customController;
        VolleyLog.DEBUG = com.sigmob.sdk.base.n.f79579f.booleanValue();
        WindAdOptions options = WindAds.sharedAds().getOptions();
        com.sigmob.sdk.base.o oVarA = com.sigmob.sdk.base.o.a();
        final int iAd = oVarA.ad();
        boolean zJ = oVarA.j();
        final boolean zS = oVarA.S();
        boolean z11 = false;
        if (options == null || (customController = options.getCustomController()) == null) {
            zIsCanUseAppList = true;
            i10 = 0;
        } else {
            zIsCanUseAppList = customController.isCanUseAppList();
            i10 = zIsCanUseAppList ? 1 : 2;
        }
        if (zJ) {
            z10 = false;
        } else if (iAd == 1) {
            z10 = true;
        } else if (iAd != 2) {
            if (zIsCanUseAppList && !zS) {
                z11 = true;
            }
            z10 = z11;
        } else {
            z10 = false;
        }
        final boolean zD = com.sigmob.sdk.base.common.f.d();
        final int i11 = i10;
        final boolean z12 = z10;
        ad.a("init", new ad.a() { // from class: com.sigmob.sdk.d
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                Sigmob.a(i11, zD, zS, iAd, z12, obj);
            }
        });
        if (com.sigmob.sdk.base.o.a().X()) {
            ad.a("permission", "init", (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.e
                @Override // com.sigmob.sdk.base.common.ad.a
                public final void onAddExtra(Object obj) {
                    Sigmob.a(obj);
                }
            });
        }
        com.sigmob.sdk.base.common.h.e();
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.sigmob.sdk.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f80814b.k();
            }
        });
        TrackManager.getInstance().setSigmobTrackListener(new TrackManager.Listener() { // from class: com.sigmob.sdk.Sigmob.1
            @Override // com.czhj.sdk.common.track.TrackManager.Listener
            public void onErrorResponse(AdTracker tracker, VolleyError error) {
                ad.a(tracker, tracker.getUrl(), (BaseAdUnit) null, error);
            }

            @Override // com.czhj.sdk.common.track.TrackManager.Listener
            public void onSuccess(AdTracker tracker, NetworkResponse response) {
                ad.a(tracker, tracker.getUrl(), (BaseAdUnit) null, response, (ad.a) null);
            }
        });
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.sigmob.sdk.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f80815b.a();
            }
        });
        TrackManager.getInstance().startRetryTracking();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        com.sigmob.sdk.base.common.h.b();
        com.sigmob.sdk.base.common.h.l();
        com.sigmob.sdk.base.common.h.j();
        com.sigmob.sdk.base.common.h.i();
        com.sigmob.sdk.base.common.h.h();
        com.sigmob.sdk.base.common.h.k();
        com.sigmob.sdk.base.common.h.c();
    }

    private static void b() {
        try {
            com.sigmob.sdk.base.services.f.a(com.sigmob.sdk.base.services.f.f79692b, true);
        } catch (Throwable th) {
            SigmobLog.e("initAppInstallService fail", th);
        }
    }

    private void c() {
        b.e();
    }

    private void d() {
        com.sigmob.sdk.base.utils.h.a(com.sigmob.sdk.base.o.a().o());
    }

    private static void e() {
        try {
            com.sigmob.sdk.base.services.f.a(com.sigmob.sdk.base.services.f.f79693c, com.sigmob.sdk.base.i.a().i() && com.sigmob.sdk.base.o.a().V());
        } catch (Throwable th) {
            SigmobLog.e("updateWifiScanService fail", th);
        }
    }

    private static void f() {
        try {
            com.sigmob.sdk.base.services.f.a(com.sigmob.sdk.base.services.f.f79694d, true);
        } catch (Throwable th) {
            SigmobLog.e("initDownloadService fail", th);
        }
    }

    private void g() {
        Networking.getSigRequestQueue().add(new JsonRequest(com.sigmob.sdk.base.o.d(), new JsonRequest.Listener() { // from class: com.sigmob.sdk.Sigmob.2
            @Override // com.czhj.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                Sigmob.this.i();
                com.sigmob.sdk.base.i.a().a(null);
            }

            @Override // com.czhj.sdk.common.network.JsonRequest.Listener
            public void onSuccess(JSONObject response) {
                if (response != null) {
                    try {
                        com.sigmob.sdk.base.i.a().a(Boolean.valueOf(response.getBoolean(Constants.IS_REQUEST_IN_EEA_OR_UNKNOWN)));
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                Sigmob.this.i();
            }
        }, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i10, boolean z10, boolean z11, int i11, boolean z12, Object obj) {
        if (obj instanceof PointInitEntity) {
            PointInitEntity pointInitEntity = (PointInitEntity) obj;
            Map<String, String> options = pointInitEntity.getOptions();
            options.put(PointParamKey.IS_MINOR, com.sigmob.sdk.base.i.a().d() ? "0" : "1");
            options.put(PointParamKey.IS_UNPERSONALIZED, com.sigmob.sdk.base.i.a().e() ? "0" : "1");
            options.put("canUseAppList", String.valueOf(i10));
            options.put("appListPermission", z10 ? "1" : "0");
            options.put("disableUpAppInfo", z11 ? "1" : "0");
            options.put("EnableAppList", String.valueOf(i11));
            options.put("uploadAppList", z12 ? "1" : "0");
            options.put("common_version", String.valueOf(WindAds.sharedAds().getCommonVersion()));
            pointInitEntity.setOptions(options);
        }
    }

    private void a(final File file, String crash) {
        PointEntitySigmobCrash pointEntitySigmobCrashWindCrash = PointEntitySigmobCrash.WindCrash(crash);
        if (file != null) {
            try {
                pointEntitySigmobCrashWindCrash.setCrashTime(Long.parseLong(file.getName().replace(LogFile.LOG_SUFFIX, "")));
            } catch (Throwable th) {
                SigmobLog.e("set crash time fail", th);
            }
        }
        pointEntitySigmobCrashWindCrash.sendServe(new BuriedPointRequest.RequestListener() { // from class: com.sigmob.sdk.Sigmob.3
            @Override // com.czhj.sdk.common.network.BuriedPointRequest.RequestListener
            public void onErrorResponse(VolleyError error) {
            }

            @Override // com.czhj.sdk.common.network.BuriedPointRequest.RequestListener
            public void onSuccess() {
                File file2 = file;
                if (file2 == null) {
                    return;
                }
                file2.delete();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Object obj) {
        if (obj instanceof PointEntitySigmob) {
            ((PointEntitySigmob) obj).setPermission(ClientMetadata.getInstance().getPermission(b.e()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2) {
        if (com.sigmob.sdk.base.utils.t.b(str2)) {
            if (str2.contains(str) || str2.contains("com.czhj.")) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("crashTime", System.currentTimeMillis());
                    jSONObject.put("appId", WindAds.sharedAds().getAppId());
                    jSONObject.put("sdkVersion", WindAds.getVersion());
                    jSONObject.put("commonVersion", WindAds.sharedAds().getCommonVersion());
                    jSONObject.put("wmsession_id", PointEntitySuper.getSessionId());
                    jSONObject.put("crashLog", URLEncoder.encode(str2, "UTF-8"));
                    String string = jSONObject.toString();
                    SigmobLog.e("crashLog " + string);
                    File fileJ = com.sigmob.sdk.base.utils.o.j();
                    if (fileJ != null) {
                        FileUtil.writeToBuffer(string.getBytes(), fileJ.getAbsolutePath());
                    }
                    a(fileJ, string);
                } catch (Throwable th) {
                    SigmobLog.e("error ", th);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z10) {
        if (z10) {
            com.sigmob.sdk.base.services.b.b();
            b();
            com.sigmob.sdk.base.services.b.d();
            c();
            d();
        }
    }
}
