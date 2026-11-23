package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import java.net.URI;
import java.util.List;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.client.RedirectException;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.utils.URIUtilsHC4;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtilsHC4;

/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class RedirectExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final RedirectStrategy redirectStrategy;
    private final ClientExecChain requestExecutor;
    private final HttpRoutePlanner routePlanner;

    public RedirectExec(ClientExecChain clientExecChain, HttpRoutePlanner httpRoutePlanner, RedirectStrategy redirectStrategy) {
        Args.notNull(clientExecChain, "HTTP client request executor");
        Args.notNull(httpRoutePlanner, "HTTP route planner");
        Args.notNull(redirectStrategy, "HTTP redirect strategy");
        this.requestExecutor = clientExecChain;
        this.routePlanner = httpRoutePlanner;
        this.redirectStrategy = redirectStrategy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [org.apache.http.HttpRequest, org.apache.http.client.methods.HttpRequestWrapper] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.apache.http.impl.execchain.ClientExecChain] */
    /* JADX WARN: Type inference failed for: r7v1, types: [org.apache.http.client.RedirectStrategy] */
    /* JADX WARN: Type inference failed for: r7v3, types: [org.apache.http.client.RedirectStrategy] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws HttpException, IOException {
        CloseableHttpResponse closeableHttpResponseExecute;
        AuthScheme authScheme;
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        List<URI> redirectLocations = httpClientContext.getRedirectLocations();
        if (redirectLocations != null) {
            redirectLocations.clear();
        }
        RequestConfig requestConfig = httpClientContext.getRequestConfig();
        int maxRedirects = requestConfig.getMaxRedirects() > 0 ? requestConfig.getMaxRedirects() : 50;
        int i10 = 0;
        ?? r10 = httpRequestWrapper;
        while (true) {
            closeableHttpResponseExecute = this.requestExecutor.execute(httpRoute, r10, httpClientContext, httpExecutionAware);
            try {
                if (!requestConfig.isRedirectsEnabled() || !this.redirectStrategy.isRedirected(r10, closeableHttpResponseExecute, httpClientContext)) {
                    break;
                }
                if (i10 >= maxRedirects) {
                    throw new RedirectException("Maximum redirects (" + maxRedirects + ") exceeded");
                }
                i10++;
                HttpUriRequest redirect = this.redirectStrategy.getRedirect(r10, closeableHttpResponseExecute, httpClientContext);
                if (!redirect.headerIterator().hasNext()) {
                    redirect.setHeaders(httpRequestWrapper.getOriginal().getAllHeaders());
                }
                HttpUriRequest httpUriRequestWrap = HttpRequestWrapper.wrap(redirect);
                if (httpUriRequestWrap instanceof HttpEntityEnclosingRequest) {
                    RequestEntityProxy.enhance((HttpEntityEnclosingRequest) httpUriRequestWrap);
                }
                URI uri = httpUriRequestWrap.getURI();
                HttpHost httpHostExtractHost = URIUtilsHC4.extractHost(uri);
                if (httpHostExtractHost == null) {
                    throw new ProtocolException("Redirect URI does not specify a valid host name: " + uri);
                }
                if (!httpRoute.getTargetHost().equals(httpHostExtractHost)) {
                    AuthStateHC4 targetAuthState = httpClientContext.getTargetAuthState();
                    if (targetAuthState != null) {
                        Log.isLoggable(TAG, 3);
                        targetAuthState.reset();
                    }
                    AuthStateHC4 proxyAuthState = httpClientContext.getProxyAuthState();
                    if (proxyAuthState != null && (authScheme = proxyAuthState.getAuthScheme()) != null && authScheme.isConnectionBased()) {
                        Log.isLoggable(TAG, 3);
                        proxyAuthState.reset();
                    }
                }
                httpRoute = this.routePlanner.determineRoute(httpHostExtractHost, httpUriRequestWrap, httpClientContext);
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Redirecting to '");
                    sb2.append(uri);
                    sb2.append("' via ");
                    sb2.append(httpRoute);
                }
                EntityUtilsHC4.consume(closeableHttpResponseExecute.getEntity());
                closeableHttpResponseExecute.close();
                r10 = httpUriRequestWrap;
            } catch (IOException e10) {
                closeableHttpResponseExecute.close();
                throw e10;
            } catch (RuntimeException e11) {
                closeableHttpResponseExecute.close();
                throw e11;
            } catch (HttpException e12) {
                try {
                    try {
                        EntityUtilsHC4.consume(closeableHttpResponseExecute.getEntity());
                    } catch (IOException unused) {
                        Log.isLoggable(TAG, 3);
                    }
                    throw e12;
                } finally {
                    closeableHttpResponseExecute.close();
                }
            }
        }
        return closeableHttpResponseExecute;
    }
}
