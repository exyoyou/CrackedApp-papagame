package com.byazt.sz;

import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 67})
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f20053a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Paint f20054c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f20055n;
    public String sp;
    public c tt;
    public View uj;
    public AnimatorSet ve = new AnimatorSet();

    public u(View view, c cVar) {
        this.uj = view;
        this.tt = cVar;
        Paint paint = new Paint();
        this.f20054c = paint;
        paint.setAntiAlias(true);
    }

    public void tt() {
        AnimatorSet animatorSet = this.ve;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:50:0x012d  */
    public void c() {
        ArrayList arrayList = new ArrayList();
        List<c.C0435c> listVe = this.tt.ve();
        if (listVe == null || listVe.size() <= 0) {
            return;
        }
        for (c.C0435c c0435c : listVe) {
            if (c0435c != null) {
                ObjectAnimator objectAnimator = new ObjectAnimator();
                objectAnimator.setDuration(c0435c.c());
                if (TextUtils.equals(c0435c.getType(), "translateX")) {
                    objectAnimator.setPropertyName("translationX");
                } else if (TextUtils.equals(c0435c.getType(), "translateY")) {
                    objectAnimator.setPropertyName("translationY");
                } else {
                    objectAnimator.setPropertyName(c0435c.getType());
                }
                objectAnimator.setStartDelay(c0435c.uj());
                objectAnimator.setTarget(this.uj);
                if (TextUtils.equals(c0435c.getType(), "backgroundColor")) {
                    objectAnimator.setIntValues((int) c0435c.n(), (int) c0435c.a());
                } else {
                    objectAnimator.setFloatValues(c0435c.n(), c0435c.a());
                }
                int iTt = (int) this.tt.tt();
                if (iTt != 0) {
                    objectAnimator.setRepeatCount(iTt);
                } else {
                    objectAnimator.setRepeatCount((int) c0435c.tt());
                }
                if (TextUtils.equals(c0435c.getType(), "backgroundColor")) {
                    objectAnimator.setEvaluator(new ArgbEvaluator());
                }
                String strA = this.tt.a();
                if (TextUtils.isEmpty(strA)) {
                    strA = c0435c.ve();
                }
                if (TextUtils.equals(strA, "reverse")) {
                    objectAnimator.setRepeatMode(2);
                } else {
                    objectAnimator.setRepeatMode(1);
                }
                if (c0435c.sp() != null && c0435c.sp().length > 0) {
                    objectAnimator.setFloatValues(c0435c.sp());
                }
                if (TextUtils.equals(c0435c.getType(), "rotationX")) {
                    this.uj.post(new Runnable() { // from class: com.byazt.sz.u.1
                        @Override // java.lang.Runnable
                        public void run() {
                            u.this.uj.setPivotX(u.this.uj.getWidth() / 2.0f);
                            u.this.uj.setPivotY(u.this.uj.getHeight());
                        }
                    });
                }
                if (TextUtils.equals(c0435c.getType(), "ripple")) {
                    this.sp = c0435c.i();
                }
                String strX = c0435c.x();
                strX.hashCode();
                switch (strX) {
                    case "accelerate":
                        objectAnimator.setInterpolator(new AccelerateInterpolator());
                        break;
                    case "decelerate":
                        objectAnimator.setInterpolator(new DecelerateInterpolator());
                        break;
                    case "linear":
                    case "standard":
                        objectAnimator.setInterpolator(new LinearInterpolator());
                        break;
                    case "accelerateDecelerate":
                        objectAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
                        break;
                }
                arrayList.add(objectAnimator);
            }
        }
        if (this.tt.uj() != 0) {
            this.ve.setDuration(this.tt.uj());
        }
        this.ve.setStartDelay(this.tt.n());
        if (TextUtils.equals(this.tt.c(), "sequentially")) {
            this.ve.playSequentially(arrayList);
        } else {
            this.ve.playTogether(arrayList);
        }
        this.ve.start();
    }

    public void c(Canvas canvas, n nVar) {
        try {
            if (nVar.getRipple() == 0.0f || TextUtils.isEmpty(this.sp)) {
                return;
            }
            this.f20054c.setColor(com.byazt.cd.c.c(this.sp));
            this.f20054c.setAlpha(90);
            ((ViewGroup) this.uj.getParent()).setClipChildren(true);
            int i10 = this.f20055n;
            int i11 = this.f20053a;
            canvas.drawCircle(i10, i11, Math.min(i10, i11) * 2 * nVar.getRipple(), this.f20054c);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void c(int i10, int i11) {
        this.f20055n = i10 / 2;
        this.f20053a = i11 / 2;
    }
}
