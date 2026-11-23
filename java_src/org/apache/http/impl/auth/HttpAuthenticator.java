package org.apache.http.impl.auth;

import android.util.Log;
import java.io.IOException;
import java.util.Locale;
import java.util.Map;
import java.util.Queue;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthOption;
import org.apache.http.auth.AuthProtocolState;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ContextAwareAuthScheme;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Asserts;

/* JADX INFO: loaded from: classes.dex */
public class HttpAuthenticator {
    private static final String TAG = "HttpClient";

    /* JADX INFO: renamed from: org.apache.http.impl.auth.HttpAuthenticator$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$http$auth$AuthProtocolState;

        static {
            int[] iArr = new int[AuthProtocolState.values().length];
            $SwitchMap$org$apache$http$auth$AuthProtocolState = iArr;
            try {
                iArr[AuthProtocolState.CHALLENGED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$http$auth$AuthProtocolState[AuthProtocolState.HANDSHAKE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$http$auth$AuthProtocolState[AuthProtocolState.SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$http$auth$AuthProtocolState[AuthProtocolState.FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$http$auth$AuthProtocolState[AuthProtocolState.UNCHALLENGED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private Header doAuth(AuthScheme authScheme, Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        return authScheme instanceof ContextAwareAuthScheme ? ((ContextAwareAuthScheme) authScheme).authenticate(credentials, httpRequest, httpContext) : authScheme.authenticate(credentials, httpRequest);
    }

    private void ensureAuthScheme(AuthScheme authScheme) {
        Asserts.notNull(authScheme, "Auth scheme");
    }

    public void generateAuthResponse(HttpRequest httpRequest, AuthStateHC4 authStateHC4, HttpContext httpContext) throws HttpException, IOException {
        AuthScheme authScheme = authStateHC4.getAuthScheme();
        Credentials credentials = authStateHC4.getCredentials();
        int i10 = AnonymousClass1.$SwitchMap$org$apache$http$auth$AuthProtocolState[authStateHC4.getState().ordinal()];
        if (i10 == 1) {
            Queue<AuthOption> authOptions = authStateHC4.getAuthOptions();
            if (authOptions != null) {
                while (!authOptions.isEmpty()) {
                    AuthOption authOptionRemove = authOptions.remove();
                    AuthScheme authScheme2 = authOptionRemove.getAuthScheme();
                    Credentials credentials2 = authOptionRemove.getCredentials();
                    authStateHC4.update(authScheme2, credentials2);
                    if (Log.isLoggable(TAG, 3)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Generating response to an authentication challenge using ");
                        sb2.append(authScheme2.getSchemeName());
                        sb2.append(" scheme");
                    }
                    try {
                        httpRequest.addHeader(doAuth(authScheme2, credentials2, httpRequest, httpContext));
                        return;
                    } catch (AuthenticationException e10) {
                        if (Log.isLoggable(TAG, 5)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(authScheme2);
                            sb3.append(" authentication error: ");
                            sb3.append(e10.getMessage());
                        }
                    }
                }
                return;
            }
            ensureAuthScheme(authScheme);
        } else if (i10 == 3) {
            ensureAuthScheme(authScheme);
            if (authScheme.isConnectionBased()) {
                return;
            }
        } else if (i10 == 4) {
            return;
        }
        if (authScheme != null) {
            try {
                httpRequest.addHeader(doAuth(authScheme, credentials, httpRequest, httpContext));
            } catch (AuthenticationException e11) {
                if (Log.isLoggable(TAG, 6)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(authScheme);
                    sb4.append(" authentication error: ");
                    sb4.append(e11.getMessage());
                }
            }
        }
    }

    public boolean handleAuthChallenge(HttpHost httpHost, HttpResponse httpResponse, AuthenticationStrategy authenticationStrategy, AuthStateHC4 authStateHC4, HttpContext httpContext) {
        Queue<AuthOption> queueSelect;
        try {
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(httpHost.toHostString());
                sb2.append(" requested authentication");
            }
            Map<String, Header> challenges = authenticationStrategy.getChallenges(httpHost, httpResponse, httpContext);
            if (challenges.isEmpty()) {
                return false;
            }
            AuthScheme authScheme = authStateHC4.getAuthScheme();
            int i10 = AnonymousClass1.$SwitchMap$org$apache$http$auth$AuthProtocolState[authStateHC4.getState().ordinal()];
            if (i10 != 1 && i10 != 2) {
                if (i10 == 3) {
                    authStateHC4.reset();
                } else {
                    if (i10 == 4) {
                        return false;
                    }
                    if (i10 != 5) {
                    }
                }
                queueSelect = authenticationStrategy.select(challenges, httpHost, httpResponse, httpContext);
                if (queueSelect != null || queueSelect.isEmpty()) {
                    return false;
                }
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Selected authentication options: ");
                    sb3.append(queueSelect);
                }
                authStateHC4.setState(AuthProtocolState.CHALLENGED);
                authStateHC4.update(queueSelect);
                return true;
            }
            if (authScheme == null) {
                Log.isLoggable(TAG, 3);
                authenticationStrategy.authFailed(httpHost, null, httpContext);
                authStateHC4.reset();
                authStateHC4.setState(AuthProtocolState.FAILURE);
                return false;
            }
            if (authScheme != null) {
                Header header = challenges.get(authScheme.getSchemeName().toLowerCase(Locale.ENGLISH));
                if (header != null) {
                    Log.isLoggable(TAG, 3);
                    authScheme.processChallenge(header);
                    if (!authScheme.isComplete()) {
                        authStateHC4.setState(AuthProtocolState.HANDSHAKE);
                        return true;
                    }
                    Log.isLoggable(TAG, 3);
                    authenticationStrategy.authFailed(httpHost, authStateHC4.getAuthScheme(), httpContext);
                    authStateHC4.reset();
                    authStateHC4.setState(AuthProtocolState.FAILURE);
                    return false;
                }
                authStateHC4.reset();
            }
            queueSelect = authenticationStrategy.select(challenges, httpHost, httpResponse, httpContext);
            if (queueSelect != null) {
            }
            return false;
        } catch (MalformedChallengeException e10) {
            if (Log.isLoggable(TAG, 5)) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Malformed challenge: ");
                sb4.append(e10.getMessage());
            }
            authStateHC4.reset();
            return false;
        }
    }

    public boolean isAuthenticationRequested(HttpHost httpHost, HttpResponse httpResponse, AuthenticationStrategy authenticationStrategy, AuthStateHC4 authStateHC4, HttpContext httpContext) {
        if (authenticationStrategy.isAuthenticationRequested(httpHost, httpResponse, httpContext)) {
            if (authStateHC4.getState() == AuthProtocolState.SUCCESS) {
                authenticationStrategy.authFailed(httpHost, authStateHC4.getAuthScheme(), httpContext);
            }
            return true;
        }
        int i10 = AnonymousClass1.$SwitchMap$org$apache$http$auth$AuthProtocolState[authStateHC4.getState().ordinal()];
        if (i10 == 1 || i10 == 2) {
            authStateHC4.setState(AuthProtocolState.SUCCESS);
            authenticationStrategy.authSucceeded(httpHost, authStateHC4.getAuthScheme(), httpContext);
            return false;
        }
        if (i10 == 3) {
            return false;
        }
        authStateHC4.setState(AuthProtocolState.UNCHALLENGED);
        return false;
    }
}
