package org.hmwebrtc;

import com.vincent.videocompressor.VideoController;

/* JADX INFO: loaded from: classes10.dex */
enum VideoCodecMimeType {
    VP8("video/x-vnd.on2.vp8"),
    VP9("video/x-vnd.on2.vp9"),
    H264(VideoController.f85710g),
    H265("video/hevc"),
    AV1("video/av01");

    private final String mimeType;

    VideoCodecMimeType(String str) {
        this.mimeType = str;
    }

    static VideoCodecMimeType fromSdpCodecName(String str) {
        return str.equals("AV1X") ? AV1 : valueOf(str);
    }

    String mimeType() {
        return this.mimeType;
    }

    String toSdpCodecName() {
        return this == AV1 ? "AV1X" : name();
    }
}
