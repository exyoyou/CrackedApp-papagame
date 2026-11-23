package com.facebook.imagepipeline.animated.factory;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import com.facebook.common.internal.i;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor;
import com.facebook.imagepipeline.bitmaps.f;
import com.facebook.imagepipeline.image.h;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class e implements d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    static c f27581c = g("com.facebook.animated.gif.GifImage");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    static c f27582d = g("com.facebook.animated.webp.WebPImage");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.impl.b f27583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f27584b;

    class a implements AnimatedImageCompositor.b {
        a() {
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        public void a(int frameNumber, Bitmap bitmap) {
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        @Nullable
        public CloseableReference<Bitmap> b(int frameNumber) {
            return null;
        }
    }

    class b implements AnimatedImageCompositor.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f27586a;

        b(final List val$bitmaps) {
            this.f27586a = val$bitmaps;
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        public void a(int frameNumber, Bitmap bitmap) {
        }

        @Override // com.facebook.imagepipeline.animated.impl.AnimatedImageCompositor.b
        @Nullable
        public CloseableReference<Bitmap> b(int frameNumber) {
            return CloseableReference.f((CloseableReference) this.f27586a.get(frameNumber));
        }
    }

    public e(com.facebook.imagepipeline.animated.impl.b animatedDrawableBackendProvider, f bitmapFactory) {
        this.f27583a = animatedDrawableBackendProvider;
        this.f27584b = bitmapFactory;
    }

    @SuppressLint({"NewApi"})
    private CloseableReference<Bitmap> c(int width, int height, Bitmap.Config bitmapConfig) {
        CloseableReference<Bitmap> closeableReferenceZ = this.f27584b.z(width, height, bitmapConfig);
        closeableReferenceZ.j().eraseColor(0);
        closeableReferenceZ.j().setHasAlpha(true);
        return closeableReferenceZ;
    }

    private CloseableReference<Bitmap> d(com.facebook.imagepipeline.animated.base.d image, Bitmap.Config bitmapConfig, int frameForPreview) {
        CloseableReference<Bitmap> closeableReferenceC = c(image.getWidth(), image.getHeight(), bitmapConfig);
        new AnimatedImageCompositor(this.f27583a.a(com.facebook.imagepipeline.animated.base.f.b(image), null), new a()).g(frameForPreview, closeableReferenceC.j());
        return closeableReferenceC;
    }

    private List<CloseableReference<Bitmap>> e(com.facebook.imagepipeline.animated.base.d image, Bitmap.Config bitmapConfig) {
        com.facebook.imagepipeline.animated.base.a aVarA = this.f27583a.a(com.facebook.imagepipeline.animated.base.f.b(image), null);
        ArrayList arrayList = new ArrayList(aVarA.c());
        AnimatedImageCompositor animatedImageCompositor = new AnimatedImageCompositor(aVarA, new b(arrayList));
        for (int i10 = 0; i10 < aVarA.c(); i10++) {
            CloseableReference<Bitmap> closeableReferenceC = c(aVarA.getWidth(), aVarA.getHeight(), bitmapConfig);
            animatedImageCompositor.g(i10, closeableReferenceC.j());
            arrayList.add(closeableReferenceC);
        }
        return arrayList;
    }

    private com.facebook.imagepipeline.image.c f(com.facebook.imagepipeline.common.c options, com.facebook.imagepipeline.animated.base.d image, Bitmap.Config bitmapConfig) throws Throwable {
        List<CloseableReference<Bitmap>> listE;
        CloseableReference<Bitmap> closeableReferenceD = null;
        try {
            int iC = options.f27776d ? image.c() - 1 : 0;
            if (options.f27778f) {
                com.facebook.imagepipeline.image.d dVar = new com.facebook.imagepipeline.image.d(d(image, bitmapConfig, iC), h.f28051d, 0);
                CloseableReference.h(null);
                CloseableReference.i(null);
                return dVar;
            }
            if (options.f27777e) {
                listE = e(image, bitmapConfig);
                try {
                    closeableReferenceD = CloseableReference.f(listE.get(iC));
                } catch (Throwable th) {
                    th = th;
                    CloseableReference.h(closeableReferenceD);
                    CloseableReference.i(listE);
                    throw th;
                }
            } else {
                listE = null;
            }
            if (options.f27775c && closeableReferenceD == null) {
                closeableReferenceD = d(image, bitmapConfig, iC);
            }
            com.facebook.imagepipeline.image.a aVar = new com.facebook.imagepipeline.image.a(com.facebook.imagepipeline.animated.base.f.i(image).j(closeableReferenceD).i(iC).h(listE).g(options.f27782j).a());
            CloseableReference.h(closeableReferenceD);
            CloseableReference.i(listE);
            return aVar;
        } catch (Throwable th2) {
            th = th2;
            listE = null;
        }
    }

    @Nullable
    private static c g(final String className) {
        try {
            return (c) Class.forName(className).newInstance();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.facebook.imagepipeline.animated.factory.d
    public com.facebook.imagepipeline.image.c a(final com.facebook.imagepipeline.image.e encodedImage, final com.facebook.imagepipeline.common.c options, final Bitmap.Config bitmapConfig) {
        if (f27581c == null) {
            throw new UnsupportedOperationException("To encode animated gif please add the dependency to the animated-gif module");
        }
        CloseableReference<PooledByteBuffer> closeableReferenceF = encodedImage.f();
        i.i(closeableReferenceF);
        try {
            PooledByteBuffer pooledByteBufferJ = closeableReferenceF.j();
            return f(options, pooledByteBufferJ.C() != null ? f27581c.d(pooledByteBufferJ.C(), options) : f27581c.g(pooledByteBufferJ.A(), pooledByteBufferJ.size(), options), bitmapConfig);
        } finally {
            CloseableReference.h(closeableReferenceF);
        }
    }

    @Override // com.facebook.imagepipeline.animated.factory.d
    public com.facebook.imagepipeline.image.c b(final com.facebook.imagepipeline.image.e encodedImage, final com.facebook.imagepipeline.common.c options, final Bitmap.Config bitmapConfig) {
        if (f27582d == null) {
            throw new UnsupportedOperationException("To encode animated webp please add the dependency to the animated-webp module");
        }
        CloseableReference<PooledByteBuffer> closeableReferenceF = encodedImage.f();
        i.i(closeableReferenceF);
        try {
            PooledByteBuffer pooledByteBufferJ = closeableReferenceF.j();
            return f(options, pooledByteBufferJ.C() != null ? f27582d.d(pooledByteBufferJ.C(), options) : f27582d.g(pooledByteBufferJ.A(), pooledByteBufferJ.size(), options), bitmapConfig);
        } finally {
            CloseableReference.h(closeableReferenceF);
        }
    }
}
