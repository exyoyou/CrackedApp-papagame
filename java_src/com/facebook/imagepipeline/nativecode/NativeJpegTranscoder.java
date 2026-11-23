package com.facebook.imagepipeline.nativecode;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.i;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@Nullsafe(Nullsafe.Mode.STRICT)
public class NativeJpegTranscoder implements l4.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28214d = "NativeJpegTranscoder";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f28215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f28217c;

    public NativeJpegTranscoder(final boolean resizingEnabled, final int maxBitmapSize, final boolean useDownsamplingRatio, final boolean ensureTranscoderLibraryLoaded) {
        this.f28215a = resizingEnabled;
        this.f28216b = maxBitmapSize;
        this.f28217c = useDownsamplingRatio;
        if (ensureTranscoderLibraryLoaded) {
            f.a();
        }
    }

    @VisibleForTesting
    public static void d(final InputStream inputStream, final OutputStream outputStream, final int rotationAngle, final int scaleNumerator, final int quality) throws IOException {
        f.a();
        i.d(Boolean.valueOf(scaleNumerator >= 1));
        i.d(Boolean.valueOf(scaleNumerator <= 16));
        i.d(Boolean.valueOf(quality >= 0));
        i.d(Boolean.valueOf(quality <= 100));
        i.d(Boolean.valueOf(l4.e.j(rotationAngle)));
        i.e((scaleNumerator == 8 && rotationAngle == 0) ? false : true, "no transformation requested");
        nativeTranscodeJpeg((InputStream) i.i(inputStream), (OutputStream) i.i(outputStream), rotationAngle, scaleNumerator, quality);
    }

    @VisibleForTesting
    public static void e(final InputStream inputStream, final OutputStream outputStream, final int exifOrientation, final int scaleNumerator, final int quality) throws IOException {
        f.a();
        i.d(Boolean.valueOf(scaleNumerator >= 1));
        i.d(Boolean.valueOf(scaleNumerator <= 16));
        i.d(Boolean.valueOf(quality >= 0));
        i.d(Boolean.valueOf(quality <= 100));
        i.d(Boolean.valueOf(l4.e.i(exifOrientation)));
        i.e((scaleNumerator == 8 && exifOrientation == 1) ? false : true, "no transformation requested");
        nativeTranscodeJpegWithExifOrientation((InputStream) i.i(inputStream), (OutputStream) i.i(outputStream), exifOrientation, scaleNumerator, quality);
    }

    @DoNotStrip
    private static native void nativeTranscodeJpeg(InputStream inputStream, OutputStream outputStream, int rotationAngle, int scaleNominator, int quality) throws IOException;

    @DoNotStrip
    private static native void nativeTranscodeJpegWithExifOrientation(InputStream inputStream, OutputStream outputStream, int exifOrientation, int scaleNominator, int quality) throws IOException;

    @Override // l4.c
    public l4.b a(final com.facebook.imagepipeline.image.e encodedImage, final OutputStream outputStream, @Nullable RotationOptions rotationOptions, @Nullable final com.facebook.imagepipeline.common.e resizeOptions, @Nullable com.facebook.imageformat.c outputFormat, @Nullable Integer quality) throws IOException {
        if (quality == null) {
            quality = 85;
        }
        if (rotationOptions == null) {
            rotationOptions = RotationOptions.a();
        }
        int iB = l4.a.b(rotationOptions, resizeOptions, encodedImage, this.f28216b);
        try {
            int iF = l4.e.f(rotationOptions, resizeOptions, encodedImage, this.f28215a);
            int iA = l4.e.a(iB);
            if (this.f28217c) {
                iF = iA;
            }
            InputStream inputStreamP = encodedImage.p();
            if (l4.e.f93924g.contains(Integer.valueOf(encodedImage.j()))) {
                e((InputStream) i.j(inputStreamP, "Cannot transcode from null input stream!"), outputStream, l4.e.d(rotationOptions, encodedImage), iF, quality.intValue());
            } else {
                d((InputStream) i.j(inputStreamP, "Cannot transcode from null input stream!"), outputStream, l4.e.e(rotationOptions, encodedImage), iF, quality.intValue());
            }
            com.facebook.common.internal.c.b(inputStreamP);
            return new l4.b(iB != 1 ? 0 : 1);
        } catch (Throwable th) {
            com.facebook.common.internal.c.b(null);
            throw th;
        }
    }

    @Override // l4.c
    public boolean b(com.facebook.imageformat.c imageFormat) {
        return imageFormat == com.facebook.imageformat.b.f27532a;
    }

    @Override // l4.c
    public boolean c(com.facebook.imagepipeline.image.e encodedImage, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e resizeOptions) {
        if (rotationOptions == null) {
            rotationOptions = RotationOptions.a();
        }
        return l4.e.f(rotationOptions, resizeOptions, encodedImage, this.f28215a) < 8;
    }

    @Override // l4.c
    public String getIdentifier() {
        return f28214d;
    }
}
