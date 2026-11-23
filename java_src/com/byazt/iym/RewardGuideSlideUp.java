package com.byazt.iym;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.aas.pf;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.vfu.a;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_X_VALUE, 1072})
public class RewardGuideSlideUp extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnimatorSet f15586a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImageView f15587c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AnimatorSet f15588n;
    public final AnimatorSet sp;
    public ImageView tt;
    public AnimatorSet uj;
    public ImageView ve;

    public RewardGuideSlideUp(Context context) {
        super(context);
        this.f15588n = new AnimatorSet();
        this.f15586a = new AnimatorSet();
        this.sp = new AnimatorSet();
        c(context);
    }

    public AnimatorSet getSlideUpAnimatorSet() {
        return this.uj;
    }

    public void tt() {
        try {
            AnimatorSet animatorSet = this.uj;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.f15586a;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet animatorSet3 = this.f15588n;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.sp;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Throwable th) {
            m.ve(th.getMessage());
        }
    }

    private void c(Context context) {
        if (context == null) {
            context = gt.getContext();
        }
        addView(a.sl(context));
        this.f15587c = (ImageView) findViewById(2114387644);
        this.tt = (ImageView) findViewById(2114387939);
        this.ve = (ImageView) findViewById(2114387639);
    }

    public void c() {
        this.uj = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f15587c, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f15587c, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f15587c, "translationY", 0.0f, pf.ve(getContext(), -110.0f));
        objectAnimatorOfFloat3.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, pf.ve(getContext(), 110.0f));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.iym.RewardGuideSlideUp.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Integer num = (Integer) valueAnimator.getAnimatedValue();
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) RewardGuideSlideUp.this.tt.getLayoutParams();
                layoutParams.height = num.intValue();
                RewardGuideSlideUp.this.tt.setLayoutParams(layoutParams);
            }
        });
        valueAnimatorOfInt.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.tt, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.tt, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.ve, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.ve, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this.ve, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat9 = ObjectAnimator.ofFloat(this.ve, "scaleY", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat10 = ObjectAnimator.ofFloat(this.ve, "translationY", 0.0f, pf.ve(getContext(), -110.0f));
        objectAnimatorOfFloat10.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        this.f15588n.setDuration(50L);
        this.sp.setDuration(BaseCloudFileManager.ACK_TIMEOUT);
        this.f15586a.setDuration(50L);
        this.f15588n.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat7, objectAnimatorOfFloat5);
        this.f15586a.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat6, objectAnimatorOfFloat8, objectAnimatorOfFloat9, objectAnimatorOfFloat4);
        this.sp.playTogether(objectAnimatorOfFloat3, valueAnimatorOfInt, objectAnimatorOfFloat10);
        this.uj.playSequentially(this.f15586a, this.sp, this.f15588n);
    }
}
