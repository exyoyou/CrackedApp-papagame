package com.facebook.fresco.animation.frame;

import androidx.annotation.VisibleForTesting;
import com.facebook.fresco.animation.backend.d;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a implements b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f27506e = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f27507c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f27508d = -1;

    public a(d animationInformation) {
        this.f27507c = animationInformation;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public long a(int frameNumber) {
        long jH = 0;
        for (int i10 = 0; i10 < frameNumber; i10++) {
            jH += (long) this.f27507c.h(frameNumber);
        }
        return jH;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public long b(long animationTimeMs) {
        long jD = d();
        long jH = 0;
        if (jD == 0) {
            return -1L;
        }
        if (!e() && animationTimeMs / d() >= this.f27507c.b()) {
            return -1L;
        }
        long j10 = animationTimeMs % jD;
        int iC = this.f27507c.c();
        for (int i10 = 0; i10 < iC && jH <= j10; i10++) {
            jH += (long) this.f27507c.h(i10);
        }
        return animationTimeMs + (jH - j10);
    }

    @Override // com.facebook.fresco.animation.frame.b
    public int c(long animationTimeMs, long lastFrameTimeMs) {
        long jD = d();
        if (jD == 0) {
            return f(0L);
        }
        if (e() || animationTimeMs / jD < this.f27507c.b()) {
            return f(animationTimeMs % jD);
        }
        return -1;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public long d() {
        long j10 = this.f27508d;
        if (j10 != -1) {
            return j10;
        }
        this.f27508d = 0L;
        int iC = this.f27507c.c();
        for (int i10 = 0; i10 < iC; i10++) {
            this.f27508d += (long) this.f27507c.h(i10);
        }
        return this.f27508d;
    }

    @Override // com.facebook.fresco.animation.frame.b
    public boolean e() {
        return this.f27507c.b() == 0;
    }

    @VisibleForTesting
    int f(long timeInCurrentLoopMs) {
        int i10 = 0;
        long jH = 0;
        do {
            jH += (long) this.f27507c.h(i10);
            i10++;
        } while (timeInCurrentLoopMs >= jH);
        return i10 - 1;
    }
}
