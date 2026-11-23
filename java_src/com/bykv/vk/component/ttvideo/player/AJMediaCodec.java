package com.bykv.vk.component.ttvideo.player;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.Surface;
import com.byazt.bv.BaseConstants;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.utils.Util;
import com.haima.hmcp.ConstantsInternal;
import com.vincent.videocompressor.VideoController;
import io.socket.engineio.client.Socket;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
@Keep
@TargetApi(16)
class AJMediaCodec {
    private static final int AV_TRC_ARIB_STD_B67 = 18;
    private static final int AV_TRC_SMPTE2084 = 16;
    private static final int CODEC_ERROR = -10000;
    private static final int CODEC_EXCEPTION_ERROR = -10001;
    private static final int CODEC_ILLEGAL_ARGUMENT = -10003;
    private static final int CODEC_ILLEGAL_STATE = -10002;
    private static final double FIX_VERSION = 0.18041d;
    private static final long INPUT_TIMEOUT_US = 30000;
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int NO_VALUE = -1;
    private static final int PIXEL_FORMAT_NV12 = 3;
    private static final int PIXEL_FORMAT_YUV420P = 0;
    private static final String TAG = "aj_media_codec";
    private static final String VENDOR_OPPO_PROPERTY = "persist.sys.aweme.hdsupport";
    private static final String VERSION_PROPERTY = "ro.config.hw_codec_support";
    private MediaCodec.BufferInfo mBufferInfo;
    private Surface mDummySurface;
    private String mExceptionInfo;
    private ByteBuffer[] mInputBuffers;
    private MediaCodec mMediaCodec;
    private ByteBuffer[] mOutputBuffers;
    private static ArrayList<MediaCodecInfo> mVideoHWDecoderCodecs = new ArrayList<>();
    private static Object mCodecListLock = new Object();
    private static boolean mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround = false;
    private static boolean mDeviceNeedsSetOutputSurfaceWorkaround = false;
    private static boolean mIsInitDetected = false;
    private static boolean mIsByteVC1Blocklist = false;
    private static boolean mNeedByteVC1WorkAround = false;
    private boolean mInputBuffersValid = false;
    private android.media.MediaFormat mOutputMediaFormat = null;

    @CalledByNative
    public AJMediaCodec() {
        boolean z10 = false;
        if (!mIsInitDetected) {
            if (Util.HARDWARE.toLowerCase(Locale.US).startsWith("mt") && Util.SDK_INT < 26) {
                z10 = true;
            }
            mNeedByteVC1WorkAround = z10;
            if (isHisiByteVC1BlockList() || isMtkByteVC1BlockList()) {
                mIsByteVC1Blocklist = true;
            }
        }
        codecNeedsSetOutputSurfaceWorkaround();
        mIsInitDetected = true;
        m.c(TAG, "initialize, need workaround " + mDeviceNeedsSetOutputSurfaceWorkaround);
    }

    public static int ceilDivide(int i10, int i11) {
        return ((i10 + i11) - 1) / i11;
    }

