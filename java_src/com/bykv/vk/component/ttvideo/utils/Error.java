package com.bykv.vk.component.ttvideo.utils;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class Error {
    public static final int AUDIO_HARDWARE_DECODER_WRITE_ERROR = -499978;
    public static final int BUFFERING_TIME_OUT_ERROR = -499982;
    public static final String DataLoaderPreload = "kTTVideoErrorDomainDataLoaderPreload";
    public static final int ERROR_TYPE_CDN = 1003;
    public static final int ERROR_TYPE_PLAYER = 1002;
    public static final int OPEN_TIME_OUT_ERROR = -1414092869;
    public static final int PlayerStateIllegal = -9992;
    public static final int PreloadInvalidParameter = -100001;
    public static final int PreloadMDLStateError = -100002;
    public static final int PreloadSameKeyError = -100003;
    public static final int PreloadTrackEmptyError = -100004;
    public static final int TCP_READ_NETWORK_TIMEOUT = -499793;
    public static final int VIDEO_HARDWARE_DECODER_WRITE_ERROR = -499977;
    public static final String VideoOSPlayer = "kTTVideoErrorDomainVideoOSPlayer";
    public static final String VideoOwnPlayer = "kTTVideoErrorDomainVideoOwnPlayer";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f23286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f23287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f23288c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f23289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map f23290e;

    public Error(String str, int i10) {
        this(str, i10, 0);
    }

    public int getCode() {
        return this.f23286a;
    }

    public String getDescription() {
        return this.f23289d;
    }

    public String getDomain() {
        return this.f23288c;
    }

    public int getInternalCode() {
        return this.f23287b;
    }

    public Map getParameters() {
        return this.f23290e;
    }

    public int getType() {
        return (this.f23288c.equals(VideoOwnPlayer) && needRestartPlayer()) ? 1002 : 1003;
    }

    public boolean needFallbackOS() {
        int i10 = this.f23286a;
        return i10 == -499978 || i10 == -499977;
    }

    public boolean needRestartPlayer() {
        int i10 = this.f23286a;
        return i10 == -499999 || i10 == -499997 || i10 == -499996 || i10 == -499992 || i10 == -499991 || i10 == -499990 || i10 == -499989 || i10 == -2139062143;
    }

    public boolean notNeedRetry() {
        int i10 = this.f23286a;
        return i10 == -499982 || i10 == -499793 || i10 == -1414092869;
    }

    public String toString() {
        Object[] objArr = new Object[4];
        objArr[0] = this.f23288c;
        objArr[1] = Integer.valueOf(this.f23286a);
        objArr[2] = Integer.valueOf(this.f23287b);
        String str = this.f23289d;
        if (str == null) {
            str = "";
        }
        objArr[3] = str;
        return String.format("domain:%s, code:%d, internalCode:%d, description:%s", objArr);
    }

    public Error(String str, int i10, int i11) {
        this(str, i10, i11, null);
    }

    public Error(String str, int i10, int i11, String str2) {
        this.f23288c = str;
        this.f23286a = i10;
        this.f23287b = i11;
        this.f23289d = str2;
        this.f23290e = new HashMap();
    }

    public Error(String str, int i10, String str2) {
        this(str, i10, 0, str2);
    }
}
