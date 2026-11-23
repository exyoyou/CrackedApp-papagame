package com.google.android.material.animation;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f29383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f29384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private TimeInterpolator f29385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f29386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f29387e;

    public j(long j10, long j11) {
        this.f29385c = null;
        this.f29386d = 0;
        this.f29387e = 1;
        this.f29383a = j10;
        this.f29384b = j11;
    }

    @NonNull
    static j b(@NonNull ValueAnimator valueAnimator) {
        j jVar = new j(valueAnimator.getStartDelay(), valueAnimator.getDuration(), f(valueAnimator));
        jVar.f29386d = valueAnimator.getRepeatCount();
        jVar.f29387e = valueAnimator.getRepeatMode();
        return jVar;
    }

    private static TimeInterpolator f(@NonNull ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return b.f29368b;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return b.f29369c;
        }
        return interpolator instanceof DecelerateInterpolator ? b.f29370d : interpolator;
    }

    public void a(@NonNull Animator animator) {
        animator.setStartDelay(c());
        animator.setDuration(d());
        animator.setInterpolator(e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(g());
            valueAnimator.setRepeatMode(h());
        }
    }

    public long c() {
        return this.f29383a;
    }

    public long d() {
        return this.f29384b;
    }

    @Nullable
    public TimeInterpolator e() {
        TimeInterpolator timeInterpolator = this.f29385c;
        return timeInterpolator != null ? timeInterpolator : b.f29368b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (c() == jVar.c() && d() == jVar.d() && g() == jVar.g() && h() == jVar.h()) {
            return e().getClass().equals(jVar.e().getClass());
        }
        return false;
    }

    public int g() {
        return this.f29386d;
    }

    public int h() {
        return this.f29387e;
    }

    public int hashCode() {
        return (((((((((int) (c() ^ (c() >>> 32))) * 31) + ((int) (d() ^ (d() >>> 32)))) * 31) + e().getClass().hashCode()) * 31) + g()) * 31) + h();
    }

    @NonNull
    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + c() + " duration: " + d() + " interpolator: " + e().getClass() + " repeatCount: " + g() + " repeatMode: " + h() + "}\n";
    }

    public j(long j10, long j11, @NonNull TimeInterpolator timeInterpolator) {
        this.f29386d = 0;
        this.f29387e = 1;
        this.f29383a = j10;
        this.f29384b = j11;
        this.f29385c = timeInterpolator;
    }
}
