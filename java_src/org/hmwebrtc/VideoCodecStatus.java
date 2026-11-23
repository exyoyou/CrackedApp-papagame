package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public enum VideoCodecStatus {
    NO_OUTPUT_AFTER_LONG_TIME(6),
    OK_AFTER_RESTART(5),
    REQUEST_KEYFRAME(4),
    REQUEST_SLI(2),
    NO_OUTPUT(1),
    OK(0),
    ERROR(-1),
    LEVEL_EXCEEDED(-2),
    MEMORY(-3),
    ERR_PARAMETER(-4),
    ERR_SIZE(-5),
    TIMEOUT(-6),
    UNINITIALIZED(-7),
    ERR_REQUEST_SLI(-12),
    FALLBACK_SOFTWARE(-13),
    TARGET_BITRATE_OVERSHOOT(-14);

    private final int number;

    VideoCodecStatus(int i10) {
        this.number = i10;
    }

    @CalledByNative
    public int getNumber() {
        return this.number;
    }
}
