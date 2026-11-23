package org.hmwebrtc.audio;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioRecordingConfiguration;
import android.os.Build;
import android.os.Process;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.hmwebrtc.CalledByNative;
import org.hmwebrtc.Logging;
import org.hmwebrtc.ThreadUtils;

/* JADX INFO: loaded from: classes10.dex */
class WebRtcAudioRecord {
    private static final int AUDIO_RECORD_START = 0;
    private static final int AUDIO_RECORD_STOP = 1;
    private static final long AUDIO_RECORD_THREAD_JOIN_TIMEOUT_MS = 2000;
    private static final int BUFFERS_PER_SECOND = 100;
    private static final int BUFFER_SIZE_FACTOR = 2;
    private static final int CALLBACK_BUFFER_SIZE_MS = 10;
    private static final int CHECK_REC_STATUS_DELAY_MS = 100;
    public static final int DEFAULT_AUDIO_FORMAT = 2;
    public static final int DEFAULT_AUDIO_SOURCE = 7;
    private static final String TAG = "WebRtcAudioRecordExternal";
    private static final AtomicInteger nextSchedulerId = new AtomicInteger(0);
    private final int audioFormat;
    private final AudioManager audioManager;

    @Nullable
    private IAudioRecord audioRecord;

    @Nullable
    private final JavaAudioDeviceModule.SamplesReadyCallback audioSamplesReadyCallback;
    private final int audioSource;
    private final AtomicReference<Boolean> audioSourceMatchesRecordingSessionRef;

    @Nullable
    private AudioRecordThread audioThread;

    @Nullable
    private ByteBuffer byteBuffer;
    private final Context context;
    private final WebRtcAudioEffects effects;
    private byte[] emptyBytes;

    @Nullable
    private final JavaAudioDeviceModule.AudioRecordErrorCallback errorCallback;
    private final ScheduledExecutorService executor;

    @Nullable
    private ScheduledFuture<String> future;
    private final boolean isAcousticEchoCancelerSupported;
    private final boolean isNoiseSuppressorSupported;
    private AudioRecordFactory mAudioRecordFactory;
    private volatile boolean mPendingMicrophoneMute;
    private boolean microphoneMute;
    private long nativeAudioRecord;

    @Nullable
    private AudioDeviceInfo preferredDevice;

    @Nullable
    private final JavaAudioDeviceModule.AudioRecordStateCallback stateCallback;

    private class AudioRecordThread extends Thread {
        private volatile boolean keepAlive;

