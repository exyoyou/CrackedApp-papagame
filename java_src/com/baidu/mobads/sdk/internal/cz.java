package com.baidu.mobads.sdk.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.baidu.mobads.sdk.api.CPUNovelAd;
import com.baidu.mobads.sdk.api.CPUWebAdRequestParam;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class cz extends bj {
    public static final String A = "pre_chapter_adstart_countdown";
    public static final String B = "try_get_cuid";
    private static final String J = "cz";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7820a = "enter_refresh_bookstore";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f7821t = "enter_reader";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f7822u = "notify_impression";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f7823v = "request_int_ad_view";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f7824w = "request_banner_ad_view";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f7825x = "request_bookstore_bottom_view";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f7826y = "request_shelf_ad_view";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f7827z = "reader_background_status_change";
    public HashMap<String, Object> C;
    public String D;
    public int E;
    public int F;
    public int G;
    public int H;
    public String I;
    private CPUNovelAd.CpuNovelListener K;
    private SoftReference<RelativeLayout> L;

    public cz(Context context, String str, CPUWebAdRequestParam cPUWebAdRequestParam) {
        super(context);
        this.E = 5;
        this.F = 60;
        this.G = 0;
        this.H = 10006;
        this.I = "";
        this.D = str;
        this.C = (HashMap) cPUWebAdRequestParam.getParameters();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        ao.b();
    }

    public void e() {
        ao.a(this.E);
        ao.b(this.F);
        ao.a(new dc(this));
    }

    public Activity f() {
        return ao.c();
    }

    public boolean g() {
        return ao.d();
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void h(IOAdEvent iOAdEvent) {
        CPUNovelAd.CpuNovelListener cpuNovelListener = this.K;
        if (cpuNovelListener != null) {
            cpuNovelListener.onAdClick();
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public View w() {
        View viewA = ao.a(this.f7573i);
        if (viewA instanceof FrameLayout) {
            RelativeLayout relativeLayout = new RelativeLayout(this.f7573i);
            this.L = new SoftReference<>(relativeLayout);
            relativeLayout.setId(33);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, bb.a(this.f7573i, 53.0f));
            layoutParams.gravity = 80;
            ((FrameLayout) viewA).addView(relativeLayout, layoutParams);
            if (bn.a((Context) null).a() >= 18) {
                relativeLayout.getViewTreeObserver().addOnWindowFocusChangeListener(new dd(this, relativeLayout));
            }
        }
        return viewA;
    }

    public boolean x() {
        return ao.e();
    }

    public void y() {
        ao.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Map<String, Object> map) {
        if (map != null) {
            Object obj = map.get("adInnerPageInterval");
            Object obj2 = map.get("adBottomRefreshInterval");
            Object obj3 = map.get("adFrontChapterInterval");
            Object obj4 = map.get("isShowFeeds");
            Object obj5 = map.get("isAdSwitch");
            Object obj6 = map.get("showCount");
            Object obj7 = map.get("clickCount");
            Object obj8 = map.get("motivateDeeplinkAdSwitch");
            Object obj9 = map.get("motivateDeeplinkAdFrequency");
            Object obj10 = map.get("motivateDeeplinkAdExpTime");
            Object obj11 = map.get("motivateDeeplinkNoAdTime");
            Object obj12 = map.get("isStartRewardAdTimer");
            Object obj13 = map.get("temporaryAdDensitySwitch");
            Object obj14 = map.get("temporaryAdDensityTimes");
            Object obj15 = map.get("temporaryAdDensityScreen");
            if (obj != null && obj2 != null) {
                ao.a(((Integer) obj).intValue());
                ao.b(((Integer) obj2).intValue());
            }
            if ((obj3 instanceof Integer) && (obj4 instanceof Boolean)) {
                ao.a(((Integer) obj3).intValue(), ((Boolean) obj4).booleanValue());
            }
            if (obj5 instanceof Integer) {
                ao.a(((Integer) obj5).intValue() != 0);
            }
            if ((obj6 instanceof Integer) && (obj7 instanceof Integer)) {
                ao.a(((Integer) obj6).intValue(), ((Integer) obj7).intValue());
            }
            if ((obj8 instanceof Boolean) && (obj9 instanceof Integer) && (obj10 instanceof Integer) && (obj11 instanceof Integer)) {
                ao.a(((Boolean) obj8).booleanValue(), ((Integer) obj9).intValue(), ((Integer) obj10).intValue(), ((Integer) obj11).intValue());
            }
            if ((obj12 instanceof Boolean) && ((Boolean) obj12).booleanValue()) {
                ao.h();
            }
            if ((obj13 instanceof Boolean) && ((Boolean) obj13).booleanValue() && (obj14 instanceof Integer) && (obj15 instanceof Integer)) {
                ao.b(((Integer) obj14).intValue(), ((Integer) obj15).intValue());
            } else {
                ao.b(0, 0);
            }
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    public void a() {
        e();
        if (this.f7577m == null) {
            this.f7578n = false;
            return;
        }
        this.f7578n = true;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(IAdInterListener.AdReqParam.PROD, "novel");
            this.f7577m.createProdHandler(jSONObject);
            m();
            this.f7577m.addEventListener("Update_fbReader_Setting", new da(this));
            this.f7577m.addEventListener("closeInterstitialAd", new db(this));
            JSONObject jSONObject2 = new JSONObject();
            if (!TextUtils.isEmpty(this.D)) {
                jSONObject2.put("appid", this.D);
            }
            jSONObject2.put(IAdInterListener.AdReqParam.PROD, "novel");
            this.f7577m.loadAd(jSONObject2, m.a(this.C));
        } catch (Throwable th) {
            this.f7575k.c(J, th);
        }
    }

    @Override // com.baidu.mobads.sdk.internal.bj
    protected void e(IOAdEvent iOAdEvent) {
        CPUNovelAd.CpuNovelListener cpuNovelListener = this.K;
        if (cpuNovelListener != null) {
            cpuNovelListener.onAdImpression();
        }
    }

    public void a(CPUNovelAd.CpuNovelListener cpuNovelListener) {
        this.K = cpuNovelListener;
    }
}
