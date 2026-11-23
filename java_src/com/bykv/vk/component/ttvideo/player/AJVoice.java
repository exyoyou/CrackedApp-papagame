package com.bykv.vk.component.ttvideo.player;

import android.annotation.SuppressLint;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.ConditionVariable;
import android.os.SystemClock;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.utils.AVLogger;
import com.bykv.vk.component.ttvideo.utils.Util;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public class AJVoice implements AudioTrack.OnPlaybackPositionUpdateListener {
    private static final int DISCONTINGUNITY_MS = 200;
    private static final int ERROR_FORMAT_ILLEGAL = -12;
    private static final int ERROR_NULL_BUFFER = -10;
    private static final int ERROR_SIZE_ILLEGAL = -11;
    private static final long FORCE_RESET_WORKAROUND_TIMEOUT_MS = 200;
    private static final int MAX_LATENCY_MS = 5000;
    private static final int MIN_LATENCY_CHECK_MS = 500;
    private static final int MS_UNIT = 1000;
    private static final long RELEASE_WORKAROUND_TIME_MS = 80;
    private static final int SDK_INT = Build.VERSION.SDK_INT;
    private static final int START_NO_SET = -1;
    private static final int S_FAIL = -1;
    private static final int S_OK = 0;
    private static final String TAG = "AJVoice";
    private static final long TIME_UNSET = -9223372036854775807L;
    private static final int kNoSettingVolume = -1;
    private static String mDeviceName;
    private static boolean mNeedReleaseWorkAround;
    private AudioTrackPositionTracker audioTrackPositionTracker;
    private byte[] mMinBytes;
    private ConditionVariable mReleasingConditionVariable;
    private AudioTrack mAudioTrack = null;
    private TTPlayer mPlayer = null;
    private int mBlockSize = 2048;
    private int mSampleRate = 44100;
    private int mChannels = 2;
    private int mSampleBytes = 2;
    private int mSampleFormat = 0;
    private int mFrameSamples = 0;
    private AudioManager mAudioManager = null;
    private int mChannelsLayout = 0;
    private int mAudioFormat = 2;
    private float mLeftVolume = -1.0f;
    private int mMaxVolume = 0;
    private volatile boolean mStoped = true;
    private int mSerial = -1;
    private Method getLatencyMethod = null;
    private int mTrackBufferSize = 0;
    private int mLatencyMs = 0;
    private int mBufferSizeMs = 0;
    private long mLastGetLatencyMs = 0;
    private long mWrittenPcmBytes = 0;
    private long lastRawPlaybackHeadPosition = 0;
    private long forceResetWorkaroundTimeMs = -9223372036854775807L;
    private long mStartTime = 0;
    private int mStreamType = 3;
    private int mEnableAudioTrackSmoothClock = 0;

    @Keep
    private long mNativeObject = 0;
    private int mStartMediaTimeMs = -1;

    @CalledByNative
    public AJVoice() {
        if (mDeviceName == null) {
            String str = Build.DEVICE;
            mDeviceName = str;
            if (str.equals("OnePlus6T")) {
                mNeedReleaseWorkAround = true;
            }
        }
    }

    public static int getAudioTrackChannelConfig(int i10) {
        switch (i10) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return 204;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                return 6396;
            default:
                return 0;
        }
    }

    public static int getPcmFrameSize(int i10, int i11) {
        if (i10 == 2) {
            return i11 * 2;
        }
        if (i10 == 3) {
            return i11;
        }
        throw new IllegalArgumentException();
    }

    private long getPlaybackBytes() {
        return getPlaybackHeadPosition() * ((long) getPcmFrameSize(this.mAudioFormat, this.mChannels));
    }

    private long getPlaybackHeadPosition() {
        int playState = this.mAudioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = ((long) this.mAudioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (playbackHeadPosition == 0 && this.lastRawPlaybackHeadPosition > 0 && playState == 3) {
            if (this.forceResetWorkaroundTimeMs == -9223372036854775807L) {
                this.forceResetWorkaroundTimeMs = SystemClock.elapsedRealtime();
            }
            return this.lastRawPlaybackHeadPosition;
        }
        this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        this.lastRawPlaybackHeadPosition = playbackHeadPosition;
        return playbackHeadPosition;
    }

    private long getPlaybackPositionMs() {
        return (getPlaybackHeadPosition() * 1000) / ((long) this.mSampleRate);
    }

    private long getWrittenDurationMs() {
        return ((this.mWrittenPcmBytes / ((long) getPcmFrameSize(this.mAudioFormat, this.mChannels))) * 1000) / ((long) this.mSampleRate);
    }

    private boolean needsReset() {
        return this.forceResetWorkaroundTimeMs != -9223372036854775807L && this.mWrittenPcmBytes > 0 && SystemClock.elapsedRealtime() - this.forceResetWorkaroundTimeMs >= 200;
    }

    private int reconfigure() {
        AudioManager audioManager = (AudioManager) this.mPlayer.getContext().getSystemService("audio");
        this.mAudioManager = audioManager;
        if (audioManager != null) {
            this.mMaxVolume = audioManager.getStreamMaxVolume(this.mStreamType);
        }
        int audioTrackChannelConfig = getAudioTrackChannelConfig(this.mChannels);
        this.mChannelsLayout = audioTrackChannelConfig;
        if (audioTrackChannelConfig == 0) {
            AVLogger.k(TAG, String.format(Locale.US, "not supoort channel:%d", Integer.valueOf(this.mChannels)));
            return -1;
        }
        int i10 = this.mSampleBytes;
        if (i10 == 1) {
            this.mAudioFormat = 3;
        } else {
            if (i10 != 2) {
                return -12;
            }
            this.mAudioFormat = 2;
        }
        int minBufferSize = AudioTrack.getMinBufferSize(this.mSampleRate, audioTrackChannelConfig, this.mAudioFormat);
        if (minBufferSize <= 0) {
            m.uj(TAG, "getMinBufferSize failed, trace: sampleRate = " + this.mSampleRate + ", mChannelsLayout = " + this.mChannelsLayout + ", mAudioFormat = " + this.mAudioFormat);
            return minBufferSize;
        }
        this.mTrackBufferSize = minBufferSize;
        try {
            this.mMinBytes = new byte[minBufferSize];
            this.mBufferSizeMs = ((minBufferSize / getPcmFrameSize(this.mAudioFormat, this.mChannels)) * 1000) / this.mSampleRate;
            try {
                AudioTrack audioTrack = new AudioTrack(this.mStreamType, this.mSampleRate, this.mChannelsLayout, this.mAudioFormat, minBufferSize, 1);
                this.mAudioTrack = audioTrack;
                if (audioTrack.getState() == 1) {
                    return 0;
                }
                try {
                    this.mAudioTrack.release();
                } catch (Throwable unused) {
                }
                this.mAudioTrack = null;
                m.uj(TAG, "create audiotrack but failed to initialize");
                return -3;
            } catch (Throwable th) {
                m.uj(TAG, "create audio track failed ,detail = ".concat(String.valueOf(th)));
                return -1;
            }
        } catch (OutOfMemoryError unused2) {
            m.uj(TAG, "out of memory error when new audio buffer for audiotrack");
            return -10;
        }
    }

    private int reset() {
        this.mWrittenPcmBytes = 0L;
        this.mLatencyMs = 0;
        this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        this.mLastGetLatencyMs = 0L;
        this.lastRawPlaybackHeadPosition = 0L;
        this.mLeftVolume = -1.0f;
        AudioTrack audioTrack = this.mAudioTrack;
        this.mAudioTrack = null;
        try {
            audioTrack.flush();
            audioTrack.release();
        } catch (Exception unused) {
        } finally {
            reconfigure();
        }
        return reconfigure();
    }

    @CalledByNative
    public void close() {
        final AudioTrack audioTrack = this.mAudioTrack;
        if (audioTrack != null) {
            this.mAudioTrack = null;
            try {
                AVThreadPool.addTask(new Runnable() { // from class: com.bykv.vk.component.ttvideo.player.AJVoice.1
                    @Override // java.lang.Runnable
                    public void run() {
                        m.c(AJVoice.TAG, "start release task");
                        AJVoice.this.releaseTrack(audioTrack);
                    }
                });
            } catch (Throwable th) {
                m.tt(TAG, "create close thread fail = ".concat(String.valueOf(th)));
                releaseTrack(audioTrack);
            }
        }
    }

    @CalledByNative
    public void flush() {
        try {
            AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            if (audioTrackPositionTracker != null) {
                audioTrackPositionTracker.reset();
            }
            this.mStartMediaTimeMs = -1;
            this.mAudioTrack.flush();
            if (this.mWrittenPcmBytes > 0) {
                this.mWrittenPcmBytes = 0L;
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @CalledByNative
    public int getCurrentPositionMs() {
        AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
        if (audioTrackPositionTracker != null) {
            return this.mStartMediaTimeMs + ((int) (audioTrackPositionTracker.getCurrentPositionUs(false) / 1000));
        }
        return 0;
    }

    @CalledByNative
    public int getEOSDelayMs() {
        return (int) ((getWrittenDurationMs() - getPlaybackPositionMs()) + (getLatency() > 0 ? this.mLatencyMs - this.mBufferSizeMs : 0L));
    }

    @CalledByNative
    public int getLatency() {
        getPlaybackHeadPosition();
        if (this.getLatencyMethod != null) {
            long jNanoTime = System.nanoTime() / C.MICROS_PER_SECOND;
            if (jNanoTime - this.mLastGetLatencyMs > 500) {
                try {
                    int iIntValue = ((Integer) this.getLatencyMethod.invoke(this.mAudioTrack, null)).intValue();
                    this.mLatencyMs = iIntValue;
                    int iMax = Math.max(iIntValue, 0);
                    this.mLatencyMs = iMax;
                    if (iMax > 5000) {
                        m.tt(TAG, "Ignoring impossibly large audio latency: " + this.mLatencyMs);
                        this.mLatencyMs = 0;
                    }
                } catch (Exception unused) {
                    this.getLatencyMethod = null;
                }
                this.mLastGetLatencyMs = jNanoTime;
            }
        }
        return this.mLatencyMs;
    }

    @CalledByNative
    public int getMaxVolume() {
        m.c("ttmn", "getMaxVolume:" + this.mMaxVolume);
        return this.mMaxVolume;
    }

    @CalledByNative
    public int getTrackBufferSize() {
        return this.mTrackBufferSize;
    }

    @CalledByNative
    public float getVolume() {
        int streamMaxVolume;
        AudioManager audioManager;
        int streamVolume = 0;
        if (this.mPlayer == null || this.mLeftVolume != -1.0f || (audioManager = this.mAudioManager) == null) {
            streamMaxVolume = 0;
        } else {
            try {
                streamMaxVolume = audioManager.getStreamMaxVolume(this.mStreamType);
                try {
                    streamVolume = this.mAudioManager.getStreamVolume(this.mStreamType);
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                streamMaxVolume = 0;
            }
        }
        if (streamVolume >= 0) {
            return streamVolume;
        }
        if (streamMaxVolume > 0) {
            return streamMaxVolume / 4;
        }
        return 10.0f;
    }

    @Override // android.media.AudioTrack.OnPlaybackPositionUpdateListener
    public void onMarkerReached(AudioTrack audioTrack) {
    }

    @Override // android.media.AudioTrack.OnPlaybackPositionUpdateListener
    public void onPeriodicNotification(AudioTrack audioTrack) {
    }

    @CalledByNative
    public int open(long j10, TTPlayer tTPlayer) {
        this.mPlayer = tTPlayer;
        int iReconfigure = reconfigure();
        if (iReconfigure == 0) {
            float f10 = this.mLeftVolume;
            if (f10 != -1.0f) {
                setVolume(f10, f10);
            }
            try {
                this.getLatencyMethod = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        return iReconfigure;
    }

    @CalledByNative
    public void pause() {
        try {
            AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            if (audioTrackPositionTracker != null) {
                audioTrackPositionTracker.pause();
            }
            this.mAudioTrack.pause();
        } catch (Throwable th) {
            m.c(th);
        }
    }

    public void releaseTrack(AudioTrack audioTrack) {
        if (audioTrack == null) {
            return;
        }
        try {
            if (mNeedReleaseWorkAround) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.mStartTime;
                if (jElapsedRealtime <= RELEASE_WORKAROUND_TIME_MS) {
                    Thread.sleep(RELEASE_WORKAROUND_TIME_MS - jElapsedRealtime);
                }
            }
        } catch (Exception unused) {
        }
        try {
            audioTrack.release();
        } catch (Exception e10) {
            m.tt(TAG, "release in invalid state = ".concat(String.valueOf(e10)));
        }
    }

    @CalledByNative
    public void resume() {
        try {
            AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            if (audioTrackPositionTracker != null) {
                AudioTrack audioTrack = this.mAudioTrack;
                int i10 = this.mAudioFormat;
                audioTrackPositionTracker.setAudioTrack(audioTrack, i10, getPcmFrameSize(i10, this.mChannels), this.mTrackBufferSize);
                this.audioTrackPositionTracker.start();
            }
            this.mAudioTrack.play();
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @CalledByNative
    public void setAudioTrackSmoothClock(int i10) {
        if (Util.SDK_INT >= 21) {
            this.mEnableAudioTrackSmoothClock = i10;
            if (i10 > 0) {
                this.audioTrackPositionTracker = new AudioTrackPositionTracker(null);
                this.mReleasingConditionVariable = new ConditionVariable(true);
            }
        }
    }

    @CalledByNative
    public void setSampleInfo(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.mSampleRate = i11;
        this.mChannels = i12;
        this.mBlockSize = i13;
        this.mSampleBytes = i15;
        this.mSampleFormat = i10;
        this.mFrameSamples = i14;
    }

    @CalledByNative
    public void setStreamType(int i10) {
        this.mStreamType = i10;
        if (this.mPlayer != null && reset() == 0) {
            start();
        }
    }

    @CalledByNative
    public void setTrackVolume(float f10, float f11) {
        AudioTrack audioTrack = this.mAudioTrack;
        if (audioTrack != null) {
            audioTrack.setStereoVolume(f10, f11);
        }
    }

    @CalledByNative
    public void setVolume(float f10, float f11) {
        AudioTrack audioTrack;
        try {
            int i10 = this.mMaxVolume;
            if (i10 < f10) {
                f10 = i10;
            }
            if (f11 != -1048575.0f || (audioTrack = this.mAudioTrack) == null) {
                AudioManager audioManager = this.mAudioManager;
                if (audioManager != null) {
                    audioManager.setStreamVolume(this.mStreamType, (int) f10, 0);
                }
            } else {
                audioTrack.setStereoVolume(f10, f11);
            }
            this.mLeftVolume = f10;
        } catch (Exception unused) {
        }
    }

    @CalledByNative
    public int start() {
        if (this.mAudioTrack == null) {
            m.uj(TAG, "audiotrack start before created");
            return -2;
        }
        this.mStoped = false;
        try {
            AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            if (audioTrackPositionTracker != null) {
                AudioTrack audioTrack = this.mAudioTrack;
                int i10 = this.mAudioFormat;
                audioTrackPositionTracker.setAudioTrack(audioTrack, i10, getPcmFrameSize(i10, this.mChannels), this.mTrackBufferSize);
            }
            this.mAudioTrack.play();
            this.mSerial = -1;
            if (mNeedReleaseWorkAround) {
                this.mStartTime = SystemClock.elapsedRealtime();
            }
            return 0;
        } catch (Throwable th) {
            m.uj(TAG, "audioTrack start failed = ".concat(String.valueOf(th)));
            return -3;
        }
    }

    @CalledByNative
    public void stop() {
        if (this.mStoped) {
            return;
        }
        this.mStoped = true;
        try {
            AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            if (audioTrackPositionTracker != null) {
                audioTrackPositionTracker.pause();
            }
            this.mAudioTrack.pause();
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @CalledByNative
    public int write(byte[] bArr, int i10, int i11, int i12) {
        if (bArr == null || bArr.length == 0) {
            AVLogger.e(TAG, "buffer is nullpoint");
            return -10;
        }
        int iStart = 0;
        if (this.mStoped) {
            return 0;
        }
        if (this.mSerial != i12) {
            this.mSerial = i12;
            if (this.mWrittenPcmBytes > 0) {
                this.mAudioTrack.flush();
            }
        }
        try {
            int iWrite = this.mAudioTrack.write(bArr, i10, i11);
            if (iWrite >= 0) {
                this.mWrittenPcmBytes += (long) iWrite;
                if (needsReset() && reset() == 0) {
                    iStart = start();
                }
                return iStart == 0 ? iWrite : iStart;
            }
            m.uj(TAG, "write failed : ret: " + iWrite + ", size = " + i11);
            return iWrite;
        } catch (Exception e10) {
            m.c(e10);
            return -1;
        }
    }

    @CalledByNative
    public int write(byte[] bArr, int i10, int i11, int i12, long j10) {
        if (bArr != null && bArr.length != 0) {
            int iStart = 0;
            if (this.mStoped) {
                return 0;
            }
            if (this.mSerial != i12) {
                this.mSerial = i12;
                AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
                if (audioTrackPositionTracker == null || this.mReleasingConditionVariable == null) {
                    if (this.mWrittenPcmBytes > 0) {
                        this.mAudioTrack.flush();
                    }
                } else if (this.mWrittenPcmBytes > 0) {
                    if (audioTrackPositionTracker.isPlaying()) {
                        this.mAudioTrack.pause();
                    }
                    this.audioTrackPositionTracker.reset();
                    this.mStartMediaTimeMs = -1;
                    this.mReleasingConditionVariable.close();
                    this.mWrittenPcmBytes = 0L;
                    final AudioTrack audioTrack = this.mAudioTrack;
                    this.mAudioTrack = null;
                    AVThreadPool.addTask(new Runnable() { // from class: com.bykv.vk.component.ttvideo.player.AJVoice.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                String unused = AJVoice.TAG;
                                audioTrack.flush();
                                audioTrack.release();
                                String unused2 = AJVoice.TAG;
                            } finally {
                                AJVoice.this.mReleasingConditionVariable.open();
                            }
                        }
                    });
                    this.mReleasingConditionVariable.block();
                    reconfigure();
                    start();
                    this.mSerial = i12;
                }
            }
            int i13 = this.mStartMediaTimeMs;
            if (i13 == -1) {
                this.mStartMediaTimeMs = (int) Math.max(0L, j10);
            } else {
                long writtenDurationMs = ((long) i13) + getWrittenDurationMs();
                if (Math.abs(writtenDurationMs - j10) > 200) {
                    m.uj(TAG, "Discontinuity detected [expected " + writtenDurationMs + ", got " + j10 + "]");
                    this.mStartMediaTimeMs = (int) (((long) this.mStartMediaTimeMs) + (j10 - writtenDurationMs));
                }
            }
            try {
                int iWrite = this.mAudioTrack.write(bArr, i10, i11);
                if (iWrite < 0) {
                    m.uj(TAG, "write failed : ret: " + iWrite + ", size = " + i11);
                    return iWrite;
                }
                this.mWrittenPcmBytes += (long) iWrite;
                if (needsReset() && reset() == 0) {
                    iStart = start();
                    this.mSerial = i12;
                }
                return iStart == 0 ? iWrite : iStart;
            } catch (Exception e10) {
                m.c(e10);
                return -1;
            }
        }
        AVLogger.e(TAG, "buffer is nullpoint");
        return -10;
    }

    @SuppressLint({"NewApi"})
    public int write(ByteBuffer byteBuffer, int i10) {
        if (byteBuffer == null) {
            AVLogger.e(TAG, "buffer is nullpoint");
            return -1;
        }
        if (this.mAudioTrack.write(byteBuffer, 0, byteBuffer.capacity()) != byteBuffer.capacity()) {
            return -1;
        }
        byteBuffer.flip();
        return 0;
    }
}
