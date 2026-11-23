package com.windmill.sdk.banner.animation;

import android.content.Context;
import android.widget.ViewAnimator;

/* JADX INFO: loaded from: classes8.dex */
public class Animator extends ViewAnimator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f86550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f86551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f86552c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f86553d;

    public Animator(Context context, h type, g direction, long duration) {
        super(context);
        this.f86550a = null;
        this.f86551b = type;
        this.f86552c = direction;
        this.f86553d = duration;
        this.f86550a = a.a(type, duration, direction);
        setAnimation();
    }

    @Override // android.view.View
    public void clearAnimation() {
        setInAnimation(null);
        setOutAnimation(null);
    }

    public g getTransitionDirection() {
        return this.f86552c;
    }

    public long getTransitionDuration() {
        return this.f86553d;
    }

    public h getTransitionType() {
        return this.f86551b;
    }

    public void setAnimation() {
        f fVar = this.f86550a;
        if (fVar != null) {
            setInAnimation(fVar.a());
            setOutAnimation(this.f86550a.b());
        }
    }

    public void setTransitionDirection(g direction) {
        if (this.f86552c != direction) {
            this.f86552c = direction;
            this.f86550a = a.a(this.f86551b, this.f86553d, direction);
            setAnimation();
        }
    }

    public void setTransitionDuration(long duration) {
        if (this.f86553d != duration) {
            this.f86553d = duration;
            this.f86550a = a.a(this.f86551b, duration, this.f86552c);
            setAnimation();
        }
    }

    public void setTransitionType(h type) {
        if (this.f86551b != type) {
            this.f86551b = type;
            this.f86550a = a.a(type, this.f86553d, this.f86552c);
            setAnimation();
        }
    }
}
