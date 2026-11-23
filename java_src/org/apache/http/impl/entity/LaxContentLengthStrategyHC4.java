package org.apache.http.impl.entity;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.ParseException;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class LaxContentLengthStrategyHC4 implements ContentLengthStrategy {
    public static final LaxContentLengthStrategyHC4 INSTANCE = new LaxContentLengthStrategyHC4();
    private final int implicitLen;

    public LaxContentLengthStrategyHC4(int i10) {
        this.implicitLen = i10;
    }

    @Override // org.apache.http.entity.ContentLengthStrategy
    public long determineLength(HttpMessage httpMessage) throws HttpException {
        long j10;
        Args.notNull(httpMessage, "HTTP message");
        Header firstHeader = httpMessage.getFirstHeader("Transfer-Encoding");
        if (firstHeader != null) {
            try {
                HeaderElement[] elements = firstHeader.getElements();
                int length = elements.length;
                return (!"identity".equalsIgnoreCase(firstHeader.getValue()) && length > 0 && "chunked".equalsIgnoreCase(elements[length + (-1)].getName())) ? -2L : -1L;
            } catch (ParseException e10) {
                throw new ProtocolException("Invalid Transfer-Encoding header value: " + firstHeader, e10);
            }
        }
        if (httpMessage.getFirstHeader("Content-Length") == null) {
            return this.implicitLen;
        }
        Header[] headers = httpMessage.getHeaders("Content-Length");
        int length2 = headers.length - 1;
        while (true) {
            if (length2 < 0) {
                j10 = -1;
                break;
            }
            try {
                j10 = Long.parseLong(headers[length2].getValue());
                break;
            } catch (NumberFormatException unused) {
                length2--;
            }
        }
        if (j10 >= 0) {
            return j10;
        }
        return -1L;
    }

    public LaxContentLengthStrategyHC4() {
        this(-1);
    }
}
