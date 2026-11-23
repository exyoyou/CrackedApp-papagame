package com.facebook.fresco.animation.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import com.facebook.common.references.CloseableReference;
import com.facebook.fresco.animation.backend.c;
import com.facebook.fresco.animation.backend.d;
import com.facebook.imagepipeline.bitmaps.f;
import com.facebook.infer.annotation.Nullsafe;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.Nullable;
import u3.b;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class BitmapAnimationBackend implements com.facebook.fresco.animation.backend.a, c.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f27398o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f27399p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f27400q = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f27401r = 2;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f27402s = 3;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Class<?> f27403t = BitmapAnimationBackend.class;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f27404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final u3.a f27405d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f27406e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b f27407f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private final com.facebook.fresco.animation.bitmap.preparation.a f27408g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private final com.facebook.fresco.animation.bitmap.preparation.b f27409h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private Rect f27411j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f27412k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f27413l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private a f27415n;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Bitmap.Config f27414m = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Paint f27410i = new Paint(6);

    @Retention(RetentionPolicy.SOURCE)
    public @interface FrameType {
    }

    public interface a {
        void a(BitmapAnimationBackend backend, int frameNumber, int frameType);

        void b(BitmapAnimationBackend backend, int frameNumber);

        void c(BitmapAnimationBackend backend, int frameNumber);
    }

    public BitmapAnimationBackend(f platformBitmapFactory, u3.a bitmapFrameCache, d animationInformation, b bitmapFrameRenderer, @Nullable com.facebook.fresco.animation.bitmap.preparation.a bitmapFramePreparationStrategy, @Nullable com.facebook.fresco.animation.bitmap.preparation.b bitmapFramePreparer) {
        this.f27404c = platformBitmapFactory;
        this.f27405d = bitmapFrameCache;
        this.f27406e = animationInformation;
        this.f27407f = bitmapFrameRenderer;
        this.f27408g = bitmapFramePreparationStrategy;
        this.f27409h = bitmapFramePreparer;
        q();
    }

    private boolean l(int frameNumber, @Nullable CloseableReference<Bitmap> bitmapReference, Canvas canvas, int frameType) {
        if (!CloseableReference.p(bitmapReference)) {
            return false;
        }
        if (this.f27411j == null) {
            canvas.drawBitmap(bitmapReference.j(), 0.0f, 0.0f, this.f27410i);
        } else {
            canvas.drawBitmap(bitmapReference.j(), (Rect) null, this.f27411j, this.f27410i);
        }
        if (frameType != 3) {
            this.f27405d.b(frameNumber, bitmapReference, frameType);
        }
        a aVar = this.f27415n;
        if (aVar == null) {
            return true;
        }
        aVar.a(this, frameNumber, frameType);
        return true;
    }

    private boolean m(Canvas canvas, int frameNumber, int frameType) {
        CloseableReference<Bitmap> closeableReferenceF;
        boolean zL;
        boolean z10 = false;
        int i10 = 1;
        try {
            if (frameType == 0) {
                closeableReferenceF = this.f27405d.f(frameNumber);
                zL = l(frameNumber, closeableReferenceF, canvas, 0);
            } else if (frameType == 1) {
                closeableReferenceF = this.f27405d.h(frameNumber, this.f27412k, this.f27413l);
                if (n(frameNumber, closeableReferenceF) && l(frameNumber, closeableReferenceF, canvas, 1)) {
                    z10 = true;
                }
                zL = z10;
                i10 = 2;
            } else if (frameType == 2) {
                closeableReferenceF = this.f27404c.e(this.f27412k, this.f27413l, this.f27414m);
                if (n(frameNumber, closeableReferenceF) && l(frameNumber, closeableReferenceF, canvas, 2)) {
                    z10 = true;
                }
                zL = z10;
                i10 = 3;
            } else {
                if (frameType != 3) {
                    CloseableReference.h(null);
                    return false;
                }
                closeableReferenceF = this.f27405d.c(frameNumber);
                zL = l(frameNumber, closeableReferenceF, canvas, 3);
                i10 = -1;
            }
            CloseableReference.h(closeableReferenceF);
            return (zL || i10 == -1) ? zL : m(canvas, frameNumber, i10);
        } catch (RuntimeException e10) {
            i3.a.l0(f27403t, "Failed to create frame bitmap", e10);
            return false;
        } finally {
            CloseableReference.h(null);
        }
    }

    private boolean n(int frameNumber, @Nullable CloseableReference<Bitmap> targetBitmap) {
        if (!CloseableReference.p(targetBitmap)) {
            return false;
        }
        boolean zA = this.f27407f.a(frameNumber, targetBitmap.j());
        if (!zA) {
            CloseableReference.h(targetBitmap);
        }
        return zA;
    }

    private void q() {
        int iD = this.f27407f.d();
        this.f27412k = iD;
        if (iD == -1) {
            Rect rect = this.f27411j;
            this.f27412k = rect == null ? -1 : rect.width();
        }
        int iE = this.f27407f.e();
        this.f27413l = iE;
        if (iE == -1) {
            Rect rect2 = this.f27411j;
            this.f27413l = rect2 != null ? rect2.height() : -1;
        }
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int a() {
        return this.f27405d.a();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int b() {
        return this.f27406e.b();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int c() {
        return this.f27406e.c();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void clear() {
        this.f27405d.clear();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int d() {
        return this.f27412k;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int e() {
        return this.f27413l;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void f(@Nullable Rect bounds) {
        this.f27411j = bounds;
        this.f27407f.f(bounds);
        q();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void g(@Nullable ColorFilter colorFilter) {
        this.f27410i.setColorFilter(colorFilter);
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int h(int frameNumber) {
        return this.f27406e.h(frameNumber);
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void i(@IntRange(from = 0, to = 255) int alpha) {
        this.f27410i.setAlpha(alpha);
    }

    @Override // com.facebook.fresco.animation.backend.a
    public boolean j(Drawable parent, Canvas canvas, int frameNumber) {
        com.facebook.fresco.animation.bitmap.preparation.b bVar;
        a aVar;
        a aVar2 = this.f27415n;
        if (aVar2 != null) {
            aVar2.c(this, frameNumber);
        }
        boolean zM = m(canvas, frameNumber, 0);
        if (!zM && (aVar = this.f27415n) != null) {
            aVar.b(this, frameNumber);
        }
        com.facebook.fresco.animation.bitmap.preparation.a aVar3 = this.f27408g;
        if (aVar3 != null && (bVar = this.f27409h) != null) {
            aVar3.a(bVar, this.f27405d, this, frameNumber);
        }
        return zM;
    }

    @Override // com.facebook.fresco.animation.backend.c.b
    public void k() {
        clear();
    }

    public void o(Bitmap.Config bitmapConfig) {
        this.f27414m = bitmapConfig;
    }

    public void p(@Nullable a frameListener) {
        this.f27415n = frameListener;
    }
}
