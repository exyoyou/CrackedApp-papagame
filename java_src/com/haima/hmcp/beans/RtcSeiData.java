package com.haima.hmcp.beans;

import android.text.TextUtils;
import org.hmwebrtc.SeiData;

/* JADX INFO: loaded from: classes5.dex */
public class RtcSeiData {
    private String cid;
    private long decodedTimestamp;
    private long encodedTimestamp;
    private int frameId;
    private long preDecoderTimestamp;
    private long preEncoderTimestamp;
    private String uid;

    public RtcSeiData(SeiData seiData, String str, String str2) {
        this.cid = "";
        this.uid = "";
        this.frameId = seiData.frameId;
        this.preEncoderTimestamp = seiData.preEncoderTimestamp;
        this.encodedTimestamp = seiData.encodedTimestamp;
        this.preDecoderTimestamp = seiData.preDecoderTimestamp;
        this.decodedTimestamp = seiData.decodedTimestamp;
        if (!TextUtils.isEmpty(str)) {
            this.cid = str;
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.uid = str2;
    }

    public String getCid() {
        return this.cid;
    }

    public long getDecodedTimestamp() {
        return this.decodedTimestamp;
    }

    public long getEncodedTimestamp() {
        return this.encodedTimestamp;
    }

    public int getFrameId() {
        return this.frameId;
    }

    public long getPreDecoderTimestamp() {
        return this.preDecoderTimestamp;
    }

    public long getPreEncoderTimestamp() {
        return this.preEncoderTimestamp;
    }

    public String getUid() {
        return this.uid;
    }

    public String toString() {
        return "cid=" + this.cid + ";uid=" + this.uid + ";frameId=" + this.frameId + ";preEncoderTimestamp=" + this.preEncoderTimestamp + ";encodedTimestamp=" + this.encodedTimestamp + ";preDecoderTimestamp=" + this.preDecoderTimestamp + ";decodedTimestamp=" + this.decodedTimestamp + ";";
    }
}
