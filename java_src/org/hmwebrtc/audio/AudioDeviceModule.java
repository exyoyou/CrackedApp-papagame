package org.hmwebrtc.audio;

/* JADX INFO: loaded from: classes10.dex */
public interface AudioDeviceModule {
    long getNativeAudioDeviceModulePointer();

    void release();

    void setMicrophoneMute(boolean z10);

    void setSpeakerMute(boolean z10);
}
