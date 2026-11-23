package com.facebook.fresco.animation.bitmap.preparation;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d implements a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class<?> f27439b = d.class;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f27440c = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f27441a;

    public d() {
        this(3);
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.a
    public void a(b bitmapFramePreparer, u3.a bitmapFrameCache, com.facebook.fresco.animation.backend.a animationBackend, int lastDrawnFrameNumber) {
        for (int i10 = 1; i10 <= this.f27441a; i10++) {
            int iC = (lastDrawnFrameNumber + i10) % animationBackend.c();
            if (i3.a.R(2)) {
                i3.a.W(f27439b, "Preparing frame %d, last drawn: %d", Integer.valueOf(iC), Integer.valueOf(lastDrawnFrameNumber));
            }
            if (!bitmapFramePreparer.a(bitmapFrameCache, animationBackend, iC)) {
                return;
            }
        }
    }

    public d(int framesToPrepare) {
        this.f27441a = framesToPrepare;
    }
}
