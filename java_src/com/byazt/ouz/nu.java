package com.byazt.ouz;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 137})
public class nu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f18467c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public float f18468da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f18469i;
    public float sl;
    public float tt;
    public float ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f18473x;
    public float uj = 0.0f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f18470n = 0.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f18466a = 0.0f;
    public float sp = 0.0f;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f18471t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f18472u = false;
    public boolean yp = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f18474z = false;

    public nu(View view) {
        this.f18467c = view;
    }

    public boolean c(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.uj = motionEvent.getX();
            this.f18470n = motionEvent.getY();
            return false;
        }
        if (action != 2) {
            return false;
        }
        this.f18466a = motionEvent.getX();
        this.sp = motionEvent.getY();
        if (Math.abs(this.f18466a - this.uj) < 5.0f || Math.abs(this.sp - this.f18470n) < 5.0f) {
            this.f18474z = false;
            return false;
        }
        this.f18474z = true;
        return true;
    }

    public boolean tt(MotionEvent motionEvent) {
        this.tt = ((ViewGroup) this.f18467c.getParent()).getWidth();
        this.ve = ((ViewGroup) this.f18467c.getParent()).getHeight();
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2) {
                this.f18472u = false;
                this.yp = false;
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                float f10 = x10 - this.uj;
                float f11 = y10 - this.f18470n;
                this.f18473x = this.f18467c.getLeft() + f10;
                this.f18469i = this.f18467c.getTop() + f11;
                this.f18468da = this.f18467c.getRight() + f10;
                this.sl = this.f18467c.getBottom() + f11;
                if (this.f18473x < 0.0f) {
                    this.yp = true;
                    this.f18473x = 0.0f;
                    this.f18468da = this.f18467c.getWidth() + 0.0f;
                }
                float f12 = this.f18468da;
                float f13 = this.tt;
                if (f12 > f13) {
                    this.f18472u = true;
                    this.f18468da = f13;
                    this.f18473x = f13 - this.f18467c.getWidth();
                }
                if (this.f18469i < 0.0f) {
                    this.f18469i = 0.0f;
                    this.sl = 0.0f + this.f18467c.getHeight();
                }
                float f14 = this.sl;
                float f15 = this.ve;
                if (f14 > f15) {
                    this.sl = f15;
                    this.f18469i = f15 - this.f18467c.getHeight();
                }
                this.f18467c.offsetLeftAndRight((int) f10);
                this.f18467c.offsetTopAndBottom((int) f11);
                if (this.yp) {
                    View view = this.f18467c;
                    view.offsetLeftAndRight(-view.getLeft());
                }
                if (this.f18472u) {
                    View view2 = this.f18467c;
                    view2.offsetLeftAndRight((int) (this.tt - view2.getRight()));
                }
            }
        } else {
            if (!this.f18474z) {
                return false;
            }
            if (((int) motionEvent.getRawX()) > this.tt / 2.0f) {
                this.f18471t = false;
                this.f18467c.animate().setInterpolator(new DecelerateInterpolator()).setDuration(300L).x(this.tt - this.f18467c.getWidth()).start();
                View view3 = this.f18467c;
                view3.offsetLeftAndRight((int) (this.tt - view3.getRight()));
            } else {
                this.f18471t = true;
                this.f18467c.animate().setInterpolator(new DecelerateInterpolator()).setDuration(300L).x(0.0f).start();
                View view4 = this.f18467c;
                view4.offsetLeftAndRight(-view4.getLeft());
            }
            this.f18467c.invalidate();
        }
        return true;
    }
}
