package com.sigmob.sdk.base.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;

/* JADX INFO: loaded from: classes5.dex */
public class k extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f80124a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ImageView f80125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TextView f80126c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TextView f80127d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f80128e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f80129f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f80130g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private q f80131h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private k f80132i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f80133j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f80134k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f80135l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f80136m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f80137n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f80138o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f80139p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private LinearLayout f80140q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private BaseAdUnit f80141r;

    public k(Context context, BaseAdUnit adUnit, final String title, String actionStr, float rating, String desc, int animType, int styleType, final String iconUrl, final int buttonColor, final int buttonTextColor, int click_type, final int barColor, final int barAlp, final float height) {
        super(context);
        this.f80124a = Dips.asIntPixels(height, context);
        this.f80136m = Dips.asIntPixels(10.0f, context);
        this.f80141r = adUnit;
        this.f80133j = animType;
        this.f80128e = styleType;
        TextView textView = new TextView(context);
        this.f80127d = textView;
        textView.setText(title);
        textView.setTextSize(1, 16.0f);
        textView.setTextColor(-16777216);
        textView.setSingleLine();
        textView.setTypeface(Typeface.defaultFromStyle(0));
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(16);
        textView.setId(ClientMetadata.generateViewId());
        textView.setPadding(this.f80136m / 6, 0, 0, 0);
        this.f80135l = click_type;
        TextView textView2 = new TextView(context);
        this.f80126c = textView2;
        textView2.setId(ClientMetadata.generateViewId());
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(buttonTextColor);
        textView2.setGravity(17);
        textView.setSingleLine();
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setText(actionStr);
        int iAsIntPixels = Dips.asIntPixels(5.0f, context);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(buttonColor);
        gradientDrawable.setCornerRadius(iAsIntPixels * 6);
        CircleImageView circleImageView = new CircleImageView(context);
        this.f80125b = circleImageView;
        circleImageView.setScaleType(ImageView.ScaleType.FIT_START);
        circleImageView.setId(ClientMetadata.generateViewId());
        circleImageView.f79807b = false;
        float f10 = iAsIntPixels * 2;
        circleImageView.f79806a = f10;
        textView2.setBackground(gradientDrawable);
        textView2.setId(ClientMetadata.generateViewId());
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setCornerRadius(f10);
        gradientDrawable2.setColor(barColor);
        gradientDrawable2.setAlpha(barAlp);
        setBackground(gradientDrawable2);
        this.f80132i = this;
        if (styleType == 1) {
            a(context, rating);
        } else {
            a(context, desc);
        }
        if (adUnit.getMaterial() != null && adUnit.getMaterial().ad_privacy != null) {
            a(context);
        }
        setupUILayout(context);
        circleImageView.setVisibility(4);
        a(iconUrl);
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float a(float f10) {
        SigmobLog.e("input: " + f10);
        return (float) ((Math.pow(2.0d, (-10.0f) * f10) * Math.sin((((double) (f10 - 0.13333334f)) * 6.283185307179586d) / 0.4000000059604645d)) + 1.0d);
    }

    private void d() {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scaleX", 0.3f, 0.5f, 1.0f), PropertyValuesHolder.ofFloat("scaleY", 0.3f, 0.5f, 1.0f));
        objectAnimatorOfPropertyValuesHolder.setInterpolator(new Interpolator() { // from class: com.sigmob.sdk.base.views.l0
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f10) {
                return k.a(f10);
            }
        });
        f();
        objectAnimatorOfPropertyValuesHolder.setDuration(2000L);
        objectAnimatorOfPropertyValuesHolder.start();
    }

    @SuppressLint({"ObjectAnimatorBinding"})
    private void e() {
        Keyframe keyframeOfFloat = Keyframe.ofFloat(0.0f, 0.0f);
        Keyframe keyframeOfFloat2 = Keyframe.ofFloat(0.5f, 0.95f);
        Keyframe keyframeOfFloat3 = Keyframe.ofFloat(0.6f, 0.9f);
        Keyframe keyframeOfFloat4 = Keyframe.ofFloat(0.7f, 1.0f);
        Keyframe keyframeOfFloat5 = Keyframe.ofFloat(0.8f, 0.95f);
        Keyframe keyframeOfFloat6 = Keyframe.ofFloat(1.0f, 1.0f);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofKeyframe("scaleX", keyframeOfFloat, keyframeOfFloat2, keyframeOfFloat3, keyframeOfFloat4, keyframeOfFloat5, keyframeOfFloat6), PropertyValuesHolder.ofKeyframe("scaleY", keyframeOfFloat, keyframeOfFloat2, keyframeOfFloat3, keyframeOfFloat4, keyframeOfFloat5, keyframeOfFloat6));
        objectAnimatorOfPropertyValuesHolder.setDuration(1000L);
        f();
        this.f80139p = true;
        objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.sigmob.sdk.base.views.k.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
                super.onAnimationCancel(animation);
                k.this.f80138o = false;
                k.this.f80139p = false;
                k.this.f80132i.clearAnimation();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                k.this.f80138o = false;
                k.this.f80139p = false;
                k.this.f80132i.clearAnimation();
            }
        });
        objectAnimatorOfPropertyValuesHolder.start();
    }

    private void f() {
        this.f80137n = true;
        super.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        super.setVisibility(4);
    }

    private void h() {
        SigmobLog.d("startDownToUpAnimator");
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, 1.0f, 2, 0.0f);
        translateAnimation.setInterpolator(new LinearInterpolator());
        translateAnimation.setDuration(500L);
        f();
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.sigmob.sdk.base.views.k.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                k.this.f80138o = false;
                k.this.f80132i.clearAnimation();
                SigmobLog.d("startDownToUpAnimator end");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.f80132i.startAnimation(translateAnimation);
    }

    private void i() {
        SigmobLog.d("startUpToDownAnimator");
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, 0.0f, 2, 1.0f);
        translateAnimation.setInterpolator(new LinearInterpolator());
        translateAnimation.setDuration(500L);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.sigmob.sdk.base.views.k.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                k.this.f80138o = true;
                k.this.f80132i.clearAnimation();
                k.this.g();
                SigmobLog.d("startUpToDownAnimator end");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.f80132i.startAnimation(translateAnimation);
    }

    private void setupUILayout(Context context) {
        int iAsIntPixels = Dips.asIntPixels(60.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iAsIntPixels, iAsIntPixels);
        layoutParams.addRule(15);
        int i10 = this.f80136m;
        layoutParams.setMargins(i10, i10 / 4, 0, 0);
        this.f80125b.setId(ClientMetadata.generateViewId());
        addView(this.f80125b, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, (int) (iAsIntPixels / 1.8f));
        layoutParams2.setMargins(0, 0, this.f80136m, 0);
        layoutParams2.addRule(15);
        layoutParams2.addRule(11);
        TextView textView = this.f80126c;
        int i11 = this.f80136m;
        textView.setPadding(i11, 0, i11, 0);
        addView(this.f80126c, layoutParams2);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(this.f80136m / 2, 0, 0, 0);
        layoutParams3.addRule(15);
        layoutParams3.addRule(1, this.f80125b.getId());
        layoutParams3.addRule(0, this.f80126c.getId());
        addView(linearLayout, layoutParams3);
        linearLayout.addView(this.f80127d, new RelativeLayout.LayoutParams(-2, -2));
        if (this.f80129f != null) {
            RelativeLayout relativeLayout = new RelativeLayout(context);
            relativeLayout.addView(this.f80129f, new RelativeLayout.LayoutParams(-2, -2));
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams4.addRule(1, this.f80129f.getId());
            layoutParams4.addRule(6, this.f80129f.getId());
            layoutParams4.addRule(8, this.f80129f.getId());
            relativeLayout.addView(this.f80131h, layoutParams4);
            linearLayout.addView(relativeLayout, new RelativeLayout.LayoutParams(-2, -2));
        } else if (this.f80130g != null) {
            linearLayout.addView(this.f80130g, new RelativeLayout.LayoutParams(-2, -2));
        }
        if (this.f80140q != null) {
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams5.addRule(8, this.f80125b.getId());
            linearLayout.addView(this.f80140q, layoutParams5);
        }
    }

    public LinearLayout getFourElementsLayout() {
        return this.f80140q;
    }

    @Override // android.view.View
    public int getVisibility() {
        return super.getVisibility();
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener l10) {
        if (this.f80135l == 1) {
            this.f80126c.setOnTouchListener(l10);
        } else {
            super.setOnTouchListener(l10);
        }
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        if (visibility == 8) {
            super.setVisibility(visibility);
            this.f80134k = false;
            return;
        }
        if (visibility == 0) {
            this.f80134k = true;
            if (this.f80132i.getAnimation() == null && !this.f80139p && this.f80125b.getVisibility() == 0) {
                c();
                return;
            }
            return;
        }
        if (visibility != 4) {
            super.setVisibility(visibility);
        } else {
            if (this.f80132i.getAnimation() != null) {
                return;
            }
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        int i10 = this.f80133j;
        if (i10 == 1) {
            e();
        } else if (i10 == 2 || i10 != 3) {
            h();
        } else {
            f();
        }
    }

    public void a(final Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        this.f80140q = linearLayout;
        linearLayout.setOrientation(0);
        this.f80140q.setId(ClientMetadata.generateViewId());
        int iAsIntPixels = Dips.asIntPixels(2.0f, context);
        String[] strArr = {"名称", "版本", "开发者", "权限", "隐私协议", "介绍"};
        for (int i10 = 0; i10 < 6; i10++) {
            String str = strArr[i10];
            TextView textView = new TextView(context);
            textView.setTextSize(1, 8.0f);
            textView.setText(str);
            textView.setTextColor(-7829368);
            textView.setAlpha(0.7f);
            textView.getPaint().setAntiAlias(true);
            textView.getPaint().setFlags(8);
            int i11 = iAsIntPixels / 2;
            textView.setPadding(i11, 0, i11, 0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, iAsIntPixels, 0);
            this.f80140q.addView(textView, layoutParams);
        }
    }

    public boolean b() {
        return this.f80138o;
    }

    public void a(Context context, float rating) {
        TextView textView = new TextView(context);
        this.f80129f = textView;
        textView.setTextSize(1, 14.0f);
        this.f80129f.setId(ClientMetadata.generateViewId());
        this.f80129f.setGravity(17);
        this.f80129f.setTextColor(-7829368);
        if (rating > 0.0f) {
            this.f80129f.setText(String.format("%.1f", Float.valueOf(rating)));
        }
        this.f80131h = new q(context, rating);
    }

    public void a(Context context, String desc) {
        TextView textView = new TextView(context);
        this.f80130g = textView;
        textView.setId(ClientMetadata.generateViewId());
        this.f80130g.setTextColor(-7829368);
        this.f80130g.setSingleLine();
        this.f80130g.setGravity(17);
        this.f80130g.setTextSize(1, 14.0f);
        this.f80130g.setEllipsize(TextUtils.TruncateAt.END);
        this.f80130g.setText(desc);
    }

    public void a(String logoUrl) {
        if (TextUtils.isEmpty(logoUrl)) {
            return;
        }
        com.sigmob.sdk.base.common.h.a().getBitmap(logoUrl, new ImageManager.BitmapLoadedListener() { // from class: com.sigmob.sdk.base.views.k.4
            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoadFailed() {
            }

            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoaded(Bitmap bitmap) {
                k.this.f80125b.setImageBitmap(bitmap);
                k.this.f80125b.setVisibility(0);
                if (k.this.f80134k) {
                    k.this.c();
                }
            }
        });
    }

    public boolean a() {
        return this.f80137n;
    }
}
