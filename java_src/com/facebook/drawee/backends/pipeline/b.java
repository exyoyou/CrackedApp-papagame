package com.facebook.drawee.backends.pipeline;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.facebook.drawee.drawable.k;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f26999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final g4.a f27000b;

    public b(Resources resources, @Nullable g4.a animatedDrawableFactory) {
        this.f26999a = resources;
        this.f27000b = animatedDrawableFactory;
    }

    private static boolean c(com.facebook.imagepipeline.image.d closeableStaticBitmap) {
        return (closeableStaticBitmap.o() == 1 || closeableStaticBitmap.o() == 0) ? false : true;
    }

    private static boolean d(com.facebook.imagepipeline.image.d closeableStaticBitmap) {
        return (closeableStaticBitmap.p() == 0 || closeableStaticBitmap.p() == -1) ? false : true;
    }

    @Override // g4.a
    @Nullable
    public Drawable a(com.facebook.imagepipeline.image.c closeableImage) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("DefaultDrawableFactory#createDrawable");
            }
            if (closeableImage instanceof com.facebook.imagepipeline.image.d) {
                com.facebook.imagepipeline.image.d dVar = (com.facebook.imagepipeline.image.d) closeableImage;
                BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f26999a, dVar.h());
                return (d(dVar) || c(dVar)) ? new k(bitmapDrawable, dVar.p(), dVar.o()) : bitmapDrawable;
            }
            g4.a aVar = this.f27000b;
            if (aVar == null || !aVar.b(closeableImage)) {
            }
            return this.f27000b.a(closeableImage);
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    @Override // g4.a
    public boolean b(com.facebook.imagepipeline.image.c image) {
        return true;
    }
}
