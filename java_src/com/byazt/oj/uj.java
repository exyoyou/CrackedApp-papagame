package com.byazt.oj;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.byazt.tm.DynamicBaseWidgetImp;
import com.haima.hmcp.proto.GSSDK;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Z_ROTATION_VALUE, 15})
public abstract class uj implements com.byazt.tm.n {
    public com.byazt.aq.c tt;
    public View ve;
    public Set<ScheduledFuture<?>> uj = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<ObjectAnimator> f17877c = c();

    @com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_AXIS_Z_ROTATION_VALUE, 123})
    public class c implements Runnable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ObjectAnimator f17880c;
        public ScheduledFuture<?> tt;

        public c(ObjectAnimator objectAnimator) {
            this.f17880c = objectAnimator;
        }

        public void c(ScheduledFuture<?> scheduledFuture) {
            this.tt = scheduledFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.byazt.mf.c.c().ve() != null) {
                com.byazt.mf.c.c().ve().tt().post(new Runnable() { // from class: com.byazt.oj.uj.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.f17880c.resume();
                    }
                });
                if (this.tt != null) {
                    uj.this.uj.remove(this.tt);
                }
            }
        }
    }

    public uj(View view, com.byazt.aq.c cVar) {
        this.ve = view;
        this.tt = cVar;
    }

    public abstract List<ObjectAnimator> c();

    @Override // com.byazt.tm.n
    public void tt() {
        List<ObjectAnimator> list = this.f17877c;
        if (list == null) {
            return;
        }
        for (ObjectAnimator objectAnimator : list) {
            objectAnimator.cancel();
            objectAnimator.removeAllUpdateListeners();
        }
        Iterator<ScheduledFuture<?>> it2 = this.uj.iterator();
        while (it2.hasNext()) {
            it2.next().cancel(true);
        }
    }

    public void ve() {
        List<ObjectAnimator> list = this.f17877c;
        if (list == null) {
            return;
        }
        for (final ObjectAnimator objectAnimator : list) {
            objectAnimator.start();
            if (this.tt.nu() > 0.0d) {
                objectAnimator.addListener(new Animator.AnimatorListener() { // from class: com.byazt.oj.uj.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                        objectAnimator.pause();
                        c cVar = uj.this.new c(objectAnimator);
                        ScheduledFuture<?> scheduledFutureC = com.byazt.or.n.c(cVar, (long) (uj.this.tt.nu() * 1000.0d), TimeUnit.MILLISECONDS);
                        cVar.c(scheduledFutureC);
                        uj.this.uj.add(scheduledFutureC);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
            }
        }
    }

    public ObjectAnimator c(final ObjectAnimator objectAnimator) {
        objectAnimator.setStartDelay((long) (this.tt.yp() * 1000.0d));
        if (this.tt.z() > 0) {
            objectAnimator.setRepeatCount(this.tt.z() - 1);
        } else {
            objectAnimator.setRepeatCount(-1);
        }
        if (!"normal".equals(this.tt.m())) {
            if ("alternate".equals(this.tt.m()) || "alternate-reverse".equals(this.tt.m())) {
                objectAnimator.setRepeatMode(2);
            } else {
                objectAnimator.setRepeatMode(1);
            }
        }
        if ("ease-in-out".equals(this.tt.u())) {
            objectAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        } else if ("ease-in".equals(this.tt.m())) {
            objectAnimator.setInterpolator(new AccelerateInterpolator());
        } else if ("ease-out".equals(this.tt.m())) {
            objectAnimator.setInterpolator(new DecelerateInterpolator());
        } else {
            objectAnimator.setInterpolator(new LinearInterpolator());
        }
        objectAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.oj.uj.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (valueAnimator.getCurrentPlayTime() > 0) {
                    uj.this.ve.setVisibility(0);
                    if (uj.this.ve.getParent() instanceof DynamicBaseWidgetImp) {
                        ((View) uj.this.ve.getParent()).setVisibility(0);
                    }
                    objectAnimator.removeAllUpdateListeners();
                }
            }
        });
        return objectAnimator;
    }
}
