package org.apache.http.client.protocol;

import android.util.Log;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import x.a;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class ResponseProcessCookiesHC4 implements HttpResponseInterceptor {
    private static final String TAG = "HttpClient";

    private static String formatCooke(Cookie cookie) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(cookie.getName());
        sb2.append("=\"");
        String value = cookie.getValue();
        if (value.length() > 100) {
            value = value.substring(0, 100) + "...";
        }
        sb2.append(value);
        sb2.append(a.f97579g);
        sb2.append(", version:");
        sb2.append(Integer.toString(cookie.getVersion()));
        sb2.append(", domain:");
        sb2.append(cookie.getDomain());
        sb2.append(", path:");
        sb2.append(cookie.getPath());
        sb2.append(", expiry:");
        sb2.append(cookie.getExpiryDate());
        return sb2.toString();
    }

    private void processCookies(HeaderIterator headerIterator, CookieSpec cookieSpec, CookieOrigin cookieOrigin, CookieStore cookieStore) {
        while (headerIterator.hasNext()) {
            Header headerNextHeader = headerIterator.nextHeader();
            try {
                for (Cookie cookie : cookieSpec.parse(headerNextHeader, cookieOrigin)) {
                    try {
                        cookieSpec.validate(cookie, cookieOrigin);
                        cookieStore.addCookie(cookie);
                        if (Log.isLoggable(TAG, 3)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Cookie accepted [");
                            sb2.append(formatCooke(cookie));
                            sb2.append("]");
                        }
                    } catch (MalformedCookieException e10) {
                        if (Log.isLoggable(TAG, 5)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Cookie rejected [");
                            sb3.append(formatCooke(cookie));
                            sb3.append("] ");
                            sb3.append(e10.getMessage());
                        }
                    }
                }
            } catch (MalformedCookieException e11) {
                if (Log.isLoggable(TAG, 5)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Invalid cookie header: \"");
                    sb4.append(headerNextHeader);
                    sb4.append("\". ");
                    sb4.append(e11.getMessage());
                }
            }
        }
    }

    @Override // org.apache.http.HttpResponseInterceptor
    public void process(HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        CookieStore cookieStore;
        CookieOrigin cookieOrigin;
        Args.notNull(httpResponse, "HTTP request");
        Args.notNull(httpContext, "HTTP context");
        HttpClientContext httpClientContextAdapt = HttpClientContext.adapt(httpContext);
        CookieSpec cookieSpec = httpClientContextAdapt.getCookieSpec();
        if (cookieSpec == null || (cookieStore = httpClientContextAdapt.getCookieStore()) == null || (cookieOrigin = httpClientContextAdapt.getCookieOrigin()) == null) {
            return;
        }
        processCookies(httpResponse.headerIterator(HttpHeaders.Names.SET_COOKIE), cookieSpec, cookieOrigin, cookieStore);
        if (cookieSpec.getVersion() > 0) {
            processCookies(httpResponse.headerIterator(HttpHeaders.Names.SET_COOKIE2), cookieSpec, cookieOrigin, cookieStore);
        }
    }
}
