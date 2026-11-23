package com.sigmob.windad;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.kuaishou.weapon.p0.g;
import com.sigmob.sdk.Sigmob;
import com.sigmob.sdk.b;
import com.sigmob.sdk.base.common.af;
import com.sigmob.sdk.base.i;
import com.sigmob.sdk.base.n;
import com.sigmob.sdk.base.o;
import com.sigmob.sdk.base.utils.k;
import com.sigmob.windad.consent.ConsentStatus;
import com.sigmob.windad.consent.WindAdConsentInformation;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes3.dex */
public class WindAds {
    public static final String ADN_ID = "ADN_ID";
    public static final String ADX_ID = "_adx_id";
    public static final String AD_SCENE_DESC = "scene_desc";
    public static final String AD_SCENE_ID = "scene_id";
    public static final String AUCTION_PRICE = "AUCTION_PRICE";
    public static final String CNY = "CNY";
    public static final String CURRENCY = "CURRENCY";
    public static final String HIGHEST_LOSS_PRICE = "HIGHEST_LOSS_PRICE";
    public static final String LOSS_REASON = "LOSS_REASON";
    public static final String MEDIA_REQUEST_OPTIONS = "media_request_options";
    public static final String REWARD_TYPE = "reward_type";
    public static final String SAAS_OPTIONS = "saas_options";
    public static final String SERVER_ARRIVED = "server_arrived";
    public static final String TAG = "WindAds";
    public static final String TRANS_ID = "trans_id";
    public static final String USD = "USD";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile WindAds f82170a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f82174e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private OnInitializationListener f82176g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f82178i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f82180k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f82181l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Context f82182m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile boolean f82171b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f82172c = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f82177h = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f82179j = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f82183n = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final CountDownLatch f82184o = new CountDownLatch(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WindAdOptions f82173d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Handler f82175f = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: com.sigmob.windad.WindAds$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f82186a;

        static {
            int[] iArr = new int[ConsentStatus.values().length];
            f82186a = iArr;
            try {
                iArr[ConsentStatus.ACCEPT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f82186a[ConsentStatus.DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f82186a[ConsentStatus.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private WindAds() {
    }

    private void b() {
        k.b(TAG, "notifyInitSuccess", new Object[0]);
        OnInitializationListener onInitializationListener = this.f82176g;
        if (onInitializationListener == null) {
            return;
        }
        onInitializationListener.onInitializationSuccess();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f A[Catch: all -> 0x0031, PHI: r1
      0x002f: PHI (r1v2 int) = (r1v1 int), (r1v3 int) binds: [B:10:0x0029, B:12:0x002c] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #0 {all -> 0x0031, blocks: (B:9:0x0014, B:14:0x002f), top: B:18:0x0014 }] */
    private void c() {
        if (this.f82178i == 0) {
            try {
                this.f82178i = i.a().g();
            } catch (Throwable unused) {
            }
            if (this.f82178i == 0) {
                try {
                    int i10 = AnonymousClass2.f82186a[WindAdConsentInformation.getInstance(b.e()).getConsentStatus().ordinal()];
                    int i11 = 1;
                    if (i10 != 1) {
                        i11 = 2;
                        if (i10 == 2) {
                            this.f82178i = i11;
                        }
                    } else {
                        this.f82178i = i11;
                    }
                } catch (Throwable unused2) {
                }
            }
        }
        i.a().c(this.f82178i, false);
    }

    private void d() {
        try {
            if (this.f82180k == 0) {
                this.f82180k = i.a().c();
            } else {
                i.a().b(this.f82180k, false);
            }
            if (this.f82181l == 0) {
                this.f82181l = i.a().b();
            } else {
                i.a().a(this.f82181l, false);
            }
        } catch (Throwable unused) {
        }
    }

    private void e() {
        try {
            d();
            c();
            i.a().b(this.f82179j, false);
            i.a().a(this.f82177h, false);
        } catch (Throwable th) {
            SigmobLog.e("loadPrivacyInfo: error = " + th.getMessage());
        }
    }

    public static String getUserId() {
        return ClientMetadata.getUserId();
    }

    public static String getVersion() {
        return n.f79584k;
    }

    public static void requestPermission(Activity activity) {
        if (activity == null || Build.VERSION.SDK_INT < 23 || ClientMetadata.isPermissionGranted(activity, g.f74779c)) {
            return;
        }
        activity.requestPermissions(new String[]{g.f74779c}, 0);
    }

    public static void setOAIDCertPem(String certPem) {
        if (TextUtils.isEmpty(certPem)) {
            k.e(TAG, "certPem is unavailable.", new Object[0]);
            return;
        }
        try {
            ClientMetadata.setOAIDCertPem(certPem);
        } catch (Throwable unused) {
            k.f(TAG, "not support OAID module.", new Object[0]);
        }
    }

    public static void setUserId(String userId) {
        ClientMetadata.setUserId(userId);
    }

    public static WindAds sharedAds() {
        if (f82170a == null) {
            synchronized (WindAds.class) {
                if (f82170a == null) {
                    WindAds windAds = new WindAds();
                    windAds.setDebugEnable(true);
                    f82170a = windAds;
                }
            }
        }
        return f82170a;
    }

    protected int a() {
        return 159;
    }

    public void checkAndResGuard(Context context) {
        if (ResourceUtil.getLayoutId(context, "sig_new_interstitial_layout") != 0) {
            return;
        }
        ArrayList<String> arrayList = new ArrayList<String>() { // from class: com.sigmob.windad.WindAds.1
            {
                add("R.string.sig_*");
                add("R.integer.sig_*");
                add("R.layout.sig_*");
                add("R.drawable.sig_*");
                add("R.style.sig_*");
                add("R.dimen.sig_*");
                add("R.anim.sig_*");
                add("R.color.sig_*");
                add("R.id.sig_*");
                add("R.attr.sig_*");
            }
        };
        k.f(TAG, "The Wind SDK resources may have been obfuscated by AndResGuard. Please add the following " + arrayList + " to the whitelist.", new Object[0]);
    }

    public int getAgeRestrictedStatus() {
        return this.f82180k;
    }

    public String getAppId() {
        WindAdOptions windAdOptions = this.f82173d;
        if (windAdOptions == null) {
            return null;
        }
        return windAdOptions.getAppId();
    }

    public String getAppKey() {
        WindAdOptions windAdOptions = this.f82173d;
        if (windAdOptions == null) {
            return null;
        }
        return windAdOptions.getAppKey();
    }

    public int getCommonVersion() {
        try {
            return Constants.getVersion();
        } catch (Throwable unused) {
            return 202;
        }
    }

    public Handler getHandler() {
        if (this.f82175f == null) {
            this.f82175f = new Handler(Looper.getMainLooper());
        }
        return this.f82175f;
    }

    public WindAdOptions getOptions() {
        return this.f82173d;
    }

    public String getSDKToken() {
        if (this.f82172c) {
            k.c(TAG, "getSDKToken: SDK is ready, Retrieving token.", new Object[0]);
            return Sigmob.getInstance().getSDKToken();
        }
        try {
            this.f82184o.await(o.a().ai(), TimeUnit.MILLISECONDS);
            if (this.f82172c) {
                k.c(TAG, "getSDKToken(await): SDK is ready, Retrieving token.", new Object[0]);
                return Sigmob.getInstance().getSDKToken();
            }
        } catch (Exception e10) {
            k.f(TAG, "getSDKToken: error = " + e10.getMessage(), new Object[0]);
        }
        k.f(TAG, "getSDKToken: SDK is not ready, Cannot retrieve token.", new Object[0]);
        return null;
    }

    public boolean getSensorStatus() {
        return this.f82183n;
    }

    public int getUserAge() {
        return this.f82181l;
    }

    public int getUserGDPRConsentStatus() {
        return this.f82178i;
    }

    public String getWindUid() {
        try {
            return ClientMetadata.getUid();
        } catch (Exception e10) {
            SigmobLog.e("getWindUid: error = " + e10.getMessage());
            return null;
        }
    }

    public boolean init(Context context, WindAdOptions options, OnInitializationListener onInitializationListener) {
        synchronized (this) {
            this.f82176g = onInitializationListener;
            if (!this.f82171b) {
                if (context == null) {
                    a("context is null.");
                    return false;
                }
                if (options == null) {
                    a("WindAdOptions is null.");
                    return false;
                }
                if (TextUtils.isEmpty(options.getAppId())) {
                    a("appId is empty.");
                    return false;
                }
                int commonVersion = getCommonVersion();
                if (commonVersion < 202) {
                    a("Your COMMON Lib version must be equal or higher than 202, current Version [ " + commonVersion + " ]");
                    return false;
                }
                this.f82173d = options;
                this.f82182m = context.getApplicationContext();
                this.f82171b = true;
                checkAndResGuard(context);
            }
            b();
            return true;
        }
    }

    public boolean isAdult() {
        return this.f82177h;
    }

    public boolean isDebugEnable() {
        return this.f82174e;
    }

    public boolean isInit() {
        return this.f82171b;
    }

    public boolean isPersonalizedAdvertisingOn() {
        return this.f82179j;
    }

    public void setAdult(boolean isAdult) {
        this.f82177h = isAdult;
        k.b(TAG, "setAdult: result = " + isAdult, new Object[0]);
        if (this.f82172c) {
            i.a().a(isAdult, true);
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public void setDebugEnable(boolean enable) {
        Level level;
        this.f82174e = enable;
        if (n.f79579f.booleanValue()) {
            if (enable) {
                level = Level.FINE;
            } else {
                level = Level.SEVERE;
            }
        } else if (enable) {
            level = Level.INFO;
        } else {
            level = Level.SEVERE;
        }
        SigmobLog.setSdkHandlerLevel(level);
    }

    public void setIsAgeRestrictedUser(int windAgeRestrictedStatus) {
        this.f82180k = windAgeRestrictedStatus;
        if (this.f82172c) {
            i.a().b(windAgeRestrictedStatus, true);
        }
    }

    public void setOAIDCertFileName(String fileName) {
        ClientMetadata.setOaidCertFileName(fileName);
    }

    public void setPersonalizedAdvertisingOn(boolean isPersonalizedAdvertisingOn) {
        this.f82179j = isPersonalizedAdvertisingOn;
        k.b(TAG, "setPersonalized: result = " + isPersonalizedAdvertisingOn, new Object[0]);
        if (this.f82172c) {
            i.a().b(isPersonalizedAdvertisingOn, true);
        }
    }

    public void setSensorStatus(boolean status) {
        this.f82183n = status;
        af.a(status);
        k.b(TAG, "setSensorStatus: status = " + status, new Object[0]);
    }

    public void setUserAge(int userAge) {
        this.f82181l = userAge;
        if (this.f82172c) {
            i.a().a(userAge, true);
        }
    }

    public void setUserGDPRConsentStatus(int windConsentStatus) {
        this.f82178i = windConsentStatus;
        if (this.f82172c) {
            i.a().c(windConsentStatus, true);
        }
    }

    public void start(OnStartListener onStartListener) {
        synchronized (this) {
            if (this.f82171b) {
                if (!this.f82172c) {
                    try {
                        b.a(this.f82182m.getApplicationContext());
                        e();
                        Sigmob.getInstance().init();
                        this.f82172c = true;
                        k.b(TAG, "start: appId = " + getAppId(), new Object[0]);
                        this.f82184o.countDown();
                    } catch (Throwable th) {
                        if (onStartListener != null) {
                            try {
                                onStartListener.onStartFail("Wind SDK Start fail Exception " + th.getMessage());
                            } finally {
                                this.f82184o.countDown();
                            }
                        }
                        k.f(TAG, "start: error = " + th.getMessage(), new Object[0]);
                        return;
                    }
                }
                if (onStartListener == null) {
                } else {
                    onStartListener.onStartSuccess();
                }
            } else if (onStartListener == null) {
            } else {
                onStartListener.onStartFail("Wind SDK Start fail, need Init SDK first.");
            }
        }
    }

    private void a(String error) {
        k.f(TAG, "notifyInitError: error = " + error, new Object[0]);
        OnInitializationListener onInitializationListener = this.f82176g;
        if (onInitializationListener == null) {
            return;
        }
        onInitializationListener.onInitializationFail(error);
    }
}
