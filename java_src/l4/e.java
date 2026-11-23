package l4;

import android.graphics.Matrix;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableList;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f93918a = 360;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f93919b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f93920c = 100;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f93921d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f93922e = 16;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f93923f = 8;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ImmutableList<Integer> f93924g = ImmutableList.of((Object[]) new Integer[]{2, 7, 4, 5});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    public static final int f93925h = 85;

    @VisibleForTesting
    public static int a(int downsampleRatio) {
        return Math.max(1, 8 / downsampleRatio);
    }

    @VisibleForTesting
    public static float b(com.facebook.imagepipeline.common.e resizeOptions, int width, int height) {
        if (resizeOptions == null) {
            return 1.0f;
        }
        float f10 = width;
        float f11 = height;
        float fMax = Math.max(resizeOptions.f27798a / f10, resizeOptions.f27799b / f11);
        float f12 = f10 * fMax;
        float f13 = resizeOptions.f27800c;
        if (f12 > f13) {
            fMax = f13 / f10;
        }
        return f11 * fMax > f13 ? f13 / f11 : fMax;
    }

    private static int c(com.facebook.imagepipeline.image.e encodedImage) {
        int iS = encodedImage.s();
        if (iS == 90 || iS == 180 || iS == 270) {
            return encodedImage.s();
        }
        return 0;
    }

    public static int d(RotationOptions rotationOptions, com.facebook.imagepipeline.image.e encodedImage) {
        int iJ = encodedImage.j();
        ImmutableList<Integer> immutableList = f93924g;
        int iIndexOf = immutableList.indexOf(Integer.valueOf(iJ));
        if (iIndexOf >= 0) {
            return immutableList.get((iIndexOf + ((!rotationOptions.h() ? rotationOptions.f() : 0) / 90)) % immutableList.size()).intValue();
        }
        throw new IllegalArgumentException("Only accepts inverted exif orientations");
    }

    public static int e(RotationOptions rotationOptions, com.facebook.imagepipeline.image.e encodedImage) {
        if (!rotationOptions.g()) {
            return 0;
        }
        int iC = c(encodedImage);
        return rotationOptions.h() ? iC : (iC + rotationOptions.f()) % 360;
    }

    public static int f(RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e resizeOptions, com.facebook.imagepipeline.image.e encodedImage, boolean resizingEnabled) {
        if (!resizingEnabled || resizeOptions == null) {
            return 8;
        }
        int iE = e(rotationOptions, encodedImage);
        int iD = f93924g.contains(Integer.valueOf(encodedImage.j())) ? d(rotationOptions, encodedImage) : 0;
        boolean z10 = iE == 90 || iE == 270 || iD == 5 || iD == 7;
        int iK = k(b(resizeOptions, z10 ? encodedImage.l() : encodedImage.I(), z10 ? encodedImage.I() : encodedImage.l()), resizeOptions.f27801d);
        if (iK > 8) {
            return 8;
        }
        if (iK < 1) {
            return 1;
        }
        return iK;
    }

    @Nullable
    public static Matrix g(final com.facebook.imagepipeline.image.e encodedImage, final RotationOptions rotationOptions) {
        if (f93924g.contains(Integer.valueOf(encodedImage.j()))) {
            return h(d(rotationOptions, encodedImage));
        }
        int iE = e(rotationOptions, encodedImage);
        if (iE == 0) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(iE);
        return matrix;
    }

    @Nullable
    private static Matrix h(final int orientation) {
        Matrix matrix = new Matrix();
        if (orientation == 2) {
            matrix.setScale(-1.0f, 1.0f);
        } else if (orientation == 7) {
            matrix.setRotate(-90.0f);
            matrix.postScale(-1.0f, 1.0f);
        } else if (orientation == 4) {
            matrix.setRotate(180.0f);
            matrix.postScale(-1.0f, 1.0f);
        } else {
            if (orientation != 5) {
                return null;
            }
            matrix.setRotate(90.0f);
            matrix.postScale(-1.0f, 1.0f);
        }
        return matrix;
    }

    public static boolean i(int exifOrientation) {
        switch (exifOrientation) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public static boolean j(int degrees) {
        return degrees >= 0 && degrees <= 270 && degrees % 90 == 0;
    }

    @VisibleForTesting
    public static int k(float maxRatio, float roundUpFraction) {
        return (int) (roundUpFraction + (maxRatio * 8.0f));
    }
}
