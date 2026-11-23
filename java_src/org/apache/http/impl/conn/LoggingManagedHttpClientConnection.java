package org.apache.http.impl.conn;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.config.MessageConstraints;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriterFactory;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
class LoggingManagedHttpClientConnection extends DefaultManagedHttpClientConnection {
    private static final String HEADER_TAG = "Headers";
    private static final String TAG = "HttpClient";
    private final WireHC4 wire;

    public LoggingManagedHttpClientConnection(String str, int i10, int i11, CharsetDecoder charsetDecoder, CharsetEncoder charsetEncoder, MessageConstraints messageConstraints, ContentLengthStrategy contentLengthStrategy, ContentLengthStrategy contentLengthStrategy2, HttpMessageWriterFactory<HttpRequest> httpMessageWriterFactory, HttpMessageParserFactory<HttpResponse> httpMessageParserFactory) {
        super(str, i10, i11, charsetDecoder, charsetEncoder, messageConstraints, contentLengthStrategy, contentLengthStrategy2, httpMessageWriterFactory, httpMessageParserFactory);
        this.wire = new WireHC4(str);
    }

    @Override // org.apache.http.impl.BHttpConnectionBase, org.apache.http.HttpConnection
    public void close() throws IOException {
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getId());
            sb2.append(": Close connection");
        }
        super.close();
    }

    @Override // org.apache.http.impl.BHttpConnectionBase
    protected InputStream getSocketInputStream(Socket socket) throws IOException {
        InputStream socketInputStream = super.getSocketInputStream(socket);
        return this.wire.enabled() ? new LoggingInputStream(socketInputStream, this.wire) : socketInputStream;
    }

    @Override // org.apache.http.impl.BHttpConnectionBase
    protected OutputStream getSocketOutputStream(Socket socket) throws IOException {
        OutputStream socketOutputStream = super.getSocketOutputStream(socket);
        return this.wire.enabled() ? new LoggingOutputStream(socketOutputStream, this.wire) : socketOutputStream;
    }

    @Override // org.apache.http.impl.DefaultBHttpClientConnection
    protected void onRequestSubmitted(HttpRequest httpRequest) {
        if (httpRequest == null || !Log.isLoggable(HEADER_TAG, 3)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getId());
        sb2.append(" >> ");
        sb2.append(httpRequest.getRequestLine().toString());
        for (Header header : httpRequest.getAllHeaders()) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(getId());
            sb3.append(" >> ");
            sb3.append(header.toString());
        }
    }

    @Override // org.apache.http.impl.DefaultBHttpClientConnection
    protected void onResponseReceived(HttpResponse httpResponse) {
        if (httpResponse == null || !Log.isLoggable(HEADER_TAG, 3)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getId());
        sb2.append(" << ");
        sb2.append(httpResponse.getStatusLine().toString());
        for (Header header : httpResponse.getAllHeaders()) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(getId());
            sb3.append(" << ");
            sb3.append(header.toString());
        }
    }

    @Override // org.apache.http.impl.conn.DefaultManagedHttpClientConnection, org.apache.http.impl.BHttpConnectionBase, org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getId());
            sb2.append(": Shutdown connection");
        }
        super.shutdown();
    }
}