        public AudioRecordThread(String str) {
            super(str);
            this.keepAlive = true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-19);
            Logging.d(WebRtcAudioRecord.TAG, "AudioRecordThread" + WebRtcAudioUtils.getThreadInfo());
            WebRtcAudioRecord.assertTrue(WebRtcAudioRecord.this.audioRecord.getRecordingState() == 3);
            WebRtcAudioRecord.this.doAudioRecordStateCallback(0);
            System.nanoTime();
            Logging.d(WebRtcAudioRecord.TAG, "init microphoneMute and set audioRecord with mPendingMicrophoneMute: " + WebRtcAudioRecord.this.mPendingMicrophoneMute);
            WebRtcAudioRecord webRtcAudioRecord = WebRtcAudioRecord.this;
            webRtcAudioRecord.microphoneMute = webRtcAudioRecord.mPendingMicrophoneMute;
            WebRtcAudioRecord.this.audioRecord.setMicrophoneMute(WebRtcAudioRecord.this.microphoneMute);
            while (this.keepAlive) {
                if (WebRtcAudioRecord.this.mPendingMicrophoneMute != WebRtcAudioRecord.this.microphoneMute) {
                    Logging.d(WebRtcAudioRecord.TAG, "update microphoneMute: " + WebRtcAudioRecord.this.microphoneMute + " with mPendingMicrophoneMute: " + WebRtcAudioRecord.this.mPendingMicrophoneMute);
                    WebRtcAudioRecord webRtcAudioRecord2 = WebRtcAudioRecord.this;
                    webRtcAudioRecord2.microphoneMute = webRtcAudioRecord2.mPendingMicrophoneMute;
                    WebRtcAudioRecord.this.audioRecord.setMicrophoneMute(WebRtcAudioRecord.this.microphoneMute);
                }
                int i10 = WebRtcAudioRecord.this.audioRecord.read(WebRtcAudioRecord.this.byteBuffer, WebRtcAudioRecord.this.byteBuffer.capacity());
                if (i10 == WebRtcAudioRecord.this.byteBuffer.capacity()) {
                    if (WebRtcAudioRecord.this.microphoneMute) {
                        WebRtcAudioRecord.this.byteBuffer.clear();
                        WebRtcAudioRecord.this.byteBuffer.put(WebRtcAudioRecord.this.emptyBytes);
                    }
                    if (this.keepAlive) {
                        WebRtcAudioRecord webRtcAudioRecord3 = WebRtcAudioRecord.this;
                        webRtcAudioRecord3.nativeDataIsRecorded(webRtcAudioRecord3.nativeAudioRecord, i10);
                    }
                    if (WebRtcAudioRecord.this.audioSamplesReadyCallback != null) {
                        WebRtcAudioRecord.this.audioSamplesReadyCallback.onWebRtcAudioRecordSamplesReady(new JavaAudioDeviceModule.AudioSamples(WebRtcAudioRecord.this.audioRecord.getAudioFormat(), WebRtcAudioRecord.this.audioRecord.getChannelCount(), WebRtcAudioRecord.this.audioRecord.getSampleRate(), Arrays.copyOfRange(WebRtcAudioRecord.this.byteBuffer.array(), WebRtcAudioRecord.this.byteBuffer.arrayOffset(), WebRtcAudioRecord.this.byteBuffer.capacity() + WebRtcAudioRecord.this.byteBuffer.arrayOffset())));
                    }
                } else if (!WebRtcAudioRecord.this.audioRecord.isTimeout()) {
                    String str = "AudioRecord.read failed: " + i10;
                    Logging.e(WebRtcAudioRecord.TAG, str);
                    if (i10 == -3) {
                        this.keepAlive = false;
                        WebRtcAudioRecord.this.reportWebRtcAudioRecordError(str);
                    }
                }
            }
            try {
                if (WebRtcAudioRecord.this.audioRecord != null) {
                    WebRtcAudioRecord.this.audioRecord.stop();
                    WebRtcAudioRecord.this.doAudioRecordStateCallback(1);
                }
            } catch (IllegalStateException e10) {
                Logging.e(WebRtcAudioRecord.TAG, "AudioRecord.stop failed: " + e10.getMessage());
            }
        }

