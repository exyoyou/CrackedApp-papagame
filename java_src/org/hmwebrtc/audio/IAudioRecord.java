package org.hmwebrtc.audio;

import android.media.AudioRecord;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
public interface IAudioRecord {
    int getAudioFormat();

    int getAudioSessionId();

    int getAudioSource();

    int getBufferSizeInFrames();

    int getChannelCount();

    int getRecordingState();

    int getSampleRate();

    int getState();

    AudioRecord getSystemAudioRecord();

    boolean isTimeout();

    int read(ByteBuffer byteBuffer, int i10);

    void release();

    boolean setMicrophoneMute(boolean z10);

    void startRecording();

    void stop();
}
