package com.facebook.imagepipeline.animated.impl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.base.f;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class AnimatedImageCompositor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.base.a f27588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f27589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f27590c;

    private enum FrameNeededResult {
        REQUIRED,
        NOT_REQUIRED,
        SKIP,
        ABORT
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f27591a;

        static {
            int[] iArr = new int[FrameNeededResult.values().length];
            f27591a = iArr;
            try {
                iArr[FrameNeededResult.REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27591a[FrameNeededResult.NOT_REQUIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27591a[FrameNeededResult.ABORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f27591a[FrameNeededResult.SKIP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface b {
        void a(int frameNumber, Bitmap bitmap);

        @Nullable
        CloseableReference<Bitmap> b(int frameNumber);
    }

    public AnimatedImageCompositor(com.facebook.imagepipeline.animated.base.a animatedDrawableBackend, b callback) {
        this.f27588a = animatedDrawableBackend;
        this.f27589b = callback;
        Paint paint = new Paint();
        this.f27590c = paint;
        paint.setColor(0);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
    }

    private void a(Canvas canvas, AnimatedDrawableFrameInfo frameInfo) {
        int i10 = frameInfo.f27553b;
        int i11 = frameInfo.f27554c;
        canvas.drawRect(i10, i11, i10 + frameInfo.f27555d, i11 + frameInfo.f27556e, this.f27590c);
    }

    private FrameNeededResult b(int index) {
        AnimatedDrawableFrameInfo animatedDrawableFrameInfoE = this.f27588a.e(index);
        AnimatedDrawableFrameInfo.DisposalMethod disposalMethod = animatedDrawableFrameInfoE.f27558g;
        if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT) {
            return FrameNeededResult.REQUIRED;
        }
        if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
            return c(animatedDrawableFrameInfoE) ? FrameNeededResult.NOT_REQUIRED : FrameNeededResult.REQUIRED;
        }
        return disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS ? FrameNeededResult.SKIP : FrameNeededResult.ABORT;
    }

    private boolean c(AnimatedDrawableFrameInfo frameInfo) {
        return frameInfo.f27553b == 0 && frameInfo.f27554c == 0 && frameInfo.f27555d == this.f27588a.i() && frameInfo.f27556e == this.f27588a.q();
    }

    private boolean d(int index) {
        if (index == 0) {
            return true;
        }
        AnimatedDrawableFrameInfo animatedDrawableFrameInfoE = this.f27588a.e(index);
        AnimatedDrawableFrameInfo animatedDrawableFrameInfoE2 = this.f27588a.e(index - 1);
        if (animatedDrawableFrameInfoE.f27557f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND && c(animatedDrawableFrameInfoE)) {
            return true;
        }
        return animatedDrawableFrameInfoE2.f27558g == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND && c(animatedDrawableFrameInfoE2);
    }

    private void e(Bitmap bitmap) {
        m4.a aVarC;
        f fVarK = this.f27588a.k();
        if (fVarK == null || (aVarC = fVarK.c()) == null) {
            return;
        }
        aVarC.b(bitmap);
    }

    private int f(int previousFrameNumber, Canvas canvas) {
        while (previousFrameNumber >= 0) {
            int i10 = a.f27591a[b(previousFrameNumber).ordinal()];
            if (i10 == 1) {
                AnimatedDrawableFrameInfo animatedDrawableFrameInfoE = this.f27588a.e(previousFrameNumber);
                CloseableReference<Bitmap> closeableReferenceB = this.f27589b.b(previousFrameNumber);
                if (closeableReferenceB != null) {
                    try {
                        canvas.drawBitmap(closeableReferenceB.j(), 0.0f, 0.0f, (Paint) null);
                        if (animatedDrawableFrameInfoE.f27558g == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
                            a(canvas, animatedDrawableFrameInfoE);
                        }
                        return previousFrameNumber + 1;
                    } finally {
                        closeableReferenceB.close();
                    }
                }
                if (d(previousFrameNumber)) {
                    return previousFrameNumber;
                }
            } else {
                if (i10 == 2) {
                    return previousFrameNumber + 1;
                }
                if (i10 == 3) {
                    return previousFrameNumber;
                }
            }
            previousFrameNumber--;
        }
        return 0;
    }

    public void g(int frameNumber, Bitmap bitmap) {
        Canvas canvas = new Canvas(bitmap);
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        for (int iF = !d(frameNumber) ? f(frameNumber - 1, canvas) : frameNumber; iF < frameNumber; iF++) {
            AnimatedDrawableFrameInfo animatedDrawableFrameInfoE = this.f27588a.e(iF);
            AnimatedDrawableFrameInfo.DisposalMethod disposalMethod = animatedDrawableFrameInfoE.f27558g;
            if (disposalMethod != AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS) {
                if (animatedDrawableFrameInfoE.f27557f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND) {
                    a(canvas, animatedDrawableFrameInfoE);
                }
                this.f27588a.l(iF, canvas);
                this.f27589b.a(iF, bitmap);
                if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
                    a(canvas, animatedDrawableFrameInfoE);
                }
            }
        }
        AnimatedDrawableFrameInfo animatedDrawableFrameInfoE2 = this.f27588a.e(frameNumber);
        if (animatedDrawableFrameInfoE2.f27557f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND) {
            a(canvas, animatedDrawableFrameInfoE2);
        }
        this.f27588a.l(frameNumber, canvas);
        e(bitmap);
    }
}
