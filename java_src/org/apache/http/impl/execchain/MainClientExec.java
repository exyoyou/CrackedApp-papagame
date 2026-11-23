package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthProtocolState;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.NonRepeatableRequestException;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.ConnectionRequest;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.BasicRouteDirector;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRouteDirector;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.entity.BufferedHttpEntityHC4;
import org.apache.http.impl.auth.HttpAuthenticator;
import org.apache.http.impl.conn.ConnectionShutdownException;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.protocol.HttpCoreContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestTargetHostHC4;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtilsHC4;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class MainClientExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final HttpAuthenticator authenticator;
    private final HttpClientConnectionManager connManager;
    private final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final AuthenticationStrategy proxyAuthStrategy;
    private final HttpProcessor proxyHttpProcessor;
    private final HttpRequestExecutor requestExecutor;
    private final ConnectionReuseStrategy reuseStrategy;
    private final HttpRouteDirector routeDirector;
    private final AuthenticationStrategy targetAuthStrategy;
    private final UserTokenHandler userTokenHandler;

    public MainClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, AuthenticationStrategy authenticationStrategy, AuthenticationStrategy authenticationStrategy2, UserTokenHandler userTokenHandler) {
        Args.notNull(httpRequestExecutor, "HTTP request executor");
        Args.notNull(httpClientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        Args.notNull(authenticationStrategy, "Target authentication strategy");
        Args.notNull(authenticationStrategy2, "Proxy authentication strategy");
        Args.notNull(userTokenHandler, "User token handler");
        this.authenticator = new HttpAuthenticator();
        this.proxyHttpProcessor = new ImmutableHttpProcessor(new RequestTargetHostHC4(), new RequestClientConnControl());
        this.routeDirector = new BasicRouteDirector();
        this.requestExecutor = httpRequestExecutor;
        this.connManager = httpClientConnectionManager;
        this.reuseStrategy = connectionReuseStrategy;
        this.keepAliveStrategy = connectionKeepAliveStrategy;
        this.targetAuthStrategy = authenticationStrategy;
        this.proxyAuthStrategy = authenticationStrategy2;
        this.userTokenHandler = userTokenHandler;
    }

    private boolean createTunnelToProxy(HttpRoute httpRoute, int i10, HttpClientContext httpClientContext) throws HttpException {
        throw new HttpException("Proxy chains are not supported.");
    }

    private boolean createTunnelToTarget(AuthStateHC4 authStateHC4, HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpRequest httpRequest, HttpClientContext httpClientContext) throws HttpException, IOException {
        HttpResponse httpResponseExecute;
        HttpResponse httpResponse;
        RequestConfig requestConfig = httpClientContext.getRequestConfig();
        int connectTimeout = requestConfig.getConnectTimeout();
        HttpHost targetHost = httpRoute.getTargetHost();
        HttpHost proxyHost = httpRoute.getProxyHost();
        BasicHttpRequest basicHttpRequest = new BasicHttpRequest("CONNECT", targetHost.toHostString(), httpRequest.getProtocolVersion());
        this.requestExecutor.preProcess(basicHttpRequest, this.proxyHttpProcessor, httpClientContext);
        while (true) {
            HttpResponse httpResponse2 = null;
            while (true) {
                if (httpResponse2 != null) {
                    if (httpResponse2.getStatusLine().getStatusCode() <= 299) {
                        return false;
                    }
                    HttpEntity entity = httpResponse2.getEntity();
                    if (entity != null) {
                        httpResponse2.setEntity(new BufferedHttpEntityHC4(entity));
                    }
                    httpClientConnection.close();
                    throw new TunnelRefusedException("CONNECT refused by proxy: " + httpResponse2.getStatusLine(), httpResponse2);
                }
                if (!httpClientConnection.isOpen()) {
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                }
                basicHttpRequest.removeHeaders("Proxy-Authorization");
                this.authenticator.generateAuthResponse(basicHttpRequest, authStateHC4, httpClientContext);
                httpResponseExecute = this.requestExecutor.execute(basicHttpRequest, httpClientConnection, httpClientContext);
                if (httpResponseExecute.getStatusLine().getStatusCode() < 200) {
                    throw new HttpException("Unexpected response to CONNECT request: " + httpResponseExecute.getStatusLine());
                }
                if (!requestConfig.isAuthenticationEnabled()) {
                    httpResponse = httpResponseExecute;
                } else if (!this.authenticator.isAuthenticationRequested(proxyHost, httpResponseExecute, this.proxyAuthStrategy, authStateHC4, httpClientContext) || !this.authenticator.handleAuthChallenge(proxyHost, httpResponseExecute, this.proxyAuthStrategy, authStateHC4, httpClientContext)) {
                    httpResponse = httpResponseExecute;
                }
                httpResponse2 = httpResponse;
            }
            if (this.reuseStrategy.keepAlive(httpResponseExecute, httpClientContext)) {
                EntityUtilsHC4.consume(httpResponseExecute.getEntity());
            } else {
                httpClientConnection.close();
            }
        }
    }

    private boolean needAuthentication(AuthStateHC4 authStateHC4, AuthStateHC4 authStateHC5, HttpRoute httpRoute, HttpResponse httpResponse, HttpClientContext httpClientContext) {
        if (!httpClientContext.getRequestConfig().isAuthenticationEnabled()) {
            return false;
        }
        HttpHost targetHost = httpClientContext.getTargetHost();
        if (targetHost == null) {
            targetHost = httpRoute.getTargetHost();
        }
        if (targetHost.getPort() < 0) {
            targetHost = new HttpHost(targetHost.getHostName(), httpRoute.getTargetHost().getPort(), targetHost.getSchemeName());
        }
        boolean zIsAuthenticationRequested = this.authenticator.isAuthenticationRequested(targetHost, httpResponse, this.targetAuthStrategy, authStateHC4, httpClientContext);
        HttpHost proxyHost = httpRoute.getProxyHost();
        if (proxyHost == null) {
            proxyHost = httpRoute.getTargetHost();
        }
        boolean zIsAuthenticationRequested2 = this.authenticator.isAuthenticationRequested(proxyHost, httpResponse, this.proxyAuthStrategy, authStateHC5, httpClientContext);
        if (zIsAuthenticationRequested) {
            return this.authenticator.handleAuthChallenge(targetHost, httpResponse, this.targetAuthStrategy, authStateHC4, httpClientContext);
        }
        if (!zIsAuthenticationRequested2) {
            return false;
        }
        return this.authenticator.handleAuthChallenge(proxyHost, httpResponse, this.proxyAuthStrategy, authStateHC5, httpClientContext);
    }

    void establishRoute(AuthStateHC4 authStateHC4, HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpRequest httpRequest, HttpClientContext httpClientContext) throws HttpException, IOException {
        int iNextStep;
        int connectTimeout = httpClientContext.getRequestConfig().getConnectTimeout();
        RouteTracker routeTracker = new RouteTracker(httpRoute);
        do {
            HttpRoute route = routeTracker.toRoute();
            iNextStep = this.routeDirector.nextStep(httpRoute, route);
            switch (iNextStep) {
                case -1:
                    throw new HttpException("Unable to establish route: planned = " + httpRoute + "; current = " + route);
                case 0:
                    this.connManager.routeComplete(httpClientConnection, httpRoute, httpClientContext);
                    break;
                case 1:
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectTarget(httpRoute.isSecure());
                    break;
                case 2:
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectProxy(httpRoute.getProxyHost(), false);
                    break;
                case 3:
                    routeTracker.tunnelTarget(createTunnelToTarget(authStateHC4, httpClientConnection, httpRoute, httpRequest, httpClientContext));
                    break;
                case 4:
                    int hopCount = route.getHopCount() - 1;
                    routeTracker.tunnelProxy(httpRoute.getHopTarget(hopCount), createTunnelToProxy(httpRoute, hopCount, httpClientContext));
                    break;
                case 5:
                    this.connManager.upgrade(httpClientConnection, httpRoute, httpClientContext);
                    routeTracker.layerProtocol(httpRoute.isSecure());
                    break;
                default:
                    throw new IllegalStateException("Unknown step indicator " + iNextStep + " from RouteDirector.");
            }
        } while (iNextStep > 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws HttpException, IOException {
        ConnectionHolder connectionHolder;
        Object obj;
        ConnectionHolder connectionHolder2;
        HttpResponse response;
        Object userToken;
        AuthStateHC4 authStateHC4;
        ConnectionHolder connectionHolder3;
        String str;
        HttpRoute httpRoute2 = httpRoute;
        Args.notNull(httpRoute2, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        AuthStateHC4 targetAuthState = httpClientContext.getTargetAuthState();
        if (targetAuthState == null) {
            targetAuthState = new AuthStateHC4();
            httpClientContext.setAttribute(HttpClientContext.TARGET_AUTH_STATE, targetAuthState);
        }
        AuthStateHC4 authStateHC5 = targetAuthState;
        AuthStateHC4 proxyAuthState = httpClientContext.getProxyAuthState();
        if (proxyAuthState == null) {
            proxyAuthState = new AuthStateHC4();
            httpClientContext.setAttribute(HttpClientContext.PROXY_AUTH_STATE, proxyAuthState);
        }
        AuthStateHC4 authStateHC6 = proxyAuthState;
        if (httpRequestWrapper instanceof HttpEntityEnclosingRequest) {
            RequestEntityProxy.enhance((HttpEntityEnclosingRequest) httpRequestWrapper);
        }
        Object userToken2 = httpClientContext.getUserToken();
        ConnectionRequest connectionRequestRequestConnection = this.connManager.requestConnection(httpRoute2, userToken2);
        String str2 = "Request aborted";
        if (httpExecutionAware != null) {
            if (httpExecutionAware.isAborted()) {
                connectionRequestRequestConnection.cancel();
                throw new RequestAbortedException("Request aborted");
            }
            httpExecutionAware.setCancellable(connectionRequestRequestConnection);
        }
        RequestConfig requestConfig = httpClientContext.getRequestConfig();
        try {
            int connectionRequestTimeout = requestConfig.getConnectionRequestTimeout();
            HttpClientConnection httpClientConnection = connectionRequestRequestConnection.get(connectionRequestTimeout > 0 ? connectionRequestTimeout : 0L, TimeUnit.MILLISECONDS);
            httpClientContext.setAttribute(HttpCoreContext.HTTP_CONNECTION, httpClientConnection);
            if (requestConfig.isStaleConnectionCheckEnabled() && httpClientConnection.isOpen() && httpClientConnection.isStale()) {
                httpClientConnection.close();
            }
            ConnectionHolder connectionHolder4 = new ConnectionHolder(this.connManager, httpClientConnection);
            if (httpExecutionAware != null) {
                try {
                    try {
                        httpExecutionAware.setCancellable(connectionHolder4);
                    } catch (ConnectionShutdownException e10) {
                        InterruptedIOException interruptedIOException = new InterruptedIOException("Connection has been shut down");
                        interruptedIOException.initCause(e10);
                        throw interruptedIOException;
                    }
                } catch (IOException e11) {
                    e = e11;
                    connectionHolder = connectionHolder4;
                    connectionHolder.abortConnection();
                    throw e;
                } catch (RuntimeException e12) {
                    e = e12;
                    connectionHolder = connectionHolder4;
                    connectionHolder.abortConnection();
                    throw e;
                } catch (HttpException e13) {
                    e = e13;
                    connectionHolder = connectionHolder4;
                    connectionHolder.abortConnection();
                    throw e;
                }
            }
            int i10 = 1;
            int i11 = 1;
            while (true) {
                if (i11 > i10 && !RequestEntityProxy.isRepeatable(httpRequestWrapper)) {
                    throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.");
                }
                if (httpExecutionAware != null && httpExecutionAware.isAborted()) {
                    throw new RequestAbortedException(str2);
                }
                obj = userToken2;
                if (httpClientConnection.isOpen()) {
                    connectionHolder2 = connectionHolder4;
                } else {
                    try {
                        if (Log.isLoggable(TAG, 3)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Opening connection ");
                            sb2.append(httpRoute2);
                        }
                        connectionHolder2 = connectionHolder4;
                        try {
                            try {
                                establishRoute(authStateHC6, httpClientConnection, httpRoute, httpRequestWrapper, httpClientContext);
                            } catch (TunnelRefusedException e14) {
                                if (Log.isLoggable(TAG, 3)) {
                                    e14.getMessage();
                                }
                                response = e14.getResponse();
                            }
                        } catch (IOException e15) {
                            e = e15;
                            connectionHolder = connectionHolder2;
                            connectionHolder.abortConnection();
                            throw e;
                        } catch (RuntimeException e16) {
                            e = e16;
                            connectionHolder = connectionHolder2;
                            connectionHolder.abortConnection();
                            throw e;
                        } catch (HttpException e17) {
                            e = e17;
                            connectionHolder = connectionHolder2;
                            connectionHolder.abortConnection();
                            throw e;
                        }
                    } catch (IOException e18) {
                        e = e18;
                        connectionHolder2 = connectionHolder4;
                    } catch (RuntimeException e19) {
                        e = e19;
                        connectionHolder2 = connectionHolder4;
                    } catch (HttpException e20) {
                        e = e20;
                        connectionHolder2 = connectionHolder4;
                    }
                }
                int socketTimeout = requestConfig.getSocketTimeout();
                if (socketTimeout >= 0) {
                    httpClientConnection.setSocketTimeout(socketTimeout);
                }
                if (httpExecutionAware != null && httpExecutionAware.isAborted()) {
                    throw new RequestAbortedException(str2);
                }
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Executing request ");
                    sb3.append(httpRequestWrapper.getRequestLine());
                }
                if (!httpRequestWrapper.containsHeader("Authorization")) {
                    if (Log.isLoggable(TAG, 3)) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("Target auth state: ");
                        sb4.append(authStateHC5.getState());
                    }
                    this.authenticator.generateAuthResponse(httpRequestWrapper, authStateHC5, httpClientContext);
                }
                if (httpRequestWrapper.containsHeader("Proxy-Authorization") || httpRoute.isTunnelled()) {
                    authStateHC4 = authStateHC6;
                } else {
                    if (Log.isLoggable(TAG, 3)) {
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("Proxy auth state: ");
                        sb5.append(authStateHC6.getState());
                    }
                    authStateHC4 = authStateHC6;
                    this.authenticator.generateAuthResponse(httpRequestWrapper, authStateHC4, httpClientContext);
                }
                HttpResponse httpResponseExecute = this.requestExecutor.execute(httpRequestWrapper, httpClientConnection, httpClientContext);
                if (this.reuseStrategy.keepAlive(httpResponseExecute, httpClientContext)) {
                    try {
                        long keepAliveDuration = this.keepAliveStrategy.getKeepAliveDuration(httpResponseExecute, httpClientContext);
                        if (Log.isLoggable(TAG, 3)) {
                            if (keepAliveDuration > 0) {
                                str = "for " + keepAliveDuration + " " + TimeUnit.MILLISECONDS;
                            } else {
                                str = "indefinitely";
                            }
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("Connection can be kept alive ");
                            sb6.append(str);
                        }
                        connectionHolder3 = connectionHolder2;
                        try {
                            connectionHolder3.setValidFor(keepAliveDuration, TimeUnit.MILLISECONDS);
                            connectionHolder3.markReusable();
                        } catch (IOException e21) {
                            e = e21;
                            connectionHolder = connectionHolder3;
                            connectionHolder.abortConnection();
                            throw e;
                        } catch (RuntimeException e22) {
                            e = e22;
                            connectionHolder = connectionHolder3;
                            connectionHolder.abortConnection();
                            throw e;
                        } catch (HttpException e23) {
                            e = e23;
                            connectionHolder = connectionHolder3;
                            connectionHolder.abortConnection();
                            throw e;
                        }
                    } catch (IOException e24) {
                        e = e24;
                        connectionHolder3 = connectionHolder2;
                    } catch (RuntimeException e25) {
                        e = e25;
                        connectionHolder3 = connectionHolder2;
                    } catch (HttpException e26) {
                        e = e26;
                        connectionHolder3 = connectionHolder2;
                    }
                } else {
                    httpResponseExecute = httpResponseExecute;
                    connectionHolder3 = connectionHolder2;
                    connectionHolder3.markNonReusable();
                }
                connectionHolder2 = connectionHolder3;
                AuthStateHC4 authStateHC7 = authStateHC4;
                if (!needAuthentication(authStateHC5, authStateHC4, httpRoute, httpResponseExecute, httpClientContext)) {
                    response = httpResponseExecute;
                    break;
                }
                HttpEntity entity = httpResponseExecute.getEntity();
                if (connectionHolder2.isReusable()) {
                    EntityUtilsHC4.consume(entity);
                } else {
                    httpClientConnection.close();
                    AuthProtocolState state = authStateHC7.getState();
                    AuthProtocolState authProtocolState = AuthProtocolState.SUCCESS;
                    if (state == authProtocolState && authStateHC7.getAuthScheme() != null && authStateHC7.getAuthScheme().isConnectionBased()) {
                        Log.isLoggable(TAG, 3);
                        authStateHC7.reset();
                    }
                    if (authStateHC5.getState() == authProtocolState && authStateHC5.getAuthScheme() != null && authStateHC5.getAuthScheme().isConnectionBased()) {
                        Log.isLoggable(TAG, 3);
                        authStateHC5.reset();
                    }
                }
                HttpRequest original = httpRequestWrapper.getOriginal();
                if (!original.containsHeader("Authorization")) {
                    httpRequestWrapper.removeHeaders("Authorization");
                }
                if (!original.containsHeader("Proxy-Authorization")) {
                    httpRequestWrapper.removeHeaders("Proxy-Authorization");
                }
                i11++;
                httpClientConnection = httpClientConnection;
                str2 = str2;
                userToken2 = obj;
                connectionHolder4 = connectionHolder2;
                authStateHC6 = authStateHC7;
                i10 = 1;
                httpRoute2 = httpRoute;
            }
            if (obj == null) {
                userToken = this.userTokenHandler.getUserToken(httpClientContext);
                httpClientContext.setAttribute(HttpClientContext.USER_TOKEN, userToken);
            } else {
                userToken = obj;
            }
            if (userToken != null) {
                connectionHolder = connectionHolder2;
                try {
                    connectionHolder.setState(userToken);
                } catch (IOException e27) {
                    e = e27;
                    connectionHolder.abortConnection();
                    throw e;
                } catch (RuntimeException e28) {
                    e = e28;
                    connectionHolder.abortConnection();
                    throw e;
                } catch (HttpException e29) {
                    e = e29;
                    connectionHolder.abortConnection();
                    throw e;
                }
            } else {
                connectionHolder = connectionHolder2;
            }
            HttpEntity entity2 = response.getEntity();
            if (entity2 != null && entity2.isStreaming()) {
                return new HttpResponseProxy(response, connectionHolder);
            }
            connectionHolder.releaseConnection();
            return new HttpResponseProxy(response, null);
        } catch (InterruptedException e30) {
            Thread.currentThread().interrupt();
            throw new RequestAbortedException("Request aborted", e30);
        } catch (ExecutionException e31) {
            e = e31;
            Throwable cause = e.getCause();
            if (cause != null) {
                e = cause;
            }
            throw new RequestAbortedException("Request execution failed", e);
        }
    }
}
