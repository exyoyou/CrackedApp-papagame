package com.byazt.kk;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.os.Build;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SWITCH_SUBID, 20})
public abstract class c extends ValueAnimator {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set<ValueAnimator.AnimatorUpdateListener> f16289c = new CopyOnWriteArraySet();
    public final Set<Animator.AnimatorListener> tt = new CopyOnWriteArraySet();
    public final Set<Animator.AnimatorPauseListener> ve = new CopyOnWriteArraySet();

    @Override // android.animation.Animator
    public void addListener(Animator.AnimatorListener animatorListener) {
        this.tt.add(animatorListener);
    }

    @Override // android.animation.Animator
    public void addPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.ve.add(animatorPauseListener);
    }

    @Override // android.animation.ValueAnimator
    public void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f16289c.add(animatorUpdateListener);
    }

    public void c(boolean z10) {
        for (Animator.AnimatorListener animatorListener : this.tt) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, z10);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    public void n() {
        Iterator<Animator.AnimatorPauseListener> it2 = this.ve.iterator();
        while (it2.hasNext()) {
            it2.next().onAnimationResume(this);
        }
    }

    @Override // android.animation.Animator
    public void removeAllListeners() {
        this.tt.clear();
    }

    @Override // android.animation.ValueAnimator
    public void removeAllUpdateListeners() {
        this.f16289c.clear();
    }

    @Override // android.animation.Animator
    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.tt.remove(animatorListener);
    }

    @Override // android.animation.Animator
    public void removePauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.ve.remove(animatorPauseListener);
    }

    @Override // android.animation.ValueAnimator
    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f16289c.remove(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setStartDelay(long j10) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    public void tt(boolean z10) {
        for (Animator.AnimatorListener animatorListener : this.tt) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationEnd(this, z10);
            } else {
                animatorListener.onAnimationEnd(this);
            }
        }
    }

    public void uj() {
        Iterator<Animator.AnimatorPauseListener> it2 = this.ve.iterator();
        while (it2.hasNext()) {
            it2.next().onAnimationPause(this);
        }
    }

    public void ve() {
        Iterator<ValueAnimator.AnimatorUpdateListener> it2 = this.f16289c.iterator();
        while (it2.hasNext()) {
            it2.next().onAnimationUpdate(this);
        }
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ValueAnimator setDuration(long j10) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }

    public void c() {
        Iterator<Animator.AnimatorListener> it2 = this.tt.iterator();
        while (it2.hasNext()) {
            it2.next().onAnimationRepeat(this);
        }
    }

    public void tt() {
        Iterator<Animator.AnimatorListener> it2 = this.tt.iterator();
        while (it2.hasNext()) {
            it2.next().onAnimationCancel(this);
        }
    }
}
