package com.facebook.imagepipeline.core;

import android.content.Context;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.cache.t;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class j {
    private final int A;
    private final boolean B;
    private final boolean C;
    private final boolean D;
    private final boolean E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f27855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final m3.b.a f27856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f27857c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final m3.b f27858d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f27859e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f27860f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f27861g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f27862h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f27863i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f27864j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f27865k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f27866l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final d f27867m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private final com.facebook.common.internal.l<Boolean> f27868n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f27869o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f27870p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f27871q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final com.facebook.common.internal.l<Boolean> f27872r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f27873s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final long f27874t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f27875u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f27876v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f27877w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final boolean f27878x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final boolean f27879y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final boolean f27880z;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ImagePipelineConfig.Builder f27881a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private m3.b.a f27883c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        private m3.b f27885e;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        @Nullable
        private d f27894n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        @Nullable
        public com.facebook.common.internal.l<Boolean> f27895o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f27896p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public boolean f27897q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f27898r;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f27900t;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private boolean f27902v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public boolean f27903w;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f27882b = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f27884d = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f27886f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f27887g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f27888h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f27889i = 0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f27890j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f27891k = 2048;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f27892l = false;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private boolean f27893m = false;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public com.facebook.common.internal.l<Boolean> f27899s = com.facebook.common.internal.m.a(Boolean.FALSE);

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public long f27901u = 0;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f27904x = true;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public boolean f27905y = true;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private boolean f27906z = false;
        private boolean A = false;
        private int B = 20;
        private boolean C = false;
        private boolean D = false;
        private boolean E = false;
        public boolean F = false;

        public b(ImagePipelineConfig.Builder configBuilder) {
            this.f27881a = configBuilder;
        }

        public ImagePipelineConfig.Builder A(boolean encodedCacheEnabled) {
            this.f27904x = encodedCacheEnabled;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder B(boolean ensureTranscoderLibraryLoaded) {
            this.f27905y = ensureTranscoderLibraryLoaded;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder C(long MemoryType) {
            this.f27901u = MemoryType;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder D(boolean experimentalThreadHandoffQueueEnabled) {
            this.f27900t = experimentalThreadHandoffQueueEnabled;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder E(boolean gingerbreadDecoderEnabled) {
            this.f27896p = gingerbreadDecoderEnabled;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder F(boolean handOffOnUiThreadOnly) {
            this.D = handOffOnUiThreadOnly;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder G(boolean shouldIgnoreCacheSizeMismatch) {
            this.F = shouldIgnoreCacheSizeMismatch;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder H(boolean isDiskCacheProbingEnabled) {
            this.A = isDiskCacheProbingEnabled;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder I(boolean isEncodedMemoryCacheProbingEnabled) {
            this.f27906z = isEncodedMemoryCacheProbingEnabled;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder J(boolean keepCancelledFetchAsLowPriority) {
            this.f27902v = keepCancelledFetchAsLowPriority;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder K(com.facebook.common.internal.l<Boolean> lazyDataSource) {
            this.f27895o = lazyDataSource;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder L(int maxBitmapSize) {
            this.f27891k = maxBitmapSize;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder M(boolean nativeCodeDisabled) {
            this.f27892l = nativeCodeDisabled;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder N(boolean partialImageCachingEnabled) {
            this.f27893m = partialImageCachingEnabled;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder O(d producerFactoryMethod) {
            this.f27894n = producerFactoryMethod;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder P(boolean downscaleFrameToDrawableDimensions) {
            this.f27897q = downscaleFrameToDrawableDimensions;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder Q(boolean shouldStoreCacheEntrySize) {
            this.E = shouldStoreCacheEntrySize;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder R(com.facebook.common.internal.l<Boolean> suppressBitmapPrefetchingSupplier) {
            this.f27899s = suppressBitmapPrefetchingSupplier;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder S(int trackedKeysSize) {
            this.B = trackedKeysSize;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder T(boolean useDownsamplingRatioForResizing) {
            this.f27886f = useDownsamplingRatioForResizing;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder U(m3.b webpBitmapFactory) {
            this.f27885e = webpBitmapFactory;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder V(m3.b.a webpErrorLogger) {
            this.f27883c = webpErrorLogger;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder W(boolean webpSupportEnabled) {
            this.f27882b = webpSupportEnabled;
            return this.f27881a;
        }

        public j t() {
            return new j(this);
        }

        public boolean u() {
            return this.f27893m;
        }

        public ImagePipelineConfig.Builder v(boolean allowDelay) {
            this.C = allowDelay;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder w(int bitmapCloseableRefType) {
            this.f27898r = bitmapCloseableRefType;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder x(boolean useBitmapPrepareToDraw, int minBitmapSizeBytes, int maxBitmapSizeBytes, boolean preparePrefetch) {
            this.f27887g = useBitmapPrepareToDraw;
            this.f27888h = minBitmapSizeBytes;
            this.f27889i = maxBitmapSizeBytes;
            this.f27890j = preparePrefetch;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder y(boolean decodeCancellationEnabled) {
            this.f27884d = decodeCancellationEnabled;
            return this.f27881a;
        }

        public ImagePipelineConfig.Builder z(boolean downsampleIfLargeBitmap) {
            this.f27903w = downsampleIfLargeBitmap;
            return this.f27881a;
        }
    }

    public static class c implements d {
        @Override // com.facebook.imagepipeline.core.j.d
        public n a(Context context, com.facebook.common.memory.a byteArrayPool, com.facebook.imagepipeline.decoder.b imageDecoder, com.facebook.imagepipeline.decoder.d progressiveJpegConfig, boolean downsampleEnabled, boolean resizeAndRotateEnabledForNetwork, boolean decodeCancellationEnabled, f executorSupplier, com.facebook.common.memory.g pooledByteBufferFactory, com.facebook.common.memory.j pooledByteStreams, t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> bitmapMemoryCache, t<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, com.facebook.imagepipeline.cache.e defaultBufferedDiskCache, com.facebook.imagepipeline.cache.e smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, com.facebook.imagepipeline.bitmaps.f platformBitmapFactory, int bitmapPrepareToDrawMinSizeBytes, int bitmapPrepareToDrawMaxSizeBytes, boolean bitmapPrepareToDrawForPrefetch, int maxBitmapSize, com.facebook.imagepipeline.core.a closeableReferenceFactory, boolean keepCancelledFetchAsLowPriority, int trackedKeysSize) {
            return new n(context, byteArrayPool, imageDecoder, progressiveJpegConfig, downsampleEnabled, resizeAndRotateEnabledForNetwork, decodeCancellationEnabled, executorSupplier, pooledByteBufferFactory, bitmapMemoryCache, encodedMemoryCache, defaultBufferedDiskCache, smallImageBufferedDiskCache, cacheKeyFactory, platformBitmapFactory, bitmapPrepareToDrawMinSizeBytes, bitmapPrepareToDrawMaxSizeBytes, bitmapPrepareToDrawForPrefetch, maxBitmapSize, closeableReferenceFactory, keepCancelledFetchAsLowPriority, trackedKeysSize);
        }
    }

    public interface d {
        n a(Context context, com.facebook.common.memory.a byteArrayPool, com.facebook.imagepipeline.decoder.b imageDecoder, com.facebook.imagepipeline.decoder.d progressiveJpegConfig, boolean downsampleEnabled, boolean resizeAndRotateEnabledForNetwork, boolean decodeCancellationEnabled, f executorSupplier, com.facebook.common.memory.g pooledByteBufferFactory, com.facebook.common.memory.j pooledByteStreams, t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> bitmapMemoryCache, t<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache, com.facebook.imagepipeline.cache.e defaultBufferedDiskCache, com.facebook.imagepipeline.cache.e smallImageBufferedDiskCache, com.facebook.imagepipeline.cache.f cacheKeyFactory, com.facebook.imagepipeline.bitmaps.f platformBitmapFactory, int bitmapPrepareToDrawMinSizeBytes, int bitmapPrepareToDrawMaxSizeBytes, boolean bitmapPrepareToDrawForPrefetch, int maxBitmapSize, com.facebook.imagepipeline.core.a closeableReferenceFactory, boolean keepCancelledFetchAsLowPriority, int trackedKeysSize);
    }

    public static b A(ImagePipelineConfig.Builder configBuilder) {
        return new b(configBuilder);
    }

    public boolean B() {
        return this.f27876v;
    }

    public boolean C() {
        return this.f27870p;
    }

    public boolean D() {
        return this.E;
    }

    public boolean E() {
        return this.f27875u;
    }

    public boolean F() {
        return this.D;
    }

    public boolean a() {
        return this.B;
    }

    public int b() {
        return this.f27871q;
    }

    public boolean c() {
        return this.f27863i;
    }

    public int d() {
        return this.f27862h;
    }

    public int e() {
        return this.f27861g;
    }

    public int f() {
        return this.f27864j;
    }

    public long g() {
        return this.f27874t;
    }

    public d h() {
        return this.f27867m;
    }

    public com.facebook.common.internal.l<Boolean> i() {
        return this.f27872r;
    }

    public int j() {
        return this.A;
    }

    public boolean k() {
        return this.f27860f;
    }

    public boolean l() {
        return this.f27859e;
    }

    @Nullable
    public m3.b m() {
        return this.f27858d;
    }

    @Nullable
    public m3.b.a n() {
        return this.f27856b;
    }

    public boolean o() {
        return this.C;
    }

    public boolean p() {
        return this.f27857c;
    }

    public boolean q() {
        return this.f27880z;
    }

    public boolean r() {
        return this.f27877w;
    }

    public boolean s() {
        return this.f27879y;
    }

    public boolean t() {
        return this.f27878x;
    }

    public boolean u() {
        return this.f27873s;
    }

    public boolean v() {
        return this.f27869o;
    }

    @Nullable
    public com.facebook.common.internal.l<Boolean> w() {
        return this.f27868n;
    }

    public boolean x() {
        return this.f27865k;
    }

    public boolean y() {
        return this.f27866l;
    }

    public boolean z() {
        return this.f27855a;
    }

    private j(b builder) {
        this.f27855a = builder.f27882b;
        this.f27856b = builder.f27883c;
        this.f27857c = builder.f27884d;
        this.f27858d = builder.f27885e;
        this.f27859e = builder.f27886f;
        this.f27860f = builder.f27887g;
        this.f27861g = builder.f27888h;
        this.f27862h = builder.f27889i;
        this.f27863i = builder.f27890j;
        this.f27864j = builder.f27891k;
        this.f27865k = builder.f27892l;
        this.f27866l = builder.f27893m;
        if (builder.f27894n == null) {
            this.f27867m = new c();
        } else {
            this.f27867m = builder.f27894n;
        }
        this.f27868n = builder.f27895o;
        this.f27869o = builder.f27896p;
        this.f27870p = builder.f27897q;
        this.f27871q = builder.f27898r;
        this.f27872r = builder.f27899s;
        this.f27873s = builder.f27900t;
        this.f27874t = builder.f27901u;
        this.f27875u = builder.f27902v;
        this.f27876v = builder.f27903w;
        this.f27877w = builder.f27904x;
        this.f27878x = builder.f27905y;
        this.f27879y = builder.f27906z;
        this.f27880z = builder.A;
        this.A = builder.B;
        this.B = builder.C;
        this.C = builder.D;
        this.D = builder.E;
        this.E = builder.F;
    }
}
