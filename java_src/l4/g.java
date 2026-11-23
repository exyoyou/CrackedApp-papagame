package l4;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.infer.annotation.Nullsafe;
import java.io.OutputStream;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class g implements c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f93931c = "SimpleImageTranscoder";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f93932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f93933b;

    public g(final boolean resizingEnabled, final int maxBitmapSize) {
        this.f93932a = resizingEnabled;
        this.f93933b = maxBitmapSize;
    }

    private static Bitmap.CompressFormat d(@Nullable final com.facebook.imageformat.c format) {
        if (format == null) {
            return Bitmap.CompressFormat.JPEG;
        }
        if (format == com.facebook.imageformat.b.f27532a) {
            return Bitmap.CompressFormat.JPEG;
        }
        if (format == com.facebook.imageformat.b.f27533b) {
            return Bitmap.CompressFormat.PNG;
        }
        return com.facebook.imageformat.b.b(format) ? Bitmap.CompressFormat.WEBP : Bitmap.CompressFormat.JPEG;
    }

    private int e(final com.facebook.imagepipeline.image.e encodedImage, final RotationOptions rotationOptions, @Nullable final com.facebook.imagepipeline.common.e resizeOptions) {
        if (this.f93932a) {
            return a.b(rotationOptions, resizeOptions, encodedImage, this.f93933b);
        }
        return 1;
    }

    @Override // l4.c
    public b a(com.facebook.imagepipeline.image.e encodedImage, OutputStream outputStream, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e resizeOptions, @Nullable com.facebook.imageformat.c outputFormat, @Nullable Integer quality) throws Throwable {
        Bitmap bitmapCreateBitmap;
        Throwable th;
        OutOfMemoryError e10;
        Integer num = quality == null ? 85 : quality;
        RotationOptions rotationOptionsA = rotationOptions == null ? RotationOptions.a() : rotationOptions;
        int iE = e(encodedImage, rotationOptionsA, resizeOptions);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = iE;
        try {
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(encodedImage.p(), null, options);
            if (bitmapDecodeStream == null) {
                i3.a.u(f93931c, "Couldn't decode the EncodedImage InputStream ! ");
                return new b(2);
            }
            Matrix matrixG = e.g(encodedImage, rotationOptionsA);
            if (matrixG != null) {
                try {
                    bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeStream, 0, 0, bitmapDecodeStream.getWidth(), bitmapDecodeStream.getHeight(), matrixG, false);
                } catch (OutOfMemoryError e11) {
                    e10 = e11;
                    bitmapCreateBitmap = bitmapDecodeStream;
                    i3.a.v(f93931c, "Out-Of-Memory during transcode", e10);
                    b bVar = new b(2);
                    bitmapCreateBitmap.recycle();
                    bitmapDecodeStream.recycle();
                    return bVar;
                } catch (Throwable th2) {
                    th = th2;
                    bitmapCreateBitmap = bitmapDecodeStream;
                    bitmapCreateBitmap.recycle();
                    bitmapDecodeStream.recycle();
                    throw th;
                }
            } else {
                bitmapCreateBitmap = bitmapDecodeStream;
            }
            try {
                try {
                    bitmapCreateBitmap.compress(d(outputFormat), num.intValue(), outputStream);
                    b bVar2 = new b(iE > 1 ? 0 : 1);
                    bitmapCreateBitmap.recycle();
                    bitmapDecodeStream.recycle();
                    return bVar2;
                } catch (OutOfMemoryError e12) {
                    e10 = e12;
                    i3.a.v(f93931c, "Out-Of-Memory during transcode", e10);
                    b bVar3 = new b(2);
                    bitmapCreateBitmap.recycle();
                    bitmapDecodeStream.recycle();
                    return bVar3;
                }
            } catch (Throwable th3) {
                th = th3;
                bitmapCreateBitmap.recycle();
                bitmapDecodeStream.recycle();
                throw th;
            }
        } catch (OutOfMemoryError e13) {
            i3.a.v(f93931c, "Out-Of-Memory during transcode", e13);
            return new b(2);
        }
    }

    @Override // l4.c
    public boolean b(com.facebook.imageformat.c imageFormat) {
        return imageFormat == com.facebook.imageformat.b.f27542k || imageFormat == com.facebook.imageformat.b.f27532a;
    }

    @Override // l4.c
    public boolean c(com.facebook.imagepipeline.image.e encodedImage, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e resizeOptions) {
        if (rotationOptions == null) {
            rotationOptions = RotationOptions.a();
        }
        return this.f93932a && a.b(rotationOptions, resizeOptions, encodedImage, this.f93933b) > 1;
    }

    @Override // l4.c
    public String getIdentifier() {
        return f93931c;
    }
}
