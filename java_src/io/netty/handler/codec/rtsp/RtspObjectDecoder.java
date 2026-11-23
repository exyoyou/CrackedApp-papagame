package io.netty.handler.codec.rtsp;

import io.netty.handler.codec.http.HttpMessage;
import io.netty.handler.codec.http.HttpObjectDecoder;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class RtspObjectDecoder extends HttpObjectDecoder {
    protected RtspObjectDecoder() {
        this(4096, 8192, 8192);
    }

    @Override // io.netty.handler.codec.http.HttpObjectDecoder
    protected boolean isContentAlwaysEmpty(HttpMessage httpMessage) {
        boolean zIsContentAlwaysEmpty = super.isContentAlwaysEmpty(httpMessage);
        if (!zIsContentAlwaysEmpty && httpMessage.headers().contains(RtspHeaderNames.CONTENT_LENGTH)) {
            return zIsContentAlwaysEmpty;
        }
        return true;
    }

    protected RtspObjectDecoder(int i10, int i11, int i12) {
        super(i10, i11, i12 * 2, false);
    }

    protected RtspObjectDecoder(int i10, int i11, int i12, boolean z10) {
        super(i10, i11, i12 * 2, false, z10);
    }
}
