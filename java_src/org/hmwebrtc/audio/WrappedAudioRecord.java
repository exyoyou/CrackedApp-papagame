package org.hmwebrtc.audio;

import android.annotation.TargetApi;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.os.Build;
import java.nio.ByteBuffer;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class WrappedAudioRecord implements IAudioRecord {
    private static final String TAG = "WrappedAudioRecord";
    private int mAudioFormat;
    protected AudioRecord mAudioRecord;
    private int mAudioSource;
    private int mBufferSizeInBytes;
    private int mChannelConfig;
    private int mChannelCount;
    private int mRecordingState = 1;
    private int mSampleRate;

    public WrappedAudioRecord(int i10, int i11, int i12, int i13, int i14) {
        this.mAudioSource = i10;
        this.mSampleRate = i11;
        this.mChannelConfig = i12;
        this.mAudioFormat = i13;
        this.mBufferSizeInBytes = i14;
    }

    public static AudioRecord createAudioRecord(int i10, int i11, int i12, int i13, int i14) {
        try {
            return Build.VERSION.SDK_INT >= 23 ? createAudioRecordOnMOrHigher(i10, i11, i12, i13, i14) : createAudioRecordOnLowerThanM(i10, i11, i12, i13, i14);
        } catch (IllegalArgumentException | UnsupportedOperationException unused) {
            return null;
        }
    }

    private static AudioRecord createAudioRecordOnLowerThanM(int i10, int i11, int i12, int i13, int i14) {
        Logging.d(TAG, "createAudioRecordOnLowerThanM");
        return new AudioRecord(i10, i11, i12, i13, i14);
    }

    @TargetApi(23)
    private static AudioRecord createAudioRecordOnMOrHigher(int i10, int i11, int i12, int i13, int i14) {
        Logging.d(TAG, "createAudioRecordOnMOrHigher");
        return n0.a().setAudioSource(i10).setAudioFormat(new AudioFormat.Builder().setEncoding(i13).setSampleRate(i11).setChannelMask(i12).build()).setBufferSizeInBytes(i14).build();
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public int getAudioFormat() {
        AudioRecord audioRecord = this.mAudioRecord;
        return audioRecord != null ? audioRecord.getAudioFormat() : this.mAudioFormat;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public int getAudioSessionId() {
        AudioRecord audioRecord = this.mAudioRecord;
        if (audioRecord != null) {
            return audioRecord.getAudioSessionId();
        }
        return 0;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public int getAudioSource() {
        AudioRecord audioRecord = this.mAudioRecord;
        return audioRecord != null ? audioRecord.getAudioSource() : this.mAudioSource;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public int getBufferSizeInFrames() {
        AudioRecord audioRecord = this.mAudioRecord;
        if (audioRecord != null) {
            return audioRecord.getBufferSizeInFrames();
        }
        return 0;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public int getChannelCount() {
        AudioRecord audioRecord = this.mAudioRecord;
        return audioRecord != null ? audioRecord.getChannelCount() : this.mChannelCount;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public int getRecordingState() {
        AudioRecord audioRecord = this.mAudioRecord;
        return audioRecord != null ? audioRecord.getRecordingState() : this.mRecordingState;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public int getSampleRate() {
        AudioRecord audioRecord = this.mAudioRecord;
        return audioRecord != null ? audioRecord.getSampleRate() : this.mSampleRate;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public int getState() {
        AudioRecord audioRecord = this.mAudioRecord;
        if (audioRecord != null) {
            return audioRecord.getState();
        }
        return 1;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public AudioRecord getSystemAudioRecord() {
        return this.mAudioRecord;
    }

    public boolean initRecord() {
        if (this.mAudioRecord == null) {
            Logging.d(TAG, "initRecord !");
            this.mAudioRecord = createAudioRecord(this.mAudioSource, this.mSampleRate, this.mChannelConfig, this.mAudioFormat, this.mBufferSizeInBytes);
            this.mChannelCount = getChannelCount();
            this.mRecordingState = 1;
        }
        return this.mAudioRecord != null;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public boolean isTimeout() {
        return false;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public int read(ByteBuffer byteBuffer, int i10) {
        AudioRecord audioRecord = this.mAudioRecord;
        if (audioRecord != null) {
            return audioRecord.read(byteBuffer, i10);
        }
        return 0;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public void release() {
        AudioRecord audioRecord = this.mAudioRecord;
        if (audioRecord != null) {
            audioRecord.release();
            this.mAudioRecord = null;
        }
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public boolean setMicrophoneMute(boolean z10) {
        return true;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public void startRecording() {
        AudioRecord audioRecord = this.mAudioRecord;
        if (audioRecord != null) {
            audioRecord.startRecording();
        }
        this.mRecordingState = 3;
    }

    @Override // org.hmwebrtc.audio.IAudioRecord
    public void stop() {
        AudioRecord audioRecord = this.mAudioRecord;
        if (audioRecord != null) {
            audioRecord.stop();
        }
        this.mRecordingState = 1;
    }
}
