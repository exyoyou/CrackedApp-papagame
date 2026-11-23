package com.windmill.sdk.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.ViewWrapper;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdContainer;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMNativeAdRender;
import com.windmill.sdk.natives.WMViewBinder;
import com.windmill.sdk.utils.l;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes8.dex */
public class SplashView_2002001 extends SplashBaseView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f87519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ObjectAnimator f87520c;
    public RelativeLayout shakeGroup;
    public ImageView shakeImage;
    public RelativeLayout shakeLayout;
    public TextView shakeText;

    public SplashView_2002001(Context context, int width, int height, a baseControl) {
        super(context, width, height, baseControl);
        this.shakeGroup = (RelativeLayout) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_shake_group"));
        this.shakeLayout = (RelativeLayout) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_shake_layout"));
        this.shakeImage = (ImageView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_shake_image"));
        this.shakeText = (TextView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_splash_shake_text"));
        a();
        try {
            renderView();
        } catch (Exception unused) {
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        int left;
        int top;
        if (this.f87519b) {
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#FF005C"));
        gradientDrawable.setShape(1);
        this.shakeLayout.setBackground(gradientDrawable);
        if (this.baseControl.getClose_position() == 2) {
            left = this.adSoundSkipLayout.getLeft();
            top = this.adSoundSkipLayout.getTop();
        } else {
            left = this.iconTextLayout.getLeft();
            top = this.iconTextLayout.getTop();
        }
        int left2 = (this.shakeGroup.getLeft() + (this.shakeGroup.getWidth() / 2)) - (this.shakeImage.getWidth() / 2);
        int top2 = this.shakeGroup.getTop();
        AnimatorSet animatorSet = new AnimatorSet();
        RelativeLayout relativeLayout = this.shakeGroup;
        float[] fArr = {0.0f, left - left2};
        RelativeLayout relativeLayout2 = this.shakeGroup;
        animatorSet.playTogether(ObjectAnimator.ofFloat(relativeLayout, "translationX", fArr), ObjectAnimator.ofFloat(relativeLayout2, "translationY", 0.0f, (top - top2) - relativeLayout2.getHeight()), ObjectAnimator.ofFloat(this.shakeLayout, "scaleX", 1.0f, 0.6f), ObjectAnimator.ofFloat(this.shakeLayout, "scaleY", 1.0f, 0.6f));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.windmill.sdk.widget.SplashView_2002001.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                SplashView_2002001.this.d();
            }
        });
        animatorSet.playSequentially(new Animator[0]);
        animatorSet.setDuration(500L).setInterpolator(new LinearInterpolator());
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        ViewGroup.LayoutParams layoutParams;
        if (this.f87519b) {
            return;
        }
        RelativeLayout relativeLayout = this.shakeGroup;
        if (relativeLayout != null && (layoutParams = relativeLayout.getLayoutParams()) != null) {
            layoutParams.width = this.shakeGroup.getWidth() * 2;
            this.shakeGroup.setLayoutParams(layoutParams);
        }
        TextView textView = this.shakeText;
        if (textView != null) {
            ViewGroup.LayoutParams layoutParams2 = textView.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams2.width = (int) (((double) this.shakeLayout.getWidth()) * 0.6d);
                this.shakeText.setLayoutParams(layoutParams2);
            }
            this.shakeText.setVisibility(0);
            this.shakeText.setText("摇一摇");
            this.shakeText.postDelayed(new Runnable() { // from class: com.windmill.sdk.widget.SplashView_2002001.8
                @Override // java.lang.Runnable
                public void run() {
                    AnimatorSet animatorSet = new AnimatorSet();
                    SplashView_2002001 splashView_2002001 = SplashView_2002001.this;
                    animatorSet.playTogether(ObjectAnimator.ofInt(new ViewWrapper(SplashView_2002001.this.shakeText), "width", SplashView_2002001.this.shakeLayout.getHeight()), ObjectAnimator.ofFloat(splashView_2002001.shakeText, "translationX", 0.0f, (splashView_2002001.shakeLayout.getHeight() / 2) - 10));
                    animatorSet.setDuration(200L);
                    animatorSet.setInterpolator(new AccelerateInterpolator());
                    animatorSet.start();
                }
            }, 500L);
        }
        int i10 = this.shakeImage.getLayoutParams().height;
        this.shakeImage.setPivotX(this.shakeImage.getLayoutParams().width);
        this.shakeImage.setPivotY(i10);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.shakeImage, "rotation", 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f);
        this.f87520c = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.f87520c.setRepeatCount(-1);
        this.f87520c.setRepeatMode(2);
        this.f87520c.setDuration(1000L);
        this.f87520c.start();
    }

    @Override // com.windmill.sdk.widget.SplashBaseView
    public int getLayoutId(Context context) {
        return ResourceUtil.getLayoutId(context, "tobid_layout_splash_model_2002001");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f87519b = true;
        ObjectAnimator objectAnimator = this.f87520c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        RelativeLayout relativeLayout = this.shakeGroup;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
        }
    }

    @Override // com.windmill.sdk.widget.SplashBaseView
    public void renderView() {
        WMImage wMImage;
        WMNativeAdData wMNativeAdData = this.nativeAdData;
        if (wMNativeAdData != null) {
            if (TextUtils.isEmpty(wMNativeAdData.getTitle())) {
                this.adTittleText.setText("点开有惊喜");
            } else {
                this.adTittleText.setText(this.nativeAdData.getTitle());
            }
            if (TextUtils.isEmpty(this.nativeAdData.getDesc())) {
                this.adDescText.setText("听说点开它的人都交了好运!");
            } else {
                this.adDescText.setText(this.nativeAdData.getDesc());
            }
            if (TextUtils.isEmpty(this.nativeAdData.getCTAText())) {
                this.adCtaText.setText("获取详情");
            } else {
                this.adCtaText.setText(this.nativeAdData.getCTAText());
            }
            if (l.c(this.nativeAdData.getNetworkId())) {
                this.nativeAdData.setAdLogoParams(new FrameLayout.LayoutParams(0, 0));
            }
            if (!TextUtils.isEmpty(this.nativeAdData.getIconUrl())) {
                this.adIcon.setVisibility(0);
                ImageManager.with(getContext()).getBitmap(this.nativeAdData.getIconUrl(), new ImageManager.BitmapLoadedListener() { // from class: com.windmill.sdk.widget.SplashView_2002001.2
                    @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                    public void onBitmapLoadFailed() {
                    }

                    @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                    public void onBitmapLoaded(Bitmap bitmap) {
                        ImageView imageView = SplashView_2002001.this.adIcon;
                        if (imageView != null) {
                            imageView.setImageBitmap(bitmap);
                        }
                        WMNativeAdData wMNativeAdData2 = SplashView_2002001.this.nativeAdData;
                        if (wMNativeAdData2 == null || wMNativeAdData2.getAdPatternType() != 4) {
                            return;
                        }
                        Bitmap bitmapA = com.windmill.sdk.utils.b.a(SplashView_2002001.this.getContext(), bitmap, 25.0f);
                        ImageView imageView2 = SplashView_2002001.this.blurImage;
                        if (imageView2 != null) {
                            imageView2.setImageBitmap(bitmapA);
                        }
                    }
                });
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.adCtaText);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(this.adCtaText);
            if (this.baseControl.getMistake_click_rate() >= this.ranDom) {
                this.adSkipShade.setVisibility(0);
                arrayList2.add(this.adSkipShade);
            } else {
                this.adSkipShade.setVisibility(8);
            }
            int adPatternType = this.nativeAdData.getAdPatternType();
            WMLogUtil.d(WMLogUtil.TAG, "-------------patternType:" + adPatternType);
            ArrayList arrayList3 = new ArrayList();
            if (adPatternType == 1 || adPatternType == 2 || adPatternType == 3) {
                this.adPostImage.setVisibility(0);
                this.adMediaLayout.setVisibility(8);
                arrayList.add(this.adPostImage);
                arrayList3.add(this.adPostImage);
            } else {
                this.adPostImage.setVisibility(8);
                this.adMediaLayout.setVisibility(0);
            }
            try {
                if (this.nativeAdData.getNetworkId() == 42) {
                    WMNativeAdContainer wMNativeAdContainer = new WMNativeAdContainer(getContext());
                    addView(wMNativeAdContainer);
                    this.nativeAdData.connectAdToView((Activity) getContext(), wMNativeAdContainer, new WMNativeAdRender() { // from class: com.windmill.sdk.widget.SplashView_2002001.3
                        @Override // com.windmill.sdk.natives.WMNativeAdRender
                        public View createView(Context context, int adPatternType2) {
                            return null;
                        }

                        @Override // com.windmill.sdk.natives.WMNativeAdRender
                        public void renderAdView(View view, WMNativeAdData adData) {
                        }
                    });
                }
            } catch (Exception e10) {
                StringWriter stringWriter = new StringWriter();
                e10.printStackTrace(new PrintWriter(stringWriter));
                WMLogUtil.d("------BayesNativeAdData Exception   " + stringWriter.toString());
            }
            if (this.nativeAdData.getNetworkId() == 22) {
                this.nativeAdData.registerViewBidder(new WMViewBinder.Builder(this.adView.getId()).titleId(this.adTittleText.getId()).descriptionTextId(this.adDescText.getId()).callToActionId(this.adCtaText.getId()).iconImageId(this.adIcon.getId()).mainImageId(this.adPostImage.getId()).mediaViewIdId(this.adMediaLayout.getId()).groupImage1Id(this.adPostImage.getId()).groupImage2Id(this.adPostImage.getId()).groupImage3Id(this.adPostImage.getId()).build());
            }
            this.nativeAdData.bindViewForInteraction(getContext(), this, arrayList, arrayList2, null);
            if (!arrayList3.isEmpty()) {
                this.nativeAdData.bindImageViews(getContext(), arrayList3, 0);
            } else if (adPatternType == 4) {
                this.adPostImage.setVisibility(8);
                this.adMediaLayout.setVisibility(0);
                this.nativeAdData.bindMediaView(getContext(), this.adMediaLayout);
            }
            if (this.nativeAdData.getImageList() == null || this.nativeAdData.getImageList().size() <= 0 || (wMImage = this.nativeAdData.getImageList().get(0)) == null || TextUtils.isEmpty(wMImage.getImageUrl())) {
                return;
            }
            ImageManager.with(getContext()).getBitmap(wMImage.getImageUrl(), new ImageManager.BitmapLoadedListener() { // from class: com.windmill.sdk.widget.SplashView_2002001.4
                @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                public void onBitmapLoadFailed() {
                    WMLogUtil.d("SplashBaseView", "--------blurImage------onBitmapLoadFailed------------");
                }

                @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                public void onBitmapLoaded(Bitmap bitmap) {
                    WMLogUtil.d("SplashBaseView", "--------blurImage------onBitmapLoaded------------: " + bitmap);
                    if (bitmap != null) {
                        Bitmap bitmapA = com.windmill.sdk.utils.b.a(SplashView_2002001.this.getContext(), bitmap, 25.0f);
                        ImageView imageView = SplashView_2002001.this.blurImage;
                        if (imageView != null) {
                            imageView.setImageBitmap(bitmapA);
                        }
                    }
                }
            });
        }
    }

    private void a() {
        try {
            int close_position = this.baseControl.getClose_position();
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.adSoundSkipLayout.getLayoutParams();
            if (close_position == 1) {
                layoutParams.addRule(10);
                layoutParams.addRule(9);
                layoutParams.setMargins(dp2px(getContext(), 30.0f), dp2px(getContext(), 30.0f), 0, 0);
                this.adSoundSkipLayout.setLayoutParams(layoutParams);
            } else if (close_position == 2) {
                layoutParams.addRule(5, this.iconTextLayout.getId());
                layoutParams.addRule(2, this.iconTextLayout.getId());
                layoutParams.setMargins(0, 0, 0, dp2px(getContext(), 20.0f));
                this.adSoundSkipLayout.setLayoutParams(layoutParams);
            } else if (close_position != 3) {
                layoutParams.addRule(10);
                layoutParams.addRule(11);
                layoutParams.setMargins(0, dp2px(getContext(), 30.0f), dp2px(getContext(), 30.0f), 0);
                this.adSoundSkipLayout.setLayoutParams(layoutParams);
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("SplashView_2012001: ");
                sb2.append(layoutParams.getClass().getName());
                layoutParams.addRule(7, this.iconTextLayout.getId());
                layoutParams.addRule(2, this.iconTextLayout.getId());
                layoutParams.setMargins(0, 0, 0, dp2px(getContext(), 20.0f));
                this.adSoundSkipLayout.setLayoutParams(layoutParams);
            }
            int close_style = this.baseControl.getClose_style();
            ViewGroup.LayoutParams layoutParams2 = this.soundImage.getLayoutParams();
            if (close_style == 1) {
                layoutParams2.width = dp2px(getContext(), 35.0f);
                layoutParams2.height = dp2px(getContext(), 35.0f);
                this.soundImage.setLayoutParams(layoutParams2);
                this.adSkipText.setTextSize(2, 16.0f);
            } else if (close_style != 2) {
                layoutParams2.width = dp2px(getContext(), 30.0f);
                layoutParams2.height = dp2px(getContext(), 30.0f);
                this.soundImage.setLayoutParams(layoutParams2);
                this.adSkipText.setTextSize(2, 13.0f);
            } else {
                layoutParams2.width = dp2px(getContext(), 25.0f);
                layoutParams2.height = dp2px(getContext(), 25.0f);
                this.soundImage.setLayoutParams(layoutParams2);
                this.adSkipText.setTextSize(2, 10.0f);
            }
            if (this.nativeAdData.getNetworkId() == 1 || this.nativeAdData.getNetworkId() == 21) {
                int autoPlayMuted = this.baseControl.getAutoPlayMuted();
                this.soundImage.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.sdk.widget.SplashView_2002001.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        if (v10.getTag() != null) {
                            if (v10.getTag().equals("sound_on")) {
                                SplashView_2002001 splashView_2002001 = SplashView_2002001.this;
                                splashView_2002001.soundImage.setImageResource(ResourceUtil.getDrawableId(splashView_2002001.getContext(), "tobid_image_ad_sound_off"));
                                SplashView_2002001.this.soundImage.setTag("sound_off");
                                SplashView_2002001.this.nativeAdData.setVideoMute(true);
                                return;
                            }
                            SplashView_2002001 splashView_2002002 = SplashView_2002001.this;
                            splashView_2002002.soundImage.setImageResource(ResourceUtil.getDrawableId(splashView_2002002.getContext(), "tobid_image_ad_sound_on"));
                            SplashView_2002001.this.soundImage.setTag("sound_on");
                            SplashView_2002001.this.nativeAdData.setVideoMute(false);
                        }
                    }
                });
                if (autoPlayMuted != 1) {
                    this.nativeAdData.setVideoMute(false);
                    this.soundImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_sound_on"));
                    this.soundImage.setTag("sound_on");
                } else {
                    this.nativeAdData.setVideoMute(true);
                    this.soundImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_sound_off"));
                    this.soundImage.setTag("sound_off");
                }
            } else {
                this.soundImage.setVisibility(8);
            }
            int networkId = this.nativeAdData.getNetworkId();
            if (networkId == 1) {
                this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_logo_mtg"));
                return;
            }
            if (networkId != 13) {
                if (networkId != 16) {
                    if (networkId != 19) {
                        if (networkId == 21) {
                            this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_logo_bd"));
                            return;
                        }
                        if (networkId != 22) {
                            if (networkId == 28) {
                                this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_logo_qm_fff"));
                                return;
                            }
                            if (networkId == 29) {
                                this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_logo_tap"));
                                return;
                            }
                            if (networkId == 41) {
                                this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_logo_octopus_fff"));
                                return;
                            }
                            if (networkId == 42) {
                                this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_logo_bayes_fff"));
                                return;
                            }
                            if (networkId != 45) {
                                if (networkId != 46) {
                                    if (networkId != 998) {
                                        if (networkId != 999) {
                                            this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_logo_sg"));
                                            return;
                                        } else {
                                            this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_logo_adx"));
                                            return;
                                        }
                                    }
                                    Bitmap adLogo = this.nativeAdData.getAdLogo();
                                    if (adLogo != null) {
                                        this.adLogoImage.setImageBitmap(adLogo);
                                    } else {
                                        this.adLogoImage.setVisibility(8);
                                    }
                                    TextView textView = this.f87500a;
                                    if (textView != null) {
                                        textView.setVisibility(0);
                                        return;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                    this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_logo_ks"));
                    return;
                }
                this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_logo_ylh"));
                return;
            }
            this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(getContext(), "tobid_image_ad_logo_tt"));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b() {
        if (this.f87519b) {
            return;
        }
        if (this.baseControl.getNativeShakeAd() == 0) {
            this.shakeGroup.setVisibility(8);
            return;
        }
        if (this.nativeAdData.getNetworkId() == 21) {
            View viewRenderShakeView = this.nativeAdData.renderShakeView(80, 80, new WMNativeAdData.AdShakeViewListener() { // from class: com.windmill.sdk.widget.SplashView_2002001.5
                @Override // com.windmill.sdk.natives.WMNativeAdData.AdShakeViewListener
                public void onDismiss() {
                    SplashView_2002001.this.shakeGroup.setVisibility(8);
                }
            });
            if (viewRenderShakeView != null) {
                this.shakeGroup.removeAllViews();
                this.shakeGroup.addView(viewRenderShakeView);
                return;
            }
        } else if (this.nativeAdData.getNetworkId() == 41) {
            this.shakeGroup.setVisibility(0);
            this.shakeGroup.removeAllViews();
            this.nativeAdData.getInteractionWidgetView(this.shakeGroup, 200, 200, 0, null);
            return;
        }
        int i10 = this.shakeImage.getLayoutParams().height;
        this.shakeImage.setPivotX(this.shakeImage.getLayoutParams().width);
        this.shakeImage.setPivotY(i10);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.shakeImage, "rotation", 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setRepeatCount(2);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.windmill.sdk.widget.SplashView_2002001.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                SplashView_2002001.this.c();
            }
        });
        objectAnimatorOfFloat.start();
    }
}
