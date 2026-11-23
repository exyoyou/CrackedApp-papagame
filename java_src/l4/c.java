package l4;

import com.facebook.imagepipeline.common.RotationOptions;
import java.io.IOException;
import java.io.OutputStream;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface c {
    b a(com.facebook.imagepipeline.image.e encodedImage, OutputStream outputStream, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e resizeOptions, @Nullable com.facebook.imageformat.c outputFormat, @Nullable Integer quality) throws IOException;

    boolean b(com.facebook.imageformat.c imageFormat);

    boolean c(com.facebook.imagepipeline.image.e encodedImage, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e resizeOptions);

    String getIdentifier();
}
