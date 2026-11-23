package org.apache.http.impl.client;

import android.util.Log;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Queue;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthOption;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.client.AuthCache;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.AuthSchemes;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Lookup;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@Immutable
abstract class AuthenticationStrategyImpl implements AuthenticationStrategy {
    private static final List<String> DEFAULT_SCHEME_PRIORITY = Collections.unmodifiableList(Arrays.asList(AuthSchemes.SPNEGO, AuthSchemes.KERBEROS, AuthSchemes.NTLM, AuthSchemes.DIGEST, AuthSchemes.BASIC));
    private static final String TAG = "HttpClient";
    private final int challengeCode;
    private final String headerName;

    AuthenticationStrategyImpl(int i10, String str) {
        this.challengeCode = i10;
        this.headerName = str;
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public void authFailed(HttpHost httpHost, AuthScheme authScheme, HttpContext httpContext) {
        Args.notNull(httpHost, "Host");
        Args.notNull(httpContext, "HTTP context");
        AuthCache authCache = HttpClientContext.adapt(httpContext).getAuthCache();
        if (authCache != null) {
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Clearing cached auth scheme for ");
                sb2.append(httpHost);
            }
            authCache.remove(httpHost);
        }
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public void authSucceeded(HttpHost httpHost, AuthScheme authScheme, HttpContext httpContext) {
        Args.notNull(httpHost, "Host");
        Args.notNull(authScheme, "Auth scheme");
        Args.notNull(httpContext, "HTTP context");
        HttpClientContext httpClientContextAdapt = HttpClientContext.adapt(httpContext);
        if (isCachable(authScheme)) {
            AuthCache authCache = httpClientContextAdapt.getAuthCache();
            if (authCache == null) {
                authCache = new BasicAuthCache();
                httpClientContextAdapt.setAuthCache(authCache);
            }
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Caching '");
                sb2.append(authScheme.getSchemeName());
                sb2.append("' auth scheme for ");
                sb2.append(httpHost);
            }
            authCache.put(httpHost, authScheme);
        }
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public Map<String, Header> getChallenges(HttpHost httpHost, HttpResponse httpResponse, HttpContext httpContext) throws MalformedChallengeException {
        CharArrayBuffer charArrayBuffer;
        int valuePos;
        Args.notNull(httpResponse, "HTTP response");
        Header[] headers = httpResponse.getHeaders(this.headerName);
        HashMap map = new HashMap(headers.length);
        for (Header header : headers) {
            if (header instanceof FormattedHeader) {
                FormattedHeader formattedHeader = (FormattedHeader) header;
                charArrayBuffer = formattedHeader.getBuffer();
                valuePos = formattedHeader.getValuePos();
            } else {
                String value = header.getValue();
                if (value == null) {
                    throw new MalformedChallengeException("Header value is null");
                }
                charArrayBuffer = new CharArrayBuffer(value.length());
                charArrayBuffer.append(value);
                valuePos = 0;
            }
            while (valuePos < charArrayBuffer.length() && HTTP.isWhitespace(charArrayBuffer.charAt(valuePos))) {
                valuePos++;
            }
            int i10 = valuePos;
            while (i10 < charArrayBuffer.length() && !HTTP.isWhitespace(charArrayBuffer.charAt(i10))) {
                i10++;
            }
            map.put(charArrayBuffer.substring(valuePos, i10).toLowerCase(Locale.ENGLISH), header);
        }
        return map;
    }

    abstract Collection<String> getPreferredAuthSchemes(RequestConfig requestConfig);

    @Override // org.apache.http.client.AuthenticationStrategy
    public boolean isAuthenticationRequested(HttpHost httpHost, HttpResponse httpResponse, HttpContext httpContext) {
        Args.notNull(httpResponse, "HTTP response");
        return httpResponse.getStatusLine().getStatusCode() == this.challengeCode;
    }

    protected boolean isCachable(AuthScheme authScheme) {
        if (authScheme == null || !authScheme.isComplete()) {
            return false;
        }
        String schemeName = authScheme.getSchemeName();
        return schemeName.equalsIgnoreCase(AuthSchemes.BASIC) || schemeName.equalsIgnoreCase(AuthSchemes.DIGEST);
    }

    @Override // org.apache.http.client.AuthenticationStrategy
    public Queue<AuthOption> select(Map<String, Header> map, HttpHost httpHost, HttpResponse httpResponse, HttpContext httpContext) throws MalformedChallengeException {
        CredentialsProvider credentialsProvider;
        Args.notNull(map, "Map of auth challenges");
        Args.notNull(httpHost, "Host");
        Args.notNull(httpResponse, "HTTP response");
        Args.notNull(httpContext, "HTTP context");
        HttpClientContext httpClientContextAdapt = HttpClientContext.adapt(httpContext);
        LinkedList linkedList = new LinkedList();
        Lookup<AuthSchemeProvider> authSchemeRegistry = httpClientContextAdapt.getAuthSchemeRegistry();
        if (authSchemeRegistry == null || (credentialsProvider = httpClientContextAdapt.getCredentialsProvider()) == null) {
            return linkedList;
        }
        Collection<String> preferredAuthSchemes = getPreferredAuthSchemes(httpClientContextAdapt.getRequestConfig());
        if (preferredAuthSchemes == null) {
            preferredAuthSchemes = DEFAULT_SCHEME_PRIORITY;
        }
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Authentication schemes in the order of preference: ");
            sb2.append(preferredAuthSchemes);
        }
        for (String str : preferredAuthSchemes) {
            Header header = map.get(str.toLowerCase(Locale.ENGLISH));
            if (header != null) {
                AuthSchemeProvider authSchemeProviderLookup = authSchemeRegistry.lookup(str);
                if (authSchemeProviderLookup != null) {
                    AuthScheme authSchemeCreate = authSchemeProviderLookup.create(httpContext);
                    authSchemeCreate.processChallenge(header);
                    Credentials credentials = credentialsProvider.getCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort(), authSchemeCreate.getRealm(), authSchemeCreate.getSchemeName()));
                    if (credentials != null) {
                        linkedList.add(new AuthOption(authSchemeCreate, credentials));
                    }
                } else if (Log.isLoggable(TAG, 5)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Authentication scheme ");
                    sb3.append(str);
                    sb3.append(" not supported");
                }
            } else if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Challenge for ");
                sb4.append(str);
                sb4.append(" authentication scheme not available");
            }
        }
        return linkedList;
    }
}
