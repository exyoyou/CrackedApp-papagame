package com.facebook.fresco.animation.drawable;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b implements a.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Class<?> f27472e = b.class;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f27473a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f27474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f27475c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f27476d;

    @Override // com.facebook.fresco.animation.drawable.a.b
    public void a(a animatedDrawable, com.facebook.fresco.animation.frame.b frameScheduler, int frameNumberToDraw, boolean frameDrawn, boolean isAnimationRunning, long animationStartTimeMs, long animationTimeMs, long lastFrameAnimationTimeMs, long actualRenderTimeStartMs, long actualRenderTimeEndMs, long startRenderTimeForNextFrameMs, long scheduledRenderTimeForNextFrameMs) {
        if (animatedDrawable.d() == null) {
            return;
        }
        int iC = animatedDrawable.d().c();
        long j10 = animationTimeMs - lastFrameAnimationTimeMs;
        this.f27476d++;
        int i10 = this.f27473a;
        int i11 = (i10 + 1) % iC;
        if (i11 != frameNumberToDraw) {
            if (i10 == frameNumberToDraw) {
                this.f27475c++;
            } else {
                int i12 = (frameNumberToDraw - i11) % iC;
                if (i12 < 0) {
                    i12 += iC;
                }
                this.f27474b += i12;
            }
        }
        this.f27473a = frameNumberToDraw;
        i3.a.g(f27472e, "draw: frame: %2d, drawn: %b, delay: %3d ms, rendering: %3d ms, prev: %3d ms ago, duplicates: %3d, skipped: %3d, draw calls: %4d, anim time: %6d ms, next start: %6d ms, next scheduled: %6d ms", Integer.valueOf(frameNumberToDraw), Boolean.valueOf(frameDrawn), Long.valueOf((animationTimeMs % frameScheduler.d()) - frameScheduler.a(frameNumberToDraw)), Long.valueOf(actualRenderTimeEndMs - actualRenderTimeStartMs), Long.valueOf(j10), Integer.valueOf(this.f27475c), Integer.valueOf(this.f27474b), Integer.valueOf(this.f27476d), Long.valueOf(animationTimeMs), Long.valueOf(startRenderTimeForNextFrameMs), Long.valueOf(scheduledRenderTimeForNextFrameMs));
    }
}
