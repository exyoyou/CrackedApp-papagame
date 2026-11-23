package com.facebook.imagepipeline.request;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.core.l;
import com.facebook.infer.annotation.Nullsafe;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Bitmap.Config f28751a = Bitmap.Config.ARGB_8888;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f28752b;

    private static void d(Bitmap destBitmap, Bitmap sourceBitmap) {
        if (!l.a() || destBitmap.getConfig() != sourceBitmap.getConfig()) {
            new Canvas(destBitmap).drawBitmap(sourceBitmap, 0.0f, 0.0f, (Paint) null);
            return;
        }
        try {
            if (f28752b == null) {
                f28752b = Class.forName("com.facebook.imagepipeline.nativecode.Bitmaps").getDeclaredMethod("copyBitmap", Bitmap.class, Bitmap.class);
            }
            f28752b.invoke(null, destBitmap, sourceBitmap);
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException("Wrong Native code setup, reflection failed.", e10);
        } catch (IllegalAccessException e11) {
            throw new RuntimeException("Wrong Native code setup, reflection failed.", e11);
        } catch (NoSuchMethodException e12) {
            throw new RuntimeException("Wrong Native code setup, reflection failed.", e12);
        } catch (InvocationTargetException e13) {
            throw new RuntimeException("Wrong Native code setup, reflection failed.", e13);
        }
    }

    @Override // com.facebook.imagepipeline.request.d
    @Nullable
    public com.facebook.cache.common.c a() {
        return null;
    }

    @Override // com.facebook.imagepipeline.request.d
    public CloseableReference<Bitmap> b(Bitmap sourceBitmap, com.facebook.imagepipeline.bitmaps.f bitmapFactory) {
        Bitmap.Config config = sourceBitmap.getConfig();
        int width = sourceBitmap.getWidth();
        int height = sourceBitmap.getHeight();
        if (config == null) {
            config = f28751a;
        }
        CloseableReference<Bitmap> closeableReferenceZ = bitmapFactory.z(width, height, config);
        try {
            f(closeableReferenceZ.j(), sourceBitmap);
            return closeableReferenceZ.clone();
        } finally {
            CloseableReference.h(closeableReferenceZ);
        }
    }

    public void e(Bitmap bitmap) {
    }

    public void f(Bitmap destBitmap, Bitmap sourceBitmap) {
        d(destBitmap, sourceBitmap);
        e(destBitmap);
    }

    @Override // com.facebook.imagepipeline.request.d
    public String getName() {
        return "Unknown postprocessor";
    }
}
