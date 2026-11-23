package com.sigmob.sdk.nativead;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.ImageUtils;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.windad.WindAdError;
import java.io.File;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes3.dex */
public class r extends s implements l, com.sigmob.sdk.videoplayer.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static LinkedList<ViewGroup> f81497e = new LinkedList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static long f81498f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.sigmob.sdk.videoplayer.f f81499h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private o f81500i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private t f81501j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Bitmap f81502k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Bitmap f81503l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ViewGroup f81504m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Context f81505n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f81506o;

    /* JADX INFO: renamed from: com.sigmob.sdk.nativead.r$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f81507a;

        static {
            int[] iArr = new int[j.values().length];
            f81507a = iArr;
            try {
                iArr[j.PREVIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81507a[j.DETAIL_PAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81507a[j.DETAIL_PAGE_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public r(Context context) {
        super(context.getApplicationContext());
        this.f81502k = null;
        this.f81503l = null;
        this.f81505n = context.getApplicationContext();
        getVideoAdView().setVideoAdViewListener(this);
        this.f81504m = new RelativeLayout(this.f81505n);
        getVideoAdView().setVideoAdStatusListener(this);
        com.sigmob.sdk.base.blurkit.a.a(this.f81505n);
    }

    private void b(Activity activity) {
        int iAsIntPixels = Dips.asIntPixels(10.0f, this.f81505n);
        int iAsIntPixels2 = Dips.asIntPixels(15.0f, this.f81505n);
        int iA = com.sigmob.sdk.videoplayer.c.a(activity);
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView.getVideoHeight() < videoAdView.getVideoWidth()) {
            activity.setRequestedOrientation(0);
            iAsIntPixels += iA;
        } else {
            iAsIntPixels2 += iA;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) videoAdView.getBottomLayoutView().getLayoutParams();
        if (layoutParams != null) {
            layoutParams.setMargins(Dips.asIntPixels(10.0f, this.f81505n), 0, iAsIntPixels, iAsIntPixels2);
            videoAdView.getBottomLayoutView().setLayoutParams(layoutParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) videoAdView.getTopLayoutView().getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.setMargins(Dips.asIntPixels(10.0f, this.f81505n), Dips.asIntPixels(35.0f, this.f81505n), iAsIntPixels, 0);
            videoAdView.getTopLayoutView().setLayoutParams(layoutParams2);
        }
    }

    private void k() {
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) videoAdView.getBottomLayoutView().getLayoutParams();
        if (layoutParams != null) {
            layoutParams.setMargins(Dips.asIntPixels(10.0f, this.f81505n), Dips.asIntPixels(0.0f, this.f81505n), Dips.asIntPixels(10.0f, this.f81505n), Dips.asIntPixels(15.0f, this.f81505n));
            videoAdView.getBottomLayoutView().setLayoutParams(layoutParams);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) videoAdView.getTopLayoutView().getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.setMargins(Dips.asIntPixels(10.0f, this.f81505n), Dips.asIntPixels(15.0f, this.f81505n), Dips.asIntPixels(10.0f, this.f81505n), 0);
            videoAdView.getTopLayoutView().setLayoutParams(layoutParams2);
        }
    }

    private void l() {
        if (this.f81500i == null) {
            return;
        }
        ViewGroup appContainer = getVideoAdView().getAppContainer();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        appContainer.addView(this.f81500i, layoutParams);
    }

    private void m() {
        Bitmap textureBitmap;
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView == null || (textureBitmap = videoAdView.getTextureBitmap()) == null) {
            return;
        }
        Bitmap bitmapA = com.sigmob.sdk.base.blurkit.a.a().a(textureBitmap, 25);
        videoAdView.getBlurImageView().setImageBitmap(bitmapA);
        videoAdView.getAppContainer().setVisibility(0);
        this.f81502k = textureBitmap;
        this.f81503l = bitmapA;
    }

    private void n() {
        n appInfoView = getAppInfoView();
        if (appInfoView == null) {
            return;
        }
        com.sigmob.sdk.base.utils.x.a(appInfoView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, 0, Dips.asIntPixels(5.0f, this.f81505n));
        layoutParams.addRule(12);
        addView(appInfoView, layoutParams);
    }

    public int a(int width) {
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        return Math.min((int) (((double) width) / (videoAdView.getVideoWidth() == 0 ? getAdUnit().getAdPercent() : (videoAdView.getVideoWidth() * 1.0f) / videoAdView.getVideoHeight())), ClientMetadata.getInstance().getDisplayMetrics().heightPixels / 2);
    }

    @Override // com.sigmob.sdk.nativead.s, com.sigmob.sdk.nativead.m
    public void c() {
        super.c();
        ImageUtils.recycleBitmap(this.f81502k);
        ImageUtils.recycleBitmap(this.f81503l);
        t tVar = this.f81501j;
        if (tVar != null) {
            tVar.d();
            this.f81501j.i();
            this.f81501j = null;
        }
        ViewGroup viewGroup = this.f81504m;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            com.sigmob.sdk.base.utils.x.a(this.f81504m);
        }
        com.sigmob.sdk.videoplayer.f fVar = this.f81499h;
        if (fVar != null) {
            com.sigmob.sdk.base.utils.x.a(fVar);
            this.f81499h.setVideoAdViewListener(null);
            this.f81499h.setVideoAdStatusListener(null);
            this.f81499h.setBackClickListener(null);
            this.f81499h.a();
            this.f81499h = null;
        }
    }

    @Override // com.sigmob.sdk.nativead.m
    public void d() {
        super.d();
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView != null) {
            videoAdView.E();
        }
    }

    @Override // com.sigmob.sdk.nativead.s
    public void e() {
        super.e();
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView == null) {
            return;
        }
        videoAdView.C();
    }

    @Override // com.sigmob.sdk.videoplayer.b
    public void f() {
        ViewGroup viewGroup = (ViewGroup) this.f81504m.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.f81504m);
        }
        Activity activityB = com.sigmob.sdk.videoplayer.c.b(f81497e.getLast().getContext());
        if (activityB != null) {
            activityB.getWindow().getDecorView().setSystemUiVisibility(0);
        }
        if (getVideoAdView().getVideoHeight() < getVideoAdView().getVideoWidth() && activityB != null) {
            activityB.setRequestedOrientation(1);
        }
        f81497e.getLast().removeAllViews();
        f81497e.getLast().addView(this.f81504m, new FrameLayout.LayoutParams(-1, -1));
        f81497e.pop();
    }

    @Override // com.sigmob.sdk.videoplayer.b
    public void g() {
        ViewGroup viewGroup = (ViewGroup) this.f81504m.getParent();
        viewGroup.removeView(this.f81504m);
        f81497e.add(viewGroup);
        Activity activityB = com.sigmob.sdk.videoplayer.c.b(viewGroup.getContext());
        if (activityB == null) {
            return;
        }
        ((ViewGroup) activityB.findViewById(R.id.content)).addView(this.f81504m, new FrameLayout.LayoutParams(-1, -1));
        if (getVideoAdView().getVideoHeight() < getVideoAdView().getVideoWidth()) {
            activityB.setRequestedOrientation(6);
        }
    }

    public o getAppView() {
        if (this.f81500i == null) {
            this.f81500i = new o(this.f81505n);
        }
        return this.f81500i;
    }

    public l getSigAdVideoStatusListener() {
        t tVar = this.f81501j;
        if (tVar == null) {
            return null;
        }
        return tVar.g();
    }

    @Override // com.sigmob.sdk.nativead.m
    public t getSigVideoAdController() {
        if (this.f81501j == null) {
            this.f81501j = new u(getVideoAdView());
        }
        return this.f81501j;
    }

    public com.sigmob.sdk.videoplayer.f getVideoAdView() {
        if (this.f81499h == null) {
            this.f81499h = new com.sigmob.sdk.videoplayer.f(this.f81505n);
        }
        return this.f81499h;
    }

    public ViewGroup getVideoContainer() {
        return this.f81504m;
    }

    @Override // com.sigmob.sdk.nativead.s
    public double getVideoDuration() {
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        return videoAdView == null ? super.getVideoDuration() : videoAdView.getDuration() / 1000.0f;
    }

    @Override // com.sigmob.sdk.nativead.s
    public double getVideoProgress() {
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        return videoAdView == null ? super.getVideoProgress() : ((videoAdView.getCurrentPositionWhenPlaying() * 1.0f) / videoAdView.getDuration()) / 100.0f;
    }

    public int getVideoSurferViewHeight() {
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView == null) {
            return 0;
        }
        return videoAdView.getVideoSurferViewHeight();
    }

    public void h() {
        if (System.currentTimeMillis() - f81498f > 2000 && getVideoAdView().f82081w == 4 && getVideoAdView().f82082x == 1) {
            f81498f = System.currentTimeMillis();
            b();
        }
    }

    @Override // com.sigmob.sdk.nativead.s
    public void i() {
        super.i();
    }

    @Override // com.sigmob.sdk.nativead.s
    public void j() {
        super.j();
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView == null) {
            return;
        }
        videoAdView.D();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
    public void onVideoCompleted() {
        if (getSigAdVideoStatusListener() != null) {
            getSigAdVideoStatusListener().onVideoCompleted();
        }
        m();
        j jVar = this.f81440d;
        if (jVar != j.PREVIEW) {
            if (jVar == j.DETAIL_PAGE) {
                setUIStyle(j.DETAIL_PAGE_END);
            }
        } else {
            if (getAppView().getParent() == null) {
                l();
            }
            getAppView().setVisibility(0);
            getVideoAdView().a(com.sigmob.sdk.videoplayer.e.RETRY, true);
        }
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
    public void onVideoError(WindAdError adError) {
        l sigAdVideoStatusListener = getSigAdVideoStatusListener();
        if (sigAdVideoStatusListener == null) {
            return;
        }
        sigAdVideoStatusListener.onVideoError(adError);
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
    public void onVideoLoad() {
        l sigAdVideoStatusListener = getSigAdVideoStatusListener();
        if (sigAdVideoStatusListener == null) {
            return;
        }
        sigAdVideoStatusListener.onVideoLoad();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
    public void onVideoPause() {
        l sigAdVideoStatusListener = getSigAdVideoStatusListener();
        if (sigAdVideoStatusListener == null) {
            return;
        }
        sigAdVideoStatusListener.onVideoPause();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
    public void onVideoResume() {
        l sigAdVideoStatusListener = getSigAdVideoStatusListener();
        if (sigAdVideoStatusListener == null) {
            return;
        }
        sigAdVideoStatusListener.onVideoResume();
    }

    @Override // com.sigmob.windad.natives.WindNativeAdData.NativeADMediaListener
    public void onVideoStart() {
        BaseAdUnit adUnit = getAdUnit();
        if (adUnit == null) {
            return;
        }
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        o oVar = this.f81500i;
        if (oVar != null) {
            com.sigmob.sdk.base.utils.x.a(oVar);
            videoAdView.getAppContainer().setVisibility(4);
        }
        ImageUtils.recycleBitmap(this.f81502k);
        ImageUtils.recycleBitmap(this.f81503l);
        adUnit.updateRealAdPercent((videoAdView.getVideoWidth() * 1.0f) / videoAdView.getVideoHeight());
        j jVar = this.f81440d;
        if (jVar == j.DETAIL_PAGE_END) {
            jVar = j.DETAIL_PAGE;
        }
        setUIStyle(jVar);
        l sigAdVideoStatusListener = getSigAdVideoStatusListener();
        if (sigAdVideoStatusListener == null) {
            return;
        }
        sigAdVideoStatusListener.onVideoStart();
    }

    public void setBackClickListener(View.OnClickListener onClickListener) {
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView == null) {
            return;
        }
        videoAdView.setBackClickListener(onClickListener);
    }

    @Override // com.sigmob.sdk.nativead.s
    public void setUIStyle(j style) {
        int i10;
        e adConfig = getAdConfig();
        if (getAdUnit() == null) {
            return;
        }
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        super.setUIStyle(style);
        int i11 = AnonymousClass1.f81507a[style.ordinal()];
        if (i11 == 1) {
            this.f81504m.removeAllViews();
            com.sigmob.sdk.base.utils.x.a(this.f81504m);
            com.sigmob.sdk.base.utils.x.a(videoAdView);
            addView(videoAdView, new RelativeLayout.LayoutParams(-1, -1));
            videoAdView.a(com.sigmob.sdk.videoplayer.e.START, videoAdView.f82081w == 0);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.FULLSCREEN, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.VOLUME, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.BIGRETRY, false);
            com.sigmob.sdk.videoplayer.e eVar = com.sigmob.sdk.videoplayer.e.RETRY;
            videoAdView.a(eVar, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.BACK, false);
            videoAdView.setSoundChange(adConfig == null || adConfig.n());
            o oVar = this.f81500i;
            if (oVar != null && ((i10 = videoAdView.f82081w) == 6 || i10 == 7)) {
                if (oVar.getParent() == null) {
                    l();
                }
                this.f81500i.setVisibility(0);
                videoAdView.a(eVar, true);
            }
            n();
            return;
        }
        if (i11 == 2) {
            if (this.f81500i.getParent() != null) {
                this.f81500i.setVisibility(4);
            }
            if (this.f81504m.getChildCount() > 0) {
                this.f81504m.removeAllViews();
            }
            removeView(getVideoAdView());
            this.f81504m.addView(videoAdView, new RelativeLayout.LayoutParams(-1, -1));
            videoAdView.setSoundChange(adConfig == null || adConfig.o() || com.sigmob.sdk.b.g());
            videoAdView.a(com.sigmob.sdk.videoplayer.e.START, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.FULLSCREEN, true);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.VOLUME, true);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.BIGRETRY, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.RETRY, false);
        } else {
            if (i11 != 3) {
                return;
            }
            if (this.f81500i.getParent() != null) {
                this.f81500i.setVisibility(4);
            }
            videoAdView.a(com.sigmob.sdk.videoplayer.e.START, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.FULLSCREEN, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.VOLUME, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.RETRY, false);
            videoAdView.a(com.sigmob.sdk.videoplayer.e.BIGRETRY, true);
        }
        videoAdView.a(com.sigmob.sdk.videoplayer.e.BACK, true);
    }

    @Override // com.sigmob.sdk.nativead.l
    public void a() {
        l sigAdVideoStatusListener = getSigAdVideoStatusListener();
        if (sigAdVideoStatusListener == null) {
            return;
        }
        sigAdVideoStatusListener.a();
    }

    @Override // com.sigmob.sdk.nativead.m, com.sigmob.sdk.videoplayer.b
    public boolean b() {
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        if (videoAdView == null) {
            return false;
        }
        if (!f81497e.isEmpty()) {
            videoAdView.u();
            return true;
        }
        if (videoAdView.f82082x == 0) {
            return false;
        }
        videoAdView.m();
        return true;
    }

    @Override // com.sigmob.sdk.nativead.l
    public void a(long current, long duration) {
        if (getSigAdVideoStatusListener() != null) {
            getSigAdVideoStatusListener().a(current, duration);
        }
        if (current > 0) {
            this.f81506o = duration;
        }
    }

    private void a(Activity activity) {
        activity.getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    private void a(ViewGroup adContainer) {
        n nVar = null;
        for (int i10 = 0; i10 < adContainer.getChildCount(); i10++) {
            View childAt = adContainer.getChildAt(i10);
            if (childAt instanceof n) {
                nVar = (n) childAt;
            }
        }
        if (nVar == null) {
            return;
        }
        com.sigmob.sdk.base.utils.x.a(nVar);
    }

    @Override // com.sigmob.sdk.nativead.s
    public void a(ac listener) {
        super.a(listener);
        BaseAdUnit adUnit = getAdUnit();
        if (adUnit == null) {
            return;
        }
        com.sigmob.sdk.videoplayer.f videoAdView = getVideoAdView();
        a(this);
        File videoProxyFile = adUnit.getVideoProxyFile();
        videoAdView.setUp((videoProxyFile == null || !videoProxyFile.exists()) ? adUnit.getProxyVideoUrl() : videoProxyFile.getAbsolutePath());
        setUIStyle(j.PREVIEW);
        String videoCoverImageUrl = adUnit.getVideoCoverImageUrl();
        if (TextUtils.isEmpty(videoCoverImageUrl)) {
            videoAdView.b(true);
        } else {
            Context context = getContext();
            if (com.sigmob.sdk.base.utils.w.b(context)) {
                ImageManager.with(context).load(videoCoverImageUrl).into(videoAdView.getThumbView());
            }
        }
        getAppView().a(adUnit.getIconUrl(), adUnit.getTitle(), adUnit.getCTAText());
        videoAdView.setSoundChange(getAdConfig().n());
    }

    @Override // com.sigmob.sdk.nativead.m
    public boolean a(MotionEvent event) {
        o oVar = this.f81500i;
        if (oVar == null || oVar.getParent() == null || this.f81500i.getVisibility() != 0) {
            return false;
        }
        return com.sigmob.sdk.base.utils.x.a(this.f81500i.getCtaView(), event);
    }
}