        public void stopThread() {
            Logging.d(WebRtcAudioRecord.TAG, "stopThread");
            this.keepAlive = false;
        }
    }

    @CalledByNative
    WebRtcAudioRecord(Context context, AudioManager audioManager) {
        this(context, audioManager, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void assertTrue(boolean z10) {
        if (!z10) {
            throw new AssertionError("Expected condition to be true");
        }
    }

    private static String audioStateToString(int i10) {
        if (i10 != 0) {
            return i10 != 1 ? "INVALID" : "STOP";
        }
        return "START";
    }

    private int channelCountToConfiguration(int i10) {
        return i10 == 1 ? 16 : 12;
    }

    @TargetApi(24)
    private static boolean checkDeviceMatch(AudioDeviceInfo audioDeviceInfo, AudioDeviceInfo audioDeviceInfo2) {
        return audioDeviceInfo.getId() == audioDeviceInfo2.getId() && audioDeviceInfo.getType() == audioDeviceInfo2.getType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doAudioRecordStateCallback(int i10) {
        Logging.d(TAG, "doAudioRecordStateCallback: " + audioStateToString(i10));
        JavaAudioDeviceModule.AudioRecordStateCallback audioRecordStateCallback = this.stateCallback;
        if (audioRecordStateCallback != null) {
            if (i10 == 0) {
                audioRecordStateCallback.onWebRtcAudioRecordStart();
            } else if (i10 == 1) {
                audioRecordStateCallback.onWebRtcAudioRecordStop();
            } else {
                Logging.e(TAG, "Invalid audio state");
            }
        }
    }

    @CalledByNative
    private boolean enableBuiltInAEC(boolean z10) {
        Logging.d(TAG, "enableBuiltInAEC(" + z10 + ")");
        return this.mAudioRecordFactory.isAecSupported() && this.effects.setAEC(z10);
    }

    @CalledByNative
    private boolean enableBuiltInNS(boolean z10) {
        Logging.d(TAG, "enableBuiltInNS(" + z10 + ")");
        return this.mAudioRecordFactory.isNSSupported() && this.effects.setNS(z10);
    }

    private static int getBytesPerSample(int i10) {
        int i11 = 1;
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3) {
                i11 = 4;
                if (i10 != 4) {
                    if (i10 != 13) {
                        throw new IllegalArgumentException("Bad audio format " + i10);
                    }
                }
            }
            return i11;
        }
        return 2;
    }

    @CalledByNative
    private int initRecording(int i10, int i11) {
        AudioDeviceInfo audioDeviceInfo;
        Logging.d(TAG, "initRecording(sampleRate=" + i10 + ", channels=" + i11 + ")");
        if (this.audioRecord != null) {
            reportWebRtcAudioRecordInitError("InitRecording called twice without StopRecording.");
            return -1;
        }
        int i12 = i10 / 100;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(getBytesPerSample(this.audioFormat) * i11 * i12);
        this.byteBuffer = byteBufferAllocateDirect;
        if (!byteBufferAllocateDirect.hasArray()) {
            reportWebRtcAudioRecordInitError("ByteBuffer does not have backing array.");
            return -1;
        }
        Logging.d(TAG, "byteBuffer.capacity: " + this.byteBuffer.capacity());
        this.emptyBytes = new byte[this.byteBuffer.capacity()];
        nativeCacheDirectBufferAddress(this.nativeAudioRecord, this.byteBuffer);
        int iChannelCountToConfiguration = channelCountToConfiguration(i11);
        int minBufferSize = AudioRecord.getMinBufferSize(i10, iChannelCountToConfiguration, this.audioFormat);
        if (minBufferSize == -1 || minBufferSize == -2) {
            reportWebRtcAudioRecordInitError("AudioRecord.getMinBufferSize failed: " + minBufferSize);
            return -1;
        }
        Logging.d(TAG, "AudioRecord.getMinBufferSize: " + minBufferSize);
        int iMax = Math.max(minBufferSize * 2, this.byteBuffer.capacity());
        Logging.d(TAG, "bufferSizeInBytes: " + iMax);
        IAudioRecord iAudioRecordCreate = this.mAudioRecordFactory.create(this.audioSource, i10, iChannelCountToConfiguration, this.audioFormat, iMax);
        this.audioRecord = iAudioRecordCreate;
        if (iAudioRecordCreate == null) {
            reportWebRtcAudioRecordInitError("create audioRecord failed!");
            releaseAudioResources();
            return -1;
        }
        this.audioSourceMatchesRecordingSessionRef.set(null);
        if (Build.VERSION.SDK_INT >= 23 && (audioDeviceInfo = this.preferredDevice) != null) {
            setPreferredDevice(audioDeviceInfo);
        }
        IAudioRecord iAudioRecord = this.audioRecord;
        if (iAudioRecord == null || iAudioRecord.getState() != 1) {
            reportWebRtcAudioRecordInitError("Creation or initialization of audio recorder failed.");
            releaseAudioResources();
            return -1;
        }
        this.effects.enable(this.audioRecord.getAudioSessionId());
        logMainParameters();
        logMainParametersExtended();
        int iLogRecordingConfigurations = logRecordingConfigurations(this.audioRecord, false);
        if (iLogRecordingConfigurations != 0) {
            Logging.w(TAG, "Potential microphone conflict. Active sessions: " + iLogRecordingConfigurations);
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$scheduleLogRecordingConfigurationsTask$0(IAudioRecord iAudioRecord) throws Exception {
        if (this.audioRecord == iAudioRecord) {
            logRecordingConfigurations(iAudioRecord, true);
            return "Scheduled task is done";
        }
        Logging.d(TAG, "audio record has changed");
        return "Scheduled task is done";
    }

    @TargetApi(24)
    private static boolean logActiveRecordingConfigs(int i10, List<AudioRecordingConfiguration> list) {
        assertTrue(!list.isEmpty());
        Iterator<AudioRecordingConfiguration> it2 = list.iterator();
        Logging.d(TAG, "AudioRecordingConfigurations: ");
        while (it2.hasNext()) {
            AudioRecordingConfiguration audioRecordingConfigurationA = e.a(it2.next());
            StringBuilder sb2 = new StringBuilder();
            int clientAudioSource = audioRecordingConfigurationA.getClientAudioSource();
            sb2.append("  client audio source=");
            sb2.append(WebRtcAudioUtils.audioSourceToString(clientAudioSource));
            sb2.append(", client session id=");
            sb2.append(audioRecordingConfigurationA.getClientAudioSessionId());
            sb2.append(" (");
            sb2.append(i10);
            sb2.append(")");
            sb2.append("\n");
            AudioFormat format = audioRecordingConfigurationA.getFormat();
            sb2.append("  Device AudioFormat: ");
            sb2.append("channel count=");
            sb2.append(format.getChannelCount());
            sb2.append(", channel index mask=");
            sb2.append(format.getChannelIndexMask());
            sb2.append(", channel mask=");
            sb2.append(WebRtcAudioUtils.channelMaskToString(format.getChannelMask()));
            sb2.append(", encoding=");
            sb2.append(WebRtcAudioUtils.audioEncodingToString(format.getEncoding()));
            sb2.append(", sample rate=");
            sb2.append(format.getSampleRate());
            sb2.append("\n");
            AudioFormat clientFormat = audioRecordingConfigurationA.getClientFormat();
            sb2.append("  Client AudioFormat: ");
            sb2.append("channel count=");
            sb2.append(clientFormat.getChannelCount());
            sb2.append(", channel index mask=");
            sb2.append(clientFormat.getChannelIndexMask());
            sb2.append(", channel mask=");
            sb2.append(WebRtcAudioUtils.channelMaskToString(clientFormat.getChannelMask()));
            sb2.append(", encoding=");
            sb2.append(WebRtcAudioUtils.audioEncodingToString(clientFormat.getEncoding()));
            sb2.append(", sample rate=");
            sb2.append(clientFormat.getSampleRate());
            sb2.append("\n");
            AudioDeviceInfo audioDevice = audioRecordingConfigurationA.getAudioDevice();
            if (audioDevice != null) {
                assertTrue(audioDevice.isSource());
                sb2.append("  AudioDevice: ");
                sb2.append("type=");
                sb2.append(WebRtcAudioUtils.deviceTypeToString(audioDevice.getType()));
                sb2.append(", id=");
                sb2.append(audioDevice.getId());
            }
            Logging.d(TAG, sb2.toString());
        }
        return true;
    }

    private void logMainParameters() {
        Logging.d(TAG, "AudioRecord: session ID: " + this.audioRecord.getAudioSessionId() + ", channels: " + this.audioRecord.getChannelCount() + ", sample rate: " + this.audioRecord.getSampleRate());
    }

    @TargetApi(23)
    private void logMainParametersExtended() {
        if (Build.VERSION.SDK_INT >= 23) {
            Logging.d(TAG, "AudioRecord: buffer size in frames: " + this.audioRecord.getBufferSizeInFrames());
        }
    }

    @TargetApi(24)
    private int logRecordingConfigurations(IAudioRecord iAudioRecord, boolean z10) {
        if (Build.VERSION.SDK_INT < 24) {
            Logging.w(TAG, "AudioManager#getActiveRecordingConfigurations() requires N or higher");
            return 0;
        }
        if (iAudioRecord == null || iAudioRecord.getSystemAudioRecord() == null) {
            return 0;
        }
        List activeRecordingConfigurations = this.audioManager.getActiveRecordingConfigurations();
        int size = activeRecordingConfigurations.size();
        Logging.d(TAG, "Number of active recording sessions: " + size);
        if (size > 0) {
            logActiveRecordingConfigs(iAudioRecord.getAudioSessionId(), activeRecordingConfigurations);
            if (z10) {
                this.audioSourceMatchesRecordingSessionRef.set(Boolean.valueOf(verifyAudioConfig(iAudioRecord.getAudioSource(), iAudioRecord.getAudioSessionId(), iAudioRecord.getSystemAudioRecord().getFormat(), iAudioRecord.getSystemAudioRecord().getRoutedDevice(), activeRecordingConfigurations)));
            }
        }
        return size;
    }

    private native void nativeCacheDirectBufferAddress(long j10, ByteBuffer byteBuffer);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeDataIsRecorded(long j10, int i10);

    static ScheduledExecutorService newDefaultScheduler() {
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        return Executors.newScheduledThreadPool(0, new ThreadFactory() { // from class: org.hmwebrtc.audio.WebRtcAudioRecord.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
                threadNewThread.setName(String.format("WebRtcAudioRecordScheduler-%s-%s", Integer.valueOf(WebRtcAudioRecord.nextSchedulerId.getAndIncrement()), Integer.valueOf(atomicInteger.getAndIncrement())));
                return threadNewThread;
            }
        });
    }

    private void releaseAudioResources() {
        Logging.d(TAG, "releaseAudioResources");
        IAudioRecord iAudioRecord = this.audioRecord;
        if (iAudioRecord != null) {
            iAudioRecord.release();
            this.audioRecord = null;
        }
        this.audioSourceMatchesRecordingSessionRef.set(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportWebRtcAudioRecordError(String str) {
        Logging.e(TAG, "Run-time recording error: " + str);
        WebRtcAudioUtils.logAudioState(TAG, this.context, this.audioManager);
        JavaAudioDeviceModule.AudioRecordErrorCallback audioRecordErrorCallback = this.errorCallback;
        if (audioRecordErrorCallback != null) {
            audioRecordErrorCallback.onWebRtcAudioRecordError(str);
        }
    }

    private void reportWebRtcAudioRecordInitError(String str) {
        Logging.e(TAG, "Init recording error: " + str);
        WebRtcAudioUtils.logAudioState(TAG, this.context, this.audioManager);
        logRecordingConfigurations(this.audioRecord, false);
        JavaAudioDeviceModule.AudioRecordErrorCallback audioRecordErrorCallback = this.errorCallback;
        if (audioRecordErrorCallback != null) {
            audioRecordErrorCallback.onWebRtcAudioRecordInitError(str);
        }
    }

    private void reportWebRtcAudioRecordStartError(JavaAudioDeviceModule.AudioRecordStartErrorCode audioRecordStartErrorCode, String str) {
        Logging.e(TAG, "Start recording error: " + audioRecordStartErrorCode + ". " + str);
        WebRtcAudioUtils.logAudioState(TAG, this.context, this.audioManager);
        logRecordingConfigurations(this.audioRecord, false);
        JavaAudioDeviceModule.AudioRecordErrorCallback audioRecordErrorCallback = this.errorCallback;
        if (audioRecordErrorCallback != null) {
            audioRecordErrorCallback.onWebRtcAudioRecordStartError(audioRecordStartErrorCode, str);
        }
    }

    private void scheduleLogRecordingConfigurationsTask(final IAudioRecord iAudioRecord) {
        Logging.d(TAG, "scheduleLogRecordingConfigurationsTask");
        if (Build.VERSION.SDK_INT < 24) {
            return;
        }
        Callable callable = new Callable() { // from class: org.hmwebrtc.audio.s
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f95360b.lambda$scheduleLogRecordingConfigurationsTask$0(iAudioRecord);
            }
        };
        ScheduledFuture<String> scheduledFuture = this.future;
        if (scheduledFuture != null && !scheduledFuture.isDone()) {
            this.future.cancel(true);
        }
        this.future = this.executor.schedule(callable, 100L, TimeUnit.MILLISECONDS);
    }

    @CalledByNative
    private boolean startRecording() {
        Logging.d(TAG, "startRecording");
        assertTrue(this.audioRecord != null);
        assertTrue(this.audioThread == null);
        try {
            this.audioRecord.startRecording();
            if (this.audioRecord.getRecordingState() == 3) {
                AudioRecordThread audioRecordThread = new AudioRecordThread("AudioRecordJavaThread");
                this.audioThread = audioRecordThread;
                audioRecordThread.start();
                scheduleLogRecordingConfigurationsTask(this.audioRecord);
                return true;
            }
            reportWebRtcAudioRecordStartError(JavaAudioDeviceModule.AudioRecordStartErrorCode.AUDIO_RECORD_START_STATE_MISMATCH, "AudioRecord.startRecording failed - incorrect state: " + this.audioRecord.getRecordingState());
            return false;
        } catch (IllegalStateException e10) {
            reportWebRtcAudioRecordStartError(JavaAudioDeviceModule.AudioRecordStartErrorCode.AUDIO_RECORD_START_EXCEPTION, "AudioRecord.startRecording failed: " + e10.getMessage());
            return false;
        }
    }

    @CalledByNative
    private boolean stopRecording() {
        Logging.d(TAG, "stopRecording");
        assertTrue(this.audioThread != null);
        ScheduledFuture<String> scheduledFuture = this.future;
        if (scheduledFuture != null) {
            if (!scheduledFuture.isDone()) {
                this.future.cancel(true);
            }
            this.future = null;
        }
        this.audioThread.stopThread();
        if (!ThreadUtils.joinUninterruptibly(this.audioThread, AUDIO_RECORD_THREAD_JOIN_TIMEOUT_MS)) {
            Logging.e(TAG, "Join of AudioRecordJavaThread timed out");
            WebRtcAudioUtils.logAudioState(TAG, this.context, this.audioManager);
        }
        this.audioThread = null;
        this.effects.release();
        releaseAudioResources();
        return true;
    }

    @TargetApi(24)
    private static boolean verifyAudioConfig(int i10, int i11, AudioFormat audioFormat, AudioDeviceInfo audioDeviceInfo, List<AudioRecordingConfiguration> list) {
        assertTrue(!list.isEmpty());
        Iterator<AudioRecordingConfiguration> it2 = list.iterator();
        while (it2.hasNext()) {
            AudioRecordingConfiguration audioRecordingConfigurationA = e.a(it2.next());
            AudioDeviceInfo audioDevice = audioRecordingConfigurationA.getAudioDevice();
            if (audioDevice != null && audioRecordingConfigurationA.getClientAudioSource() == i10 && audioRecordingConfigurationA.getClientAudioSessionId() == i11 && audioRecordingConfigurationA.getClientFormat().getEncoding() == audioFormat.getEncoding() && audioRecordingConfigurationA.getClientFormat().getSampleRate() == audioFormat.getSampleRate() && audioRecordingConfigurationA.getClientFormat().getChannelMask() == audioFormat.getChannelMask() && audioRecordingConfigurationA.getClientFormat().getChannelIndexMask() == audioFormat.getChannelIndexMask() && audioRecordingConfigurationA.getFormat().getEncoding() != 0 && audioRecordingConfigurationA.getFormat().getSampleRate() > 0 && (audioRecordingConfigurationA.getFormat().getChannelMask() != 0 || audioRecordingConfigurationA.getFormat().getChannelIndexMask() != 0)) {
                if (checkDeviceMatch(audioDevice, audioDeviceInfo)) {
                    Logging.d(TAG, "verifyAudioConfig: PASS");
                    return true;
                }
            }
        }
        Logging.e(TAG, "verifyAudioConfig: FAILED");
        return false;
    }

    @CalledByNative
    boolean isAcousticEchoCancelerSupported() {
        return this.isAcousticEchoCancelerSupported;
    }

    @CalledByNative
    boolean isAudioConfigVerified() {
        return this.audioSourceMatchesRecordingSessionRef.get() != null;
    }

    @CalledByNative
    boolean isAudioSourceMatchingRecordingSession() {
        Boolean bool = this.audioSourceMatchesRecordingSessionRef.get();
        if (bool != null) {
            return bool.booleanValue();
        }
        Logging.w(TAG, "Audio configuration has not yet been verified");
        return false;
    }

    @CalledByNative
    boolean isNoiseSuppressorSupported() {
        return this.isNoiseSuppressorSupported;
    }

    public void setMicrophoneMute(boolean z10) {
        Logging.w(TAG, "setMicrophoneMute(" + z10 + ")");
        this.mPendingMicrophoneMute = z10;
    }

    @CalledByNative
    public void setNativeAudioRecord(long j10) {
        this.nativeAudioRecord = j10;
    }

    @RequiresApi(23)
    @TargetApi(23)
    void setPreferredDevice(@Nullable AudioDeviceInfo audioDeviceInfo) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setPreferredDevice ");
        sb2.append(audioDeviceInfo != null ? Integer.valueOf(audioDeviceInfo.getId()) : null);
        Logging.d(TAG, sb2.toString());
        this.preferredDevice = audioDeviceInfo;
        IAudioRecord iAudioRecord = this.audioRecord;
        if (iAudioRecord == null || iAudioRecord.getSystemAudioRecord() == null || this.audioRecord.getSystemAudioRecord().setPreferredDevice(audioDeviceInfo)) {
            return;
        }
        Logging.e(TAG, "setPreferredDevice failed");
    }

    WebRtcAudioRecord(Context context, AudioManager audioManager, AudioRecordFactory audioRecordFactory) {
        this(context, newDefaultScheduler(), audioManager, 7, 2, null, null, null, WebRtcAudioEffects.isAcousticEchoCancelerSupported(), WebRtcAudioEffects.isNoiseSuppressorSupported(), audioRecordFactory);
    }

    public WebRtcAudioRecord(Context context, ScheduledExecutorService scheduledExecutorService, AudioManager audioManager, int i10, int i11, @Nullable JavaAudioDeviceModule.AudioRecordErrorCallback audioRecordErrorCallback, @Nullable JavaAudioDeviceModule.AudioRecordStateCallback audioRecordStateCallback, @Nullable JavaAudioDeviceModule.SamplesReadyCallback samplesReadyCallback, boolean z10, boolean z11, AudioRecordFactory audioRecordFactory) {
        this.effects = new WebRtcAudioEffects();
        this.audioSourceMatchesRecordingSessionRef = new AtomicReference<>();
        if (z10 && !WebRtcAudioEffects.isAcousticEchoCancelerSupported()) {
            throw new IllegalArgumentException("HW AEC not supported");
        }
        if (z11 && !WebRtcAudioEffects.isNoiseSuppressorSupported()) {
            throw new IllegalArgumentException("HW NS not supported");
        }
        this.context = context;
        this.executor = scheduledExecutorService;
        this.audioManager = audioManager;
        this.audioSource = i10;
        this.audioFormat = i11;
        this.errorCallback = audioRecordErrorCallback;
        this.stateCallback = audioRecordStateCallback;
        this.audioSamplesReadyCallback = samplesReadyCallback;
        this.isAcousticEchoCancelerSupported = z10;
        this.isNoiseSuppressorSupported = z11;
        this.mAudioRecordFactory = audioRecordFactory;
        if (audioRecordFactory == null) {
            this.mAudioRecordFactory = new DefaultAudioRecordFactory();
        }
        Logging.d(TAG, "ctor" + WebRtcAudioUtils.getThreadInfo());
    }
}
