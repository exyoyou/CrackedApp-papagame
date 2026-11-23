package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public class SeiData {
    public long decodedTimestamp;
    public long encodedTimestamp;
    public int frameId;
    public long preDecoderTimestamp;
    public long preEncoderTimestamp;

    SeiData(int i10, long j10, long j11, long j12, long j13) {
        this.frameId = i10;
        this.preEncoderTimestamp = j10;
        this.encodedTimestamp = j11;
        this.preDecoderTimestamp = j12;
        this.decodedTimestamp = j13;
    }
}
