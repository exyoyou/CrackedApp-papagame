package com.windmill.sdk.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.windmill.sdk.R;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.models.ViewWrapper;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import com.windmill.sdk.utils.UIUtils;
import com.windmill.sdk.utils.ViewUtil;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes8.dex */
public abstract class InterstitialBaseView extends Activity {
    public RelativeLayout A;
    public ImageView B;
    public TextView C;
    private ViewGroup D;
    private boolean E = false;
    private String F;
    private c G;
    private TextView H;
    private RelativeLayout I;
    private String J;
    private d K;
    private CircleWebView L;
    private ObjectAnimator M;
    private AnimatorSet N;
    private ObjectAnimator O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View f87433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ViewGroup f87434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImageView f87435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ViewGroup f87436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ImageView f87437e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public FrameLayout f87438f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View f87439g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LinearLayout f87440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View f87441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public LinearLayout f87442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f87443k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ImageView f87444l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public TbCircleImageView f87445m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f87446n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TextView f87447o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public TextView f87448p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public View f87449q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public LinearLayout f87450r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public RelativeLayout f87451s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ImageView f87452t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f87453u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f87454v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public a f87455w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public WMNativeAdData f87456x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f87457y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public RelativeLayout f87458z;

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        a aVar = this.f87455w;
        if (aVar == null || aVar.getMistake_click_rate() < this.f87457y) {
            View view = this.f87441i;
            if (view != null) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        LinearLayout linearLayout = this.f87442j;
        if (linearLayout != null) {
            linearLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.windmill.sdk.widget.InterstitialBaseView.6
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    try {
                        InterstitialBaseView interstitialBaseView = InterstitialBaseView.this;
                        if (interstitialBaseView.f87441i != null) {
                            interstitialBaseView.f87442j.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                            ViewGroup.LayoutParams layoutParams = InterstitialBaseView.this.f87441i.getLayoutParams();
                            if (layoutParams != null) {
                                layoutParams.width = InterstitialBaseView.this.f87442j.getWidth();
                                layoutParams.height = InterstitialBaseView.this.f87442j.getHeight();
                                InterstitialBaseView.this.f87441i.setLayoutParams(layoutParams);
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        try {
            finish();
            overridePendingTransition(R.anim.tobid_enter_anim, R.anim.tobid_exit_anim);
            d dVar = this.K;
            if (dVar != null) {
                dVar.c();
                this.K.d();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void o() {
        try {
            ViewGroup viewGroup = (ViewGroup) this.f87450r.getChildAt(0);
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                TextView textView = (TextView) viewGroup.getChildAt(i10);
                a aVar = this.f87455w;
                if (aVar != null) {
                    String nativeTemplateId = aVar.getNativeTemplateId();
                    if (!TextUtils.isEmpty(nativeTemplateId) && nativeTemplateId.equals("4012002")) {
                        textView.setTextSize(2, 9.0f);
                    }
                }
                textView.getPaint().setFlags(9);
            }
            if (this.f87456x.getNetworkId() != 9 && this.f87456x.getNetworkId() != 999) {
                if (this.f87456x.getInteractionType() == 1) {
                    p();
                    return;
                } else if ("InterstitialView_4102001".equals(this.F)) {
                    this.f87450r.setVisibility(4);
                    return;
                } else {
                    this.f87450r.setVisibility(8);
                    return;
                }
            }
            if (this.f87456x.getAppInfo() != null) {
                p();
            } else if ("InterstitialView_4102001".equals(this.F)) {
                this.f87450r.setVisibility(4);
            } else {
                this.f87450r.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void p() {
        try {
            this.f87450r.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.sdk.widget.InterstitialBaseView.9
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    InterstitialBaseView interstitialBaseView = InterstitialBaseView.this;
                    interstitialBaseView.L = interstitialBaseView.f87455w.getAdView(interstitialBaseView.a(), new a.b() { // from class: com.windmill.sdk.widget.InterstitialBaseView.9.1
                        @Override // com.windmill.sdk.widget.a.b
                        public void a() {
                            if (InterstitialBaseView.this.G != null) {
                                InterstitialBaseView.this.G.dismiss();
                            }
                        }

                        @Override // com.windmill.sdk.widget.a.b
                        public void b() {
                        }
                    });
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("--------showPrivacy--adPrivacyLayout----");
                    sb2.append(InterstitialBaseView.this.L != null);
                    WMLogUtil.d(sb2.toString());
                    if (InterstitialBaseView.this.L != null) {
                        if (InterstitialBaseView.this.G == null) {
                            InterstitialBaseView.this.G = new c(InterstitialBaseView.this.a(), InterstitialBaseView.this.L);
                            InterstitialBaseView.this.G.a(new c.a() { // from class: com.windmill.sdk.widget.InterstitialBaseView.9.2
                                @Override // com.windmill.sdk.widget.c.a
                                public void a() {
                                    if (InterstitialBaseView.this.K != null) {
                                        InterstitialBaseView.this.K.a();
                                        InterstitialBaseView.this.K.b();
                                    }
                                }

                                @Override // com.windmill.sdk.widget.c.a
                                public void b() {
                                    if (InterstitialBaseView.this.K != null) {
                                        InterstitialBaseView.this.K.c();
                                    }
                                }
                            });
                        }
                        InterstitialBaseView.this.G.show();
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void q() {
        int networkId = this.f87456x.getNetworkId();
        if (networkId == 1) {
            this.f87452t.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_logo_mtg_fff"));
            return;
        }
        if (networkId != 13) {
            if (networkId == 16) {
                this.f87452t.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_logo_ylh_fff"));
                return;
            }
            if (networkId == 19) {
                this.f87452t.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_logo_ks_fff"));
                return;
            }
            if (networkId == 21) {
                this.f87452t.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_logo_bd_fff"));
                return;
            }
            if (networkId != 22) {
                if (networkId == 28) {
                    this.f87452t.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_logo_qm_fff"));
                    return;
                }
                if (networkId == 29) {
                    this.f87452t.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_logo_tap_fff"));
                    return;
                }
                if (networkId == 41) {
                    this.f87452t.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_logo_octopus_fff"));
                    return;
                }
                if (networkId == 42) {
                    this.f87452t.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_logo_bayes_fff"));
                    return;
                }
                if (networkId != 998) {
                    if (networkId != 999) {
                        this.f87452t.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_logo_sg_fff"));
                        return;
                    } else {
                        this.f87452t.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_logo_adx"));
                        return;
                    }
                }
                Bitmap adLogo = this.f87456x.getAdLogo();
                if (adLogo != null) {
                    this.f87452t.setImageBitmap(adLogo);
                } else {
                    this.f87452t.setVisibility(8);
                }
                TextView textView = this.H;
                if (textView != null) {
                    textView.setVisibility(0);
                    return;
                }
                return;
            }
        }
        this.f87452t.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_logo_tt_fff"));
    }

    Context a() {
        return this;
    }

    public abstract View a(Context context);

    public abstract void f();

    public void g() {
        try {
            int close_position = this.f87455w.getClose_position();
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f87440h.getLayoutParams();
            if ("InterstitialView_4102001".equals(this.F)) {
                close_position = 0;
            }
            if (close_position == 1) {
                layoutParams.addRule(10);
                layoutParams.addRule(9);
                layoutParams.setMargins(UIUtils.dp2px(a(), 10.0f), UIUtils.dp2px(a(), 10.0f), 0, 0);
                this.f87440h.setLayoutParams(layoutParams);
            } else if (close_position == 2) {
                layoutParams.addRule(9);
                layoutParams.addRule(8, this.f87435c.getId());
                layoutParams.setMargins(UIUtils.dp2px(a(), 5.0f), 0, 0, UIUtils.dp2px(a(), 5.0f));
                this.f87440h.setLayoutParams(layoutParams);
            } else if (close_position != 3) {
                layoutParams.addRule(10);
                layoutParams.addRule(11);
                layoutParams.setMargins(0, UIUtils.dp2px(a(), 10.0f), UIUtils.dp2px(a(), 10.0f), 0);
                this.f87440h.setLayoutParams(layoutParams);
            } else {
                layoutParams.addRule(11);
                layoutParams.addRule(8, this.f87435c.getId());
                layoutParams.setMargins(0, 0, UIUtils.dp2px(a(), 5.0f), UIUtils.dp2px(a(), 5.0f));
                this.f87440h.setLayoutParams(layoutParams);
            }
            int close_style = this.f87455w.getClose_style();
            ViewGroup.LayoutParams layoutParams2 = this.f87444l.getLayoutParams();
            if (close_style == 1) {
                layoutParams2.width = UIUtils.dp2px(a(), 28.0f);
                layoutParams2.height = UIUtils.dp2px(a(), 28.0f);
                this.f87444l.setLayoutParams(layoutParams2);
                this.f87443k.setTextSize(2, 12.0f);
            } else if (close_style != 2) {
                layoutParams2.width = UIUtils.dp2px(a(), 25.0f);
                layoutParams2.height = UIUtils.dp2px(a(), 25.0f);
                this.f87444l.setLayoutParams(layoutParams2);
                this.f87443k.setTextSize(2, 10.0f);
            } else {
                layoutParams2.width = UIUtils.dp2px(a(), 22.0f);
                layoutParams2.height = UIUtils.dp2px(a(), 22.0f);
                this.f87444l.setLayoutParams(layoutParams2);
                this.f87443k.setTextSize(2, 8.0f);
            }
            int adPatternType = this.f87456x.getAdPatternType();
            if (adPatternType == 1 || adPatternType == 2 || adPatternType == 3) {
                this.f87444l.setVisibility(8);
            } else {
                this.f87444l.setVisibility(0);
            }
            if (this.f87456x.getNetworkId() == 1 || this.f87456x.getNetworkId() == 21 || this.f87456x.getNetworkId() == 16) {
                int autoPlayMuted = this.f87455w.getAutoPlayMuted();
                this.f87444l.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.sdk.widget.InterstitialBaseView.10
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        if (v10.getTag() != null) {
                            if (v10.getTag().equals("sound_on")) {
                                InterstitialBaseView interstitialBaseView = InterstitialBaseView.this;
                                interstitialBaseView.f87444l.setImageResource(ResourceUtil.getDrawableId(interstitialBaseView.a(), "tobid_image_ad_sound_off"));
                                InterstitialBaseView.this.f87444l.setTag("sound_off");
                                InterstitialBaseView.this.f87456x.setVideoMute(true);
                                return;
                            }
                            InterstitialBaseView interstitialBaseView2 = InterstitialBaseView.this;
                            interstitialBaseView2.f87444l.setImageResource(ResourceUtil.getDrawableId(interstitialBaseView2.a(), "tobid_image_ad_sound_on"));
                            InterstitialBaseView.this.f87444l.setTag("sound_on");
                            InterstitialBaseView.this.f87456x.setVideoMute(false);
                        }
                    }
                });
                if (autoPlayMuted != 1) {
                    this.f87456x.setVideoMute(false);
                    this.f87444l.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_sound_on"));
                    this.f87444l.setTag("sound_on");
                } else {
                    this.f87456x.setVideoMute(true);
                    this.f87444l.setImageResource(ResourceUtil.getDrawableId(a(), "tobid_image_ad_sound_off"));
                    this.f87444l.setTag("sound_off");
                }
            } else {
                this.f87444l.setVisibility(8);
            }
            q();
            if (TextUtils.isEmpty(this.J)) {
                return;
            }
            a(close_position);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void h() {
        WMNativeAdData wMNativeAdData = this.f87456x;
        if (wMNativeAdData != null) {
            wMNativeAdData.setInteractionListener(new WMNativeAdData.NativeAdInteractionListener() { // from class: com.windmill.sdk.widget.InterstitialBaseView.11
                @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
                public void onADClicked(AdInfo adInfo) {
                    WMLogUtil.d("InterstitialBaseView", "----------onADClicked----------");
                    if (InterstitialBaseView.this.f87455w.getListener() != null) {
                        InterstitialBaseView.this.f87455w.getListener().onAdClick();
                    }
                    View view = InterstitialBaseView.this.f87441i;
                    if (view != null) {
                        view.setVisibility(8);
                    }
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
                public void onADError(AdInfo adInfo, WindMillError error) {
                    WMLogUtil.d("InterstitialBaseView", "----------onADError----------" + error.toString());
                    if (InterstitialBaseView.this.f87455w.getListener() != null) {
                        InterstitialBaseView.this.f87455w.getListener().onAdShowError(new WMAdapterError(error.getErrorCode(), error.getMessage()));
                    }
                    a aVar = InterstitialBaseView.this.f87455w;
                    if (aVar != null) {
                        aVar.destroy();
                    }
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
                public void onADExposed(AdInfo adInfo) {
                    WMLogUtil.d("InterstitialBaseView", "----------onADExposed----------");
                    if (InterstitialBaseView.this.f87455w.getListener() != null) {
                        InterstitialBaseView.this.f87455w.getListener().onAdShow();
                    }
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
                public void onADRenderSuccess(AdInfo adInfo, View view, float width, float height) {
                    WMLogUtil.d("InterstitialBaseView", "----------onRenderSuccess----------");
                }
            });
        }
    }

    public void i() {
        a aVar = this.f87455w;
        if (aVar == null || this.f87458z == null) {
            WMLogUtil.d("----shakeStart--return--baseControl ==null || shakeGroup == null");
            return;
        }
        if (aVar.getNativeShakeAd() == 0) {
            this.f87458z.setVisibility(8);
            return;
        }
        if (this.B != null) {
            if (this.f87456x.getNetworkId() == 21) {
                View viewRenderShakeView = this.f87456x.renderShakeView(80, 80, new WMNativeAdData.AdShakeViewListener() { // from class: com.windmill.sdk.widget.InterstitialBaseView.12
                    @Override // com.windmill.sdk.natives.WMNativeAdData.AdShakeViewListener
                    public void onDismiss() {
                        InterstitialBaseView.this.f87458z.setVisibility(8);
                    }
                });
                if (viewRenderShakeView != null && viewRenderShakeView.getParent() == null) {
                    this.f87458z.removeAllViews();
                    this.f87458z.addView(viewRenderShakeView);
                    return;
                }
            } else if (this.f87456x.getNetworkId() == 41) {
                this.f87458z.setVisibility(0);
                this.f87458z.removeAllViews();
                this.f87456x.getInteractionWidgetView(this.f87458z, 200, 200, 0, null);
                return;
            }
            int i10 = this.B.getLayoutParams().height;
            this.B.setPivotX(this.B.getLayoutParams().width);
            this.B.setPivotY(i10);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.B, "rotation", 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f);
            this.M = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            this.M.setRepeatCount(2);
            this.M.setRepeatMode(2);
            this.M.setDuration(1000L);
            this.M.addListener(new AnimatorListenerAdapter() { // from class: com.windmill.sdk.widget.InterstitialBaseView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    InterstitialBaseView.this.j();
                }
            });
            this.M.start();
        }
    }

    public void j() {
        int left;
        int top;
        int width;
        int iDp2px;
        if (this.f87455w == null || this.f87458z == null || this.A == null) {
            WMLogUtil.d("----shakeStart2--return--baseControl ==null || shakeGroup == null || shakeLayout == null");
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#FF005C"));
        gradientDrawable.setShape(1);
        this.A.setBackground(gradientDrawable);
        if (this.f87455w.getClose_position() == 2) {
            left = this.f87440h.getLeft();
            top = this.f87440h.getTop();
            width = (int) ((((double) this.f87458z.getWidth()) * 0.4d) / 2.0d);
            iDp2px = width - UIUtils.dp2px(a(), 5.0f);
        } else {
            left = this.f87435c.getLeft();
            top = this.f87435c.getTop() + this.f87435c.getHeight();
            width = ((int) ((((double) this.f87458z.getWidth()) * 0.4d) / 2.0d)) - UIUtils.dp2px(a(), 5.0f);
            iDp2px = width;
        }
        WMLogUtil.i("----whereFrom----" + this.F + " " + left + " " + top);
        if ("InterstitialView_4102001".equals(this.F)) {
            left = UIUtils.dp2px(getBaseContext(), 20.0f);
            top = ((int) UIUtils.getScreenHeightPx(getBaseContext())) - UIUtils.dp2px(getBaseContext(), 90.0f);
        }
        WMLogUtil.i("----whereFrom----111 " + left + " " + top);
        int left2 = this.f87458z.getLeft();
        int top2 = this.f87458z.getTop();
        AnimatorSet animatorSet = new AnimatorSet();
        this.N = animatorSet;
        RelativeLayout relativeLayout = this.f87458z;
        float[] fArr = {0.0f, (left - left2) - width};
        RelativeLayout relativeLayout2 = this.f87458z;
        animatorSet.playTogether(ObjectAnimator.ofFloat(relativeLayout, "translationX", fArr), ObjectAnimator.ofFloat(relativeLayout2, "translationY", 0.0f, ((top - top2) - relativeLayout2.getHeight()) + iDp2px), ObjectAnimator.ofFloat(this.A, "scaleX", 1.0f, 0.6f), ObjectAnimator.ofFloat(this.A, "scaleY", 1.0f, 0.6f));
        this.N.addListener(new AnimatorListenerAdapter() { // from class: com.windmill.sdk.widget.InterstitialBaseView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                InterstitialBaseView.this.k();
            }
        });
        this.N.playSequentially(new Animator[0]);
        this.N.setDuration(500L).setInterpolator(new LinearInterpolator());
        this.N.start();
    }

    public void k() {
        RelativeLayout relativeLayout;
        if (this.f87455w == null || (relativeLayout = this.f87458z) == null || this.A == null) {
            WMLogUtil.d("----shakeStart3--return--baseControl ==null || shakeGroup == null || shakeLayout == null");
            return;
        }
        ViewGroup.LayoutParams layoutParams = relativeLayout.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = this.f87458z.getWidth() * 2;
            this.f87458z.setLayoutParams(layoutParams);
        }
        TextView textView = this.C;
        if (textView != null) {
            ViewGroup.LayoutParams layoutParams2 = textView.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams2.width = (int) (((double) this.A.getWidth()) * 0.6d);
                this.C.setLayoutParams(layoutParams2);
            }
            this.C.setVisibility(0);
            this.C.postDelayed(new Runnable() { // from class: com.windmill.sdk.widget.InterstitialBaseView.4
                @Override // java.lang.Runnable
                public void run() {
                    AnimatorSet animatorSet = new AnimatorSet();
                    InterstitialBaseView interstitialBaseView = InterstitialBaseView.this;
                    animatorSet.playTogether(ObjectAnimator.ofInt(new ViewWrapper(InterstitialBaseView.this.C), "width", InterstitialBaseView.this.A.getHeight()), ObjectAnimator.ofFloat(interstitialBaseView.C, "translationX", 0.0f, interstitialBaseView.A.getHeight() / 2));
                    animatorSet.setDuration(200L);
                    animatorSet.setInterpolator(new AccelerateInterpolator());
                    animatorSet.start();
                }
            }, 500L);
        }
        ImageView imageView = this.B;
        if (imageView != null) {
            int i10 = imageView.getLayoutParams().height;
            this.B.setPivotX(this.B.getLayoutParams().width);
            this.B.setPivotY(i10);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.B, "rotation", 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f);
            this.O = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            this.O.setRepeatCount(-1);
            this.O.setRepeatMode(2);
            this.O.setDuration(1000L);
            this.O.start();
        }
    }

    protected boolean l() {
        return false;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        try {
            a(a(getIntent(), "tips", ""));
            View view = this.D;
            if (view == null) {
                view = this.f87433a;
            }
            if (view == null) {
                finish();
            } else {
                ViewUtil.removeChildFromParent(view);
                setContentView(view);
            }
        } catch (Exception unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            WMLogUtil.d("InterstitialBaseView", "---onDismiss------");
            d dVar = this.K;
            if (dVar != null) {
                dVar.c();
                this.K.d();
            }
            a aVar = this.f87455w;
            if (aVar != null && aVar.getListener() != null) {
                this.f87455w.getListener().onAdClose();
            }
            a aVar2 = this.f87455w;
            if (aVar2 != null) {
                aVar2.destroy();
            }
            e();
            this.f87455w = null;
            ObjectAnimator objectAnimator = this.M;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.M = null;
            }
            ObjectAnimator objectAnimator2 = this.O;
            if (objectAnimator2 != null) {
                objectAnimator2.cancel();
                this.O = null;
            }
            AnimatorSet animatorSet = this.N;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.N = null;
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            if (this.E) {
                return;
            }
            this.E = true;
            d();
        } catch (Throwable unused) {
        }
    }

    public void b() {
        this.f87458z = (RelativeLayout) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_shake_group"));
        this.A = (RelativeLayout) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_shake_layout"));
        this.B = (ImageView) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_shake_image"));
        this.C = (TextView) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_shake_text"));
    }

    public void c() {
        if (this.f87456x.getImageList() == null || this.f87456x.getImageList().isEmpty()) {
            return;
        }
        WMImage wMImage = this.f87456x.getImageList().get(0);
        WMLogUtil.i(getClass().getSimpleName() + "----imageUrl " + wMImage.getWidth() + " " + wMImage.getImageUrl());
        if (TextUtils.isEmpty(wMImage.getImageUrl())) {
            return;
        }
        ImageManager.with(a()).getBitmap(wMImage.getImageUrl(), new ImageManager.BitmapLoadedListener() { // from class: com.windmill.sdk.widget.InterstitialBaseView.7
            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoadFailed() {
                WMLogUtil.d(getClass().getSimpleName() + "---blurImage--onBitmapLoadFailed-");
            }

            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoaded(Bitmap bitmap) {
                try {
                    WMLogUtil.d(getClass().getSimpleName() + "---blurImage--onBitmapLoaded---: " + bitmap);
                    if (bitmap != null) {
                        Bitmap bitmapA = com.windmill.sdk.utils.b.a(InterstitialBaseView.this.a(), bitmap, 5.0f);
                        ImageView imageView = InterstitialBaseView.this.f87435c;
                        if (imageView == null || bitmapA == null) {
                            return;
                        }
                        imageView.setImageBitmap(bitmapA);
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    public void d() {
        d dVar = this.K;
        if (dVar != null) {
            dVar.c();
            this.K.d();
        }
        int nativeTotalTime = this.f87455w.getNativeTotalTime(1) * 1000;
        if (nativeTotalTime > 0) {
            d dVar2 = new d(nativeTotalTime, 500L);
            this.K = dVar2;
            dVar2.a(new d.a() { // from class: com.windmill.sdk.widget.InterstitialBaseView.8
                @Override // com.windmill.sdk.widget.d.a
                public void a(long millisUntilFinished) {
                    int i10 = (int) ((millisUntilFinished / 1000) + 1);
                    InterstitialBaseView interstitialBaseView = InterstitialBaseView.this;
                    if (interstitialBaseView.f87443k != null) {
                        a aVar = interstitialBaseView.f87455w;
                        if (aVar == null || i10 > aVar.getNativeSkipTime()) {
                            TextView textView = InterstitialBaseView.this.f87443k;
                            if (textView != null) {
                                textView.setText(String.valueOf(i10));
                                InterstitialBaseView.this.f87442j.setClickable(false);
                            }
                        } else {
                            String str = "跳过｜" + i10;
                            try {
                                int iIndexOf = str.indexOf("｜");
                                SpannableString spannableString = new SpannableString(str);
                                spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#80FFFFFF")), iIndexOf, iIndexOf + 1, 33);
                                InterstitialBaseView.this.f87443k.setText(spannableString);
                            } catch (Exception unused) {
                                InterstitialBaseView.this.f87443k.setText(str);
                            }
                            InterstitialBaseView.this.f87442j.setClickable(true);
                        }
                    }
                    InterstitialBaseView.this.m();
                }

                @Override // com.windmill.sdk.widget.d.a
                public void a() {
                    WMLogUtil.d("InterstitialBaseView", "---倒计时--onFinish ");
                    TextView textView = InterstitialBaseView.this.f87443k;
                    if (textView != null) {
                        textView.setText("关闭");
                        InterstitialBaseView.this.f87442j.setClickable(true);
                    }
                    InterstitialBaseView.this.m();
                    if (InterstitialBaseView.this.f87455w.getNativeIsAutoClose() == 1) {
                        InterstitialBaseView.this.n();
                    }
                }
            });
            this.K.a();
            this.K.b();
            return;
        }
        TextView textView = this.f87443k;
        if (textView != null) {
            textView.setText("关闭");
            this.f87442j.setClickable(true);
        }
        m();
    }

    public void e() {
        b.a(this.f87435c);
        b.a(this.f87437e);
        b.a(this.f87445m);
        b.a(this.f87452t);
        b.a(this.B);
        b.a(this.f87444l);
    }

    void a(String tips) {
        View view;
        ViewGroup.LayoutParams layoutParams;
        this.J = tips;
        this.F = getClass().getSimpleName();
        this.f87453u = (int) UIUtils.getScreenWidthPx(this);
        this.f87454v = (UIUtils.getScreenHeightInPx(this) / 5) * 2;
        this.f87457y = new Random().nextInt(100) + 1;
        WMLogUtil.d("InterstitialBaseView", "InterstitialBaseView: ranDom " + this.f87457y);
        View viewA = a(a());
        this.f87433a = viewA;
        if (viewA != null) {
            a baseControl = InterstitialViewManager.getBaseControl();
            this.f87455w = baseControl;
            WMNativeAdData nativeAdData = baseControl.getNativeAdData();
            this.f87456x = nativeAdData;
            ViewGroup nativeAdContainer = nativeAdData.getNativeAdContainer(a());
            this.D = nativeAdContainer;
            if (nativeAdContainer != null && this.f87433a.getParent() == null) {
                this.D.removeAllViews();
                this.D.addView(this.f87433a, new ViewGroup.LayoutParams(-1, -1));
            }
            this.f87434b = (ViewGroup) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_click_group"));
            this.f87436d = (ViewGroup) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_post_group"));
            this.f87435c = (ImageView) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_blur_image"));
            this.f87437e = (ImageView) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_post_image"));
            this.f87438f = (FrameLayout) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_post_media"));
            this.f87439g = this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_bg_shade"));
            this.f87440h = (LinearLayout) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_sound_and_skip_layout"));
            this.f87442j = (LinearLayout) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_skip_ll"));
            this.f87441i = this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_skip_shade"));
            this.f87443k = (TextView) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_skip_text"));
            this.f87444l = (ImageView) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_sound_image"));
            this.f87445m = (TbCircleImageView) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_icon_image"));
            this.f87446n = (TextView) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_tittle_tv"));
            this.f87447o = (TextView) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_desc_tv"));
            this.f87448p = (TextView) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_cta_bt"));
            this.f87449q = this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_cta_bt_gd"));
            this.f87450r = (LinearLayout) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_privacy_ll"));
            RelativeLayout relativeLayout = (RelativeLayout) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_privacy_group"));
            this.f87451s = relativeLayout;
            if (relativeLayout != null && (layoutParams = relativeLayout.getLayoutParams()) != null) {
                if (!"InterstitialView_4102001".equals(this.F)) {
                    layoutParams.height = this.f87454v;
                }
                this.f87451s.setLayoutParams(layoutParams);
            }
            this.f87452t = (ImageView) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_logo_image"));
            this.H = (TextView) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_ad_text"));
            this.I = (RelativeLayout) this.f87433a.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_ad_detail"));
            this.f87442j.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.sdk.widget.InterstitialBaseView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    InterstitialBaseView.this.n();
                }
            });
            try {
                WMLogUtil.d("------BayesNativeAdData   InterstitialBaseView ");
                if (this.f87456x.getNetworkId() == 42) {
                    WMNativeAdContainer wMNativeAdContainer = new WMNativeAdContainer(this.f87433a.getContext());
                    ((ViewGroup) this.f87433a).addView(wMNativeAdContainer);
                    final FrameLayout frameLayout = new FrameLayout(this.f87433a.getContext());
                    wMNativeAdContainer.addView(frameLayout);
                    this.f87456x.connectAdToView(this, wMNativeAdContainer, new WMNativeAdRender() { // from class: com.windmill.sdk.widget.InterstitialBaseView.5
                        @Override // com.windmill.sdk.natives.WMNativeAdRender
                        public View createView(Context context, int adPatternType) {
                            return frameLayout;
                        }

                        @Override // com.windmill.sdk.natives.WMNativeAdRender
                        public void renderAdView(View view2, WMNativeAdData adData) {
                        }
                    });
                }
            } catch (Exception e10) {
                StringWriter stringWriter = new StringWriter();
                e10.printStackTrace(new PrintWriter(stringWriter));
                WMLogUtil.d("------BayesNativeAdData Exception   " + stringWriter.toString());
            }
            o();
            h();
            if (this.f87455w.getNativeBtnStyle() != 1 || (view = this.f87449q) == null) {
                return;
            }
            view.setVisibility(0);
        }
    }

    private static String a(Intent intent, String key, String defaultValue) {
        Bundle extras;
        if (intent == null || (extras = intent.getExtras()) == null) {
            return defaultValue;
        }
        try {
            return extras.getString(key, defaultValue);
        } catch (Exception unused) {
            return defaultValue;
        }
    }

    private void a(int close_position) {
        try {
            TextView textView = new TextView(a());
            textView.setText(this.J);
            textView.setAllCaps(false);
            textView.setTextSize(2, 10);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setTextColor(-1);
            textView.setGravity(17);
            textView.setBackgroundColor(Color.argb(26, 0, 0, 0));
            int iDp2px = UIUtils.dp2px(a(), 5.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.rightMargin = iDp2px;
            layoutParams.leftMargin = iDp2px;
            if (close_position == 1) {
                layoutParams.addRule(17, this.f87440h.getId());
                layoutParams.addRule(6, this.f87440h.getId());
                layoutParams.addRule(11);
                this.I.addView(textView, layoutParams);
            } else if (close_position != 2 && close_position != 3) {
                if ("InterstitialView_4102001".equals(this.F)) {
                    View view = this.f87433a;
                    if (view != null) {
                        TextView textView2 = (TextView) view.findViewById(ResourceUtil.getId(a(), "tobid_interstitial_show_tips"));
                        textView2.setText(this.J);
                        textView2.setBackgroundColor(Color.argb(26, 0, 0, 0));
                        textView2.setTextColor(-1);
                        textView2.setVisibility(0);
                    }
                } else {
                    layoutParams.addRule(16, this.f87440h.getId());
                    layoutParams.addRule(6, this.f87440h.getId());
                    layoutParams.addRule(9);
                    this.I.addView(textView, layoutParams);
                }
            } else {
                layoutParams.addRule(11);
                layoutParams.addRule(10);
                layoutParams.addRule(9);
                layoutParams.topMargin = iDp2px;
                this.I.addView(textView, layoutParams);
            }
        } catch (Exception e10) {
            SigmobLog.e("InterstitialBaseView", e10);
        }
    }

    protected void a(View rootView, List<View> clickableViews, List<View> creativeViewList) {
        if (this.f87456x.getNetworkId() == 42) {
            this.f87456x.bindViewForInteraction(a(), rootView, clickableViews, creativeViewList, new View(a()));
        } else {
            this.f87456x.bindViewForInteraction(a(), rootView, clickableViews, creativeViewList, null);
        }
    }
}
