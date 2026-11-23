package l4;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.i;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f93915a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final float f93916b = 0.33333334f;

    private a() {
    }

    @VisibleForTesting
    public static float a(final RotationOptions rotationOptions, @Nullable final com.facebook.imagepipeline.common.e resizeOptions, final com.facebook.imagepipeline.image.e encodedImage) {
        i.d(Boolean.valueOf(com.facebook.imagepipeline.image.e.M(encodedImage)));
        if (resizeOptions == null || resizeOptions.f27799b <= 0 || resizeOptions.f27798a <= 0 || encodedImage.I() == 0 || encodedImage.l() == 0) {
            return 1.0f;
        }
        int iD = d(rotationOptions, encodedImage);
        boolean z10 = iD == 90 || iD == 270;
        int iL = z10 ? encodedImage.l() : encodedImage.I();
        int I = z10 ? encodedImage.I() : encodedImage.l();
        float f10 = resizeOptions.f27798a / iL;
        float f11 = resizeOptions.f27799b / I;
        float fMax = Math.max(f10, f11);
        i3.a.i0("DownsampleUtil", "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f", Integer.valueOf(resizeOptions.f27798a), Integer.valueOf(resizeOptions.f27799b), Integer.valueOf(iL), Integer.valueOf(I), Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(fMax));
        return fMax;
    }

    public static int b(final RotationOptions rotationOptions, @Nullable final com.facebook.imagepipeline.common.e resizeOptions, final com.facebook.imagepipeline.image.e encodedImage, final int maxBitmapSize) {
        if (!com.facebook.imagepipeline.image.e.M(encodedImage)) {
            return 1;
        }
        float fA = a(rotationOptions, resizeOptions, encodedImage);
        int iF = encodedImage.o() == com.facebook.imageformat.b.f27532a ? f(fA) : e(fA);
        int iMax = Math.max(encodedImage.l(), encodedImage.I());
        float f10 = resizeOptions != null ? resizeOptions.f27800c : maxBitmapSize;
        while (iMax / iF > f10) {
            iF = encodedImage.o() == com.facebook.imageformat.b.f27532a ? iF * 2 : iF + 1;
        }
        return iF;
    }

    public static int c(final com.facebook.imagepipeline.image.e encodedImage, final int pixelSize, final int maxBitmapSizeInBytes) {
        int iV = encodedImage.v();
        while ((((encodedImage.I() * encodedImage.l()) * pixelSize) / iV) / iV > maxBitmapSizeInBytes) {
            iV *= 2;
        }
        return iV;
    }

    private static int d(final RotationOptions rotationOptions, final com.facebook.imagepipeline.image.e encodedImage) {
        if (!rotationOptions.h()) {
            return 0;
        }
        int iS = encodedImage.s();
        i.d(Boolean.valueOf(iS == 0 || iS == 90 || iS == 180 || iS == 270));
        return iS;
    }

    @VisibleForTesting
    public static int e(final float ratio) {
        if (ratio > 0.6666667f) {
            return 1;
        }
        int i10 = 2;
        while (true) {
            double d10 = i10;
            if ((1.0d / d10) + ((1.0d / (Math.pow(d10, 2.0d) - d10)) * 0.3333333432674408d) <= ratio) {
                return i10 - 1;
            }
            i10++;
        }
    }

    @VisibleForTesting
    public static int f(final float ratio) {
        if (ratio > 0.6666667f) {
            return 1;
        }
        int i10 = 2;
        while (true) {
            int i11 = i10 * 2;
            double d10 = 1.0d / ((double) i11);
            if (d10 + (0.3333333432674408d * d10) <= ratio) {
                return i10;
            }
            i10 = i11;
        }
    }

    @VisibleForTesting
    public static int g(final int sampleSize) {
        int i10 = 1;
        while (i10 < sampleSize) {
            i10 *= 2;
        }
        return i10;
    }
}
