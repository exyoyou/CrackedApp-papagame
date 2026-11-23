package org.apache.http.impl.client;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.net.ssl.SSLException;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class DefaultHttpRequestRetryHandlerHC4 implements HttpRequestRetryHandler {
    public static final DefaultHttpRequestRetryHandlerHC4 INSTANCE = new DefaultHttpRequestRetryHandlerHC4();
    private final Set<Class<? extends IOException>> nonRetriableClasses;
    private final boolean requestSentRetryEnabled;
    private final int retryCount;

    protected DefaultHttpRequestRetryHandlerHC4(int i10, boolean z10, Collection<Class<? extends IOException>> collection) {
        this.retryCount = i10;
        this.requestSentRetryEnabled = z10;
        this.nonRetriableClasses = new HashSet();
        Iterator<Class<? extends IOException>> it2 = collection.iterator();
        while (it2.hasNext()) {
            this.nonRetriableClasses.add(it2.next());
        }
    }

    public int getRetryCount() {
        return this.retryCount;
    }

    protected boolean handleAsIdempotent(HttpRequest httpRequest) {
        return !(httpRequest instanceof HttpEntityEnclosingRequest);
    }

    public boolean isRequestSentRetryEnabled() {
        return this.requestSentRetryEnabled;
    }

    @Deprecated
    protected boolean requestIsAborted(HttpRequest httpRequest) {
        if (httpRequest instanceof RequestWrapper) {
            httpRequest = ((RequestWrapper) httpRequest).getOriginal();
        }
        return (httpRequest instanceof HttpUriRequest) && ((HttpUriRequest) httpRequest).isAborted();
    }

    @Override // org.apache.http.client.HttpRequestRetryHandler
    public boolean retryRequest(IOException iOException, int i10, HttpContext httpContext) {
        Args.notNull(iOException, "Exception parameter");
        Args.notNull(httpContext, "HTTP context");
        if (i10 > this.retryCount || this.nonRetriableClasses.contains(iOException.getClass())) {
            return false;
        }
        Iterator<Class<? extends IOException>> it2 = this.nonRetriableClasses.iterator();
        while (it2.hasNext()) {
            if (it2.next().isInstance(iOException)) {
                return false;
            }
        }
        HttpClientContext httpClientContextAdapt = HttpClientContext.adapt(httpContext);
        HttpRequest request = httpClientContextAdapt.getRequest();
        if (requestIsAborted(request)) {
            return false;
        }
        return handleAsIdempotent(request) || !httpClientContextAdapt.isRequestSent() || this.requestSentRetryEnabled;
    }

    public DefaultHttpRequestRetryHandlerHC4(int i10, boolean z10) {
        this(i10, z10, Arrays.asList(InterruptedIOException.class, UnknownHostException.class, ConnectException.class, SSLException.class));
    }

    public DefaultHttpRequestRetryHandlerHC4() {
        this(3, false);
    }
}
