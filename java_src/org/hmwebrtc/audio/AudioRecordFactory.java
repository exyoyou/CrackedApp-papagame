package org.hmwebrtc.audio;

/* JADX INFO: loaded from: classes10.dex */
public interface AudioRecordFactory {
    IAudioRecord create(int i10, int i11, int i12, int i13, int i14);

    boolean isAecSupported();

    boolean isAgcSupported();

    boolean isNSSupported();
}
