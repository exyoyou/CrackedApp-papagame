package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public class AudioSource extends MediaSource {
    public AudioSource(long j10) {
        super(j10);
    }

    long getNativeAudioSource() {
        return getNativeMediaSource();
    }
}
