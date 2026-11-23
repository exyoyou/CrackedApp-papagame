package io.netty.handler.codec.http;

/* JADX INFO: loaded from: classes.dex */
public class HttpRequestDecoder extends HttpObjectDecoder {
    public HttpRequestDecoder() {
    }

    @Override // io.netty.handler.codec.http.HttpObjectDecoder
    protected HttpMessage createInvalidMessage() {
        return new DefaultFullHttpRequest(HttpVersion.HTTP_1_0, HttpMethod.GET, "/bad-request", this.validateHeaders);
    }

    @Override // io.netty.handler.codec.http.HttpObjectDecoder
    protected HttpMessage createMessage(String[] strArr) throws Exception {
        return new DefaultHttpRequest(HttpVersion.valueOf(strArr[2]), HttpMethod.valueOf(strArr[0]), strArr[1], this.validateHeaders);
    }

    @Override // io.netty.handler.codec.http.HttpObjectDecoder
    protected boolean isDecodingRequest() {
        return true;
    }

    public HttpRequestDecoder(int i10, int i11, int i12) {
        super(i10, i11, i12, true);
    }

    public HttpRequestDecoder(int i10, int i11, int i12, boolean z10) {
        super(i10, i11, i12, true, z10);
    }

    public HttpRequestDecoder(int i10, int i11, int i12, boolean z10, int i13) {
        super(i10, i11, i12, true, z10, i13);
    }
}
