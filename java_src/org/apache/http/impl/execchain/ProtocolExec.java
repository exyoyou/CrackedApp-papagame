package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.utils.URIUtilsHC4;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.client.BasicCredentialsProviderHC4;
import org.apache.http.protocol.HttpCoreContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class ProtocolExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final HttpProcessor httpProcessor;
    private final ClientExecChain requestExecutor;

    public ProtocolExec(ClientExecChain clientExecChain, HttpProcessor httpProcessor) {
        Args.notNull(clientExecChain, "HTTP client request executor");
        Args.notNull(httpProcessor, "HTTP protocol processor");
        this.requestExecutor = clientExecChain;
        this.httpProcessor = httpProcessor;
    }

    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws HttpException, IOException {
        URI uriCreate;
        String userInfo;
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        HttpRequest original = httpRequestWrapper.getOriginal();
        HttpHost httpHost = null;
        if (original instanceof HttpUriRequest) {
            uriCreate = ((HttpUriRequest) original).getURI();
        } else {
            String uri = original.getRequestLine().getUri();
            try {
                uriCreate = URI.create(uri);
            } catch (IllegalArgumentException unused) {
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unable to parse '");
                    sb2.append(uri);
                    sb2.append("' as a valid URI; ");
                    sb2.append("request URI and Host header may be inconsistent");
                }
                uriCreate = null;
            }
        }
        httpRequestWrapper.setURI(uriCreate);
        rewriteRequestURI(httpRequestWrapper, httpRoute);
        HttpHost httpHost2 = (HttpHost) httpRequestWrapper.getParams().getParameter("http.virtual-host");
        if (httpHost2 != null && httpHost2.getPort() == -1) {
            int port = httpRoute.getTargetHost().getPort();
            if (port != -1) {
                httpHost2 = new HttpHost(httpHost2.getHostName(), port, httpHost2.getSchemeName());
            }
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Using virtual host");
                sb3.append(httpHost2);
            }
        }
        if (httpHost2 != null) {
            httpHost = httpHost2;
        } else if (uriCreate != null && uriCreate.isAbsolute() && uriCreate.getHost() != null) {
            httpHost = new HttpHost(uriCreate.getHost(), uriCreate.getPort(), uriCreate.getScheme());
        }
        if (httpHost == null) {
            httpHost = httpRoute.getTargetHost();
        }
        if (uriCreate != null && (userInfo = uriCreate.getUserInfo()) != null) {
            CredentialsProvider credentialsProvider = httpClientContext.getCredentialsProvider();
            if (credentialsProvider == null) {
                credentialsProvider = new BasicCredentialsProviderHC4();
                httpClientContext.setCredentialsProvider(credentialsProvider);
            }
            credentialsProvider.setCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort()), new UsernamePasswordCredentials(userInfo));
        }
        httpClientContext.setAttribute(HttpCoreContext.HTTP_TARGET_HOST, httpHost);
        httpClientContext.setAttribute(HttpClientContext.HTTP_ROUTE, httpRoute);
        httpClientContext.setAttribute(HttpCoreContext.HTTP_REQUEST, httpRequestWrapper);
        this.httpProcessor.process(httpRequestWrapper, httpClientContext);
        CloseableHttpResponse closeableHttpResponseExecute = this.requestExecutor.execute(httpRoute, httpRequestWrapper, httpClientContext, httpExecutionAware);
        try {
            httpClientContext.setAttribute(HttpCoreContext.HTTP_RESPONSE, closeableHttpResponseExecute);
            this.httpProcessor.process(closeableHttpResponseExecute, httpClientContext);
            return closeableHttpResponseExecute;
        } catch (IOException e10) {
            closeableHttpResponseExecute.close();
            throw e10;
        } catch (RuntimeException e11) {
            closeableHttpResponseExecute.close();
            throw e11;
        } catch (HttpException e12) {
            closeableHttpResponseExecute.close();
            throw e12;
        }
    }

    void rewriteRequestURI(HttpRequestWrapper httpRequestWrapper, HttpRoute httpRoute) throws ProtocolException {
        URI uriRewriteURI;
        try {
            URI uri = httpRequestWrapper.getURI();
            if (uri != null) {
                if (httpRoute.getProxyHost() == null || httpRoute.isTunnelled()) {
                    uriRewriteURI = uri.isAbsolute() ? URIUtilsHC4.rewriteURI(uri, null, true) : URIUtilsHC4.rewriteURI(uri);
                } else {
                    uriRewriteURI = !uri.isAbsolute() ? URIUtilsHC4.rewriteURI(uri, httpRoute.getTargetHost(), true) : URIUtilsHC4.rewriteURI(uri);
                }
                httpRequestWrapper.setURI(uriRewriteURI);
            }
        } catch (URISyntaxException e10) {
            throw new ProtocolException("Invalid URI: " + httpRequestWrapper.getRequestLine().getUri(), e10);
        }
    }
}
