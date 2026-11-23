package org.apache.http.client.protocol;

import android.util.Log;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import net.lingala.zip4j.util.e;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.CookieStore;
import org.apache.http.client.config.CookieSpecs;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.config.Lookup;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.cookie.SetCookie2;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class RequestAddCookiesHC4 implements HttpRequestInterceptor {
    private static final String TAG = "HttpClient";

    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        HttpClientContext httpClientContextAdapt;
        CookieStore cookieStore;
        Lookup<CookieSpecProvider> cookieSpecRegistry;
        HttpHost targetHost;
        RouteInfo httpRoute;
        URI uri;
        Header versionHeader;
        Args.notNull(httpRequest, "HTTP request");
        Args.notNull(httpContext, "HTTP context");
        if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT") || (cookieStore = (httpClientContextAdapt = HttpClientContext.adapt(httpContext)).getCookieStore()) == null || (cookieSpecRegistry = httpClientContextAdapt.getCookieSpecRegistry()) == null || (targetHost = httpClientContextAdapt.getTargetHost()) == null || (httpRoute = httpClientContextAdapt.getHttpRoute()) == null) {
            return;
        }
        String cookieSpec = httpClientContextAdapt.getRequestConfig().getCookieSpec();
        if (cookieSpec == null) {
            cookieSpec = CookieSpecs.BEST_MATCH;
        }
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("CookieSpec selected: ");
            sb2.append(cookieSpec);
        }
        if (httpRequest instanceof HttpUriRequest) {
            uri = ((HttpUriRequest) httpRequest).getURI();
        } else {
            try {
                uri = new URI(httpRequest.getRequestLine().getUri());
            } catch (URISyntaxException unused) {
                uri = null;
            }
        }
        String path = uri != null ? uri.getPath() : null;
        String hostName = targetHost.getHostName();
        int port = targetHost.getPort();
        if (port < 0) {
            port = httpRoute.getTargetHost().getPort();
        }
        boolean z10 = false;
        if (port < 0) {
            port = 0;
        }
        if (TextUtils.isEmpty(path)) {
            path = e.F0;
        }
        CookieOrigin cookieOrigin = new CookieOrigin(hostName, port, path, httpRoute.isSecure());
        CookieSpecProvider cookieSpecProviderLookup = cookieSpecRegistry.lookup(cookieSpec);
        if (cookieSpecProviderLookup == null) {
            throw new HttpException("Unsupported cookie policy: " + cookieSpec);
        }
        CookieSpec cookieSpecCreate = cookieSpecProviderLookup.create(httpClientContextAdapt);
        ArrayList<Cookie> arrayList = new ArrayList(cookieStore.getCookies());
        ArrayList arrayList2 = new ArrayList();
        Date date = new Date();
        for (Cookie cookie : arrayList) {
            if (cookie.isExpired(date)) {
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Cookie ");
                    sb3.append(cookie);
                    sb3.append(" expired");
                }
            } else if (cookieSpecCreate.match(cookie, cookieOrigin)) {
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Cookie ");
                    sb4.append(cookie);
                    sb4.append(" match ");
                    sb4.append(cookieOrigin);
                }
                arrayList2.add(cookie);
            }
        }
        if (!arrayList2.isEmpty()) {
            Iterator<Header> it2 = cookieSpecCreate.formatCookies(arrayList2).iterator();
            while (it2.hasNext()) {
                httpRequest.addHeader(it2.next());
            }
        }
        int version = cookieSpecCreate.getVersion();
        if (version > 0) {
            for (Cookie cookie2 : arrayList2) {
                if (version != cookie2.getVersion() || !(cookie2 instanceof SetCookie2)) {
                    z10 = true;
                }
            }
            if (z10 && (versionHeader = cookieSpecCreate.getVersionHeader()) != null) {
                httpRequest.addHeader(versionHeader);
            }
        }
        httpContext.setAttribute(HttpClientContext.COOKIE_SPEC, cookieSpecCreate);
        httpContext.setAttribute(HttpClientContext.COOKIE_ORIGIN, cookieOrigin);
    }
}
