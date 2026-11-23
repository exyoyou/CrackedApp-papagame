package com.join.android.app.common.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes5.dex */
public class e extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f34477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ImageView f34478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Animation f34479d;

    public e(Context context) {
        super(context, R.style.HKDialogLoading);
        this.f34477b = context;
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(1);
        requestWindowFeature(-1);
        super.onCreate(savedInstanceState);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.rotate_repeat);
        this.f34479d = animationLoadAnimation;
        animationLoadAnimation.setInterpolator(new LinearInterpolator());
        ImageView imageView = new ImageView(this.f34477b);
        this.f34478c = imageView;
        imageView.setImageResource(R.drawable.loading_ios);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        addContentView(this.f34478c, layoutParams);
        setCanceledOnTouchOutside(false);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return false;
        }
        hide();
        return true;
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            this.f34478c.startAnimation(this.f34479d);
        } catch (Exception unused) {
        }
    }
}
