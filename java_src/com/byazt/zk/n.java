package com.byazt.zk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.byazt.ga.LottieAnimationView;
import com.byazt.ga.rl;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 46})
public class n extends sp {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public VideoFrame f22827da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f22828i;
    public LottieAnimationView sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.ga.i.c.C0316c f22829t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f22830x;

    public n(com.byazt.ga.x xVar, x xVar2, Context context, com.byazt.ga.i.c.C0316c c0316c) {
        super(xVar, xVar2);
        this.f22830x = -1.0f;
        this.f22828i = -1.0f;
        this.f22829t = c0316c;
        if (((sp) this).sp == null || xVar == null) {
            return;
        }
        LottieAnimationView lottieAnimationViewTt = xVar.tt();
        this.sl = lottieAnimationViewTt;
        if (lottieAnimationViewTt == null) {
            return;
        }
        float fC = com.byazt.kk.da.c();
        this.f22830x = (int) (((sp) this).sp.c() * fC);
        this.f22828i = (int) (((sp) this).sp.tt() * fC);
        rl rlVarC = xVar.c();
        View viewC = rlVarC != null ? rlVarC.c("videoview:", null) : null;
        if (viewC instanceof TextureView) {
            this.f22827da = new VideoFrame(context, (TextureView) viewC, c0316c);
        }
        this.sl.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.zk.n.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                if (n.this.sl == view) {
                    n.this.z();
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
            }
        });
        z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        VideoFrame videoFrame = this.f22827da;
        if (videoFrame != null) {
            ViewParent parent = videoFrame.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f22827da);
            }
            ViewParent parent2 = this.sl.getParent();
            if (parent2 instanceof ViewGroup) {
                this.f22827da.setTranslationX(2.1474836E9f);
                ((ViewGroup) parent2).addView(this.f22827da);
            }
        }
    }

    private static void c(View view, int i10, int i11) {
        view.layout(0, 0, i10, i11);
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // com.byazt.zk.sp, com.byazt.zk.ve
    public void tt(Canvas canvas, Matrix matrix, int i10) {
        if (this.f22830x <= 0.0f || this.f22827da == null) {
            return;
        }
        canvas.save();
        canvas.concat(matrix);
        c(i10);
        float fX = x();
        c(this.f22827da, (int) this.f22830x, (int) this.f22828i);
        this.f22827da.setAlpha(fX);
        this.f22827da.draw(canvas);
        canvas.restore();
    }
}
