package com.windmill.sdk.banner;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.windmill.sdk.WMAdFilter;
import com.windmill.sdk.WMAdSourceStatusListener;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.banner.animation.h;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.common.e;
import com.windmill.sdk.common.f;
import com.windmill.sdk.common.g;
import com.windmill.sdk.common.j;
import com.windmill.sdk.common.k;
import com.windmill.sdk.common.m;
import com.windmill.sdk.common.n;
import com.windmill.sdk.common.u;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.point.PointEntityWMError;
import com.windmill.sdk.utils.UIUtils;
import com.windmill.sdk.utils.ViewUtil;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
class b extends RelativeLayout implements com.windmill.sdk.banner.a.InterfaceC1078a, j.a, j.b, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected View f86594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private j f86595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WMBannerAdListener f86596c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference<Activity> f86597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f86598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f86599f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f86600g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private n f86601h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.windmill.sdk.banner.a f86602i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Animation f86603j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Animation f86604k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f86605l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private WMBannerAdRequest f86606m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private f f86607n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private e f86608o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private g f86609p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f86610q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f86611r;

    class a implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f86613b;

        a(View view) {
            this.f86613b = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            animation.setAnimationListener(null);
            if (this.f86613b != null) {
                WMLogUtil.d(this.f86613b.hashCode() + "---------onAnimationEnd----------" + this.f86613b.getClass().getName());
                this.f86613b.post(new Runnable() { // from class: com.windmill.sdk.banner.b.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.f86613b.clearAnimation();
                        ViewUtil.removeChildFromParent(a.this.f86613b);
                    }
                });
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public b(Activity activity) {
        this(activity, null);
    }

    private void a() {
        com.windmill.sdk.banner.a aVar = this.f86602i;
        if (aVar == null || !aVar.b()) {
            return;
        }
        this.f86602i.a(this);
        this.f86602i.removeCallbacksAndMessages(null);
        this.f86602i.a();
        this.f86602i.a(false);
    }

    private void b() throws Throwable {
        if (ViewUtil.isVisible(this) && isViewAttached()) {
            visible();
        } else {
            inVisible();
        }
        com.windmill.sdk.banner.a aVar = this.f86602i;
        if (aVar == null || aVar.b()) {
            return;
        }
        this.f86602i.removeCallbacksAndMessages(null);
        this.f86602i.a((com.windmill.sdk.banner.a.InterfaceC1078a) null);
        this.f86602i.a(true);
    }

    public List<AdInfo> checkValidAdCaches() {
        j jVar = this.f86595b;
        if (jVar != null) {
            return jVar.e();
        }
        return null;
    }

    public void checkVisibleStart() throws Throwable {
        setAutoScroll();
    }

    public void destroy() {
        j jVar = this.f86595b;
        if (jVar != null) {
            jVar.a((m) null);
            this.f86595b.a((u) null);
            this.f86595b.a(true);
        }
        if (this.f86596c != null) {
            this.f86596c = null;
        }
        if (this.f86601h != null) {
            this.f86601h = null;
        }
        removeAllViews();
        ViewUtil.removeChildFromParent(this);
    }

    public void disableAutoScroll() throws Throwable {
        b();
        this.f86602i = null;
    }

    public Activity getActivity() {
        WeakReference<Activity> weakReference = this.f86597d;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public String getLoadFailMessages() {
        j jVar = this.f86595b;
        return jVar != null ? jVar.o() : "";
    }

    public void inVisible() throws Throwable {
        j jVar;
        View view;
        if (this.f86610q && (jVar = this.f86595b) != null && (view = this.f86594a) != null) {
            jVar.a(false, view);
        }
        this.f86610q = false;
    }

    public boolean isCanRefresh() {
        return this.f86610q;
    }

    public boolean isReady() {
        j jVar = this.f86595b;
        if (jVar != null) {
            return jVar.d();
        }
        return false;
    }

    public boolean isViewAttached() {
        return this.f86598e && this.f86600g == 0 && this.f86605l == 0 && this.f86599f;
    }

    public void loadAd(final WMBannerAdRequest request) throws Throwable {
        String placementId = "";
        try {
            this.f86606m = request;
            placementId = request.getPlacementId();
            request.setRefreshRequest(false);
            this.f86606m.isLoadToOut = false;
            if (request.getOptions() != null) {
                Object obj = request.getOptions().get(WMConstants.AD_WIDTH);
                Object obj2 = request.getOptions().get(WMConstants.AD_HEIGHT);
                if ((obj == null && obj2 == null) || ("0".equals(String.valueOf(obj)) && "0".equals(String.valueOf(obj2)))) {
                    Context context = WindMillAd.sharedAds().getContext();
                    int screenWidthDp = (int) UIUtils.getScreenWidthDp(context);
                    int screenHeightDp = (int) UIUtils.getScreenHeightDp(context);
                    if (screenHeightDp < screenWidthDp) {
                        screenWidthDp = screenHeightDp;
                    }
                    request.getOptions().put(WMConstants.AD_WIDTH, Integer.valueOf(screenWidthDp));
                    request.getOptions().put(WMConstants.AD_HEIGHT, Integer.valueOf((screenWidthDp * 50) / 320));
                }
            }
            if (this.f86595b == null) {
                this.f86595b = new j(getActivity(), request, this, this);
            }
            this.f86595b.a(this.f86609p);
            this.f86595b.a(this.f86608o);
            this.f86595b.a(this.f86601h);
            this.f86595b.a(this.f86607n);
            this.f86595b.a(request);
        } catch (Exception e10) {
            WMLogUtil.e("WMAdViewImpl", "loadAd error:" + e10.getMessage());
            WindMillError windMillError = WindMillError.ERROR_AD_REQUEST;
            PointEntityWMError pointEntityWMErrorWindError = PointEntityWMError.WindError("error", "load", windMillError.getErrorCode(), e10.getMessage());
            pointEntityWMErrorWindError.setAdtype(String.valueOf(7));
            pointEntityWMErrorWindError.setPlacement_id(placementId);
            pointEntityWMErrorWindError.commit();
            WMBannerAdListener wMBannerAdListener = this.f86596c;
            if (wMBannerAdListener != null) {
                wMBannerAdListener.onAdLoadError(windMillError, placementId);
            }
        }
    }

    public void onAdAutoRefreshFail(WindMillError error, String placementId) {
        WMBannerAdListener wMBannerAdListener = this.f86596c;
        if (wMBannerAdListener != null) {
            wMBannerAdListener.onAdAutoRefreshFail(error, placementId);
        }
    }

    public void onAdAutoRefreshed(AdInfo adInfo, View bannerView) throws Throwable {
        if (bannerView == null) {
            if (adInfo != null) {
                WindMillError windMillError = WindMillError.ERROR_AD_REQUEST;
                windMillError.setMessage("onAdAutoRefreshed but bannerView is null");
                onAdAutoRefreshFail(windMillError, adInfo.getPlacementId());
                return;
            }
            return;
        }
        WMLogUtil.d(bannerView.getClass().getName() + ":" + bannerView.hashCode() + "-------onAdAutoRefreshed------" + this.f86594a.getClass().getName() + ":" + this.f86594a.hashCode());
        a(bannerView, true);
        WMBannerAdListener wMBannerAdListener = this.f86596c;
        if (wMBannerAdListener != null) {
            wMBannerAdListener.onAdAutoRefreshed(adInfo);
        }
    }

    public void onAdClicked(AdInfo adInfo) {
        WMBannerAdListener wMBannerAdListener = this.f86596c;
        if (wMBannerAdListener != null) {
            wMBannerAdListener.onAdClicked(adInfo);
        }
    }

    public void onAdClosed(AdInfo adInfo) {
        WMBannerAdListener wMBannerAdListener = this.f86596c;
        if (wMBannerAdListener != null) {
            wMBannerAdListener.onAdClosed(adInfo);
        }
    }

    public void onAdLoadError(WindMillError error, String placementId) {
        WMBannerAdListener wMBannerAdListener = this.f86596c;
        if (wMBannerAdListener != null) {
            wMBannerAdListener.onAdLoadError(error, placementId);
        }
    }

    public void onAdLoadSuccess(View bannerView, String placementId) throws Throwable {
        if (bannerView == null) {
            WindMillError windMillError = WindMillError.ERROR_AD_REQUEST;
            windMillError.setMessage("onAdLoadSuccess but bannerView is null");
            onAdLoadError(windMillError, placementId);
        } else {
            a(bannerView, false);
            WMBannerAdListener wMBannerAdListener = this.f86596c;
            if (wMBannerAdListener != null) {
                wMBannerAdListener.onAdLoadSuccess(placementId);
            }
        }
    }

    public void onAdShown(AdInfo adInfo) {
        WMBannerAdListener wMBannerAdListener = this.f86596c;
        if (wMBannerAdListener != null) {
            wMBannerAdListener.onAdShown(adInfo);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f86598e = true;
        this.f86599f = true;
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() throws Throwable {
        super.onDetachedFromWindow();
        this.f86598e = false;
        b();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        a();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, 0));
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            measureChild(childAt, View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            setMeasuredDimension(getMeasuredWidth(), childAt.getMeasuredHeight());
        }
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() throws Throwable {
        super.onStartTemporaryDetach();
        b();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        this.f86605l = visibility;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
        this.f86599f = hasWindowFocus;
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) throws Throwable {
        super.onWindowVisibilityChanged(visibility);
        this.f86600g = visibility;
        if (visibility == 0) {
            a();
        } else {
            b();
        }
    }

    public void setActivityChannelFilterList(Set<Integer> channelIds) {
        e eVar = this.f86608o;
        if (eVar != null) {
            eVar.a(channelIds);
        }
    }

    public void setAdListener(WMBannerAdListener listener) {
        this.f86596c = listener;
    }

    public void setAdSourceStatusListener(WMAdSourceStatusListener listener) {
        g gVar = this.f86609p;
        if (gVar != null) {
            gVar.a(listener);
        }
    }

    public void setAutoAnimation(boolean anima) {
        this.f86611r = anima;
    }

    public void setAutoScroll() throws Throwable {
        if (this.f86602i != null) {
            disableAutoScroll();
        }
        this.f86602i = new com.windmill.sdk.banner.a(this, this, 1000L);
        a();
    }

    public void setCustomGroup(HashMap<String, String> customGroup) {
        n nVar = this.f86601h;
        if (nVar != null) {
            nVar.a(customGroup);
        }
    }

    public void setFilter(WMAdFilter filter) {
        f fVar = this.f86607n;
        if (fVar != null) {
            fVar.a(filter);
        }
    }

    public void visible() throws Throwable {
        j jVar;
        View view;
        if (!this.f86610q && (jVar = this.f86595b) != null && (view = this.f86594a) != null) {
            jVar.a(true, view);
        }
        this.f86610q = true;
    }

    public b(Activity activity, AttributeSet attrs) {
        this(activity, attrs, 0);
    }

    public b(Activity activity, AttributeSet attrs, int defStyleAttr) {
        super(activity, attrs, defStyleAttr);
        this.f86598e = false;
        this.f86599f = true;
        this.f86600g = -1;
        this.f86605l = -1;
        this.f86610q = false;
        this.f86611r = true;
        this.f86597d = new WeakReference<>(activity);
        this.f86601h = new n();
        this.f86607n = new f();
        this.f86608o = new e();
        this.f86609p = new g();
        setBackgroundColor(0);
        setPadding(0, 0, 0, 0);
        setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        setGravity(17);
        com.windmill.sdk.banner.animation.f fVarA = com.windmill.sdk.banner.animation.a.a(h.PUSH, 500L, com.windmill.sdk.banner.animation.g.RIGHT);
        this.f86603j = fVarA.a();
        this.f86604k = fVarA.b();
    }

    private void a(View bannerView, boolean isRefreshed) throws Throwable {
        View view;
        j jVar;
        j jVar2;
        com.windmill.sdk.strategy.a aVar;
        j jVar3;
        if (this.f86594a == bannerView) {
            return;
        }
        this.f86610q = ViewUtil.isVisible(this) && isViewAttached();
        WMLogUtil.d(bannerView.getClass().getName() + "---------addView----------" + bannerView.hashCode() + ":" + this.f86610q);
        if (isRefreshed && this.f86611r) {
            if (getChildCount() != 0 && this.f86594a != null) {
                WMLogUtil.d(this.f86594a.hashCode() + "---------removeView----------" + this.f86594a.getClass().getName());
                try {
                    aVar = (com.windmill.sdk.strategy.a) bannerView.getTag();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    aVar = null;
                }
                if (aVar != null && (aVar.aN() == 4 || aVar.aN() == 31 || aVar.aN() == 5)) {
                    if (aVar.aN() != 31 && aVar.aN() != 5) {
                        removeAllViews();
                    } else {
                        this.f86594a.setVisibility(8);
                    }
                    addView(bannerView);
                } else {
                    this.f86604k.setAnimationListener(new a(this.f86594a));
                    this.f86594a.startAnimation(this.f86604k);
                    addView(bannerView);
                    bannerView.startAnimation(this.f86603j);
                }
                if (this.f86610q && (jVar3 = this.f86595b) != null) {
                    jVar3.a(false, this.f86594a);
                }
            } else {
                removeAllViews();
                addView(bannerView);
            }
        } else {
            removeAllViews();
            addView(bannerView);
            if (this.f86610q && (view = this.f86594a) != null && (jVar = this.f86595b) != null) {
                jVar.a(false, view);
            }
        }
        if (this.f86610q && (jVar2 = this.f86595b) != null) {
            jVar2.a(true, bannerView);
        }
        this.f86594a = bannerView;
    }
}
