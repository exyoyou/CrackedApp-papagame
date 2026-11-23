package org.hmwebrtc;

import android.graphics.Matrix;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.vincent.videocompressor.VideoController;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
public class DirectSurfaceVideoDecoder implements VideoDecoder {
    private static final int DEQUEUE_INPUT_TIMEOUT_US = 500000;
    private static final int DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US = 100000;
    private static final int H264_SEI_CONTENT_START_OFFSET = 23;
    private static final int H264_SEI_DATA_TOTAL_SIZE = 44;
    private static final int MEDIA_CODEC_RELEASE_TIMEOUT_MS = 5000;
    private static final String MEDIA_FORMAT_KEY_CROP_BOTTOM = "crop-bottom";
    private static final String MEDIA_FORMAT_KEY_CROP_LEFT = "crop-left";
    private static final String MEDIA_FORMAT_KEY_CROP_RIGHT = "crop-right";
    private static final String MEDIA_FORMAT_KEY_CROP_TOP = "crop-top";
    private static final String MEDIA_FORMAT_KEY_SLICE_HEIGHT = "slice-height";
    private static final String MEDIA_FORMAT_KEY_STRIDE = "stride";
    private static final String TAG = "SurfaceVideoDecoder";
    private static boolean enableNoOutputFramesRequestKeyFrame = false;
    public static boolean isCloseDecoderLowLatency = false;
    private static boolean isEnableSurfaceSwitch = false;
    private static boolean lossFlag = true;
    private static volatile boolean needToRequireKeyFrame = false;
    private static int noOutputFramesIntervalMs = 2000;
    private static int numOfNotDecodedFramesThreshold = 30;
    public static boolean useMediaCodecVideoDecoderLowLatency;

    @Nullable
    private VideoDecoder.Callback callback;

    @Nullable
    private MediaCodecWrapper codec;
    private boolean codecIsInit;
    private final String codecName;
    private final VideoCodecMimeType codecType;
    private int colorFormat;
    private VideoFrame.TextureBuffer constBuffer;
    private ThreadUtils.ThreadChecker decoderThreadChecker;
    private boolean enableSeiDataReport;
    private final BlockingDeque<FrameInfo> frameInfos;
    private List<SeiData> frameSeiReportList;
    private ScheduledFuture future;
    private boolean hasDecodedFirstFrame;
    private int height;
    private boolean isFallbackSoftDecoder;
    private boolean isHisiDecoder;
    private boolean isReportedError;
    private boolean keyFrameRequired;
    private long lastSecond;
    private Double lossRate;
    private long mFrameId;
    private DirectSurfaceHelper mRenderView;
    private final MediaCodecWrapperFactory mediaCodecWrapperFactory;

    @Nullable
    private Thread outputThread;
    private ThreadUtils.ThreadChecker outputThreadChecker;
    private CountDownLatch releaseBarrier;
    private int renderFps;
    private long renderLossCount;
    private int renderLps;

    @Nullable
    private DecodedTextureMetadata renderedTextureMetadata;
    private int rotationDegree;
    private volatile boolean running;
    private ScheduledExecutorService scheduler;
    private BlockingDeque<SeiData> seiDataInfos;
    private HmDataReportToSaasSdk seiDataReport;
    private int seiReportInterval;

    @Nullable
    private volatile Exception shutdownException;
    private int sliceHeight;
    private int stride;

    @Nullable
    private Surface surface;
    private int width;
    private final Object dimensionLock = new Object();
    private final int defaultSeiReportInterval = 1;
    private long lastOutFramesTime = -1;

    private static class DecodedTextureMetadata {
        final Integer decodeTimeMs;
        final long presentationTimestampUs;

        DecodedTextureMetadata(long j10, Integer num) {
            this.presentationTimestampUs = j10;
            this.decodeTimeMs = num;
        }
    }

    private static class FrameInfo {
        final long decodeStartTimeMs;
        final long presentationTimeUs;
        final int rotation;

        FrameInfo(long j10, int i10, long j11) {
            this.decodeStartTimeMs = j10;
            this.rotation = i10;
            this.presentationTimeUs = j11;
        }
    }

    DirectSurfaceVideoDecoder(MediaCodecWrapperFactory mediaCodecWrapperFactory, String str, VideoCodecMimeType videoCodecMimeType, int i10, Object obj, int i11) {
        if (!isSupportedColorFormat(i10)) {
            throw new IllegalArgumentException("Unsupported color format: " + i10);
        }
        Logging.d(TAG, "ctor name: " + str + " type: " + videoCodecMimeType + " color format: " + i10);
        this.mediaCodecWrapperFactory = mediaCodecWrapperFactory;
        this.codecName = str;
        this.codecType = videoCodecMimeType;
        this.colorFormat = i10;
        this.mRenderView = (DirectSurfaceHelper) obj;
        this.rotationDegree = i11;
        this.frameInfos = new LinkedBlockingDeque();
        this.renderFps = 0;
        this.renderLps = 0;
        this.lastSecond = 0L;
        this.lossRate = Double.valueOf(0.0d);
    }

