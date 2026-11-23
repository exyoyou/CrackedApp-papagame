package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.NonRepeatableRequestException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class RetryExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final ClientExecChain requestExecutor;
    private final HttpRequestRetryHandler retryHandler;

    public RetryExec(ClientExecChain clientExecChain, HttpRequestRetryHandler httpRequestRetryHandler) {
        Args.notNull(clientExecChain, "HTTP request executor");
        Args.notNull(httpRequestRetryHandler, "HTTP request retry handler");
        this.requestExecutor = clientExecChain;
        this.retryHandler = httpRequestRetryHandler;
    }

    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws HttpException, IOException {
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        Header[] allHeaders = httpRequestWrapper.getAllHeaders();
        int i10 = 1;
        while (true) {
            try {
                return this.requestExecutor.execute(httpRoute, httpRequestWrapper, httpClientContext, httpExecutionAware);
            } catch (IOException e10) {
                if (httpExecutionAware != null && httpExecutionAware.isAborted()) {
                    throw e10;
                }
                if (!this.retryHandler.retryRequest(e10, i10, httpClientContext)) {
                    if (!(e10 instanceof NoHttpResponseException)) {
                        throw e10;
                    }
                    NoHttpResponseException noHttpResponseException = new NoHttpResponseException(httpRoute.getTargetHost().toHostString() + " failed to respond");
                    noHttpResponseException.setStackTrace(e10.getStackTrace());
                    throw noHttpResponseException;
                }
                if (Log.isLoggable(TAG, 4)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("I/O exception (");
                    sb2.append(e10.getClass().getName());
                    sb2.append(") caught when processing request to ");
                    sb2.append(httpRoute);
                    sb2.append(": ");
                    sb2.append(e10.getMessage());
                }
                if (Log.isLoggable(TAG, 3)) {
                    e10.getMessage();
                }
                if (!RequestEntityProxy.isRepeatable(httpRequestWrapper)) {
                    new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity").initCause(e10);
                }
                httpRequestWrapper.setHeaders(allHeaders);
                if (Log.isLoggable(TAG, 4)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Retrying request to ");
                    sb3.append(httpRoute);
                }
                i10++;
            }
        }
    }
}
