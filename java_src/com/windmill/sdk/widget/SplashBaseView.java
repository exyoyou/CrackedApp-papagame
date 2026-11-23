package com.windmill.sdk.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.common.utils.ViewUtil;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.Random;

/* JADX INFO: loaded from: classes8.dex */
public abstract class SplashBaseView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final TextView f87500a;
    public View adBgShade;
    public View adCtaGd;
    public TextView adCtaText;
    public TextView adDescText;
    public ImageView adIcon;
    public ImageView adLogoImage;
    public FrameLayout adMediaLayout;
    public ImageView adPostImage;
    public LinearLayout adPrivacyLayout;
    public LinearLayout adSkipLayout;
    public View adSkipShade;
    public TextView adSkipText;
    public LinearLayout adSoundSkipLayout;
    public TextView adTittleText;
    public View adView;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d f87501b;
    public a baseControl;
    public ImageView blurImage;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f87502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CircleWebView f87503d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f87504e;
    public LinearLayout iconTextLayout;
    public WMNativeAdData nativeAdData;
    public int ranDom;
    public ImageView soundImage;

    /* JADX INFO: renamed from: com.windmill.sdk.widget.SplashBaseView$5, reason: invalid class name */
    class AnonymousClass5 implements View.OnClickListener {
        AnonymousClass5() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SplashBaseView splashBaseView = SplashBaseView.this;
            splashBaseView.f87503d = splashBaseView.baseControl.getAdView(splashBaseView.getContext(), new a.b() { // from class: com.windmill.sdk.widget.SplashBaseView.5.1
                @Override // com.windmill.sdk.widget.a.b
                public void a() {
                    if (SplashBaseView.this.f87502c != null) {
                        SplashBaseView.this.f87502c.dismiss();
                    }
                }

                @Override // com.windmill.sdk.widget.a.b
                public void b() {
                    if (SplashBaseView.this.f87503d != null) {
                        SplashBaseView.this.f87503d.post(new Runnable() { // from class: com.windmill.sdk.widget.SplashBaseView.5.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ViewGroup viewGroup = (ViewGroup) SplashBaseView.this.f87503d.getParent();
                                if (viewGroup == null || SplashBaseView.this.getCloseView() == null) {
                                    return;
                                }
                                if (SplashBaseView.this.f87504e.getParent() != null && (SplashBaseView.this.f87504e.getParent() instanceof ViewGroup)) {
                                    ((ViewGroup) SplashBaseView.this.f87504e.getParent()).removeView(SplashBaseView.this.f87504e);
                                }
                                SplashBaseView splashBaseView2 = SplashBaseView.this;
                                int iDp2px = splashBaseView2.dp2px(splashBaseView2.f87503d.getContext(), 20.0f);
                                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDp2px, iDp2px);
                                layoutParams.addRule(10);
                                layoutParams.addRule(11);
                                layoutParams.setMargins(0, iDp2px, iDp2px, 0);
                                viewGroup.addView(SplashBaseView.this.f87504e, layoutParams);
                            }
                        });
                    }
                }
            });
            if (SplashBaseView.this.f87503d != null) {
                if (SplashBaseView.this.f87502c == null) {
                    Activity activityFromView = ViewUtil.getActivityFromView(SplashBaseView.this.adView);
                    if (activityFromView == null) {
                        Context context = SplashBaseView.this.getContext();
                        if (context instanceof Activity) {
                            activityFromView = (Activity) context;
                        }
                    }
                    SplashBaseView.this.f87502c = new c(activityFromView, SplashBaseView.this.f87503d);
                    SplashBaseView.this.f87502c.a(new c.a() { // from class: com.windmill.sdk.widget.SplashBaseView.5.2
                        @Override // com.windmill.sdk.widget.c.a
                        public void a() {
                            if (SplashBaseView.this.f87501b != null) {
                                SplashBaseView.this.f87501b.a();
                                SplashBaseView.this.f87501b.b();
                            }
                        }

                        @Override // com.windmill.sdk.widget.c.a
                        public void b() {
                            if (SplashBaseView.this.f87501b != null) {
                                SplashBaseView.this.f87501b.c();
                            }
                        }
                    });
                }
                SplashBaseView.this.f87502c.show();
            }
        }
    }

    public SplashBaseView(Context context, int width, int height, final a baseControl) {
        super(context);
        setLayoutParams(new ViewGroup.LayoutParams(width, height));
        this.baseControl = baseControl;
        this.nativeAdData = baseControl.getNativeAdData();
        this.ranDom = new Random().nextInt(100) + 1;
        WMLogUtil.d("SplashBaseView", "SplashBaseView: ranDom " + this.ranDom);
        this.adView = View.inflate(context, getLayoutId(context), null);
        ViewGroup nativeAdContainer = this.nativeAdData.getNativeAdContainer(context);
        if (nativeAdContainer != null) {
            addView(nativeAdContainer, new ViewGroup.LayoutParams(-1, -1));
            nativeAdContainer.addView(this.adView, new ViewGroup.LayoutParams(-1, -1));
        } else {
            addView(this.adView, new ViewGroup.LayoutParams(-1, -1));
        }
        this.blurImage = (ImageView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_blur_image"));
        this.adSoundSkipLayout = (LinearLayout) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_sound_and_skip_layout"));
        this.adSkipLayout = (LinearLayout) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_skip_ll"));
        this.adSkipShade = this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_skip_shade"));
        this.adSkipText = (TextView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_skip_text"));
        this.soundImage = (ImageView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_sound_image"));
        this.adMediaLayout = (FrameLayout) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_post_media"));
        this.adPostImage = (ImageView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_post_image"));
        this.adBgShade = this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_bg_shade"));
        this.iconTextLayout = (LinearLayout) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_icon_text_layout"));
        this.adIcon = (ImageView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_icon_image"));
        this.adTittleText = (TextView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_tittle_tv"));
        this.adDescText = (TextView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_desc_tv"));
        this.adCtaText = (TextView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_cta_bt"));
        this.adCtaGd = this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_cta_bt_gd"));
        if (baseControl.getNativeBtnStyle() == 1) {
            this.adCtaGd.setVisibility(0);
        }
        this.adPrivacyLayout = (LinearLayout) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_privacy_ll"));
        this.adLogoImage = (ImageView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_logo_image"));
        this.f87500a = (TextView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_ad_text"));
        this.adSkipLayout.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.sdk.widget.SplashBaseView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (SplashBaseView.this.f87501b != null) {
                    SplashBaseView.this.f87501b.c();
                    SplashBaseView.this.f87501b.d();
                }
                if (baseControl.getListener() != null) {
                    baseControl.getListener().onAdClose();
                }
                WMNativeAdData wMNativeAdData = SplashBaseView.this.nativeAdData;
                if (wMNativeAdData != null) {
                    wMNativeAdData.destroy();
                }
                a aVar = baseControl;
                if (aVar != null) {
                    aVar.destroy();
                }
            }
        });
        this.adBgShade.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.sdk.widget.SplashBaseView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                WMLogUtil.d("SplashBaseView", "--------adBgShade------click is not pass------------");
            }
        });
        b();
        bindListener();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImageView getCloseView() {
        if (this.f87504e == null) {
            ImageView imageView = new ImageView(getContext());
            this.f87504e = imageView;
            imageView.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_close_no_bg"));
            this.f87504e.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.f87504e.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.sdk.widget.SplashBaseView.6
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    if (SplashBaseView.this.f87502c != null) {
                        SplashBaseView.this.f87502c.dismiss();
                    }
                }
            });
        }
        return this.f87504e;
    }

    public void bindListener() {
        WMNativeAdData wMNativeAdData = this.nativeAdData;
        if (wMNativeAdData != null) {
            wMNativeAdData.setInteractionListener(new WMNativeAdData.NativeAdInteractionListener() { // from class: com.windmill.sdk.widget.SplashBaseView.7
                @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
                public void onADClicked(AdInfo adInfo) {
                    WMLogUtil.d("SplashBaseView", "----------onADClicked----------");
                    if (SplashBaseView.this.baseControl.getListener() != null) {
                        SplashBaseView.this.baseControl.getListener().onAdClick();
                    }
                    View view = SplashBaseView.this.adSkipShade;
                    if (view != null) {
                        view.setVisibility(8);
                    }
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
                public void onADError(AdInfo adInfo, WindMillError error) {
                    WMLogUtil.d("SplashBaseView", "----------onADError----------" + error.toString());
                    if (SplashBaseView.this.baseControl.getListener() != null) {
                        SplashBaseView.this.baseControl.getListener().onAdShowError(new WMAdapterError(error.getErrorCode(), error.getMessage()));
                    }
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
                public void onADExposed(AdInfo adInfo) {
                    WMLogUtil.d("SplashBaseView", "----------onADExposed----------");
                    if (SplashBaseView.this.baseControl.getListener() != null) {
                        SplashBaseView.this.baseControl.getListener().onAdShow();
                    }
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
                public void onADRenderSuccess(AdInfo adInfo, View view, float width, float height) {
                    WMLogUtil.d("SplashBaseView", "----------onRenderSuccess----------");
                }
            });
        }
    }

    public int dp2px(Context context, float dp) {
        return (int) ((dp * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public abstract int getLayoutId(Context context);

    public abstract void renderView();

    public void startCountDown() {
        d dVar = this.f87501b;
        if (dVar != null) {
            dVar.c();
            this.f87501b.d();
        }
        d dVar2 = new d(this.baseControl.getNativeTotalTime(0) * 1000, 500L);
        this.f87501b = dVar2;
        dVar2.a(new d.a() { // from class: com.windmill.sdk.widget.SplashBaseView.4
            @Override // com.windmill.sdk.widget.d.a
            public void a(long millisUntilFinished) {
                WMLogUtil.d("SplashBaseView", "----------onTick----------:" + millisUntilFinished);
                String str = "跳过｜" + ((int) ((millisUntilFinished / 1000) + 1));
                try {
                    int iIndexOf = str.indexOf("｜");
                    SpannableString spannableString = new SpannableString(str);
                    spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#80FFFFFF")), iIndexOf, iIndexOf + 1, 33);
                    SplashBaseView.this.adSkipText.setText(spannableString);
                } catch (Exception unused) {
                    TextView textView = SplashBaseView.this.adSkipText;
                    if (textView != null) {
                        textView.setText(str);
                    }
                }
                SplashBaseView.this.a();
            }

            @Override // com.windmill.sdk.widget.d.a
            public void a() {
                WMLogUtil.d("SplashBaseView", "----------onFinish----------");
                a aVar = SplashBaseView.this.baseControl;
                if (aVar != null && aVar.getListener() != null) {
                    SplashBaseView.this.baseControl.getListener().onAdClose();
                }
                SplashBaseView.this.a();
                WMNativeAdData wMNativeAdData = SplashBaseView.this.nativeAdData;
                if (wMNativeAdData != null) {
                    wMNativeAdData.destroy();
                }
                a aVar2 = SplashBaseView.this.baseControl;
                if (aVar2 != null) {
                    aVar2.destroy();
                }
            }
        });
        this.f87501b.a();
        this.f87501b.b();
    }

    private void b() {
        try {
            ViewGroup viewGroup = (ViewGroup) this.adPrivacyLayout.getChildAt(0);
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                ((TextView) viewGroup.getChildAt(i10)).getPaint().setFlags(9);
            }
            if (this.nativeAdData.getNetworkId() != 9 && this.nativeAdData.getNetworkId() != 999) {
                if (this.nativeAdData.getInteractionType() == 1) {
                    c();
                    return;
                } else {
                    this.adPrivacyLayout.setVisibility(8);
                    return;
                }
            }
            if (this.nativeAdData.getAppInfo() != null) {
                c();
            } else {
                this.adPrivacyLayout.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c() {
        try {
            this.adPrivacyLayout.setOnClickListener(new AnonymousClass5());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.baseControl.getMistake_click_rate() >= this.ranDom) {
            LinearLayout linearLayout = this.adSkipLayout;
            if (linearLayout != null) {
                linearLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.windmill.sdk.widget.SplashBaseView.3
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        ViewGroup.LayoutParams layoutParams;
                        View view = SplashBaseView.this.adSkipShade;
                        if (view != null && (layoutParams = view.getLayoutParams()) != null) {
                            layoutParams.width = SplashBaseView.this.adSkipLayout.getWidth();
                            layoutParams.height = SplashBaseView.this.adSkipLayout.getHeight();
                            SplashBaseView.this.adSkipShade.setLayoutParams(layoutParams);
                        }
                        SplashBaseView.this.adSkipLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                });
                return;
            }
            return;
        }
        View view = this.adSkipShade;
        if (view != null) {
            view.setVisibility(8);
        }
    }
}
