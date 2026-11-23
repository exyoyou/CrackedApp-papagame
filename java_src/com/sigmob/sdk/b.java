package com.sigmob.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.location.Location;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.utils.AdLifecycleManager;
import com.czhj.sdk.common.utils.RomUtils;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.common.AdActivity;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.af;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntityActive;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.windad.WindAdOptions;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.WindCustomController;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes9.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WeakReference<Activity> f78767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Context f78768b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f78769c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static WeakReference<Activity> f78770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f78771e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static DeviceContext f78772f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Handler f78773g = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static C1021b f78774h;

    /* JADX INFO: Access modifiers changed from: private */
    static class a implements AdLifecycleManager.LifecycleListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f78775a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f78776b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f78778d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f78779e;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f78783i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final BroadcastReceiver f78785k;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Map<String, String> f78777c = new HashMap();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f78780f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f78781g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f78782h = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f78784j = 0;

        a() {
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.sigmob.sdk.b.a.1
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                /* JADX WARN: Code duplicated, block: B:7:0x0021  */
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    String str;
                    String action = intent.getAction();
                    if (com.sigmob.sdk.base.utils.t.a((CharSequence) action)) {
                        return;
                    }
                    byte b10 = 2;
                    String strEncodeToString = Base64.encodeToString(action.getBytes(), 2);
                    strEncodeToString.hashCode();
                    switch (strEncodeToString.hashCode()) {
                        case -252353173:
                            if (!strEncodeToString.equals(com.sigmob.sdk.base.n.P)) {
                                b10 = -1;
                            } else {
                                b10 = 0;
                            }
                            break;
                        case 1349729289:
                            if (!strEncodeToString.equals(com.sigmob.sdk.base.n.O)) {
                                b10 = -1;
                            } else {
                                b10 = 1;
                            }
                            break;
                        case 1349784159:
                            if (!strEncodeToString.equals(com.sigmob.sdk.base.n.N)) {
                                b10 = -1;
                            }
                            break;
                        default:
                            b10 = -1;
                            break;
                    }
                    switch (b10) {
                        case 0:
                            SigmobLog.d("screen user present");
                            com.sigmob.sdk.manager.d.a().a(false);
                            str = "unlock";
                            break;
                        case 1:
                            SigmobLog.d("screen off");
                            com.sigmob.sdk.manager.d.a().a(true);
                            str = PointCategory.LOCKED;
                            break;
                        case 2:
                            SigmobLog.d("screen on");
                            str = "screen_on";
                            break;
                        default:
                            return;
                    }
                    ad.a(str, (String) null, (BaseAdUnit) null, (ad.a) null);
                }
            };
            this.f78785k = broadcastReceiver;
            AdLifecycleManager.getInstance().initialize(b.h());
            this.f78776b = System.currentTimeMillis();
            this.f78775a = UUID.randomUUID().toString();
            SigmobLog.i("session_start: " + this.f78776b + ":" + this.f78775a);
            PointEntityActive.ActiveTracking("session_start", this.f78775a, "0", String.valueOf(this.f78776b));
            AdLifecycleManager.getInstance().addLifecycleListener(this);
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(new String(Base64.decode(com.sigmob.sdk.base.n.N, 2)));
                intentFilter.addAction(new String(Base64.decode(com.sigmob.sdk.base.n.O, 2)));
                intentFilter.addAction(new String(Base64.decode(com.sigmob.sdk.base.n.P, 2)));
                com.sigmob.sdk.base.utils.g.a(b.f78768b, broadcastReceiver, intentFilter);
            } catch (Throwable th) {
                SigmobLog.e("register screen status receiver error" + th.getMessage());
            }
        }

        public int a() {
            return this.f78779e;
        }

        public void b(Activity activity) {
        }

        @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
        public void onCreate(Activity activity) {
            String simpleName = activity.getClass().getSimpleName();
            this.f78778d = simpleName;
            this.f78777c.put(simpleName, simpleName);
            this.f78780f = true;
            this.f78781g = false;
        }

        @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
        public void onDestroy(Activity activity) {
            if (activity instanceof AdActivity) {
                this.f78783i = false;
            }
            this.f78777c.remove(activity.getClass().getSimpleName());
            if (this.f78777c.isEmpty() && this.f78780f) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j10 = (jCurrentTimeMillis - this.f78776b) / 1000;
                SigmobLog.i("onActivityDestroyed session_end: " + jCurrentTimeMillis + ":" + this.f78775a + ":" + j10);
                PointEntityActive.ActiveTracking("session_end", this.f78775a, String.valueOf(j10), String.valueOf(jCurrentTimeMillis));
                this.f78776b = System.currentTimeMillis();
                this.f78780f = false;
            }
            if (this.f78777c.isEmpty()) {
                this.f78782h = true;
            }
        }

        @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
        public void onPause(Activity activity) {
            int i10;
            if (RomUtils.isHuawei()) {
                int i11 = this.f78784j;
                if (i11 == 0) {
                    i10 = 1;
                } else if (i11 != 2) {
                    if (i11 == 3) {
                        b.f78773g.removeCallbacksAndMessages(null);
                        return;
                    }
                    i10 = 0;
                }
                this.f78784j = i10;
                return;
            }
            this.f78784j = 3;
        }

        @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
        public void onResume(final Activity activity) {
            if (activity instanceof AdActivity) {
                this.f78783i = true;
            } else if (!this.f78783i) {
                WeakReference unused = b.f78770d = new WeakReference(activity);
            }
            if (RomUtils.isHuawei()) {
                int i10 = this.f78784j;
                if (i10 == 1) {
                    this.f78784j = 2;
                } else if (i10 == 3) {
                    b.f78773g.postDelayed(new Runnable() { // from class: com.sigmob.sdk.j
                        @Override // java.lang.Runnable
                        public final void run() {
                            b.c(activity);
                        }
                    }, 500L);
                }
            } else {
                b.c(activity);
            }
            this.f78781g = !activity.getClass().getSimpleName().equals(this.f78778d);
            this.f78778d = activity.getClass().getSimpleName();
            if (this.f78781g) {
                WeakReference unused2 = b.f78767a = new WeakReference(activity);
            }
            if (!this.f78780f || this.f78782h) {
                this.f78782h = false;
                this.f78775a = UUID.randomUUID().toString();
                this.f78776b = System.currentTimeMillis();
                this.f78780f = true;
                SigmobLog.i("onActivityResumed session_start: " + this.f78776b + ":" + this.f78775a);
                PointEntityActive.ActiveTracking("session_start", this.f78775a, "0", String.valueOf(this.f78776b));
            }
        }

        @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
        public void onStart(Activity activity) {
            this.f78784j = 0;
            this.f78779e++;
        }

        @Override // com.czhj.sdk.common.utils.AdLifecycleManager.LifecycleListener
        public void onStop(Activity activity) {
            this.f78779e--;
            b.f78773g.removeCallbacksAndMessages(null);
            Activity activityI = b.i();
            String simpleName = activity.getClass().getSimpleName();
            if (simpleName.equals(this.f78778d) || (w.b(activityI) && simpleName.equals(activityI.getClass().getSimpleName()))) {
                b.j();
                if (!this.f78781g || this.f78777c.size() == 1) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long j10 = (jCurrentTimeMillis - this.f78776b) / 1000;
                    SigmobLog.i("onActivityStopped session_end: " + jCurrentTimeMillis + ":" + this.f78775a + ":" + j10);
                    PointEntityActive.ActiveTracking("session_end", this.f78775a, String.valueOf(j10), String.valueOf(jCurrentTimeMillis));
                    this.f78776b = System.currentTimeMillis();
                    this.f78780f = false;
                }
            }
        }

        public void a(Activity activity) {
        }

        public void a(Activity activity, int reqCode, int resCode, Intent data) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: com.sigmob.sdk.b$b, reason: collision with other inner class name */
    static class C1021b implements SensorEventListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final int f78787a = 1000;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile Boolean f78788b = null;

        C1021b() {
            b();
            c();
        }

        private void b() {
            if (b.f78768b == null) {
                return;
            }
            af.a(b.f78768b).a(this);
        }

        private void c() {
            ThreadPoolFactory.BackgroundThreadPool.getInstance().getIOHandler().postDelayed(new Runnable() { // from class: com.sigmob.sdk.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f80820b.e();
                }
            }, 1000L);
        }

        private void d() {
            if (b.f78768b == null) {
                return;
            }
            af.a(b.f78768b).b(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e() {
            if (this.f78788b == null) {
                this.f78788b = Boolean.FALSE;
            }
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int accuracy) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            this.f78788b = Boolean.TRUE;
            d();
        }

        public Boolean a() {
            return this.f78788b == null ? Boolean.TRUE : this.f78788b;
        }
    }

    public static String a() {
        return "";
    }

    public static DeviceContext b() {
        if (w.b(f78772f)) {
            return f78772f;
        }
        DeviceContext deviceContext = new DeviceContext() { // from class: com.sigmob.sdk.b.1
            private WindCustomController a() {
                return WindAds.sharedAds().getOptions().getCustomController();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean allowReadSpaceSize() {
                WindCustomController windCustomControllerA = a();
                return w.b(windCustomControllerA) && windCustomControllerA.isCanUseSpaceSize();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getAndroidId() {
                WindCustomController windCustomControllerA = a();
                if ((windCustomControllerA == null || windCustomControllerA.isCanUseAndroidId()) && b.f78771e && WindAds.sharedAds().isPersonalizedAdvertisingOn()) {
                    return ClientMetadata.getInstance().getAndroidId();
                }
                if (windCustomControllerA == null || windCustomControllerA.isCanUseAndroidId()) {
                    return null;
                }
                return windCustomControllerA.getAndroidId();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getCarrier() {
                if (com.sigmob.sdk.base.o.a().j()) {
                    return null;
                }
                WindCustomController windCustomControllerA = a();
                if (windCustomControllerA != null && !windCustomControllerA.isCanUseSimOperator()) {
                    return windCustomControllerA.getDevSimOperatorCode();
                }
                String networkOperatorForUrl = ClientMetadata.getInstance().getNetworkOperatorForUrl();
                SigmobLog.d(String.format("SDKContext: simOperator = %s", networkOperatorForUrl));
                return networkOperatorForUrl;
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getCarrierName() {
                if (com.sigmob.sdk.base.o.a().j()) {
                    return null;
                }
                WindCustomController windCustomControllerA = a();
                if (windCustomControllerA != null && !windCustomControllerA.isCanUseSimOperator()) {
                    return windCustomControllerA.getDevSimOperatorName();
                }
                String networkOperatorName = ClientMetadata.getInstance().getNetworkOperatorName();
                SigmobLog.d(String.format("SDKContext: carrierName = %s", networkOperatorName));
                return networkOperatorName;
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getImei() {
                WindCustomController windCustomControllerA = a();
                if (((windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState()) && b.f78771e && WindAds.sharedAds().isPersonalizedAdvertisingOn()) || windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState()) {
                    return null;
                }
                return windCustomControllerA.getDevImei();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getImei1() {
                WindCustomController windCustomControllerA = a();
                if (((windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState()) && b.f78771e && WindAds.sharedAds().isPersonalizedAdvertisingOn()) || windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState()) {
                    return null;
                }
                return windCustomControllerA.getDevImei();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getImei2() {
                WindCustomController windCustomControllerA = a();
                if (((windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState()) && b.f78771e && WindAds.sharedAds().isPersonalizedAdvertisingOn()) || windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState()) {
                    return null;
                }
                return windCustomControllerA.getDevImei();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public Location getLocation() {
                if (com.sigmob.sdk.base.o.a().R()) {
                    return null;
                }
                WindCustomController windCustomControllerA = a();
                return (windCustomControllerA == null || windCustomControllerA.isCanUseLocation()) ? ClientMetadata.getInstance().getLocation() : windCustomControllerA.getLocation();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public String getOaid() {
                WindCustomController windCustomControllerA = a();
                return (windCustomControllerA == null || windCustomControllerA.isCanUseOaid()) ? ClientMetadata.getInstance().getOAID() : windCustomControllerA.getDevOaid();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomAndroidId() {
                WindCustomController windCustomControllerA = a();
                return windCustomControllerA == null || windCustomControllerA.isCanUseAndroidId();
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomOaId() {
                WindCustomController windCustomControllerA = a();
                return (windCustomControllerA == null || windCustomControllerA.isCanUseOaid()) ? false : true;
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomOperatorCode() {
                WindCustomController windCustomControllerA = a();
                return (windCustomControllerA == null || windCustomControllerA.isCanUseSimOperator() || com.sigmob.sdk.base.utils.t.a((CharSequence) windCustomControllerA.getDevSimOperatorCode())) ? false : true;
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomOperatorName() {
                WindCustomController windCustomControllerA = a();
                return (windCustomControllerA == null || windCustomControllerA.isCanUseSimOperator() || com.sigmob.sdk.base.utils.t.a((CharSequence) windCustomControllerA.getDevSimOperatorName())) ? false : true;
            }

            @Override // com.czhj.sdk.common.mta.DeviceContext
            public boolean isCustomPhoneState() {
                WindCustomController windCustomControllerA = a();
                return windCustomControllerA == null || windCustomControllerA.isCanUsePhoneState();
            }
        };
        f78772f = deviceContext;
        return deviceContext;
    }

    public static Activity c() {
        WeakReference<Activity> weakReference = f78770d;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public static void d() {
        if (f78769c == null) {
            f78769c = new a();
        }
    }

    public static Context e() {
        return f78768b;
    }

    public static boolean f() {
        if (f78774h == null) {
            f78774h = new C1021b();
        }
        return f78774h.a().booleanValue();
    }

    public static boolean g() {
        AudioManager audioManager;
        return (f78768b == null || (audioManager = (AudioManager) e().getSystemService("audio")) == null || audioManager.getStreamVolume(3) != 0) ? false : true;
    }

    public static Application h() {
        Context context = f78768b;
        if (context instanceof Application) {
            return (Application) context;
        }
        return null;
    }

    public static Activity i() {
        WeakReference<Activity> weakReference = f78767a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public static void j() {
        o();
        p();
    }

    private static void n() {
        WindAdOptions options;
        WindCustomController customController;
        List<PackageInfo> installPackageInfoList;
        if (com.sigmob.sdk.base.o.a().S() || (options = WindAds.sharedAds().getOptions()) == null || (customController = options.getCustomController()) == null || customController.isCanUseAppList() || (installPackageInfoList = customController.getInstallPackageInfoList()) == null || installPackageInfoList.isEmpty()) {
            return;
        }
        Iterator<PackageInfo> it2 = installPackageInfoList.iterator();
        while (it2.hasNext()) {
            ad.a(it2.next(), 2);
        }
    }

    private static void o() {
        BaseAdUnit baseAdUnitF = com.sigmob.sdk.base.common.h.f();
        if (baseAdUnitF == null) {
            return;
        }
        com.sigmob.sdk.base.common.h.c((BaseAdUnit) null);
        com.sigmob.sdk.base.network.h.a(baseAdUnitF, "open_pkg");
        ad.a("open_pkg", "1", baseAdUnitF, (ad.a) null);
    }

    private static void p() {
        BaseAdUnit baseAdUnitM = com.sigmob.sdk.base.common.h.m();
        if (baseAdUnitM == null) {
            return;
        }
        com.sigmob.sdk.base.common.h.d((BaseAdUnit) null);
        baseAdUnitM.getClickCommon().isDeeplink = "1";
        Uri deeplinkUri = baseAdUnitM.getDeeplinkUri();
        com.sigmob.sdk.manager.b.b(baseAdUnitM, com.sigmob.sdk.base.common.a.G, deeplinkUri == null ? baseAdUnitM.getDeeplinkUrl() : deeplinkUri.toString());
    }

    private static void q() {
        BaseAdUnit baseAdUnitF = com.sigmob.sdk.base.common.h.f();
        if (baseAdUnitF == null) {
            return;
        }
        com.sigmob.sdk.base.common.h.c((BaseAdUnit) null);
        ad.a("open_pkg", "0", baseAdUnitF, (ad.a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Activity activity) {
        q();
        d(activity);
    }

    private static void d(Activity activity) {
        Uri uri;
        BaseAdUnit baseAdUnitM = com.sigmob.sdk.base.common.h.m();
        if (baseAdUnitM == null || activity == null) {
            return;
        }
        com.sigmob.sdk.base.common.h.d((BaseAdUnit) null);
        baseAdUnitM.getClickCommon().isDeeplink = "0";
        com.sigmob.sdk.manager.b.b(baseAdUnitM, com.sigmob.sdk.base.common.a.H, (String) null);
        String landing_page = baseAdUnitM.getLanding_page();
        if (com.sigmob.sdk.base.utils.t.a((CharSequence) landing_page) || (uri = Uri.parse(landing_page)) == null) {
            return;
        }
        if (!baseAdUnitM.isSkipSigmobBrowser()) {
            com.sigmob.sdk.base.common.h.a(baseAdUnitM);
            BaseAdActivity.a(activity, (Class<? extends BaseAdActivity>) AdActivity.class, baseAdUnitM.getUuid());
        } else {
            try {
                com.sigmob.sdk.base.utils.g.a(activity, uri);
            } catch (Throwable th) {
                SigmobLog.e("can't open load ", th);
            }
        }
    }

    public static void a(Activity activity) {
        if (activity == null) {
            return;
        }
        f78767a = new WeakReference<>(activity);
    }

    public static synchronized void a(Context context) {
        if (f78768b == null) {
            Context applicationContext = context.getApplicationContext();
            f78768b = applicationContext;
            com.sigmob.sdk.base.utils.o.a(applicationContext, com.sigmob.sdk.base.n.f79588o);
            com.sigmob.sdk.base.o.a().e();
            b(f78768b);
            com.sigmob.sdk.base.db.a.a(f78768b);
            ClientMetadata.getInstance().initialize(f78768b);
            n();
        }
    }

    private static void b(Context context) {
        Networking.AddSigmobServerURL(com.sigmob.sdk.base.o.c());
        Networking.AddSigmobServerURL(com.sigmob.sdk.base.o.a().a(false));
        Networking.AddSigmobServerURL(com.sigmob.sdk.base.o.a().b(false));
        Networking.AddSigmobServerURL(com.sigmob.sdk.base.o.a().t());
        Networking.initializeV2(context);
        Networking.initializeSigRequestQueue(context);
    }

    public static void a(boolean hasAdLoaded) {
        f78771e = hasAdLoaded;
    }
}
