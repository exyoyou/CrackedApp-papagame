package org.apache.http.client.protocol;

import java.io.IOException;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.entity.DeflateDecompressingEntity;
import org.apache.http.client.entity.GzipDecompressingEntity;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class ResponseContentEncoding implements HttpResponseInterceptor {
    public static final String UNCOMPRESSED = "http.client.response.uncompressed";

    @Override // org.apache.http.HttpResponseInterceptor
    public void process(HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        Header contentEncoding;
        HttpEntity entity = httpResponse.getEntity();
        if (entity == null || entity.getContentLength() == 0 || (contentEncoding = entity.getContentEncoding()) == null) {
            return;
        }
        HeaderElement[] elements = contentEncoding.getElements();
        boolean z10 = false;
        if (elements.length > 0) {
            HeaderElement headerElement = elements[0];
            String lowerCase = headerElement.getName().toLowerCase(Locale.ENGLISH);
            if ("gzip".equals(lowerCase) || "x-gzip".equals(lowerCase)) {
                httpResponse.setEntity(new GzipDecompressingEntity(httpResponse.getEntity()));
            } else {
                if (!"deflate".equals(lowerCase)) {
                    if ("identity".equals(lowerCase)) {
                        return;
                    }
                    throw new HttpException("Unsupported Content-Coding: " + headerElement.getName());
                }
                httpResponse.setEntity(new DeflateDecompressingEntity(httpResponse.getEntity()));
            }
            z10 = true;
        }
        if (z10) {
            httpResponse.removeHeaders("Content-Length");
            httpResponse.removeHeaders("Content-Encoding");
            httpResponse.removeHeaders("Content-MD5");
        }
    }
}
