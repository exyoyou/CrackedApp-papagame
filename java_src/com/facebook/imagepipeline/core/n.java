package com.facebook.imagepipeline.core;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import androidx.annotation.RequiresApi;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.cache.t;
import com.facebook.imagepipeline.producers.LocalExifThumbnailProducer;
import com.facebook.imagepipeline.producers.a0;
import com.facebook.imagepipeline.producers.a1;
import com.facebook.imagepipeline.producers.b0;
import com.facebook.imagepipeline.producers.b1;
import com.facebook.imagepipeline.producers.c1;
import com.facebook.imagepipeline.producers.e0;
import com.facebook.imagepipeline.producers.e1;
import com.facebook.imagepipeline.producers.f0;
import com.facebook.imagepipeline.producers.f1;
import com.facebook.imagepipeline.producers.g1;
import com.facebook.imagepipeline.producers.h0;
import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.i1;
import com.facebook.imagepipeline.producers.k0;
import com.facebook.imagepipeline.producers.l0;
import com.facebook.imagepipeline.producers.m0;
import com.facebook.imagepipeline.producers.n0;
import com.facebook.imagepipeline.producers.o0;
import com.facebook.imagepipeline.producers.p;
import com.facebook.imagepipeline.producers.q;
import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.r;
import com.facebook.imagepipeline.producers.s;
import com.facebook.imagepipeline.producers.v0;
import com.facebook.imagepipeline.producers.x0;
import com.facebook.imagepipeline.producers.z;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class n {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f27937z = 5;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ContentResolver f27938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Resources f27939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected AssetManager f27940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final com.facebook.common.memory.a f27941d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final com.facebook.imagepipeline.decoder.b f27942e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final com.facebook.imagepipeline.decoder.d f27943f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected final boolean f27944g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected final boolean f27945h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected final boolean f27946i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected final f f27947j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected final com.facebook.common.memory.g f27948k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected final com.facebook.imagepipeline.cache.e f27949l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected final com.facebook.imagepipeline.cache.e f27950m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected final t<com.facebook.cache.common.c, PooledByteBuffer> f27951n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> f27952o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected final com.facebook.imagepipeline.cache.f f27953p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected final com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> f27954q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected final com.facebook.imagepipeline.cache.d<com.facebook.cache.common.c> f27955r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected final com.facebook.imagepipeline.bitmaps.f f27956s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected final int f27957t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected final int f27958u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected boolean f27959v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected final a f27960w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected final int f27961x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected final boolean f27962y;

    public n(Context context, com.facebook.common.memory.a byteArrayPool, com.facebook.imagepipeline.decoder.b imageDecoder, com.facebook.imagepipeline.decoder.d progressiveJpegConfig, boolean downsampleEnabled, boolean resizeAndRotateEnabledForNetwork, boolean decodeCancellationEnabled, f executorSupplier, com.facebook.common.memory.g pooledByteBufferFactory, t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> bitmapMemoryCache, t<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, com.facebook.imagepipeline.cache.e defaultBufferedDiskCache, com.facebook.imagepipeline.cache.e smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, com.facebook.imagepipeline.bitmaps.f platformBitmapFactory, int bitmapPrepareToDrawMinSizeBytes, int bitmapPrepareToDrawMaxSizeBytes, boolean bitmapPrepareToDrawForPrefetch, int maxBitmapSize, a closeableReferenceFactory, boolean keepCancelledFetchAsLowPriority, int trackedKeysSize) {
        this.f27938a = context.getApplicationContext().getContentResolver();
        this.f27939b = context.getApplicationContext().getResources();
        this.f27940c = context.getApplicationContext().getAssets();
        this.f27941d = byteArrayPool;
        this.f27942e = imageDecoder;
        this.f27943f = progressiveJpegConfig;
        this.f27944g = downsampleEnabled;
        this.f27945h = resizeAndRotateEnabledForNetwork;
        this.f27946i = decodeCancellationEnabled;
        this.f27947j = executorSupplier;
        this.f27948k = pooledByteBufferFactory;
        this.f27952o = bitmapMemoryCache;
        this.f27951n = encodedMemoryCache;
        this.f27949l = defaultBufferedDiskCache;
        this.f27950m = smallImageBufferedDiskCache;
        this.f27953p = cacheKeyFactory;
        this.f27956s = platformBitmapFactory;
        this.f27954q = new com.facebook.imagepipeline.cache.d<>(trackedKeysSize);
        this.f27955r = new com.facebook.imagepipeline.cache.d<>(trackedKeysSize);
        this.f27957t = bitmapPrepareToDrawMinSizeBytes;
        this.f27958u = bitmapPrepareToDrawMaxSizeBytes;
        this.f27959v = bitmapPrepareToDrawForPrefetch;
        this.f27961x = maxBitmapSize;
        this.f27960w = closeableReferenceFactory;
        this.f27962y = keepCancelledFetchAsLowPriority;
    }

    public static com.facebook.imagepipeline.producers.a a(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new com.facebook.imagepipeline.producers.a(inputProducer);
    }

    public static com.facebook.imagepipeline.producers.k h(q0<com.facebook.imagepipeline.image.e> inputProducer1, q0<com.facebook.imagepipeline.image.e> inputProducer2) {
        return new com.facebook.imagepipeline.producers.k(inputProducer1, inputProducer2);
    }

    public n0 A(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new n0(this.f27952o, this.f27953p, inputProducer);
    }

    public o0 B(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new o0(inputProducer, this.f27956s, this.f27947j.b());
    }

    public v0 C() {
        return new v0(this.f27947j.c(), this.f27948k, this.f27938a);
    }

    public x0 D(q0<com.facebook.imagepipeline.image.e> inputProducer, final boolean isResizingEnabled, l4.d imageTranscoderFactory) {
        return new x0(this.f27947j.b(), this.f27948k, inputProducer, isResizingEnabled, imageTranscoderFactory);
    }

    public <T> a1<T> E(q0<T> inputProducer) {
        return new a1<>(inputProducer);
    }

    public <T> e1<T> F(q0<T> inputProducer) {
        return new e1<>(5, this.f27947j.a(), inputProducer);
    }

    public f1 G(g1<com.facebook.imagepipeline.image.e>[] thumbnailProducers) {
        return new f1(thumbnailProducers);
    }

    public i1 H(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new i1(this.f27947j.b(), this.f27948k, inputProducer);
    }

    public <T> q0<T> b(q0<T> inputProducer, c1 inputThreadHandoffProducerQueue) {
        return new b1(inputProducer, inputThreadHandoffProducerQueue);
    }

    public com.facebook.imagepipeline.producers.f c(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new com.facebook.imagepipeline.producers.f(this.f27952o, this.f27953p, inputProducer);
    }

    public com.facebook.imagepipeline.producers.g d(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new com.facebook.imagepipeline.producers.g(this.f27953p, inputProducer);
    }

    public com.facebook.imagepipeline.producers.h e(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new com.facebook.imagepipeline.producers.h(this.f27952o, this.f27953p, inputProducer);
    }

    public com.facebook.imagepipeline.producers.i f(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new com.facebook.imagepipeline.producers.i(inputProducer, this.f27957t, this.f27958u, this.f27959v);
    }

    public com.facebook.imagepipeline.producers.j g(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new com.facebook.imagepipeline.producers.j(this.f27951n, this.f27949l, this.f27950m, this.f27953p, this.f27954q, this.f27955r, inputProducer);
    }

    public com.facebook.imagepipeline.producers.l i() {
        return new com.facebook.imagepipeline.producers.l(this.f27948k);
    }

    public com.facebook.imagepipeline.producers.m j(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new com.facebook.imagepipeline.producers.m(this.f27941d, this.f27947j.g(), this.f27942e, this.f27943f, this.f27944g, this.f27945h, this.f27946i, inputProducer, this.f27961x, this.f27960w, null, com.facebook.common.internal.m.f26885b);
    }

    public com.facebook.imagepipeline.producers.n k(q0<CloseableReference<com.facebook.imagepipeline.image.c>> inputProducer) {
        return new com.facebook.imagepipeline.producers.n(inputProducer, this.f27947j.f());
    }

    public p l(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new p(this.f27949l, this.f27950m, this.f27953p, inputProducer);
    }

    public q m(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new q(this.f27949l, this.f27950m, this.f27953p, inputProducer);
    }

    public r n(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new r(this.f27953p, this.f27962y, inputProducer);
    }

    public s o(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new s(this.f27951n, this.f27953p, inputProducer);
    }

    public com.facebook.imagepipeline.producers.t p(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new com.facebook.imagepipeline.producers.t(this.f27949l, this.f27950m, this.f27953p, this.f27954q, this.f27955r, inputProducer);
    }

    public z q() {
        return new z(this.f27947j.c(), this.f27948k, this.f27940c);
    }

    public a0 r() {
        return new a0(this.f27947j.c(), this.f27948k, this.f27938a);
    }

    public b0 s() {
        return new b0(this.f27947j.c(), this.f27948k, this.f27938a);
    }

    public LocalExifThumbnailProducer t() {
        return new LocalExifThumbnailProducer(this.f27947j.d(), this.f27948k, this.f27938a);
    }

    public e0 u() {
        return new e0(this.f27947j.c(), this.f27948k);
    }

    public f0 v() {
        return new f0(this.f27947j.c(), this.f27948k, this.f27939b);
    }

    @RequiresApi(29)
    public h0 w() {
        return new h0(this.f27947j.b(), this.f27938a);
    }

    public i0 x() {
        return new i0(this.f27947j.c(), this.f27938a);
    }

    public q0<com.facebook.imagepipeline.image.e> y(l0 networkFetcher) {
        return new k0(this.f27948k, this.f27941d, networkFetcher);
    }

    public m0 z(q0<com.facebook.imagepipeline.image.e> inputProducer) {
        return new m0(this.f27949l, this.f27953p, this.f27948k, this.f27941d, inputProducer);
    }
}
