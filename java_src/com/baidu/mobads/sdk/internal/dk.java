package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.baidu.mobads.sdk.api.BiddingListener;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.SplashAd;
import com.baidu.mobads.sdk.api.SplashAdListener;
import com.baidu.mobads.sdk.api.SplashInteractionListener;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class dk extends bj {
    private static int J;
    private static dk P;
    private int A;
    private int B;
    private int C;
    private int D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private int I;
    private SplashAdListener K;
    private SplashAd.OnFinishListener L;
    private SplashAd.SplashFocusAdListener M;
    private SplashAd.SplashCardAdListener N;
    private RequestParameters O;
    private a Q;
    private SplashAd.SplashAdDownloadDialogListener R;
    private HashMap<String, String> S;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f7867a;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected int f7868t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f7869u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f7870v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f7871w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f7872x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private RelativeLayout f7873y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f7874z;

    public dk(Context context, String str, int i10, int i11, int i12, int i13, boolean z10, boolean z11, boolean z12, boolean z13) {
        super(context);
        this.I = 60;
        this.f7867a = 67;
        this.f7868t = -16777216;
        this.f7870v = false;
        this.f7871w = false;
        this.f7872x = false;
        this.f7874z = str;
        this.A = i10;
        this.B = i11;
        this.C = i12;
        this.D = i13;
        this.E = z10;
        this.F = z11;
        this.G = z13;
        this.H = z12;
    }

    private void b(Intent intent, SplashAd.OnFinishListener onFinishListener) {
        Context context = this.f7573i;
        if (context == null || intent == null) {
            return;
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        this.f7573i.startActivity(intent);
        if (onFinishListener != null) {
            onFinishListener.onFinishActivity();
            return;
        }
        Context context2 = this.f7573i;
        if (context2 instanceof Activity) {
            ((Activity) context2).finish();
        }
    }

    public static void e(int i10) {
        J = i10;
    }

    private String k(String str) {
        if (this.O == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Map<String, String> extras = this.O.getExtras();
            if (extras != null) {
                return extras.get(str);
            }
            return null;
        } catch (Throwable th) {
            this.f7575k.d(bj.f7566b, th);
            return null;
        }
    }

    public void c(int i10) {
        this.f7868t = i10;
    }

    public void d(int i10) {
        this.I = i10;
    }

    public boolean f() {
        HashMap map = new HashMap();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("event_type", "splash_focus_card_enable");
            a(jSONObject, map);
            Object obj = map.get("splash_focus_card_enable");
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
            return false;
        } catch (JSONException e10) {
            bv.a().c(e10);
            return false;
        } catch (Throwable th) {
            bv.a().c(th);
            return false;
        }
    }

    public a g() {
        return this.Q;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void h(IOAdEvent iOAdEvent) {
        this.f7870v = true;
        SplashAdListener splashAdListener = this.K;
        if (splashAdListener != null && (splashAdListener instanceof SplashInteractionListener)) {
            ((SplashInteractionListener) splashAdListener).onAdClick();
        }
        SplashAd.SplashFocusAdListener splashFocusAdListener = this.M;
        if (splashFocusAdListener != null) {
            splashFocusAdListener.onAdClick();
        }
        SplashAd.SplashCardAdListener splashCardAdListener = this.N;
        if (splashCardAdListener != null) {
            splashCardAdListener.onCardClick();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject j() {
        String str = "1";
        this.f7583s = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(IAdInterListener.AdReqParam.PROD, IAdInterListener.AdProdType.PRODUCT_SPLASH);
            this.f7577m.createProdHandler(jSONObject2);
            m();
            jSONObject.put(IAdInterListener.AdReqParam.PROD, IAdInterListener.AdProdType.PRODUCT_SPLASH);
            jSONObject.put(IAdInterListener.AdReqParam.APID, this.f7874z);
            jSONObject.put(IAdInterListener.AdReqParam.FET, "ANTI,HTML,MSSP,VIDEO,RSPLASHHTML");
            jSONObject.put("n", "1");
            jSONObject.put("at", "26");
            jSONObject.put(IAdInterListener.AdReqParam.MIME_TYPE, "video/mp4,image/jpg,image/gif,image/png");
            jSONObject.put(IAdInterListener.AdReqParam.WIDTH, "" + this.A);
            jSONObject.put("h", "" + this.B);
            jSONObject.put("msa", 399);
            if (!TextUtils.isEmpty(this.f7581q)) {
                jSONObject.put("appid", this.f7581q);
            }
            String strK = k(SplashAd.KEY_USE_ADAPTIVE_AD);
            if (!TextUtils.isEmpty(strK)) {
                if (!Boolean.parseBoolean(strK)) {
                    str = "0";
                }
                jSONObject.put("adtv", str);
            }
            jSONObject = m.a(jSONObject, b(this.S));
            b(jSONObject);
            return jSONObject;
        } catch (Exception e10) {
            e10.printStackTrace();
            return jSONObject;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void q() {
        SplashAdListener splashAdListener = this.K;
        if (splashAdListener != null && (splashAdListener instanceof SplashInteractionListener)) {
            ((SplashInteractionListener) splashAdListener).onAdPresent();
        }
        SplashAd.SplashFocusAdListener splashFocusAdListener = this.M;
        if (splashFocusAdListener != null) {
            splashFocusAdListener.onAdIconShow();
        }
        SplashAd.SplashCardAdListener splashCardAdListener = this.N;
        if (splashCardAdListener != null) {
            splashCardAdListener.onCardShow();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void t() {
        SplashAd.OnFinishListener onFinishListener = this.L;
        if (onFinishListener != null) {
            onFinishListener.onFinishActivity();
            this.L = null;
        } else {
            Context context = this.f7573i;
            if (context instanceof Activity) {
                ((Activity) context).finish();
            }
        }
        this.f7573i = null;
        this.f7873y = null;
        super.t();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void u() {
        SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener = this.R;
        if (splashAdDownloadDialogListener == null || !(splashAdDownloadDialogListener instanceof SplashAd.SplashAdDownloadDialogListener)) {
            return;
        }
        splashAdDownloadDialogListener.onADPrivacyLpClose();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void v() {
        SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener = this.R;
        if (splashAdDownloadDialogListener == null || !(splashAdDownloadDialogListener instanceof SplashAd.SplashAdDownloadDialogListener)) {
            return;
        }
        splashAdDownloadDialogListener.onADFunctionLpClose();
    }

    public void a(RelativeLayout relativeLayout) {
        this.f7873y = relativeLayout;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void c() {
        SplashAdListener splashAdListener = this.K;
        if (splashAdListener != null && (splashAdListener instanceof SplashInteractionListener)) {
            ((SplashInteractionListener) splashAdListener).onAdCacheFailed();
        }
        super.c();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void d() {
        SplashAdListener splashAdListener = this.K;
        if (splashAdListener != null && (splashAdListener instanceof SplashInteractionListener)) {
            ((SplashInteractionListener) splashAdListener).onLpClosed();
        }
        SplashAd.SplashFocusAdListener splashFocusAdListener = this.M;
        if (splashFocusAdListener != null) {
            splashFocusAdListener.onLpClosed();
        }
        super.d();
    }

    public void e() {
        IAdInterListener iAdInterListener;
        if (this.f7869u || (iAdInterListener = this.f7577m) == null) {
            return;
        }
        iAdInterListener.setAdContainer(this.f7873y);
        this.f7577m.showAd();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void g(IOAdEvent iOAdEvent) {
        if (this.f7871w) {
            return;
        }
        this.f7871w = true;
        Map<String, Object> data = iOAdEvent.getData();
        if (this.M != null && data != null && data.containsKey("splash_close_reason")) {
            this.M.onAdClose();
            return;
        }
        SplashAd.SplashCardAdListener splashCardAdListener = this.N;
        if (splashCardAdListener != null) {
            splashCardAdListener.onCardClose();
            return;
        }
        super.g(iOAdEvent);
        SplashAdListener splashAdListener = this.K;
        if (splashAdListener == null || !(splashAdListener instanceof SplashInteractionListener)) {
            return;
        }
        ((SplashInteractionListener) splashAdListener).onAdDismissed();
    }

    public void a(int i10) {
        this.f7867a = i10;
    }

    public void a(SplashAdListener splashAdListener) {
        this.K = splashAdListener;
    }

    public void a(SplashAd.SplashFocusAdListener splashFocusAdListener) {
        this.M = splashFocusAdListener;
        this.f7871w = false;
    }

    public void c(Map<String, String> map) {
        try {
            this.S = m.a(map);
        } catch (Throwable unused) {
            this.S = new HashMap<>();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void e(IOAdEvent iOAdEvent) {
        SplashAdListener splashAdListener = this.K;
        if (splashAdListener == null || !(splashAdListener instanceof SplashInteractionListener)) {
            return;
        }
        ((SplashInteractionListener) splashAdListener).onAdExposed();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public JSONObject k() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("timeout", this.D);
            jSONObject.put("splashTipStyle", this.C);
            jSONObject.put("bitmapDisplayMode", J);
            jSONObject.put("countDownNew", "true");
            jSONObject.put("Display_Down_Info", "" + this.E);
            jSONObject.put("popDialogIfDl", "" + this.F);
            jSONObject.put("limitRegionClick", "" + this.G);
            jSONObject.put("displayClickButton", "" + this.H);
            jSONObject.put("needCache", true);
            jSONObject.put("onlyLoadAd", this.f7869u);
            jSONObject.put("cacheVideoOnlyWifi", true);
            jSONObject.put("shakeLogoSize", this.I);
            jSONObject.put("twistLogoHeightDp", this.f7867a);
            jSONObject.put("twistBgColor", this.f7868t);
            RequestParameters requestParameters = this.O;
            if (requestParameters != null) {
                a(requestParameters.getExtras());
            }
            return m.a(jSONObject, b(this.f7579o));
        } catch (Exception e10) {
            e10.printStackTrace();
            return jSONObject;
        }
    }

    public void a(SplashAd.SplashCardAdListener splashCardAdListener) {
        this.N = splashCardAdListener;
        this.f7871w = false;
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void e(String str) {
        SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener = this.R;
        if (splashAdDownloadDialogListener == null || !(splashAdDownloadDialogListener instanceof SplashAd.SplashAdDownloadDialogListener)) {
            return;
        }
        splashAdDownloadDialogListener.onADPrivacyLpShow();
    }

    public boolean b(Activity activity) {
        HashMap map = new HashMap();
        JSONObject jSONObject = new JSONObject();
        try {
            this.f7577m.removeAllListeners();
            this.f7577m.addEventListener(z.M, this.f7576l);
            this.f7577m.addEventListener(z.H, this.f7576l);
            this.f7577m.addEventListener(z.W, this.f7576l);
            this.K = null;
            jSONObject.putOpt("event_type", "splash_focus_card");
            map.put("splash_focus_activity", activity);
            a(jSONObject, map);
            Object obj = map.get("splash_focus_card_show");
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
            return false;
        } catch (JSONException e10) {
            bv.a().c(e10);
            return false;
        } catch (Throwable th) {
            bv.a().c(th);
            return false;
        }
    }

    public void a(RequestParameters requestParameters) {
        this.O = requestParameters;
        c(requestParameters.getExt());
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void f(String str) {
        SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener = this.R;
        if (splashAdDownloadDialogListener == null || !(splashAdDownloadDialogListener instanceof SplashAd.SplashAdDownloadDialogListener)) {
            return;
        }
        splashAdDownloadDialogListener.onADFunctionLpShow();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        IAdInterListener iAdInterListener = this.f7577m;
        if (iAdInterListener == null) {
            this.f7578n = false;
            return;
        }
        this.f7578n = true;
        if (!this.f7869u) {
            iAdInterListener.setAdContainer(this.f7873y);
        }
        this.f7577m.loadAd(j(), k());
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void g(String str) {
        SplashAdListener splashAdListener = this.K;
        if (splashAdListener == null || !(splashAdListener instanceof SplashInteractionListener)) {
            return;
        }
        ((SplashInteractionListener) splashAdListener).onAdSkip();
    }

    public void a(@NonNull Intent intent, @Nullable SplashAd.OnFinishListener onFinishListener) {
        try {
            if (!this.f7870v && intent != null && this.f7577m != null && !this.f7872x && (this.f7573i instanceof Activity)) {
                this.L = onFinishListener;
                JSONObject jSONObject = new JSONObject();
                HashMap map = new HashMap();
                try {
                    jSONObject.putOpt("event_type", "splash_focus_start_activity");
                    map.put("splash_focus_user_intent", intent);
                } catch (JSONException e10) {
                    bv.a().a(e10);
                }
                this.f7577m.removeAllListeners();
                this.f7577m.addEventListener(z.Z, this.f7576l);
                this.f7577m.addEventListener(z.M, this.f7576l);
                this.f7577m.addEventListener(z.H, this.f7576l);
                this.f7577m.addEventListener(z.W, this.f7576l);
                this.f7577m.addEventListener(z.X, this.f7576l);
                a(jSONObject, map);
                this.K = null;
                P = this;
                be.a().a(new dl(this), 3L, TimeUnit.SECONDS);
                return;
            }
            b(intent, onFinishListener);
        } catch (Throwable th) {
            th.printStackTrace();
            b(intent, onFinishListener);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void b() {
        SplashAdListener splashAdListener = this.K;
        if (splashAdListener != null && (splashAdListener instanceof SplashInteractionListener)) {
            ((SplashInteractionListener) splashAdListener).onAdCacheSuccess();
        }
        super.b();
    }

    public Object j(String str) {
        if (this.Q == null) {
            return null;
        }
        if ("request_id".equals(str)) {
            return this.Q.Z();
        }
        return this.Q.a(str);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void b(String str, boolean z10) {
        SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener = this.R;
        if (splashAdDownloadDialogListener == null || !(splashAdDownloadDialogListener instanceof SplashAd.SplashAdDownloadDialogListener)) {
            return;
        }
        if (z10) {
            splashAdDownloadDialogListener.adDownloadWindowShow();
        } else {
            splashAdDownloadDialogListener.adDownloadWindowClose();
        }
    }

    public static void a(Activity activity, JSONObject jSONObject, SplashAd.SplashFocusAdListener splashFocusAdListener) {
        dk dkVar = P;
        if (dkVar != null) {
            dkVar.a(splashFocusAdListener);
            HashMap map = new HashMap();
            JSONObject jSONObject2 = new JSONObject();
            try {
                try {
                    jSONObject2.putOpt("event_type", "splash_focus_register_transition");
                    jSONObject2.putOpt("splash_focus_params", jSONObject);
                    map.put("splash_focus_activity", activity);
                    P.a(jSONObject2, map);
                } catch (Throwable th) {
                    P = null;
                    throw th;
                }
            } catch (JSONException e10) {
                bv.a().c(e10);
            } catch (Throwable th2) {
                bv.a().c(th2);
            }
            P = null;
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(IOAdEvent iOAdEvent) {
        List<a> listA;
        if (iOAdEvent != null && (listA = b.a(iOAdEvent.getMessage()).a()) != null && listA.size() > 0) {
            this.Q = listA.get(0);
        }
        SplashAdListener splashAdListener = this.K;
        if (splashAdListener != null) {
            splashAdListener.onADLoaded();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(int i10, String str, String str2) {
        this.f7872x = true;
        SplashAdListener splashAdListener = this.K;
        if (splashAdListener != null) {
            splashAdListener.onAdFailed("广告无填充");
        }
        super.a(i10, str, str2);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(String str, int i10, String str2) {
        this.f7872x = true;
        if (this.K != null) {
            a(i10 + "==" + str);
            this.K.onAdFailed(str);
        }
        super.a(str, i10, str2);
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void a(String str, boolean z10) {
        SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener = this.R;
        if (splashAdDownloadDialogListener == null || !(splashAdDownloadDialogListener instanceof SplashAd.SplashAdDownloadDialogListener)) {
            return;
        }
        if (z10) {
            splashAdDownloadDialogListener.onADPermissionShow();
        } else {
            splashAdDownloadDialogListener.onADPermissionClose();
        }
    }

    public void a(SplashAd.SplashAdDownloadDialogListener splashAdDownloadDialogListener) {
        this.R = splashAdDownloadDialogListener;
    }

    public void a(MotionEvent motionEvent) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_d_t", motionEvent.getDownTime());
            jSONObject.put("e_e_t", motionEvent.getEventTime());
            jSONObject.put("e_a", motionEvent.getAction());
            jSONObject.put("e_x", motionEvent.getX());
            jSONObject.put("e_y", motionEvent.getY());
            jSONObject.put("e_m_s", motionEvent.getMetaState());
            jSONObject.put("event_type", "x_event");
            a(jSONObject);
        } catch (Throwable unused) {
        }
    }

    public void a(boolean z10, LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        a aVar = this.Q;
        if (aVar != null) {
            a(aVar.M(), z10, linkedHashMap, biddingListener);
        } else {
            a(this.f7574j, z10, linkedHashMap, biddingListener);
        }
    }

    public void a(String str) {
        try {
            HashMap map = new HashMap();
            map.put("msg", str);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("msg", "sendSplashFailedLog");
            } catch (JSONException e10) {
                bv.a().a(e10);
            }
            a(jSONObject, map);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
