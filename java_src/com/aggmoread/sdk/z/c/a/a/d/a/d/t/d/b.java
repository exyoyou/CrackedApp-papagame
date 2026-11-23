package com.aggmoread.sdk.z.c.a.a.d.a.d.t.d;

import android.content.Context;
import android.location.Location;
import androidx.annotation.Nullable;
import com.aggmoread.sdk.client.AMConst;
import com.aggmoread.sdk.z.c.a.a.c.k;
import com.aggmoread.sdk.z.c.a.a.d.b.h;
import com.aggmoread.sdk.z.c.a.a.e.c;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.j;
import com.bytedance.sdk.openadsdk.LocationProvider;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfig;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationAdEcpmInfo;
import com.bytedance.sdk.openadsdk.mediation.manager.MediationBaseManager;
import com.windmill.sdk.WMConstants;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f4701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile boolean f4702b;

    static class a implements TTAdSdk.Callback {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i10, String str) {
            e.a("media init fail , " + i10 + ", msg " + str);
            boolean unused = b.f4702b = false;
            boolean unused2 = b.f4701a = false;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            e.a("media init success");
            boolean unused = b.f4702b = true;
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b$b, reason: collision with other inner class name */
    static class C0145b extends TTCustomController {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f4703a;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.b$b$a */
        class a implements LocationProvider {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Location f4704a;

            a(C0145b c0145b, Location location) {
                this.f4704a = location;
            }

            @Override // com.bytedance.sdk.openadsdk.LocationProvider
            public double getLatitude() {
                return this.f4704a.getLatitude();
            }

            @Override // com.bytedance.sdk.openadsdk.LocationProvider
            public double getLongitude() {
                return this.f4704a.getLongitude();
            }
        }

        C0145b(k kVar) {
            this.f4703a = kVar;
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean alist() {
            return super.alist();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        @Nullable
        public String getAndroidId() {
            return this.f4703a.h();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        @Nullable
        public String getDevImei() {
            return this.f4703a.j();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        @Nullable
        public String getDevOaid() {
            return this.f4703a.o();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        @Nullable
        public String getMacAddress() {
            return this.f4703a.n();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        @Nullable
        public LocationProvider getTTLocation() {
            Location locationM = this.f4703a.m();
            return locationM != null ? new a(this, locationM) : super.getTTLocation();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean isCanUseAndroidId() {
            return this.f4703a.e();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean isCanUseLocation() {
            return this.f4703a.b();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean isCanUsePermissionRecordAudio() {
            return super.isCanUsePermissionRecordAudio();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean isCanUsePhoneState() {
            return this.f4703a.f();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean isCanUseWifiState() {
            return this.f4703a.d();
        }

        @Override // com.bytedance.sdk.openadsdk.TTCustomController
        public boolean isCanUseWriteExternal() {
            return this.f4703a.g();
        }
    }

    private static TTAdConfig a(Context context, String str, String str2) {
        TTAdConfig.Builder mediationConfig = new TTAdConfig.Builder().appId(str).appName(str2).useMediation(true).titleBarTheme(1).allowShowNotify(true).debug(com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r.booleanValue()).supportMultiProcess(false).setMediationConfig(new MediationConfig.Builder().setPublisherDid(c.d()).build());
        TTCustomController tTCustomControllerA = a();
        if (tTCustomControllerA != null) {
            mediationConfig.customController(tTCustomControllerA);
        }
        return mediationConfig.build();
    }

    public static String b() {
        try {
            return (String) j.a(TTAdSdk.class, "SDK_VERSION_NAME");
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean c(Context context, String str, String str2) {
        b(context, str, str2);
        return f4702b;
    }

    private static TTCustomController a() {
        k kVarC = h.b().c();
        if (kVarC != null) {
            return new C0145b(kVarC);
        }
        return null;
    }

    private static void b(Context context, String str, String str2) {
        if (f4701a) {
            return;
        }
        try {
            TTAdSdk.init(context, a(context, str, str2));
            TTAdSdk.start(new a());
            f4701a = true;
        } catch (Exception unused) {
            f4701a = false;
        }
    }

    public static Object a(Object obj, String str, Class<?>[] clsArr, Object... objArr) {
        try {
            return obj.getClass().getMethod(str, clsArr).invoke(obj, objArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void a(Map<String, Object> map, Object obj) {
        String ecpm;
        String slotId;
        MediationAdEcpmInfo showEcpm;
        try {
            Object objA = a(obj, "getMediationManager", null, new Object[0]);
            if (!(objA instanceof MediationBaseManager) || (showEcpm = ((MediationBaseManager) objA).getShowEcpm()) == null) {
                ecpm = WMConstants.TIMER_STAGE_NONE;
                slotId = "";
            } else {
                ecpm = showEcpm.getEcpm();
                slotId = showEcpm.getSlotId();
            }
            e.a("rit = " + slotId + ", epm = " + ecpm);
            map.put(AMConst.ExtrasKey.AD_PRICE, ecpm);
            map.put("EXTRA_network_csj_placementId", slotId);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