    private Thread createOutputThread() {
        return new Thread("AndroidVideoDecoder.outputThread") { // from class: org.hmwebrtc.DirectSurfaceVideoDecoder.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                DirectSurfaceVideoDecoder.this.outputThreadChecker = new ThreadUtils.ThreadChecker();
                while (DirectSurfaceVideoDecoder.this.running) {
                    DirectSurfaceVideoDecoder.this.deliverDecodedFrame();
                }
                if (DirectSurfaceVideoDecoder.this.releaseBarrier != null) {
                    DirectSurfaceVideoDecoder.this.releaseBarrier.countDown();
                }
                DirectSurfaceVideoDecoder.this.releaseCodecOnOutputThread();
            }
        };
    }

    private void deliverSurfaceFrame(int i10, MediaCodec.BufferInfo bufferInfo, int i11, Integer num) {
        synchronized (this.dimensionLock) {
        }
        this.renderedTextureMetadata = new DecodedTextureMetadata(bufferInfo.presentationTimeUs, num);
        onFrame(null);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.mRenderView.getRotateDegree() != this.rotationDegree) {
            this.codec.releaseOutputBuffer(i10, false);
        } else {
            this.codec.releaseOutputBuffer(i10, true);
        }
        this.mRenderView.setRenderDelayMs((int) ((SystemClock.elapsedRealtime() - jElapsedRealtime) + 5));
    }

    private VideoCodecStatus initDecodeInternal(int i10, int i11) {
        this.decoderThreadChecker.checkIsOnValidThread();
        this.codecIsInit = true;
        this.lastOutFramesTime = SystemClock.elapsedRealtime();
        Logging.d(TAG, "initDecodeInternal name: " + this.codecName + " type: " + this.codecType + " width: " + i10 + " height: " + i11);
        if (this.outputThread != null) {
            Logging.e(TAG, "initDecodeInternal called while the codec is already running");
            this.isFallbackSoftDecoder = true;
            return VideoCodecStatus.FALLBACK_SOFTWARE;
        }
        this.width = i10;
        this.height = i11;
        this.stride = i10;
        this.sliceHeight = i11;
        boolean z10 = false;
        this.hasDecodedFirstFrame = false;
        this.keyFrameRequired = true;
        this.enableSeiDataReport = false;
        this.mFrameId = 0L;
        try {
            this.codec = this.mediaCodecWrapperFactory.createByCodecName(this.codecName);
            try {
                MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(this.codecType.mimeType(), i10, i11);
                if (this.codecName.toUpperCase(Locale.getDefault()).indexOf("OMX.HISI.VIDEO.") != -1) {
                    this.isHisiDecoder = true;
                } else {
                    this.isHisiDecoder = false;
                }
                if (!isCloseDecoderLowLatency) {
                    if (this.codecName.toUpperCase(Locale.getDefault()).indexOf("OMX.MTK.VIDEO.") != -1) {
                        Logging.e(TAG, this.codecName + " set mtk lowlatency.");
                        mediaFormatCreateVideoFormat.setInteger("vdec-lowlatency", 1);
                    } else if (this.codecName.toUpperCase(Locale.getDefault()).indexOf("OMX.QCOM.VIDEO.") != -1) {
                        Logging.e(TAG, this.codecName + " set qcom lowlatency.");
                        mediaFormatCreateVideoFormat.setInteger("vendor.qti-ext-low-latency.enable", 1);
                    } else if (Build.VERSION.SDK_INT >= 29 && this.codecName.toUpperCase(Locale.getDefault()).indexOf("OMX.HISI.VIDEO.") != -1) {
                        Logging.e(TAG, this.codecName + " set hisi lowlatency.");
                        mediaFormatCreateVideoFormat.setInteger("vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-req", 1);
                        mediaFormatCreateVideoFormat.setInteger("vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-rdy", -1);
                    } else if (this.codecName.toUpperCase(Locale.getDefault()).indexOf("OMX.AMLOGIC.") != -1 || this.codecName.toUpperCase(Locale.getDefault()).indexOf("C2.AMLOGIC.") != -1) {
                        Logging.e(TAG, this.codecName + " set amlogic lowlatency.");
                        mediaFormatCreateVideoFormat.setInteger("vendor.low-latency.enable", 1);
                    }
                    if (useMediaCodecVideoDecoderLowLatency) {
                        Logging.e(TAG, this.codecName + " set lowlatency for common.");
                        mediaFormatCreateVideoFormat.setInteger("low-latency", 1);
                    }
                }
                if (this.rotationDegree != 0) {
                    Logging.d(TAG, " set mediaCodec rotation-degrees:" + this.rotationDegree);
                    mediaFormatCreateVideoFormat.setInteger("rotation-degrees", this.rotationDegree);
                }
                this.surface = this.mRenderView.getSurface();
                Logging.d(TAG, "configure with:" + this.surface);
                this.codec.configure(mediaFormatCreateVideoFormat, this.surface, null, this.isHisiDecoder ? 2 : 0);
                this.codec.start();
                this.running = true;
                Thread threadCreateOutputThread = createOutputThread();
                this.outputThread = threadCreateOutputThread;
                threadCreateOutputThread.start();
                HmDataReportToSaasSdk hmDataReportToSaasSdk = HmDataReportToSaasSdk.getInstance();
                this.seiDataReport = hmDataReportToSaasSdk;
                if (hmDataReportToSaasSdk != null) {
                    boolean zIsH264codec = isH264codec();
                    HmDataReportToSaasSdk hmDataReportToSaasSdk2 = this.seiDataReport;
                    if (hmDataReportToSaasSdk2.needToReportSeiData && zIsH264codec) {
                        z10 = true;
                    }
                    this.enableSeiDataReport = z10;
                    this.seiReportInterval = hmDataReportToSaasSdk2.sampleInterval;
                }
                if (this.enableSeiDataReport) {
                    this.frameSeiReportList = new ArrayList();
                    this.seiDataInfos = new LinkedBlockingDeque();
                    if (this.seiReportInterval <= 0) {
                        this.seiReportInterval = 1;
                    }
                    CreateSeiDataReportThread();
                }
                HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_DIRECT_SURFACE_VIDEO_DECODER_CREATED, "init direct surface decoder successfully,this:" + this + ",codec name:" + this.codecName);
                Logging.d(TAG, "initDecodeInternal done");
                return VideoCodecStatus.OK;
            } catch (MediaCodec.CryptoException | IllegalArgumentException | IllegalStateException e10) {
                reportErrorToHaimaCountly("initDecode failed" + e10.toString(), RtcCountlyConstants.RTC_CONFIG_ANDROID_VIDEO_DECODER_ERROR);
                Logging.e(TAG, "initDecode failed", e10);
                try {
                    this.codec.release();
                } catch (Exception e11) {
                    Logging.e(TAG, "Media decoder release failed in initDecodeInternal", e11);
                }
                this.codec = null;
                this.isFallbackSoftDecoder = true;
                return VideoCodecStatus.FALLBACK_SOFTWARE;
            }
        } catch (IOException | IllegalArgumentException e12) {
            reportErrorToHaimaCountly("Cannot create media decoder " + this.codecName + e12.toString(), RtcCountlyConstants.RTC_CREATE_ANDROID_VIDEO_DECODER_ERROR);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot create media decoder ");
            sb2.append(this.codecName);
            Logging.e(TAG, sb2.toString());
            this.isFallbackSoftDecoder = true;
            return VideoCodecStatus.FALLBACK_SOFTWARE;
        }
    }

    private boolean isSupportedColorFormat(int i10) {
        for (int i11 : MediaCodecUtils.DECODER_COLOR_FORMATS) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    private void reformat(MediaFormat mediaFormat) {
        int integer;
        int integer2;
        this.outputThreadChecker.checkIsOnValidThread();
        Logging.d(TAG, "Decoder format changed: " + mediaFormat.toString());
        if (mediaFormat.containsKey(MEDIA_FORMAT_KEY_CROP_LEFT) && mediaFormat.containsKey(MEDIA_FORMAT_KEY_CROP_RIGHT) && mediaFormat.containsKey(MEDIA_FORMAT_KEY_CROP_BOTTOM) && mediaFormat.containsKey(MEDIA_FORMAT_KEY_CROP_TOP)) {
            integer = (mediaFormat.getInteger(MEDIA_FORMAT_KEY_CROP_RIGHT) + 1) - mediaFormat.getInteger(MEDIA_FORMAT_KEY_CROP_LEFT);
            integer2 = (mediaFormat.getInteger(MEDIA_FORMAT_KEY_CROP_BOTTOM) + 1) - mediaFormat.getInteger(MEDIA_FORMAT_KEY_CROP_TOP);
        } else {
            integer = mediaFormat.getInteger("width");
            integer2 = mediaFormat.getInteger("height");
        }
        int i10 = integer;
        int i11 = integer2;
        synchronized (this.dimensionLock) {
            if (this.hasDecodedFirstFrame && (this.width != i10 || this.height != i11)) {
                stopOnOutputThread(new RuntimeException("Unexpected size change. Configured " + this.width + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD + this.height + ". New " + i10 + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD + i11));
                return;
            }
            this.width = i10;
            this.height = i11;
            this.constBuffer = new TextureBufferImpl(i10, i11, VideoFrame.TextureBuffer.Type.OES, -1, new Matrix(), (Handler) null, (YuvConverter) null, new TextureBufferImpl.RefCountMonitor() { // from class: org.hmwebrtc.DirectSurfaceVideoDecoder.3
                @Override // org.hmwebrtc.TextureBufferImpl.RefCountMonitor
                public void onDestroy(TextureBufferImpl textureBufferImpl) {
                }

                @Override // org.hmwebrtc.TextureBufferImpl.RefCountMonitor
                public void onRelease(TextureBufferImpl textureBufferImpl) {
                }

                @Override // org.hmwebrtc.TextureBufferImpl.RefCountMonitor
                public void onRetain(TextureBufferImpl textureBufferImpl) {
                }
            });
            synchronized (this.dimensionLock) {
                if (mediaFormat.containsKey(MEDIA_FORMAT_KEY_STRIDE)) {
                    this.stride = mediaFormat.getInteger(MEDIA_FORMAT_KEY_STRIDE);
                }
                if (mediaFormat.containsKey(MEDIA_FORMAT_KEY_SLICE_HEIGHT)) {
                    this.sliceHeight = mediaFormat.getInteger(MEDIA_FORMAT_KEY_SLICE_HEIGHT);
                }
                Logging.d(TAG, "Frame stride and slice height: " + this.stride + " x " + this.sliceHeight);
                this.stride = Math.max(this.width, this.stride);
                this.sliceHeight = Math.max(this.height, this.sliceHeight);
            }
        }
    }

    private VideoCodecStatus reinitDecode(int i10, int i11) {
        this.decoderThreadChecker.checkIsOnValidThread();
        Logging.d(TAG, "reinitDecode:" + Thread.currentThread().getName());
        VideoCodecStatus videoCodecStatusReleaseInternal = releaseInternal();
        return videoCodecStatusReleaseInternal != VideoCodecStatus.OK ? videoCodecStatusReleaseInternal : initDecodeInternal(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseCodecOnOutputThread() {
        this.outputThreadChecker.checkIsOnValidThread();
        Logging.d(TAG, "Releasing MediaCodec on output thread");
        try {
            this.codec.stop();
        } catch (Exception e10) {
            Logging.e(TAG, "Media decoder stop failed", e10);
        }
        try {
            this.codec.release();
        } catch (Exception e11) {
            Logging.e(TAG, "Media decoder release failed", e11);
            this.shutdownException = e11;
        }
        this.codec = null;
        if (this.enableSeiDataReport) {
            releaseSchedule();
        }
        Logging.d(TAG, "Release on output thread done");
    }

    private VideoCodecStatus releaseInternal() {
        this.codecIsInit = false;
        if (!this.running) {
            Logging.d(TAG, "release: Decoder is not running.");
            return VideoCodecStatus.OK;
        }
        try {
            if (isEnableSurfaceSwitch && this.isFallbackSoftDecoder) {
                this.releaseBarrier = new CountDownLatch(1);
            }
            this.running = false;
            if (this.releaseBarrier != null) {
                Logging.d(TAG, "releaseBarrier awaitUninterruptibly");
                if (!ThreadUtils.awaitUninterruptibly(this.releaseBarrier, 1000L)) {
                    Logging.e(TAG, "releaseBarrier awaitUninterruptibly timeout");
                    return VideoCodecStatus.TIMEOUT;
                }
            } else {
                Logging.d(TAG, "joinUninterruptibly");
                if (!ThreadUtils.joinUninterruptibly(this.outputThread, 5000L)) {
                    Logging.e(TAG, "Media decoder release timeout", new RuntimeException());
                    return VideoCodecStatus.TIMEOUT;
                }
            }
            if (this.shutdownException == null) {
                return VideoCodecStatus.OK;
            }
            Logging.e(TAG, "Media decoder release error", new RuntimeException(this.shutdownException));
            this.shutdownException = null;
            return VideoCodecStatus.ERROR;
        } finally {
            this.outputThread = null;
        }
    }

    private void releaseSchedule() {
        ScheduledFuture scheduledFuture = this.future;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        ScheduledExecutorService scheduledExecutorService = this.scheduler;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            return;
        }
        this.scheduler.shutdownNow();
    }

    private void reportErrorToHaimaCountly(String str, int i10) {
        if (this.isReportedError) {
            Logging.e(TAG, "Already reported error, so ignore this report. error=" + str);
            return;
        }
        if (!this.codecIsInit) {
            Logging.e(TAG, "the media codec dcoder has uninitialized. error=" + str);
            return;
        }
        this.isReportedError = true;
        HmAndroidCallbackDirectly.hmRecordCountlyEvent(i10, str + ",frameInfos size:" + this.frameInfos.size() + ",this:" + this + ",codec name:" + this.codecName);
    }

    public static void requestKeyFrame() {
        if (needToRequireKeyFrame) {
            return;
        }
        Logging.d(TAG, "Force requesting key frame");
        needToRequireKeyFrame = true;
    }

    public static void setEnableSurfaceSwitch(boolean z10) {
        Logging.d(TAG, "Set isEnableSurfaceSwitch is: " + z10);
        isEnableSurfaceSwitch = z10;
    }

    public static void setLossFrameFlag(boolean z10) {
        Logging.d(TAG, "Set setLossFrameFlag is: " + z10);
        lossFlag = z10;
        HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_LOSS_AFTER_DECODED_ENABLE, "DirectSurfaceVideoDecoder lossing frame enable:" + z10);
    }

    public static void setNoOutputFramesIntervalMs(boolean z10, int i10, int i11) {
        Logging.d(TAG, "Set enableNoOutputFramesRequestKeyFrame is: " + z10);
        Logging.d(TAG, "Set NoOutputFramesIntervalMs is: " + i10);
        Logging.d(TAG, "Set numOfNotDecodedFramesThreshold is: " + i11);
        enableNoOutputFramesRequestKeyFrame = z10;
        noOutputFramesIntervalMs = i10;
        numOfNotDecodedFramesThreshold = i11;
    }

    private void stopOnOutputThread(Exception exc) {
        this.outputThreadChecker.checkIsOnValidThread();
        this.running = false;
        this.shutdownException = exc;
    }

    void CreateSeiDataReportThread() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.scheduler = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.future = scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Runnable() { // from class: org.hmwebrtc.DirectSurfaceVideoDecoder.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (DirectSurfaceVideoDecoder.this.seiDataReport != null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.addAll(DirectSurfaceVideoDecoder.this.frameSeiReportList);
                        DirectSurfaceVideoDecoder.this.frameSeiReportList.clear();
                        DirectSurfaceVideoDecoder.this.seiDataReport.onFrameSeiDataReportCallback(arrayList);
                    }
                } catch (Exception unused) {
                    Logging.e(DirectSurfaceVideoDecoder.TAG, "run sei data report scheduleAtFixedRate Exception");
                }
            }
        }, 100L, this.seiReportInterval * 1000, TimeUnit.MILLISECONDS);
    }

    @Override // org.hmwebrtc.VideoDecoder
    public /* synthetic */ long createNativeVideoDecoder() {
        return p0.a(this);
    }

    @Override // org.hmwebrtc.VideoDecoder
    public VideoCodecStatus decode(EncodedImage encodedImage, VideoDecoder.DecodeInfo decodeInfo) {
        int i10;
        int i11;
        boolean z10;
        this.decoderThreadChecker.checkIsOnValidThread();
        if (this.codec == null || this.callback == null || !this.running) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("decode uninitalized, codec: ");
            sb2.append(this.codec != null);
            sb2.append(", callback: ");
            sb2.append(this.callback);
            reportErrorToHaimaCountly(sb2.toString(), RtcCountlyConstants.RTC_UNINIT_ANDROID_VIDEO_DECODER_ERROR);
            return VideoCodecStatus.UNINITIALIZED;
        }
        ByteBuffer byteBuffer = encodedImage.buffer;
        if (byteBuffer == null) {
            reportErrorToHaimaCountly("decode() - no input data", RtcCountlyConstants.RTC_MEDIA_CODEC_NO_INPUT_ERROR);
            this.isFallbackSoftDecoder = true;
            release();
            return VideoCodecStatus.FALLBACK_SOFTWARE;
        }
        if (this.enableSeiDataReport && encodedImage.frameType == EncodedImage.FrameType.VideoFrameDelta && byteBuffer.capacity() >= 44) {
            encodedImage.buffer.position(23);
            encodedImage.buffer.limit(44);
            ByteBuffer byteBufferSlice = encodedImage.buffer.slice();
            SeiData seiData = new SeiData((byteBufferSlice.getInt() >> 1) - 255, byteBufferSlice.getLong() >> 1, byteBufferSlice.getLong() >> 1, System.currentTimeMillis(), 0L);
            BlockingDeque<SeiData> blockingDeque = this.seiDataInfos;
            if (blockingDeque != null) {
                blockingDeque.offer(seiData);
            }
            encodedImage.buffer.position(44);
            ByteBuffer byteBuffer2 = encodedImage.buffer;
            byteBuffer2.limit(byteBuffer2.capacity());
        }
        int iRemaining = encodedImage.buffer.remaining();
        if (iRemaining == 0) {
            reportErrorToHaimaCountly("decode() - input buffer empty", RtcCountlyConstants.RTC_MEDIA_CODEC_INPUT_EMPTY_ERROR);
            this.isFallbackSoftDecoder = true;
            release();
            return VideoCodecStatus.FALLBACK_SOFTWARE;
        }
        synchronized (this.dimensionLock) {
            i10 = this.width;
            i11 = this.height;
        }
        int i12 = encodedImage.encodedWidth;
        int i13 = encodedImage.encodedHeight;
        if (i12 * i13 <= 0 || (i12 == i10 && i13 == i11)) {
            z10 = false;
        } else {
            VideoCodecStatus videoCodecStatusReinitDecode = reinitDecode(i12, i13);
            if (videoCodecStatusReinitDecode != VideoCodecStatus.OK) {
                return videoCodecStatusReinitDecode;
            }
            z10 = true;
        }
        if (this.mRenderView.getRotateDegree() != this.rotationDegree) {
            this.rotationDegree = this.mRenderView.getRotateDegree();
            Logging.d(TAG, "reinitDecode caused by rotation-degrees:" + this.rotationDegree);
            HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_DIRECT_SURFACE_VIDEO_DECODER_ROTATED, "reinitDecode caused by rotation-degrees:" + this.rotationDegree);
            VideoCodecStatus videoCodecStatusReinitDecode2 = reinitDecode(i10, i11);
            if (videoCodecStatusReinitDecode2 != VideoCodecStatus.OK) {
                return videoCodecStatusReinitDecode2;
            }
        }
        if (this.keyFrameRequired && encodedImage.frameType != EncodedImage.FrameType.VideoFrameKey) {
            Logging.e(TAG, "decode() - key frame required first");
            return VideoCodecStatus.NO_OUTPUT;
        }
        try {
            int iDequeueInputBuffer = this.codec.dequeueInputBuffer(500000L);
            if (iDequeueInputBuffer < 0) {
                reportErrorToHaimaCountly("decode() - no HW buffers available; decoder falling behind", RtcCountlyConstants.RTC_MEDIA_CODEC_NO_HW_BUFFER_ERROR);
                this.isFallbackSoftDecoder = true;
                release();
                return VideoCodecStatus.FALLBACK_SOFTWARE;
            }
            try {
                ByteBuffer byteBuffer3 = this.codec.getInputBuffers()[iDequeueInputBuffer];
                if (byteBuffer3.capacity() < iRemaining) {
                    reportErrorToHaimaCountly("decode() - HW buffer too small", RtcCountlyConstants.RTC_MEDIA_CODEC_HW_BUFFER_SMALL_ERROR);
                    this.isFallbackSoftDecoder = true;
                    release();
                    return VideoCodecStatus.FALLBACK_SOFTWARE;
                }
                byteBuffer3.put(encodedImage.buffer);
                if (this.isHisiDecoder && !isCloseDecoderLowLatency) {
                    iRemaining += 18;
                    byteBuffer3.put(new byte[]{0, 0, 0, 1, BinaryMemcacheOpcodes.GATQ, 72, com.sigmob.sdk.archives.tar.e.Q, 80, 73, 67, 69, 78, 68, 0, 0, 0, 1, 0});
                }
                int i14 = iRemaining;
                long micros = TimeUnit.NANOSECONDS.toMicros(encodedImage.captureTimeNs);
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.frameInfos.offer(new FrameInfo(jElapsedRealtime, encodedImage.rotation, micros));
                try {
                    boolean z11 = z10;
                    this.codec.queueInputBuffer(iDequeueInputBuffer, 0, i14, micros, 0);
                    if (this.keyFrameRequired) {
                        this.keyFrameRequired = false;
                    }
                    if (!enableNoOutputFramesRequestKeyFrame || this.frameInfos.size() <= numOfNotDecodedFramesThreshold || jElapsedRealtime - this.lastOutFramesTime <= noOutputFramesIntervalMs) {
                        if (z11) {
                            return VideoCodecStatus.OK_AFTER_RESTART;
                        }
                        if (!needToRequireKeyFrame) {
                            return VideoCodecStatus.OK;
                        }
                        needToRequireKeyFrame = false;
                        return VideoCodecStatus.REQUEST_KEYFRAME;
                    }
                    Logging.w(TAG, "MediaCodec decoder no output");
                    HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_NO_OUTPUT_AFTER_LONG_TIME, "no output after a long time,to request a key frame,this:" + this);
                    this.lastOutFramesTime = jElapsedRealtime;
                    return VideoCodecStatus.NO_OUTPUT_AFTER_LONG_TIME;
                } catch (IllegalStateException e10) {
                    reportErrorToHaimaCountly("queueInputBuffer failed" + e10, RtcCountlyConstants.RTC_MEDIA_CODEC_QUEUE_INPUT_BUFFER_ERROR);
                    this.frameInfos.pollLast();
                    this.isFallbackSoftDecoder = true;
                    release();
                    return VideoCodecStatus.FALLBACK_SOFTWARE;
                }
            } catch (IllegalStateException e11) {
                reportErrorToHaimaCountly("getInputBuffers failed" + e11, RtcCountlyConstants.RTC_MEDIA_CODEC_GET_INPUT_BUFFER_ERROR);
                this.isFallbackSoftDecoder = true;
                release();
                return VideoCodecStatus.FALLBACK_SOFTWARE;
            }
        } catch (IllegalStateException e12) {
            reportErrorToHaimaCountly("dequeueInputBuffer failed" + e12, RtcCountlyConstants.RTC_MEDIA_CODEC_DEQUEUE_INPUT_BUFFER_ERROR);
            this.isFallbackSoftDecoder = true;
            release();
            return VideoCodecStatus.FALLBACK_SOFTWARE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0137  */
    protected void deliverDecodedFrame() {
        boolean z10;
        Integer numValueOf;
        this.outputThreadChecker.checkIsOnValidThread();
        if (this.surface != null && this.mRenderView.getSurface() == null) {
            try {
                Thread.sleep(1L);
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        try {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.codec.dequeueOutputBuffer(bufferInfo, 100000L);
            if (iDequeueOutputBuffer == -2) {
                reformat(this.codec.getOutputFormat());
                Logging.d(TAG, "MediaCodec INFO_OUTPUT_FORMAT_CHANGED frame pts: " + bufferInfo.presentationTimeUs);
                return;
            }
            if (iDequeueOutputBuffer < 0) {
                Logging.v(TAG, "dequeueOutputBuffer returned " + iDequeueOutputBuffer);
                return;
            }
            this.lastOutFramesTime = SystemClock.elapsedRealtime();
            int i10 = 0;
            if (lossFlag) {
                this.renderFps++;
                MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
                int iDequeueOutputBuffer2 = this.codec.dequeueOutputBuffer(bufferInfo2, 1000L);
                while (iDequeueOutputBuffer2 >= 0) {
                    Logging.w(TAG, "dropping Frame ===: " + iDequeueOutputBuffer);
                    this.frameInfos.poll();
                    this.codec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                    bufferInfo.flags = bufferInfo2.flags;
                    bufferInfo.offset = bufferInfo2.offset;
                    bufferInfo.presentationTimeUs = bufferInfo2.presentationTimeUs;
                    bufferInfo.size = bufferInfo2.size;
                    this.renderFps++;
                    this.renderLps++;
                    long j10 = this.renderLossCount + 1;
                    this.renderLossCount = j10;
                    if (j10 == 1) {
                        HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_FIRST_LOSS_AFTER_DECODED, "DirectSurfaceVideoDecoder is lossing a frame firstly");
                    }
                    int i11 = iDequeueOutputBuffer2;
                    iDequeueOutputBuffer2 = this.codec.dequeueOutputBuffer(bufferInfo2, 1000L);
                    iDequeueOutputBuffer = i11;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.lastSecond > 1000) {
                    this.lossRate = Double.valueOf(((double) this.renderLps) / ((double) this.renderFps));
                    this.renderLps = 0;
                    this.renderFps = 0;
                    this.lastSecond = jCurrentTimeMillis;
                }
            }
            FrameInfo frameInfoPoll = this.frameInfos.poll();
            if (frameInfoPoll == null) {
                z10 = false;
            } else {
                if (bufferInfo.presentationTimeUs <= 0) {
                    Logging.w(TAG, "Changed pts from " + bufferInfo.presentationTimeUs + " to " + frameInfoPoll.presentationTimeUs);
                    bufferInfo.presentationTimeUs = frameInfoPoll.presentationTimeUs;
                }
                if (bufferInfo.presentationTimeUs == frameInfoPoll.presentationTimeUs) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            if (!z10 && VideoFrame.getFrameInfoMatchByPts()) {
                while (this.frameInfos.size() > 0) {
                    FrameInfo frameInfoPoll2 = this.frameInfos.poll();
                    if (frameInfoPoll2 != null) {
                        long j11 = frameInfoPoll2.presentationTimeUs;
                        long j12 = bufferInfo.presentationTimeUs;
                        if (j11 >= j12) {
                            if (j11 == j12) {
                                frameInfoPoll = frameInfoPoll2;
                                break;
                            }
                            Logging.w(TAG, "New decoded frame pts less than queue item, cur pts: " + bufferInfo.presentationTimeUs);
                        }
                    }
                }
            }
            if (frameInfoPoll != null) {
                numValueOf = Integer.valueOf((int) (SystemClock.elapsedRealtime() - frameInfoPoll.decodeStartTimeMs));
                i10 = frameInfoPoll.rotation;
                if (this.enableSeiDataReport) {
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    SeiData seiDataPoll = this.seiDataInfos.poll();
                    List<SeiData> list = this.frameSeiReportList;
                    if (list != null && seiDataPoll != null) {
                        seiDataPoll.decodedTimestamp = jCurrentTimeMillis2;
                        list.add(seiDataPoll);
                    }
                }
            } else {
                Logging.e(TAG, "frameInfo is null.");
                numValueOf = null;
            }
            this.hasDecodedFirstFrame = true;
            HmDataReportToSaasSdk hmDataReportToSaasSdk = this.seiDataReport;
            if (hmDataReportToSaasSdk != null && hmDataReportToSaasSdk.getIFrameCallback() != null) {
                this.seiDataReport.getIFrameCallback().onFrameDecode(this.mFrameId, System.currentTimeMillis());
            }
            deliverSurfaceFrame(iDequeueOutputBuffer, bufferInfo, i10, numValueOf);
        } catch (IllegalStateException e11) {
            Logging.e(TAG, "deliverDecodedFrame failed", e11);
        }
    }

    @Override // org.hmwebrtc.VideoDecoder
    public int getDecodedHeight() {
        return this.height;
    }

    @Override // org.hmwebrtc.VideoDecoder
    public int getDecodedWidth() {
        return this.width;
    }

    @Override // org.hmwebrtc.VideoDecoder
    public String getImplementationName() {
        return this.codecName;
    }

    @Override // org.hmwebrtc.VideoDecoder
    public VideoCodecStatus initDecode(VideoDecoder.Settings settings, VideoDecoder.Callback callback) {
        try {
            this.decoderThreadChecker = new ThreadUtils.ThreadChecker();
            this.isReportedError = false;
            HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_DIRECT_SURFACE_VIDEO_DECODER_CREATING, "begin to init direct surface decoder,this:" + this + ",codec name:" + this.codecName);
            this.callback = callback;
            Logging.d(TAG, "initDecode with Direct Surface mode:" + settings.width + "x" + settings.height);
            return initDecodeInternal(settings.width, settings.height);
        } catch (Exception e10) {
            HmAndroidCallbackDirectly.hmCallbackDirectly("throwExceptionMsg", "initDecode Exception: " + e10.toString());
            this.isFallbackSoftDecoder = true;
            return VideoCodecStatus.FALLBACK_SOFTWARE;
        }
    }

    boolean isH264codec() {
        if (this.codecType.mimeType() != null) {
            return this.codecType.mimeType().equals(VideoController.f85710g);
        }
        return false;
    }

    public void onFrame(VideoFrame videoFrame) {
        DecodedTextureMetadata decodedTextureMetadata = this.renderedTextureMetadata;
        Integer num = decodedTextureMetadata.decodeTimeMs;
        VideoFrame videoFrame2 = new VideoFrame(this.constBuffer, 0, decodedTextureMetadata.presentationTimestampUs * 1000);
        videoFrame2.setRenderLossInfo((int) (this.lossRate.doubleValue() * 100.0d), this.renderLossCount);
        this.callback.onDecodedFrame(videoFrame2, num, null);
    }

    @Override // org.hmwebrtc.VideoDecoder
    public VideoCodecStatus release() {
        Logging.d(TAG, "release:" + Thread.currentThread().getName());
        HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_DIRECT_SURFACE_VIDEO_DECODER_RELEASING, "start to release the surface decoder:" + Thread.currentThread().getName() + ",this:" + this);
        VideoCodecStatus videoCodecStatusReleaseInternal = releaseInternal();
        this.callback = null;
        this.frameInfos.clear();
        if (this.enableSeiDataReport) {
            releaseSchedule();
            BlockingDeque<SeiData> blockingDeque = this.seiDataInfos;
            if (blockingDeque != null) {
                blockingDeque.clear();
            }
        }
        HmAndroidCallbackDirectly.hmRecordCountlyEvent(RtcCountlyConstants.RTC_DIRECT_SURFACE_VIDEO_DECODER_RELEASED, "return from releasing the surface decoder:" + videoCodecStatusReleaseInternal + ",this:" + this);
        return videoCodecStatusReleaseInternal;
    }
}
