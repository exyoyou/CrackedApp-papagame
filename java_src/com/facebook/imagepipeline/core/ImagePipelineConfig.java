package com.facebook.imagepipeline.core;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.VisibleForTesting;
import com.byazt.hv.TTDownloadField;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.cache.p;
import com.facebook.imagepipeline.cache.t;
import com.facebook.imagepipeline.cache.u;
import com.facebook.imagepipeline.cache.x;
import com.facebook.imagepipeline.memory.h0;
import com.facebook.imagepipeline.memory.i0;
import com.facebook.imagepipeline.producers.l0;
import com.facebook.imagepipeline.producers.w;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class ImagePipelineConfig implements i {
    private static DefaultImageRequestConfig sDefaultImageRequestConfig = new DefaultImageRequestConfig();

    @Nullable
    private final t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> mBitmapCache;
    private final Bitmap.Config mBitmapConfig;

    @Nullable
    private final com.facebook.imagepipeline.cache.i.b<com.facebook.cache.common.c> mBitmapMemoryCacheEntryStateObserver;
    private final com.facebook.imagepipeline.cache.a mBitmapMemoryCacheFactory;
    private final com.facebook.common.internal.l<u> mBitmapMemoryCacheParamsSupplier;
    private final t.a mBitmapMemoryCacheTrimStrategy;
    private final com.facebook.imagepipeline.cache.f mCacheKeyFactory;

    @Nullable
    private final e3.a mCallerContextVerifier;
    private final f4.a mCloseableReferenceLeakTracker;
    private final Context mContext;
    private final boolean mDiskCacheEnabled;
    private final boolean mDownsampleEnabled;

    @Nullable
    private final t<com.facebook.cache.common.c, PooledByteBuffer> mEncodedMemoryCache;
    private final com.facebook.common.internal.l<u> mEncodedMemoryCacheParamsSupplier;
    private final f mExecutorSupplier;
    private final g mFileCacheFactory;
    private final int mHttpNetworkTimeout;
    private final p mImageCacheStatsTracker;

    @Nullable
    private final com.facebook.imagepipeline.decoder.b mImageDecoder;

    @Nullable
    private final com.facebook.imagepipeline.decoder.c mImageDecoderConfig;
    private final j mImagePipelineExperiments;

    @Nullable
    private final l4.d mImageTranscoderFactory;

    @Nullable
    private final Integer mImageTranscoderType;
    private final com.facebook.common.internal.l<Boolean> mIsPrefetchEnabledSupplier;
    private final com.facebook.cache.disk.b mMainDiskCacheConfig;
    private final int mMemoryChunkType;
    private final com.facebook.common.memory.c mMemoryTrimmableRegistry;
    private final l0 mNetworkFetcher;

    @Nullable
    private final com.facebook.imagepipeline.bitmaps.f mPlatformBitmapFactory;
    private final i0 mPoolFactory;
    private final com.facebook.imagepipeline.decoder.d mProgressiveJpegConfig;
    private final Set<j4.e> mRequestListener2s;
    private final Set<j4.f> mRequestListeners;
    private final boolean mResizeAndRotateEnabledForNetwork;

    @Nullable
    private final com.facebook.common.executors.g mSerialExecutorServiceForAnimatedImages;
    private final com.facebook.cache.disk.b mSmallImageDiskCacheConfig;

    public static class Builder {

        @Nullable
        private Bitmap.Config mBitmapConfig;

        @Nullable
        private t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> mBitmapMemoryCache;

        @Nullable
        private com.facebook.imagepipeline.cache.i.b<com.facebook.cache.common.c> mBitmapMemoryCacheEntryStateObserver;

        @Nullable
        private com.facebook.imagepipeline.cache.a mBitmapMemoryCacheFactory;

        @Nullable
        private com.facebook.common.internal.l<u> mBitmapMemoryCacheParamsSupplier;

        @Nullable
        private t.a mBitmapMemoryCacheTrimStrategy;

        @Nullable
        private com.facebook.imagepipeline.cache.f mCacheKeyFactory;

        @Nullable
        private e3.a mCallerContextVerifier;
        private f4.a mCloseableReferenceLeakTracker;
        private final Context mContext;
        private boolean mDiskCacheEnabled;
        private boolean mDownsampleEnabled;

        @Nullable
        private t<com.facebook.cache.common.c, PooledByteBuffer> mEncodedMemoryCache;

        @Nullable
        private com.facebook.common.internal.l<u> mEncodedMemoryCacheParamsSupplier;

        @Nullable
        private f mExecutorSupplier;
        private final j.b mExperimentsBuilder;

        @Nullable
        private g mFileCacheFactory;
        private int mHttpConnectionTimeout;

        @Nullable
        private p mImageCacheStatsTracker;

        @Nullable
        private com.facebook.imagepipeline.decoder.b mImageDecoder;

        @Nullable
        private com.facebook.imagepipeline.decoder.c mImageDecoderConfig;

        @Nullable
        private l4.d mImageTranscoderFactory;

        @Nullable
        private Integer mImageTranscoderType;

        @Nullable
        private com.facebook.common.internal.l<Boolean> mIsPrefetchEnabledSupplier;

        @Nullable
        private com.facebook.cache.disk.b mMainDiskCacheConfig;

        @Nullable
        private Integer mMemoryChunkType;

        @Nullable
        private com.facebook.common.memory.c mMemoryTrimmableRegistry;

        @Nullable
        private l0 mNetworkFetcher;

        @Nullable
        private com.facebook.imagepipeline.bitmaps.f mPlatformBitmapFactory;

        @Nullable
        private i0 mPoolFactory;

        @Nullable
        private com.facebook.imagepipeline.decoder.d mProgressiveJpegConfig;

        @Nullable
        private Set<j4.e> mRequestListener2s;

        @Nullable
        private Set<j4.f> mRequestListeners;
        private boolean mResizeAndRotateEnabledForNetwork;

        @Nullable
        private com.facebook.common.executors.g mSerialExecutorServiceForAnimatedImages;

        @Nullable
        private com.facebook.cache.disk.b mSmallImageDiskCacheConfig;

        public ImagePipelineConfig build() {
            return new ImagePipelineConfig(this);
        }

        public j.b experiment() {
            return this.mExperimentsBuilder;
        }

        @Nullable
        public com.facebook.imagepipeline.cache.a getBitmapMemoryCacheFactory() {
            return this.mBitmapMemoryCacheFactory;
        }

        @Nullable
        public Integer getImageTranscoderType() {
            return this.mImageTranscoderType;
        }

        @Nullable
        public Integer getMemoryChunkType() {
            return this.mMemoryChunkType;
        }

        public boolean isDiskCacheEnabled() {
            return this.mDiskCacheEnabled;
        }

        public boolean isDownsampleEnabled() {
            return this.mDownsampleEnabled;
        }

        public Builder setBitmapMemoryCache(@Nullable t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> bitmapMemoryCache) {
            this.mBitmapMemoryCache = bitmapMemoryCache;
            return this;
        }

        public Builder setBitmapMemoryCacheEntryStateObserver(com.facebook.imagepipeline.cache.i.b<com.facebook.cache.common.c> bitmapMemoryCacheEntryStateObserver) {
            this.mBitmapMemoryCacheEntryStateObserver = bitmapMemoryCacheEntryStateObserver;
            return this;
        }

        public Builder setBitmapMemoryCacheFactory(@Nullable com.facebook.imagepipeline.cache.a bitmapMemoryCacheFactory) {
            this.mBitmapMemoryCacheFactory = bitmapMemoryCacheFactory;
            return this;
        }

        public Builder setBitmapMemoryCacheParamsSupplier(com.facebook.common.internal.l<u> bitmapMemoryCacheParamsSupplier) {
            this.mBitmapMemoryCacheParamsSupplier = (com.facebook.common.internal.l) com.facebook.common.internal.i.i(bitmapMemoryCacheParamsSupplier);
            return this;
        }

        public Builder setBitmapMemoryCacheTrimStrategy(t.a trimStrategy) {
            this.mBitmapMemoryCacheTrimStrategy = trimStrategy;
            return this;
        }

        public Builder setBitmapsConfig(Bitmap.Config config) {
            this.mBitmapConfig = config;
            return this;
        }

        public Builder setCacheKeyFactory(com.facebook.imagepipeline.cache.f cacheKeyFactory) {
            this.mCacheKeyFactory = cacheKeyFactory;
            return this;
        }

        public Builder setCallerContextVerifier(e3.a callerContextVerifier) {
            this.mCallerContextVerifier = callerContextVerifier;
            return this;
        }

        public Builder setCloseableReferenceLeakTracker(f4.a closeableReferenceLeakTracker) {
            this.mCloseableReferenceLeakTracker = closeableReferenceLeakTracker;
            return this;
        }

        public Builder setDiskCacheEnabled(boolean diskCacheEnabled) {
            this.mDiskCacheEnabled = diskCacheEnabled;
            return this;
        }

        public Builder setDownsampleEnabled(boolean downsampleEnabled) {
            this.mDownsampleEnabled = downsampleEnabled;
            return this;
        }

        public Builder setEncodedMemoryCache(@Nullable t<com.facebook.cache.common.c, PooledByteBuffer> encodedMemoryCache) {
            this.mEncodedMemoryCache = encodedMemoryCache;
            return this;
        }

        public Builder setEncodedMemoryCacheParamsSupplier(com.facebook.common.internal.l<u> encodedMemoryCacheParamsSupplier) {
            this.mEncodedMemoryCacheParamsSupplier = (com.facebook.common.internal.l) com.facebook.common.internal.i.i(encodedMemoryCacheParamsSupplier);
            return this;
        }

        public Builder setExecutorServiceForAnimatedImages(@Nullable com.facebook.common.executors.g serialExecutorService) {
            this.mSerialExecutorServiceForAnimatedImages = serialExecutorService;
            return this;
        }

        public Builder setExecutorSupplier(f executorSupplier) {
            this.mExecutorSupplier = executorSupplier;
            return this;
        }

        public Builder setFileCacheFactory(g fileCacheFactory) {
            this.mFileCacheFactory = fileCacheFactory;
            return this;
        }

        public Builder setHttpConnectionTimeout(int httpConnectionTimeoutMs) {
            this.mHttpConnectionTimeout = httpConnectionTimeoutMs;
            return this;
        }

        public Builder setImageCacheStatsTracker(p imageCacheStatsTracker) {
            this.mImageCacheStatsTracker = imageCacheStatsTracker;
            return this;
        }

        public Builder setImageDecoder(com.facebook.imagepipeline.decoder.b imageDecoder) {
            this.mImageDecoder = imageDecoder;
            return this;
        }

        public Builder setImageDecoderConfig(com.facebook.imagepipeline.decoder.c imageDecoderConfig) {
            this.mImageDecoderConfig = imageDecoderConfig;
            return this;
        }

        public Builder setImageTranscoderFactory(l4.d imageTranscoderFactory) {
            this.mImageTranscoderFactory = imageTranscoderFactory;
            return this;
        }

        public Builder setImageTranscoderType(int imageTranscoderType) {
            this.mImageTranscoderType = Integer.valueOf(imageTranscoderType);
            return this;
        }

        public Builder setIsPrefetchEnabledSupplier(com.facebook.common.internal.l<Boolean> isPrefetchEnabledSupplier) {
            this.mIsPrefetchEnabledSupplier = isPrefetchEnabledSupplier;
            return this;
        }

        public Builder setMainDiskCacheConfig(com.facebook.cache.disk.b mainDiskCacheConfig) {
            this.mMainDiskCacheConfig = mainDiskCacheConfig;
            return this;
        }

        public Builder setMemoryChunkType(int memoryChunkType) {
            this.mMemoryChunkType = Integer.valueOf(memoryChunkType);
            return this;
        }

        public Builder setMemoryTrimmableRegistry(com.facebook.common.memory.c memoryTrimmableRegistry) {
            this.mMemoryTrimmableRegistry = memoryTrimmableRegistry;
            return this;
        }

        public Builder setNetworkFetcher(l0 networkFetcher) {
            this.mNetworkFetcher = networkFetcher;
            return this;
        }

        public Builder setPlatformBitmapFactory(com.facebook.imagepipeline.bitmaps.f platformBitmapFactory) {
            this.mPlatformBitmapFactory = platformBitmapFactory;
            return this;
        }

        public Builder setPoolFactory(i0 poolFactory) {
            this.mPoolFactory = poolFactory;
            return this;
        }

        public Builder setProgressiveJpegConfig(com.facebook.imagepipeline.decoder.d progressiveJpegConfig) {
            this.mProgressiveJpegConfig = progressiveJpegConfig;
            return this;
        }

        public Builder setRequestListener2s(Set<j4.e> requestListeners) {
            this.mRequestListener2s = requestListeners;
            return this;
        }

        public Builder setRequestListeners(Set<j4.f> requestListeners) {
            this.mRequestListeners = requestListeners;
            return this;
        }

        public Builder setResizeAndRotateEnabledForNetwork(boolean resizeAndRotateEnabledForNetwork) {
            this.mResizeAndRotateEnabledForNetwork = resizeAndRotateEnabledForNetwork;
            return this;
        }

        public Builder setSmallImageDiskCacheConfig(com.facebook.cache.disk.b smallImageDiskCacheConfig) {
            this.mSmallImageDiskCacheConfig = smallImageDiskCacheConfig;
            return this;
        }

        private Builder(Context context) {
            this.mDownsampleEnabled = false;
            this.mImageTranscoderType = null;
            this.mMemoryChunkType = null;
            this.mResizeAndRotateEnabledForNetwork = true;
            this.mHttpConnectionTimeout = -1;
            this.mExperimentsBuilder = new j.b(this);
            this.mDiskCacheEnabled = true;
            this.mCloseableReferenceLeakTracker = new f4.b();
            this.mContext = (Context) com.facebook.common.internal.i.i(context);
        }
    }

    public static class DefaultImageRequestConfig {
        private boolean mProgressiveRenderingEnabled;

        public boolean isProgressiveRenderingEnabled() {
            return this.mProgressiveRenderingEnabled;
        }

        public void setProgressiveRenderingEnabled(boolean progressiveRenderingEnabled) {
            this.mProgressiveRenderingEnabled = progressiveRenderingEnabled;
        }

        private DefaultImageRequestConfig() {
            this.mProgressiveRenderingEnabled = false;
        }
    }

    public static DefaultImageRequestConfig getDefaultImageRequestConfig() {
        return sDefaultImageRequestConfig;
    }

    private static com.facebook.cache.disk.b getDefaultMainDiskCacheConfig(final Context context) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("DiskCacheConfig.getDefaultMainDiskCacheConfig");
            }
            return com.facebook.cache.disk.b.m(context).n();
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public static Builder newBuilder(Context context) {
        return new Builder(context);
    }

    @VisibleForTesting
    static void resetDefaultRequestConfig() {
        sDefaultImageRequestConfig = new DefaultImageRequestConfig();
    }

    private static void setWebpBitmapFactory(final m3.b webpBitmapFactory, final j imagePipelineExperiments, final m3.a bitmapCreator) {
        m3.c.f94154d = webpBitmapFactory;
        m3.b.a aVarN = imagePipelineExperiments.n();
        if (aVarN != null) {
            webpBitmapFactory.d(aVarN);
        }
        if (bitmapCreator != null) {
            webpBitmapFactory.a(bitmapCreator);
        }
    }

    @Override // com.facebook.imagepipeline.core.i
    @Nullable
    public t<com.facebook.cache.common.c, com.facebook.imagepipeline.image.c> getBitmapCacheOverride() {
        return this.mBitmapCache;
    }

    @Override // com.facebook.imagepipeline.core.i
    public Bitmap.Config getBitmapConfig() {
        return this.mBitmapConfig;
    }

    @Override // com.facebook.imagepipeline.core.i
    @Nullable
    public com.facebook.imagepipeline.cache.i.b<com.facebook.cache.common.c> getBitmapMemoryCacheEntryStateObserver() {
        return this.mBitmapMemoryCacheEntryStateObserver;
    }

    @Override // com.facebook.imagepipeline.core.i
    public com.facebook.imagepipeline.cache.a getBitmapMemoryCacheFactory() {
        return this.mBitmapMemoryCacheFactory;
    }

    @Override // com.facebook.imagepipeline.core.i
    public com.facebook.common.internal.l<u> getBitmapMemoryCacheParamsSupplier() {
        return this.mBitmapMemoryCacheParamsSupplier;
    }

    @Override // com.facebook.imagepipeline.core.i
    public t.a getBitmapMemoryCacheTrimStrategy() {
        return this.mBitmapMemoryCacheTrimStrategy;
    }

    @Override // com.facebook.imagepipeline.core.i
    public com.facebook.imagepipeline.cache.f getCacheKeyFactory() {
        return this.mCacheKeyFactory;
    }

    @Override // com.facebook.imagepipeline.core.i
    @Nullable
    public e3.a getCallerContextVerifier() {
        return this.mCallerContextVerifier;
    }

    @Override // com.facebook.imagepipeline.core.i
    public f4.a getCloseableReferenceLeakTracker() {
        return this.mCloseableReferenceLeakTracker;
    }

    @Override // com.facebook.imagepipeline.core.i
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.facebook.imagepipeline.core.i
    @Nullable
    public t<com.facebook.cache.common.c, PooledByteBuffer> getEncodedMemoryCacheOverride() {
        return this.mEncodedMemoryCache;
    }

    @Override // com.facebook.imagepipeline.core.i
    public com.facebook.common.internal.l<u> getEncodedMemoryCacheParamsSupplier() {
        return this.mEncodedMemoryCacheParamsSupplier;
    }

    @Override // com.facebook.imagepipeline.core.i
    @Nullable
    public com.facebook.common.executors.g getExecutorServiceForAnimatedImages() {
        return this.mSerialExecutorServiceForAnimatedImages;
    }

    @Override // com.facebook.imagepipeline.core.i
    public f getExecutorSupplier() {
        return this.mExecutorSupplier;
    }

    @Override // com.facebook.imagepipeline.core.i
    public j getExperiments() {
        return this.mImagePipelineExperiments;
    }

    @Override // com.facebook.imagepipeline.core.i
    public g getFileCacheFactory() {
        return this.mFileCacheFactory;
    }

    @Override // com.facebook.imagepipeline.core.i
    public p getImageCacheStatsTracker() {
        return this.mImageCacheStatsTracker;
    }

    @Override // com.facebook.imagepipeline.core.i
    @Nullable
    public com.facebook.imagepipeline.decoder.b getImageDecoder() {
        return this.mImageDecoder;
    }

    @Override // com.facebook.imagepipeline.core.i
    @Nullable
    public com.facebook.imagepipeline.decoder.c getImageDecoderConfig() {
        return this.mImageDecoderConfig;
    }

    @Override // com.facebook.imagepipeline.core.i
    @Nullable
    public l4.d getImageTranscoderFactory() {
        return this.mImageTranscoderFactory;
    }

    @Override // com.facebook.imagepipeline.core.i
    @Nullable
    public Integer getImageTranscoderType() {
        return this.mImageTranscoderType;
    }

    @Override // com.facebook.imagepipeline.core.i
    public com.facebook.common.internal.l<Boolean> getIsPrefetchEnabledSupplier() {
        return this.mIsPrefetchEnabledSupplier;
    }

    @Override // com.facebook.imagepipeline.core.i
    public com.facebook.cache.disk.b getMainDiskCacheConfig() {
        return this.mMainDiskCacheConfig;
    }

    @Override // com.facebook.imagepipeline.core.i
    public int getMemoryChunkType() {
        return this.mMemoryChunkType;
    }

    @Override // com.facebook.imagepipeline.core.i
    public com.facebook.common.memory.c getMemoryTrimmableRegistry() {
        return this.mMemoryTrimmableRegistry;
    }

    @Override // com.facebook.imagepipeline.core.i
    public l0 getNetworkFetcher() {
        return this.mNetworkFetcher;
    }

    @Override // com.facebook.imagepipeline.core.i
    @Nullable
    public com.facebook.imagepipeline.bitmaps.f getPlatformBitmapFactory() {
        return this.mPlatformBitmapFactory;
    }

    @Override // com.facebook.imagepipeline.core.i
    public i0 getPoolFactory() {
        return this.mPoolFactory;
    }

    @Override // com.facebook.imagepipeline.core.i
    public com.facebook.imagepipeline.decoder.d getProgressiveJpegConfig() {
        return this.mProgressiveJpegConfig;
    }

    @Override // com.facebook.imagepipeline.core.i
    public Set<j4.e> getRequestListener2s() {
        return Collections.unmodifiableSet(this.mRequestListener2s);
    }

    @Override // com.facebook.imagepipeline.core.i
    public Set<j4.f> getRequestListeners() {
        return Collections.unmodifiableSet(this.mRequestListeners);
    }

    @Override // com.facebook.imagepipeline.core.i
    public com.facebook.cache.disk.b getSmallImageDiskCacheConfig() {
        return this.mSmallImageDiskCacheConfig;
    }

    @Override // com.facebook.imagepipeline.core.i
    public boolean isDiskCacheEnabled() {
        return this.mDiskCacheEnabled;
    }

    @Override // com.facebook.imagepipeline.core.i
    public boolean isDownsampleEnabled() {
        return this.mDownsampleEnabled;
    }

    @Override // com.facebook.imagepipeline.core.i
    public boolean isResizeAndRotateEnabledForNetwork() {
        return this.mResizeAndRotateEnabledForNetwork;
    }

    private ImagePipelineConfig(Builder builder) {
        m3.b bVarJ;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipelineConfig()");
        }
        j jVarT = builder.mExperimentsBuilder.t();
        this.mImagePipelineExperiments = jVarT;
        this.mBitmapMemoryCacheParamsSupplier = builder.mBitmapMemoryCacheParamsSupplier == null ? new com.facebook.imagepipeline.cache.k((ActivityManager) com.facebook.common.internal.i.i(builder.mContext.getSystemService(TTDownloadField.TT_ACTIVITY))) : builder.mBitmapMemoryCacheParamsSupplier;
        this.mBitmapMemoryCacheTrimStrategy = builder.mBitmapMemoryCacheTrimStrategy == null ? new com.facebook.imagepipeline.cache.c() : builder.mBitmapMemoryCacheTrimStrategy;
        this.mBitmapMemoryCacheEntryStateObserver = builder.mBitmapMemoryCacheEntryStateObserver;
        this.mBitmapConfig = builder.mBitmapConfig == null ? Bitmap.Config.ARGB_8888 : builder.mBitmapConfig;
        this.mCacheKeyFactory = builder.mCacheKeyFactory == null ? com.facebook.imagepipeline.cache.l.f() : builder.mCacheKeyFactory;
        this.mContext = (Context) com.facebook.common.internal.i.i(builder.mContext);
        this.mFileCacheFactory = builder.mFileCacheFactory == null ? new c(new e()) : builder.mFileCacheFactory;
        this.mDownsampleEnabled = builder.mDownsampleEnabled;
        this.mEncodedMemoryCacheParamsSupplier = builder.mEncodedMemoryCacheParamsSupplier == null ? new com.facebook.imagepipeline.cache.m() : builder.mEncodedMemoryCacheParamsSupplier;
        this.mImageCacheStatsTracker = builder.mImageCacheStatsTracker == null ? x.o() : builder.mImageCacheStatsTracker;
        this.mImageDecoder = builder.mImageDecoder;
        this.mImageTranscoderFactory = getImageTranscoderFactory(builder);
        this.mImageTranscoderType = builder.mImageTranscoderType;
        this.mIsPrefetchEnabledSupplier = builder.mIsPrefetchEnabledSupplier == null ? new com.facebook.common.internal.l<Boolean>() { // from class: com.facebook.imagepipeline.core.ImagePipelineConfig.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.facebook.common.internal.l
            public Boolean get() {
                return Boolean.TRUE;
            }
        } : builder.mIsPrefetchEnabledSupplier;
        com.facebook.cache.disk.b defaultMainDiskCacheConfig = builder.mMainDiskCacheConfig == null ? getDefaultMainDiskCacheConfig(builder.mContext) : builder.mMainDiskCacheConfig;
        this.mMainDiskCacheConfig = defaultMainDiskCacheConfig;
        this.mMemoryTrimmableRegistry = builder.mMemoryTrimmableRegistry == null ? com.facebook.common.memory.d.c() : builder.mMemoryTrimmableRegistry;
        this.mMemoryChunkType = getMemoryChunkType(builder, jVarT);
        int i10 = builder.mHttpConnectionTimeout < 0 ? 30000 : builder.mHttpConnectionTimeout;
        this.mHttpNetworkTimeout = i10;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("ImagePipelineConfig->mNetworkFetcher");
        }
        this.mNetworkFetcher = builder.mNetworkFetcher == null ? new w(i10) : builder.mNetworkFetcher;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        this.mPlatformBitmapFactory = builder.mPlatformBitmapFactory;
        i0 i0Var = builder.mPoolFactory == null ? new i0(h0.n().m()) : builder.mPoolFactory;
        this.mPoolFactory = i0Var;
        this.mProgressiveJpegConfig = builder.mProgressiveJpegConfig == null ? new com.facebook.imagepipeline.decoder.f() : builder.mProgressiveJpegConfig;
        this.mRequestListeners = builder.mRequestListeners == null ? new HashSet<>() : builder.mRequestListeners;
        this.mRequestListener2s = builder.mRequestListener2s == null ? new HashSet<>() : builder.mRequestListener2s;
        this.mResizeAndRotateEnabledForNetwork = builder.mResizeAndRotateEnabledForNetwork;
        this.mSmallImageDiskCacheConfig = builder.mSmallImageDiskCacheConfig != null ? builder.mSmallImageDiskCacheConfig : defaultMainDiskCacheConfig;
        this.mImageDecoderConfig = builder.mImageDecoderConfig;
        this.mExecutorSupplier = builder.mExecutorSupplier == null ? new b(i0Var.e()) : builder.mExecutorSupplier;
        this.mDiskCacheEnabled = builder.mDiskCacheEnabled;
        this.mCallerContextVerifier = builder.mCallerContextVerifier;
        this.mCloseableReferenceLeakTracker = builder.mCloseableReferenceLeakTracker;
        this.mBitmapCache = builder.mBitmapMemoryCache;
        this.mBitmapMemoryCacheFactory = builder.mBitmapMemoryCacheFactory == null ? new com.facebook.imagepipeline.cache.g() : builder.mBitmapMemoryCacheFactory;
        this.mEncodedMemoryCache = builder.mEncodedMemoryCache;
        this.mSerialExecutorServiceForAnimatedImages = builder.mSerialExecutorServiceForAnimatedImages;
        m3.b bVarM = jVarT.m();
        if (bVarM != null) {
            setWebpBitmapFactory(bVarM, jVarT, new com.facebook.imagepipeline.bitmaps.d(getPoolFactory()));
        } else if (jVarT.z() && m3.c.f94151a && (bVarJ = m3.c.j()) != null) {
            setWebpBitmapFactory(bVarJ, jVarT, new com.facebook.imagepipeline.bitmaps.d(getPoolFactory()));
        }
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    @Nullable
    private static l4.d getImageTranscoderFactory(final Builder builder) {
        if (builder.mImageTranscoderFactory != null && builder.mImageTranscoderType != null) {
            throw new IllegalStateException("You can't define a custom ImageTranscoderFactory and provide an ImageTranscoderType");
        }
        if (builder.mImageTranscoderFactory != null) {
            return builder.mImageTranscoderFactory;
        }
        return null;
    }

    private static int getMemoryChunkType(final Builder builder, final j imagePipelineExperiments) {
        if (builder.mMemoryChunkType != null) {
            return builder.mMemoryChunkType.intValue();
        }
        if (imagePipelineExperiments.g() == 2 && Build.VERSION.SDK_INT >= 27) {
            return 2;
        }
        if (imagePipelineExperiments.g() == 1) {
            return 1;
        }
        imagePipelineExperiments.g();
        return 0;
    }
}
