package com.aggmoread.sdk.z.c.a.a.d.a.d.w;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.location.Location;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.aggmoread.sdk.z.c.a.a.c.k;
import com.aggmoread.sdk.z.c.a.a.d.a.d.m;
import com.aggmoread.sdk.z.c.a.a.d.a.d.p;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.h;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.o;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.aggmoread.sdk.z.c.a.a.e.v.g;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsCustomController;
import com.kwad.sdk.api.KsDrawAd;
import com.kwad.sdk.api.KsFeedAd;
import com.kwad.sdk.api.KsFullScreenVideoAd;
import com.kwad.sdk.api.KsInterstitialAd;
import com.kwad.sdk.api.KsRewardVideoAd;
import com.kwad.sdk.api.KsSplashScreenAd;
import com.kwad.sdk.api.SdkConfig;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.kwad.sdk.api.model.AdExposureFailureCode;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class b extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f4843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static AtomicBoolean f4844b = new AtomicBoolean();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicBoolean f4845c = new AtomicBoolean();

    static class a extends KsCustomController {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f4846a;

        a(k kVar) {
            this.f4846a = kVar;
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public boolean canReadInstalledPackages() {
            return this.f4846a.a();
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public boolean canReadLocation() {
            return this.f4846a.b();
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public boolean canUseMacAddress() {
            return this.f4846a.c();
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public boolean canUseNetworkState() {
            return this.f4846a.d();
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public boolean canUseOaid() {
            return this.f4846a.e();
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public boolean canUsePhoneState() {
            return this.f4846a.f();
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public boolean canUseStoragePermission() {
            return this.f4846a.g();
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public String getAndroidId() {
            return this.f4846a.h();
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public String getImei() {
            return this.f4846a.j();
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public String[] getImeis() {
            return this.f4846a.k();
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public List<String> getInstalledPackages() {
            ArrayList arrayList = new ArrayList();
            List<PackageInfo> listL = this.f4846a.l();
            if (listL != null) {
                Iterator<PackageInfo> it2 = listL.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next().packageName);
                }
            }
            return arrayList;
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public Location getLocation() {
            return this.f4846a.m();
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public String getMacAddress() {
            return this.f4846a.n();
        }

        @Override // com.kwad.sdk.api.KsCustomController
        public String getOaid() {
            return this.f4846a.o();
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.w.b$b, reason: collision with other inner class name */
    static class C0174b implements com.aggmoread.sdk.z.c.a.a.d.a.d.w.c.b {
        C0174b() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.c.b
        public void a() {
            e.b("AMSDK_ksh", "ks start fail  ");
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.w.c.b
        public void onSuccess() {
            e.b("AMSDK_ksh", "ks start success  ");
        }
    }

    static class c implements Handler.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Handler.Callback f4847a;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.b(c.this.f4847a);
                e.b("AMSDK_ksh", "hgp 2 ");
            }
        }

        c(Handler.Callback callback) {
            this.f4847a = callback;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            q.a(new a());
            return false;
        }
    }

    private b() {
    }

    public static int a(Object obj) {
        Exception e10;
        int iIntValue;
        try {
            Method method = obj.getClass().getMethod("getECPM", new Class[0]);
            method.setAccessible(true);
            iIntValue = ((Integer) method.invoke(obj, new Object[0])).intValue();
            if (iIntValue <= 0) {
                try {
                    e.a("c -1 ");
                    return -1;
                } catch (Exception e11) {
                    e10 = e11;
                    e10.printStackTrace();
                    e.a("ks ecpm err " + e10.getMessage());
                    return iIntValue;
                }
            }
        } catch (Exception e12) {
            e10 = e12;
            iIntValue = -1;
        }
        return iIntValue;
    }

    public static String b() {
        return KsAdSDK.getSDKVersion();
    }

    public static synchronized b a() {
        if (f4843a == null) {
            synchronized (b.class) {
                if (f4843a == null) {
                    f4843a = new b();
                }
            }
        }
        return f4843a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Handler.Callback callback) {
        if (callback != null) {
            callback.handleMessage(Message.obtain());
        }
    }

    private static Object a(Object obj, String str, Object[] objArr, Class... clsArr) {
        if (obj == null) {
            return null;
        }
        try {
            Method method = obj.getClass().getMethod(str, clsArr);
            method.setAccessible(true);
            return method.invoke(obj, objArr);
        } catch (Exception e10) {
            e.a("ks invoke method failed,  method " + str + ", err " + e10.getMessage());
            return null;
        }
    }

    public static void b(Object obj, int i10) {
        a(obj, "setBidEcpm", new Object[]{Integer.valueOf(i10)}, Integer.TYPE);
        e.a("ks send success end");
    }

    public static void b(Map<String, Object> map, int i10, f fVar) {
        a().a(map, i10, fVar);
    }

    public String a(KsDrawAd ksDrawAd) {
        if (ksDrawAd == null) {
            return null;
        }
        List<Object> listA = a(ksDrawAd, AdInfo.class);
        if (listA.size() <= 0) {
            return null;
        }
        Object obj = listA.get(0);
        if (obj instanceof AdInfo) {
            return a((AdInfo) obj);
        }
        return null;
    }

    public String a(KsFeedAd ksFeedAd) {
        if (ksFeedAd == null) {
            return null;
        }
        List<Object> listA = a(ksFeedAd, AdInfo.class);
        if (listA.size() <= 0) {
            return null;
        }
        Object obj = listA.get(0);
        if (obj instanceof AdInfo) {
            return a((AdInfo) obj);
        }
        return null;
    }

    public String a(KsFullScreenVideoAd ksFullScreenVideoAd) {
        if (ksFullScreenVideoAd == null) {
            return null;
        }
        List<Object> listA = a(ksFullScreenVideoAd, AdInfo.class);
        if (listA.size() <= 0) {
            return null;
        }
        Object obj = listA.get(0);
        if (obj instanceof AdInfo) {
            return a((AdInfo) obj);
        }
        return null;
    }

    public String a(KsInterstitialAd ksInterstitialAd) {
        if (ksInterstitialAd == null) {
            return null;
        }
        List<Object> listA = a(ksInterstitialAd, AdTemplate.class);
        if (listA.size() <= 0) {
            return null;
        }
        Object obj = listA.get(0);
        if (obj instanceof AdTemplate) {
            return a((AdTemplate) obj);
        }
        return null;
    }

    public String a(KsRewardVideoAd ksRewardVideoAd) {
        if (ksRewardVideoAd == null) {
            return null;
        }
        List<Object> listA = a(ksRewardVideoAd, AdInfo.class);
        if (listA.size() <= 0) {
            return null;
        }
        Object obj = listA.get(0);
        if (obj instanceof AdInfo) {
            return a((AdInfo) obj);
        }
        return null;
    }

    public String a(KsSplashScreenAd ksSplashScreenAd) {
        List<AdInfo> list;
        if (ksSplashScreenAd == null) {
            return null;
        }
        List<Object> listA = a(ksSplashScreenAd, AdTemplate.class);
        if (listA.size() <= 0) {
            return null;
        }
        Object obj = listA.get(0);
        if (!(obj instanceof AdTemplate) || (list = ((AdTemplate) obj).adInfoList) == null || list.size() <= 0) {
            return null;
        }
        return a(list.get(0));
    }

    private String a(AdInfo adInfo) {
        if (adInfo == null) {
            return null;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            AdInfo.AdBaseInfo adBaseInfo = adInfo.adBaseInfo;
            e.b("AMSDK_ksh", "adBaseInfo = [ appCategory " + adBaseInfo.appCategory + ", appName " + adBaseInfo.appName + ", adDescription " + adBaseInfo.adDescription + ", productName " + adBaseInfo.productName + "]");
            if (!TextUtils.isEmpty(adBaseInfo.appCategory)) {
                sb2.append(adBaseInfo.appCategory);
            }
            if (!TextUtils.isEmpty(adBaseInfo.appName)) {
                if (!TextUtils.isEmpty(sb2.toString())) {
                    sb2.append("#");
                }
                sb2.append(adBaseInfo.appName);
            }
            String string = sb2.toString();
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            sb2.delete(0, sb2.length());
            String str = adBaseInfo.adDescription;
            if (!TextUtils.isEmpty(str)) {
                sb2.append(str);
            }
            String str2 = adBaseInfo.productName;
            if (!TextUtils.isEmpty(str2)) {
                sb2.append("#");
                sb2.append(str2);
            }
            return sb2.toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            e.b("AMSDK_ksh", "getAdInfoStr err " + e10.getMessage());
            return null;
        }
    }

    private String a(AdTemplate adTemplate) {
        List<AdInfo> list;
        if (adTemplate == null || (list = adTemplate.adInfoList) == null || list.size() <= 0) {
            return null;
        }
        return a(list.get(0));
    }

    private List<Object> a(Object obj, Class cls) {
        ArrayList arrayList = new ArrayList();
        try {
            Class<?> cls2 = obj.getClass();
            e.b("AMSDK_ksh", "getFieldValueByClassName ");
            Field[] declaredFields = cls2.getDeclaredFields();
            if (declaredFields.length > 0) {
                for (Field field : declaredFields) {
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    e.b("AMSDK_ksh", "field name " + field.getName() + ", value " + obj2);
                    if (obj2 != null && obj2.getClass() == cls) {
                        arrayList.add(obj2);
                    }
                }
            }
        } catch (Exception e10) {
            e.b("AMSDK_ksh", "get field value err " + e10.getMessage());
        }
        return arrayList;
    }

    public static void a(f fVar, g gVar, Handler.Callback callback) {
        if (fVar == null || gVar == null) {
            e.b("AMSDK_ksh", "hgp return ");
            b(callback);
            return;
        }
        boolean zA = gVar.a(fVar);
        e.b("AMSDK_ksh", "hgp is " + zA);
        if (zA) {
            n.a(fVar.f5003c.a(f.c.f5015a0, ""), fVar.f5003c.c(f.c.f5031i0), fVar.f5003c.c(f.c.f5023e0));
            com.aggmoread.sdk.z.c.a.a.d.b.c.e(new c(callback));
        } else {
            e.b("AMSDK_ksh", "hgp is false ");
            b(callback);
        }
    }

    public static void a(Object obj, int i10) {
        try {
            Object obj2 = AdExposureFailureCode.class.getDeclaredField("BID_FAILED").get(null);
            Object objNewInstance = AdExposureFailedReason.class.getConstructor(new Class[0]).newInstance(new Object[0]);
            AdExposureFailedReason.class.getField("winEcpm").setInt(objNewInstance, i10);
            a(obj, "reportAdExposureFailed", new Object[]{obj2, objNewInstance}, Integer.TYPE, AdExposureFailedReason.class);
            e.a("ks send failed end");
        } catch (Exception e10) {
            e.a("ks send failed err " + e10.getMessage());
        }
    }

    public static boolean a(Context context, String str) {
        String str2;
        boolean z10 = false;
        if (!f4845c.compareAndSet(false, true)) {
            return true;
        }
        if (o.a().b() != null) {
            boolean zA = o.a().b().a(107, false);
            e.b("AMSDK_ksh", "ks isNeedInit " + zA);
            if (!zA) {
                return true;
            }
        }
        String appId = KsAdSDK.getAppId();
        if (!TextUtils.isEmpty(appId) && appId.equals(str)) {
            return true;
        }
        if (context == null || TextUtils.isEmpty(str)) {
            str2 = "Context或APP_ID为空，初始化失败!";
        } else {
            e.b("AMSDK_ksh", "ks init appId " + str);
            if (f4844b.compareAndSet(false, true)) {
                int i10 = p.f4546a;
                if (i10 != -1) {
                    com.aggmoread.sdk.z.c.a.a.d.a.d.w.c.a(i10 == 1);
                }
                if (p.f4547b != -1) {
                    com.aggmoread.sdk.z.c.a.a.d.a.d.w.c.a().b(p.f4547b == 0);
                }
            }
            SdkConfig.Builder builderDebug = new SdkConfig.Builder().appId(str).showNotification(true).debug(com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r.booleanValue());
            k kVarC = h.b().c();
            if (kVarC != null) {
                builderDebug.customController(new a(kVarC));
            }
            com.aggmoread.sdk.z.c.a.a.d.a.d.w.c.a(builderDebug, new C0174b());
            boolean zInit = KsAdSDK.init(context.getApplicationContext(), builderDebug.build());
            String appId2 = KsAdSDK.getAppId();
            com.aggmoread.sdk.z.c.a.a.d.a.d.w.c.c();
            if (zInit && !TextUtils.isEmpty(appId2) && appId2.equals(str)) {
                z10 = true;
            }
            str2 = "ks init result  " + z10;
        }
        e.b("AMSDK_ksh", str2);
        return z10;
    }

    public static boolean a(f fVar, int i10) {
        return com.aggmoread.sdk.z.c.a.a.e.p.a(fVar, i10);
    }
}
