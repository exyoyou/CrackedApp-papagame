package com.facebook.imagepipeline.nativecode;

import com.facebook.infer.annotation.Nullsafe;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public final class e {
    private e() {
    }

    public static l4.d a(final int maxBitmapSize, final boolean useDownSamplingRatio, final boolean ensureTranscoderLibraryLoaded) {
        try {
            Class cls = Boolean.TYPE;
            return (l4.d) NativeJpegTranscoderFactory.class.getConstructor(Integer.TYPE, cls, cls).newInstance(Integer.valueOf(maxBitmapSize), Boolean.valueOf(useDownSamplingRatio), Boolean.valueOf(ensureTranscoderLibraryLoaded));
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | SecurityException | InvocationTargetException e10) {
            throw new RuntimeException("Dependency ':native-imagetranscoder' is needed to use the default native image transcoder.", e10);
        }
    }
}