    private static boolean codecNeedsFlushWorkaround(String str) {
        int i10 = Util.SDK_INT;
        if (i10 < 18) {
            return true;
        }
        if (i10 == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) {
            return true;
        }
        if (i10 == 19 && Util.MODEL.startsWith("SM-G800")) {
            return "OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0051  */
    /* JADX WARN: Code duplicated, block: B:44:0x007f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0085 A[Catch: all -> 0x008d, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000e, B:48:0x0085, B:49:0x0087, B:11:0x001a, B:33:0x005b, B:38:0x006c, B:41:0x0076, B:32:0x0059, B:18:0x0033, B:21:0x003d, B:24:0x0047, B:50:0x0089), top: B:56:0x0003 }] */
    private static boolean codecNeedsSetOutputSurfaceWorkaround() {
        byte b10;
        synchronized (AJMediaCodec.class) {
            if (!mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround) {
                int i10 = Util.SDK_INT;
                if (i10 <= 27 && "dangal".equals(Util.DEVICE)) {
                    mDeviceNeedsSetOutputSurfaceWorkaround = true;
                } else if (i10 < 27) {
                    String str = Util.DEVICE;
                    int iHashCode = str.hashCode();
                    byte b11 = 0;
                    if (iHashCode != 99329) {
                        if (iHashCode != 3351335) {
                            if (iHashCode == 1865889110 && str.equals("santoni")) {
                                b10 = 2;
                            } else {
                                b10 = -1;
                            }
                        } else if (str.equals("mido")) {
                            b10 = 1;
                        } else {
                            b10 = -1;
                        }
                    } else if (str.equals("deb")) {
                        b10 = 0;
                    } else {
                        b10 = -1;
                    }
                    if (b10 == 0 || b10 == 1 || b10 == 2) {
                        mDeviceNeedsSetOutputSurfaceWorkaround = true;
                    }
                    String str2 = Util.MODEL;
                    int iHashCode2 = str2.hashCode();
                    if (iHashCode2 != 2006354) {
                        if (iHashCode2 == 2006367 && str2.equals("AFTN")) {
                            b11 = 1;
                        } else {
                            b11 = -1;
                        }
                    } else if (!str2.equals("AFTA")) {
                        b11 = -1;
                    }
                    if (b11 == 0 || b11 == 1) {
                        mDeviceNeedsSetOutputSurfaceWorkaround = true;
                    }
                }
                mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround = true;
            }
        }
        return mDeviceNeedsSetOutputSurfaceWorkaround;
    }

    private void createDummySurface() {
        this.mDummySurface = DummySurface.newInstanceV17(false);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005b  */
    private static int getMaxInputSize(String str, int i10, int i11) {
        int iCeilDivide;
        int i12;
        if (i10 == -1 || i11 == -1) {
            return -1;
        }
        if (str.equals("video/3gpp") || str.equals("video/mp4v-es")) {
            iCeilDivide = i10 * i11;
            i12 = 2;
        } else if (str.equals(VideoController.f85710g)) {
            if ("BRAVIA 4K 2015".equals(Util.MODEL)) {
                return -1;
            }
            iCeilDivide = ceilDivide(i10, 16) * ceilDivide(i11, 16) * 16 * 16;
            i12 = 2;
        } else if (str.equals("video/x-vnd.on2.vp8")) {
            iCeilDivide = i10 * i11;
            i12 = 2;
        } else {
            if (!str.equals("video/hevc") && !str.equals("video/x-vnd.on2.vp9")) {
                return -1;
            }
            iCeilDivide = i10 * i11;
            i12 = 4;
        }
        return (iCeilDivide * 3) / (i12 * 2);
    }

    public static String getProperty(String str, String str2) {
        try {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
            } catch (Exception e10) {
                m.c(e10);
                return str2;
            }
        } catch (Throwable unused) {
            return str2;
        }
    }

    private boolean isHisiByteVC1BlockList() {
        double d10;
        String property = getProperty("ro.board.platform", null);
        if (Util.SDK_INT != 26 || property == null) {
            return false;
        }
        if (!property.startsWith("kirin960") && !property.startsWith("hi3660")) {
            return false;
        }
        try {
            d10 = Double.parseDouble(getProperty(VERSION_PROPERTY, "0.0"));
        } catch (NumberFormatException unused) {
            m.tt(TAG, "vendor property abnormal");
            d10 = 0.0d;
        }
        return d10 < FIX_VERSION;
    }

    private boolean isMtkByteVC1BlockList() {
        String lowerCase = Util.HARDWARE.toLowerCase(Locale.US);
        return lowerCase.startsWith("mt6763") || lowerCase.startsWith("mt6757") || lowerCase.startsWith("mt6739") || lowerCase.startsWith("mt6750");
    }

    private static void maybeSetCsdBuffers(android.media.MediaFormat mediaFormat, ByteBuffer byteBuffer, int i10) {
        if (byteBuffer == null) {
            return;
        }
        mediaFormat.setByteBuffer("csd-".concat(String.valueOf(i10)), byteBuffer);
    }

    private static void maybeSetInteger(android.media.MediaFormat mediaFormat, String str, int i10) {
        if (i10 != -1) {
            mediaFormat.setInteger(str, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseCodec(MediaCodec mediaCodec) {
        if (mediaCodec == null) {
            return;
        }
        try {
            mediaCodec.release();
            Surface surface = this.mDummySurface;
            if (surface != null) {
                surface.release();
                this.mDummySurface = null;
            }
            m.c(TAG, "codec release end");
        } catch (Exception unused) {
            if (this.mDummySurface != null) {
                this.mDummySurface.release();
                this.mDummySurface = null;
            }
            m.c(TAG, "codec release end");
        } catch (Throwable th) {
            if (this.mDummySurface != null) {
                this.mDummySurface.release();
                this.mDummySurface = null;
            }
            m.c(TAG, "codec release end");
            throw th;
        }
    }

    @TargetApi(21)
    private int renderOutputBufferV21(int i10, long j10) {
        try {
            this.mMediaCodec.releaseOutputBuffer(i10, j10);
            return 0;
        } catch (Exception unused) {
            return -10000;
        }
    }

    @TargetApi(23)
    private int setOutputSurfaceV23(MediaCodec mediaCodec, Surface surface) {
        try {
            mediaCodec.setOutputSurface(surface);
            return 0;
        } catch (Exception e10) {
            handleCodecException(e10);
            m.tt(TAG, "setoutputsurface failed = ".concat(String.valueOf(e10)));
            return -1;
        }
    }

    @CalledByNative
    private boolean supportSetSurface() {
        return !mDeviceNeedsSetOutputSurfaceWorkaround;
    }

    public boolean MTKByteVC1NeedWorkAround() {
        return mNeedByteVC1WorkAround;
    }

    @CalledByNative
    public void close() {
        m.c(TAG, "close start");
        if (this.mMediaCodec != null) {
            stop();
            final MediaCodec mediaCodec = this.mMediaCodec;
            this.mInputBuffers = null;
            this.mOutputBuffers = null;
            this.mMediaCodec = null;
            try {
                AVThreadPool.addTask(new Runnable() { // from class: com.bykv.vk.component.ttvideo.player.AJMediaCodec.1
                    @Override // java.lang.Runnable
                    public void run() {
                        m.c(AJMediaCodec.TAG, "start releaseCodec task");
                        AJMediaCodec.this.releaseCodec(mediaCodec);
                    }
                });
            } catch (Throwable unused) {
                m.tt(TAG, "new thread failed");
                releaseCodec(mediaCodec);
            }
        }
        m.c(TAG, "close end");
    }

    @CalledByNative
    public int configure(int i10, int i11, int i12, int i13, int i14, String str, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, Surface surface, boolean z10, boolean z11, int i15, int i16, boolean z12, int i17, boolean z13, boolean z14, int i18, int i19) {
        Surface surface2 = surface;
        int i20 = i15;
        int i21 = i16;
        m.c(TAG, "configure =" + surface2 + ", surfaceConfigure =" + z10);
        android.media.MediaFormat mediaFormat = new android.media.MediaFormat();
        mediaFormat.setString("mime", str);
        maybeSetInteger(mediaFormat, "width", i10);
        maybeSetInteger(mediaFormat, "height", i11);
        if (i20 != -1 && i21 != -1) {
            if (i20 <= i10) {
                i20 = i10;
            }
            maybeSetInteger(mediaFormat, "max-width", i20);
            if (i21 <= i11) {
                i21 = i11;
            }
            maybeSetInteger(mediaFormat, "max-height", i21);
        }
        maybeSetInteger(mediaFormat, MediaFormat.KEY_SAMPLE_RATE, i13);
        maybeSetInteger(mediaFormat, MediaFormat.KEY_CHANNEL_COUNT, i14);
        m.c(TAG, "format  = ".concat(String.valueOf(mediaFormat)));
        int maxInputSize = getMaxInputSize(str, i10, i11);
        m.c(TAG, "max input = ".concat(String.valueOf(maxInputSize)));
        maybeSetInteger(mediaFormat, "max-input-size", maxInputSize);
        maybeSetCsdBuffers(mediaFormat, byteBuffer, 0);
        maybeSetCsdBuffers(mediaFormat, byteBuffer2, 1);
        maybeSetCsdBuffers(mediaFormat, byteBuffer3, 2);
        if (z10) {
            int i22 = Util.SDK_INT;
            if (i22 >= 21) {
                maybeSetInteger(mediaFormat, "rotation-degrees", i12);
            }
            if ((surface2 == null || !surface.isValid()) && this.mDummySurface == null && i22 >= 23 && !mDeviceNeedsSetOutputSurfaceWorkaround) {
                m.c(TAG, "create dummy surface");
                createDummySurface();
                surface2 = this.mDummySurface;
            }
            if (surface2 == null) {
                this.mExceptionInfo = "Error: configure with null surface";
                return CODEC_ILLEGAL_ARGUMENT;
            }
        }
        if (Util.SDK_INT >= 23 && z11) {
            mediaFormat.setInteger("priority", 0);
        }
        if (z12) {
            VendorQTI.setupVpp(mediaFormat, i17);
        }
        if (z13) {
            VendorQTI.debugEffect(mediaFormat);
        }
        if (z14) {
            VendorQTI.enableLowLatency(mediaFormat);
        }
        if (i19 > 0 && i18 >= 0) {
            String dolbyCodecs = MediaCodecUtil.getDolbyCodecs(i18, i19);
            Pair<Integer, Integer> dolbyVisionProfileAndLevel = MediaCodecUtil.getDolbyVisionProfileAndLevel(dolbyCodecs, dolbyCodecs.split("\\."));
            if (dolbyVisionProfileAndLevel != null) {
                maybeSetInteger(mediaFormat, "profile", ((Integer) dolbyVisionProfileAndLevel.first).intValue());
            }
        }
        try {
            this.mMediaCodec.configure(mediaFormat, surface2, (MediaCrypto) null, 0);
            return 0;
        } catch (Exception e10) {
            handleCodecException(e10);
            if (e10 instanceof IllegalArgumentException) {
                return CODEC_ILLEGAL_ARGUMENT;
            }
            return -1;
        }
    }

    @CalledByNative
    public int createByCodecName(String str) {
        m.c(TAG, "createByCodecName = ".concat(String.valueOf(str)));
        try {
            this.mMediaCodec = MediaCodec.createByCodecName(str);
            return 0;
        } catch (Exception e10) {
            handleCodecException(e10);
            return -1;
        }
    }

    @TargetApi(23)
    @CalledByNative
    public void decodeFRC(int i10) {
        if (this.mMediaCodec == null || !this.mInputBuffersValid || Util.SDK_INT < 23) {
            return;
        }
        m.c(TAG, "frc level = ".concat(String.valueOf(i10)));
        Bundle bundle = new Bundle();
        bundle.putInt("vivo.video-dec.dynamic-frc", i10);
        try {
            this.mMediaCodec.setParameters(bundle);
        } catch (Exception e10) {
            m.tt(TAG, "setParameters failed ret = ".concat(String.valueOf(e10)));
        }
    }

    @CalledByNative
    public int dequeueInputBuffer(long j10) {
        try {
            return this.mMediaCodec.dequeueInputBuffer(j10);
        } catch (Exception e10) {
            return handleCodecException(e10);
        }
    }

    @CalledByNative
    public void flush() {
        m.c(TAG, Socket.EVENT_FLUSH);
        try {
            this.mMediaCodec.flush();
        } catch (Exception unused) {
        }
        m.c(TAG, "flush done");
    }

    @CalledByNative
    public String getBestCodecName(String str) {
        String[] supportedTypes;
        AJMediaCodecRank aJMediaCodecRank;
        if (Util.SDK_INT < 16 || TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equals("video/hevc") && mIsByteVC1Blocklist) {
            m.tt(TAG, "the device is hw decoder blocklist," + Util.HARDWARE);
            return null;
        }
        m.c(TAG, "detect hardware codec by codecType = ".concat(str));
        ArrayList<AJMediaCodecRank> arrayList = new ArrayList();
        synchronized (mCodecListLock) {
            boolean z10 = !mVideoHWDecoderCodecs.isEmpty();
            try {
                int size = z10 ? mVideoHWDecoderCodecs.size() : MediaCodecList.getCodecCount();
                for (int i10 = 0; i10 < size && (!z10 || arrayList.isEmpty()); i10++) {
                    MediaCodecInfo codecInfoAt = z10 ? mVideoHWDecoderCodecs.get(i10) : MediaCodecList.getCodecInfoAt(i10);
                    String name = codecInfoAt.getName();
                    if (!codecInfoAt.isEncoder() && !name.startsWith("OMX.google") && !name.startsWith("c2.android") && (supportedTypes = codecInfoAt.getSupportedTypes()) != null) {
                        for (String str2 : supportedTypes) {
                            if (!TextUtils.isEmpty(str2)) {
                                if (!z10 && str2.startsWith("video/")) {
                                    mVideoHWDecoderCodecs.add(codecInfoAt);
                                }
                                if (str2.equalsIgnoreCase(str) && ((name.startsWith("OMX.") || name.startsWith("c2.")) && !name.startsWith("OMX.pv") && !name.startsWith("OMX.ittiam") && !name.contains("ffmpeg") && !name.contains("avcodec") && !name.contains("secure") && ((!name.startsWith("OMX.MTK.") || Util.SDK_INT >= 18) && !codecNeedsFlushWorkaround(name) && (aJMediaCodecRank = AJMediaCodecRank.setupRank(codecInfoAt, str)) != null))) {
                                    m.c(TAG, "codec : " + aJMediaCodecRank.mMediaCodecInfo.getName() + ",  rank : " + aJMediaCodecRank.mRank);
                                    int i11 = aJMediaCodecRank.mRank;
                                    if (i11 == 40 && Util.SDK_INT < 21) {
                                        m.tt(TAG, "skip vendor mediacodec api impl ambiguous");
                                    } else if (i11 == 20) {
                                        m.tt(TAG, "skip vendor software codec");
                                    } else {
                                        arrayList.add(aJMediaCodecRank);
                                    }
                                }
                            }
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return null;
                }
                AJMediaCodecRank aJMediaCodecRank2 = (AJMediaCodecRank) arrayList.get(0);
                for (AJMediaCodecRank aJMediaCodecRank3 : arrayList) {
                    if (aJMediaCodecRank3.mRank > aJMediaCodecRank2.mRank) {
                        aJMediaCodecRank2 = aJMediaCodecRank3;
                    }
                }
                return aJMediaCodecRank2.mMediaCodecInfo.getName();
            } catch (Exception unused) {
                m.tt(TAG, "mediaserver died");
                return null;
            }
        }
    }

    @CalledByNative
    public int getChannelCount() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.getInteger(MediaFormat.KEY_CHANNEL_COUNT);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getColorFormat() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                int integer = mediaFormat.getInteger("color-format");
                return (integer == 21 || integer == 2130706688 || integer == 2141391872) ? 3 : 0;
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getColorTransfer() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                int integer = mediaFormat.getInteger("color-transfer");
                if (integer != 6) {
                    return integer != 7 ? 0 : 18;
                }
                return 16;
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public String getErrorInfo() {
        return this.mExceptionInfo;
    }

    @CalledByNative
    public int getFormatHeight() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.containsKey(KEY_CROP_RIGHT) && this.mOutputMediaFormat.containsKey(KEY_CROP_LEFT) && this.mOutputMediaFormat.containsKey(KEY_CROP_BOTTOM) && this.mOutputMediaFormat.containsKey(KEY_CROP_TOP) ? (this.mOutputMediaFormat.getInteger(KEY_CROP_BOTTOM) - this.mOutputMediaFormat.getInteger(KEY_CROP_TOP)) + 1 : this.mOutputMediaFormat.getInteger("height");
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getFormatWidth() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.containsKey(KEY_CROP_RIGHT) && this.mOutputMediaFormat.containsKey(KEY_CROP_LEFT) && this.mOutputMediaFormat.containsKey(KEY_CROP_BOTTOM) && this.mOutputMediaFormat.containsKey(KEY_CROP_TOP) ? (this.mOutputMediaFormat.getInteger(KEY_CROP_RIGHT) - this.mOutputMediaFormat.getInteger(KEY_CROP_LEFT)) + 1 : this.mOutputMediaFormat.getInteger("width");
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public ByteBuffer[] getInputBuffers() {
        if (this.mInputBuffersValid) {
            return this.mInputBuffers;
        }
        return null;
    }

    @CalledByNative
    public int getOSVerion() {
        return Util.SDK_INT;
    }

    @CalledByNative
    public int getSampleRate() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.getInteger(MediaFormat.KEY_SAMPLE_RATE);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getSliceHeight() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.getInteger("slice-height");
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    @CalledByNative
    public int getStride() {
        android.media.MediaFormat mediaFormat = this.mOutputMediaFormat;
        if (mediaFormat != null) {
            try {
                return mediaFormat.getInteger("stride");
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public int handleCodecException(Exception exc) {
        this.mExceptionInfo = exc.toString();
        if (Util.SDK_INT >= 21) {
            return handleCodecExceptionV21(exc);
        }
        if (exc instanceof IllegalStateException) {
            return CODEC_ILLEGAL_STATE;
        }
        return -10000;
    }

    @TargetApi(21)
    public int handleCodecExceptionV21(Exception exc) {
        if (exc instanceof MediaCodec.CodecException) {
            MediaCodec.CodecException codecException = (MediaCodec.CodecException) exc;
            if (Util.SDK_INT >= 23) {
                codecException.isRecoverable();
                codecException.getErrorCode();
                if (!codecException.isRecoverable() && codecException.getErrorCode() != 1100 && codecException.getErrorCode() != 1101) {
                    return CODEC_EXCEPTION_ERROR;
                }
            } else {
                codecException.isRecoverable();
                if (!codecException.isRecoverable()) {
                    return CODEC_EXCEPTION_ERROR;
                }
            }
        }
        if (exc instanceof IllegalStateException) {
            return CODEC_ILLEGAL_STATE;
        }
        return -10000;
    }

    public int open(int i10, int i11, int i12, String str, String str2, ByteBuffer byteBuffer, Surface surface) {
        m.c(TAG, "open, rotation = " + i12 + "; codecName = " + str + "; codecType =" + str2);
        try {
            this.mMediaCodec = MediaCodec.createByCodecName(str);
            m.c(TAG, "configure mediacodec");
            android.media.MediaFormat mediaFormat = new android.media.MediaFormat();
            mediaFormat.setString("mime", str2);
            maybeSetInteger(mediaFormat, "width", i10);
            maybeSetInteger(mediaFormat, "height", i11);
            if (byteBuffer != null) {
                mediaFormat.setByteBuffer("csd-0", byteBuffer);
            }
            if (surface != null && Util.SDK_INT >= 21) {
                maybeSetInteger(mediaFormat, "rotation-degrees", i12);
            }
            this.mMediaCodec.configure(mediaFormat, surface, (MediaCrypto) null, 0);
            m.c(TAG, "mediacodec start");
            this.mMediaCodec.start();
            this.mInputBuffers = this.mMediaCodec.getInputBuffers();
            this.mInputBuffersValid = true;
            String.format(Locale.US, "open() input params. width:%d,height:%d", Integer.valueOf(i10), Integer.valueOf(i11));
            return 0;
        } catch (Exception unused) {
            return -1;
        }
    }

    @CalledByNative
    public int queueInputBuffer(int i10, int i11, int i12, long j10, int i13) {
        try {
            this.mMediaCodec.queueInputBuffer(i10, i11, i12, j10, i13);
            return 0;
        } catch (Exception e10) {
            return handleCodecException(e10);
        }
    }

    @CalledByNative
    public int read(AJMediaCodecFrame aJMediaCodecFrame, long j10) {
        while (true) {
            try {
                int iDequeueOutputBuffer = this.mMediaCodec.dequeueOutputBuffer(this.mBufferInfo, j10);
                if (iDequeueOutputBuffer >= 0) {
                    aJMediaCodecFrame.data = this.mOutputBuffers[iDequeueOutputBuffer];
                    MediaCodec.BufferInfo bufferInfo = this.mBufferInfo;
                    aJMediaCodecFrame.pts = bufferInfo.presentationTimeUs;
                    aJMediaCodecFrame.index = iDequeueOutputBuffer;
                    aJMediaCodecFrame.size = bufferInfo.size;
                    aJMediaCodecFrame.flags = bufferInfo.flags;
                    return 0;
                }
                if (iDequeueOutputBuffer != -3) {
                    if (iDequeueOutputBuffer != -2) {
                        if (iDequeueOutputBuffer != -1) {
                            m.uj(TAG, "error, idx = ".concat(String.valueOf(iDequeueOutputBuffer)));
                        }
                        return -1;
                    }
                    m.c(TAG, "INFO_OUTPUT_FORMAT_CHANGED");
                    try {
                        this.mOutputMediaFormat = this.mMediaCodec.getOutputFormat();
                        if (this.mOutputBuffers == null) {
                            try {
                                this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
                            } catch (Exception e10) {
                                m.c(TAG, "getOutputBuffers e = ".concat(String.valueOf(e10)));
                                return handleCodecException(e10);
                            }
                        }
                        return iDequeueOutputBuffer;
                    } catch (Exception e11) {
                        m.c(TAG, "getOutputFormat e =".concat(String.valueOf(e11)));
                        return handleCodecException(e11);
                    }
                }
                m.c(TAG, "INFO_OUTPUT_BUFFERS_CHANGED");
                try {
                    this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
                } catch (Exception e12) {
                    m.c(TAG, "getOutputBuffers e = ".concat(String.valueOf(e12)));
                    return handleCodecException(e12);
                }
            } catch (Exception e13) {
                m.c(TAG, "dequeueOutputBuffer e :".concat(String.valueOf(e13)));
                return handleCodecException(e13);
            }
        }
    }

    @CalledByNative
    public int releaseBuffer(int i10, boolean z10, long j10) {
        if (Util.SDK_INT >= 21 && z10) {
            return renderOutputBufferV21(i10, j10);
        }
        try {
            this.mMediaCodec.releaseOutputBuffer(i10, z10);
            return 0;
        } catch (Exception e10) {
            return handleCodecException(e10);
        }
    }

    @CalledByNative
    public int setOutputSurface(Surface surface) {
        if (mDeviceNeedsSetOutputSurfaceWorkaround || !this.mInputBuffersValid) {
            return -1;
        }
        if (surface == null) {
            if (this.mDummySurface == null) {
                createDummySurface();
            }
            surface = this.mDummySurface;
            m.c(TAG, "use dummy surface");
        }
        return setOutputSurfaceV23(this.mMediaCodec, surface);
    }

    @TargetApi(23)
    @CalledByNative
    public void speedEnhance(float f10) {
        if (this.mMediaCodec == null || !this.mInputBuffersValid || Util.SDK_INT < 23 || f10 <= 30.0f) {
            return;
        }
        m.c(TAG, "rate ".concat(String.valueOf(f10)));
        Bundle bundle = new Bundle();
        bundle.putFloat("operating-rate", f10);
        try {
            this.mMediaCodec.setParameters(bundle);
        } catch (Exception e10) {
            m.tt(TAG, "setParameters failed ret = ".concat(String.valueOf(e10)));
        }
    }

    @CalledByNative
    public int start() {
        m.c(TAG, "start");
        try {
            this.mMediaCodec.start();
            this.mInputBuffers = this.mMediaCodec.getInputBuffers();
            if (Util.SDK_INT >= 21) {
                this.mOutputBuffers = this.mMediaCodec.getOutputBuffers();
            }
            this.mInputBuffersValid = true;
            this.mBufferInfo = new MediaCodec.BufferInfo();
            m.c(TAG, "start end");
            return 0;
        } catch (Exception e10) {
            handleCodecException(e10);
            return -1;
        }
    }

    @CalledByNative
    public int stop() {
        if (this.mInputBuffersValid) {
            m.c(TAG, ConstantsInternal.STOP);
            try {
                this.mInputBuffersValid = false;
                this.mMediaCodec.stop();
            } catch (Exception unused) {
                return -1;
            }
        }
        return 0;
    }

    @CalledByNative
    public int vendorOppoHWEnable() {
        if (Util.BARND.equals(BaseConstants.ROM_OPPO_UPPER_CONSTANT)) {
            String property = getProperty(VENDOR_OPPO_PROPERTY, "1");
            m.c(TAG, "oppo property = ".concat(String.valueOf(property)));
            try {
                return Integer.parseInt(property);
            } catch (NumberFormatException unused) {
                m.tt(TAG, "vendor oppo property abnormal");
            }
        }
        return 1;
    }

    @CalledByNative
    public int write(AJMediaCodecFrame aJMediaCodecFrame) {
        if (aJMediaCodecFrame != null && aJMediaCodecFrame.data != null) {
            try {
                int iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(INPUT_TIMEOUT_US);
                if (iDequeueInputBuffer < 0) {
                    return iDequeueInputBuffer == -1 ? 4 : -1;
                }
                this.mInputBuffers[iDequeueInputBuffer].put(aJMediaCodecFrame.data);
                this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, aJMediaCodecFrame.size, aJMediaCodecFrame.pts, 0);
                return 0;
            } catch (Exception e10) {
                m.uj(TAG, "write meet exception =".concat(String.valueOf(e10)));
            }
        }
        return -1;
    }
}
