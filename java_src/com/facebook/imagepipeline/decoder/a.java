package com.facebook.imagepipeline.decoder;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.h;
import com.facebook.imagepipeline.image.j;
import com.facebook.imagepipeline.platform.g;
import com.facebook.infer.annotation.Nullsafe;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final b f27996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final b f27997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f27998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f27999d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final Map<com.facebook.imageformat.c, b> f28000e;

    /* JADX INFO: renamed from: com.facebook.imagepipeline.decoder.a$a, reason: collision with other inner class name */
    class C0574a implements b {
        C0574a() {
        }

        @Override // com.facebook.imagepipeline.decoder.b
        public com.facebook.imagepipeline.image.c a(com.facebook.imagepipeline.image.e encodedImage, int length, j qualityInfo, com.facebook.imagepipeline.common.c options) {
            com.facebook.imageformat.c cVarO = encodedImage.o();
            if (cVarO == com.facebook.imageformat.b.f27532a) {
                return a.this.d(encodedImage, length, qualityInfo, options);
            }
            if (cVarO == com.facebook.imageformat.b.f27534c) {
                return a.this.c(encodedImage, length, qualityInfo, options);
            }
            if (cVarO == com.facebook.imageformat.b.f27541j) {
                return a.this.b(encodedImage, length, qualityInfo, options);
            }
            if (cVarO != com.facebook.imageformat.c.f27545c) {
                return a.this.e(encodedImage, options);
            }
            throw new DecodeException("unknown image format", encodedImage);
        }
    }

    public a(@Nullable final b animatedGifDecoder, @Nullable final b animatedWebPDecoder, final g platformDecoder) {
        this(animatedGifDecoder, animatedWebPDecoder, platformDecoder, null);
    }

    @Override // com.facebook.imagepipeline.decoder.b
    public com.facebook.imagepipeline.image.c a(final com.facebook.imagepipeline.image.e encodedImage, final int length, final j qualityInfo, final com.facebook.imagepipeline.common.c options) {
        InputStream inputStreamP;
        b bVar;
        b bVar2 = options.f27781i;
        if (bVar2 != null) {
            return bVar2.a(encodedImage, length, qualityInfo, options);
        }
        com.facebook.imageformat.c cVarO = encodedImage.o();
        if ((cVarO == null || cVarO == com.facebook.imageformat.c.f27545c) && (inputStreamP = encodedImage.p()) != null) {
            cVarO = com.facebook.imageformat.d.d(inputStreamP);
            encodedImage.g0(cVarO);
        }
        Map<com.facebook.imageformat.c, b> map = this.f28000e;
        return (map == null || (bVar = map.get(cVarO)) == null) ? this.f27999d.a(encodedImage, length, qualityInfo, options) : bVar.a(encodedImage, length, qualityInfo, options);
    }

    public com.facebook.imagepipeline.image.c b(final com.facebook.imagepipeline.image.e encodedImage, final int length, final j qualityInfo, final com.facebook.imagepipeline.common.c options) {
        b bVar = this.f27997b;
        if (bVar != null) {
            return bVar.a(encodedImage, length, qualityInfo, options);
        }
        throw new DecodeException("Animated WebP support not set up!", encodedImage);
    }

    public com.facebook.imagepipeline.image.c c(final com.facebook.imagepipeline.image.e encodedImage, final int length, final j qualityInfo, final com.facebook.imagepipeline.common.c options) {
        b bVar;
        if (encodedImage.I() == -1 || encodedImage.l() == -1) {
            throw new DecodeException("image width or height is incorrect", encodedImage);
        }
        return (options.f27778f || (bVar = this.f27996a) == null) ? e(encodedImage, options) : bVar.a(encodedImage, length, qualityInfo, options);
    }

    public com.facebook.imagepipeline.image.d d(final com.facebook.imagepipeline.image.e encodedImage, int length, j qualityInfo, com.facebook.imagepipeline.common.c options) {
        CloseableReference<Bitmap> closeableReferenceB = this.f27998c.b(encodedImage, options.f27779g, null, length, options.f27783k);
        try {
            boolean zA = m4.c.a(options.f27782j, closeableReferenceB);
            com.facebook.imagepipeline.image.d dVar = new com.facebook.imagepipeline.image.d(closeableReferenceB, qualityInfo, encodedImage.s(), encodedImage.j());
            dVar.f("is_rounded", Boolean.valueOf(zA && (options.f27782j instanceof m4.b)));
            return dVar;
        } finally {
            closeableReferenceB.close();
        }
    }

    public com.facebook.imagepipeline.image.d e(final com.facebook.imagepipeline.image.e encodedImage, com.facebook.imagepipeline.common.c options) {
        CloseableReference<Bitmap> closeableReferenceC = this.f27998c.c(encodedImage, options.f27779g, null, options.f27783k);
        try {
            boolean zA = m4.c.a(options.f27782j, closeableReferenceC);
            com.facebook.imagepipeline.image.d dVar = new com.facebook.imagepipeline.image.d(closeableReferenceC, h.f28051d, encodedImage.s(), encodedImage.j());
            dVar.f("is_rounded", Boolean.valueOf(zA && (options.f27782j instanceof m4.b)));
            return dVar;
        } finally {
            closeableReferenceC.close();
        }
    }

    public a(@Nullable final b animatedGifDecoder, @Nullable final b animatedWebPDecoder, final g platformDecoder, @Nullable Map<com.facebook.imageformat.c, b> customDecoders) {
        this.f27999d = new C0574a();
        this.f27996a = animatedGifDecoder;
        this.f27997b = animatedWebPDecoder;
        this.f27998c = platformDecoder;
        this.f28000e = customDecoders;
    }
}
