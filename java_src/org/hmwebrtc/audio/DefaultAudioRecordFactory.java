package org.hmwebrtc.audio;

/* JADX INFO: loaded from: classes10.dex */
public class DefaultAudioRecordFactory implements AudioRecordFactory {
    private static final String TAG = "DefaultAudioRecordFactory";

    @Override // org.hmwebrtc.audio.AudioRecordFactory
    public IAudioRecord create(int i10, int i11, int i12, int i13, int i14) {
        WrappedAudioRecord wrappedAudioRecord = new WrappedAudioRecord(i10, i11, i12, i13, i14);
        wrappedAudioRecord.initRecord();
        return wrappedAudioRecord;
    }

    @Override // org.hmwebrtc.audio.AudioRecordFactory
    public boolean isAecSupported() {
        return true;
    }

    @Override // org.hmwebrtc.audio.AudioRecordFactory
    public boolean isAgcSupported() {
        return true;
    }

    @Override // org.hmwebrtc.audio.AudioRecordFactory
    public boolean isNSSupported() {
        return true;
    }
}
