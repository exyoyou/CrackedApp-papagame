package org.hmwebrtc.audio;

import android.media.AudioRecord;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class InputAudioRecordFactory implements AudioRecordFactory, InputAudioWriter {
    private static final String TAG = "InputAudioRecordFactory";
    private InputAudioBuffer mAudioBuffer;
    private SimplePcmFile mSimplePcmFile;
    private long mAudioReadDelayMs = 5;
    private final long AUDIO_READ_DELAY_MS_MAX = 10;
    private final long AUDIO_READ_DELAY_MS_MIN = 0;

    private static class AudioInput implements IAudioRecord {
        InputAudioBuffer mAudioBuffer;
        private int mAudioFormat;
        private int mAudioSource;
        private int mBufferSizeInBytes;
        private int mChannelConfig;
        private int mSampleRate;
        AtomicBoolean mStarted = new AtomicBoolean(false);

        public AudioInput(int i10, int i11, int i12, int i13, int i14, InputAudioBuffer inputAudioBuffer) {
            this.mAudioSource = i10;
            this.mSampleRate = i11;
            this.mChannelConfig = i12;
            this.mAudioFormat = i13;
            this.mBufferSizeInBytes = i14;
            this.mAudioBuffer = inputAudioBuffer;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public int getAudioFormat() {
            return this.mAudioFormat;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public int getAudioSessionId() {
            return 0;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public int getAudioSource() {
            return this.mAudioSource;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public int getBufferSizeInFrames() {
            return this.mBufferSizeInBytes;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public int getChannelCount() {
            return this.mChannelConfig;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public int getRecordingState() {
            return 3;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public int getSampleRate() {
            return this.mSampleRate;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public int getState() {
            return 1;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public AudioRecord getSystemAudioRecord() {
            return null;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public boolean isTimeout() {
            return false;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public int read(ByteBuffer byteBuffer, int i10) {
            if (this.mStarted.get()) {
                return this.mAudioBuffer.read(byteBuffer, i10);
            }
            return -1;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public void release() {
            this.mAudioBuffer.stop();
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public boolean setMicrophoneMute(boolean z10) {
            return true;
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public void startRecording() {
            this.mStarted.set(true);
            this.mAudioBuffer.start();
        }

        @Override // org.hmwebrtc.audio.IAudioRecord
        public void stop() {
            this.mAudioBuffer.stop();
            this.mStarted.set(false);
        }
    }

    public InputAudioRecordFactory() {
    }

    @Override // org.hmwebrtc.audio.AudioRecordFactory
    public IAudioRecord create(int i10, int i11, int i12, int i13, int i14) {
        InputAudioBuffer inputAudioBuffer = this.mAudioBuffer;
        if (inputAudioBuffer != null) {
            inputAudioBuffer.stop();
            Logging.d(TAG, "stop last audiobuffer: " + this.mAudioBuffer.hashCode());
        }
        long jB = (a.b(i11, i13, a.c(i12)) * this.mAudioReadDelayMs) / 1000;
        this.mAudioBuffer = new InputAudioBuffer(i14, (int) jB);
        Logging.d(TAG, "create IAudioRecord   bufferPtr:" + this.mAudioBuffer.hashCode() + " bufferSizeInBytes:" + i14 + " readDelayMs:" + this.mAudioReadDelayMs + " readDelayBytes:" + jB + " sampleRate:" + i11 + " channelConfig:" + i12 + " audioFormat:" + i13);
        return new AudioInput(i10, i11, i12, i13, i14, this.mAudioBuffer);
    }

    @Override // org.hmwebrtc.audio.AudioRecordFactory
    public boolean isAecSupported() {
        return false;
    }

    @Override // org.hmwebrtc.audio.AudioRecordFactory
    public boolean isAgcSupported() {
        return false;
    }

    @Override // org.hmwebrtc.audio.AudioRecordFactory
    public boolean isNSSupported() {
        return false;
    }

    public void setAudioReadDelayMs(long j10) {
        if (j10 < 0) {
            this.mAudioReadDelayMs = 0L;
        } else if (j10 > 10) {
            this.mAudioReadDelayMs = 10L;
        } else {
            this.mAudioReadDelayMs = j10;
        }
    }

    @Override // org.hmwebrtc.audio.InputAudioWriter
    public int write(byte[] bArr, int i10, int i11) {
        InputAudioBuffer inputAudioBuffer = this.mAudioBuffer;
        if (inputAudioBuffer == null) {
            return -1;
        }
        int iWrite = inputAudioBuffer.write(bArr, i10, i11);
        SimplePcmFile simplePcmFile = this.mSimplePcmFile;
        if (simplePcmFile != null) {
            simplePcmFile.getWriter().write(bArr, i10, i11);
        }
        return iWrite;
    }

    public InputAudioRecordFactory(String str) {
        this.mSimplePcmFile = new SimplePcmFile(str);
    }
}
