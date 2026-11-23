package org.apache.http.client.utils;

import com.join.mgps.Util.o0;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Locale;
import java.util.Stack;
import net.lingala.zip4j.util.e;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class URIUtilsHC4 {
    private URIUtilsHC4() {
    }

    @Deprecated
    public static URI createURI(String str, String str2, int i10, String str3, String str4, String str5) throws URISyntaxException {
        StringBuilder sb2 = new StringBuilder();
        if (str2 != null) {
            if (str != null) {
                sb2.append(str);
                sb2.append("://");
            }
            sb2.append(str2);
            if (i10 > 0) {
                sb2.append(':');
                sb2.append(i10);
            }
        }
        if (str3 == null || !str3.startsWith(e.F0)) {
            sb2.append('/');
        }
        if (str3 != null) {
            sb2.append(str3);
        }
        if (str4 != null) {
            sb2.append('?');
            sb2.append(str4);
        }
        if (str5 != null) {
            sb2.append('#');
            sb2.append(str5);
        }
        return new URI(sb2.toString());
    }

    public static HttpHost extractHost(URI uri) {
        int iIndexOf;
        if (uri == null || !uri.isAbsolute()) {
            return null;
        }
        int port = uri.getPort();
        String host = uri.getHost();
        if (host == null && (host = uri.getAuthority()) != null) {
            int iIndexOf2 = host.indexOf(64);
            if (iIndexOf2 >= 0) {
                int i10 = iIndexOf2 + 1;
                host = host.length() > i10 ? host.substring(i10) : null;
            }
            if (host != null && (iIndexOf = host.indexOf(58)) >= 0) {
                int i11 = iIndexOf + 1;
                int i12 = 0;
                for (int i13 = i11; i13 < host.length() && Character.isDigit(host.charAt(i13)); i13++) {
                    i12++;
                }
                if (i12 > 0) {
                    try {
                        port = Integer.parseInt(host.substring(i11, i12 + i11));
                    } catch (NumberFormatException unused) {
                    }
                }
                host = host.substring(0, iIndexOf);
            }
        }
        String scheme = uri.getScheme();
        if (TextUtils.isBlank(host)) {
            return null;
        }
        return new HttpHost(host, port, scheme);
    }

    private static URI normalizeSyntax(URI uri) {
        if (uri.isOpaque() || uri.getAuthority() == null) {
            return uri;
        }
        Args.check(uri.isAbsolute(), "Base URI must be absolute");
        String path = uri.getPath() == null ? "" : uri.getPath();
        String[] strArrSplit = path.split(e.F0);
        Stack<String> stack = new Stack();
        for (String str : strArrSplit) {
            if (str.length() != 0 && !o0.f49827a.equals(str)) {
                if (!"..".equals(str)) {
                    stack.push(str);
                } else if (!stack.isEmpty()) {
                    stack.pop();
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : stack) {
            sb2.append('/');
            sb2.append(str2);
        }
        if (path.lastIndexOf(47) == path.length() - 1) {
            sb2.append('/');
        }
        try {
            String scheme = uri.getScheme();
            Locale locale = Locale.ENGLISH;
            URI uri2 = new URI(scheme.toLowerCase(locale), uri.getAuthority().toLowerCase(locale), sb2.toString(), null, null);
            if (uri.getQuery() == null && uri.getFragment() == null) {
                return uri2;
            }
            StringBuilder sb3 = new StringBuilder(uri2.toASCIIString());
            if (uri.getQuery() != null) {
                sb3.append('?');
                sb3.append(uri.getRawQuery());
            }
            if (uri.getFragment() != null) {
                sb3.append('#');
                sb3.append(uri.getRawFragment());
            }
            return URI.create(sb3.toString());
        } catch (URISyntaxException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static URI resolve(URI uri, String str) {
        return resolve(uri, URI.create(str));
    }

    private static URI resolveReferenceStartingWithQueryString(URI uri, URI uri2) {
        String string = uri.toString();
        if (string.indexOf(63) > -1) {
            string = string.substring(0, string.indexOf(63));
        }
        return URI.create(string + uri2.toString());
    }

    public static URI rewriteURI(URI uri, HttpHost httpHost, boolean z10) throws URISyntaxException {
        Args.notNull(uri, "URI");
        if (uri.isOpaque()) {
            return uri;
        }
        URIBuilder uRIBuilder = new URIBuilder(uri);
        if (httpHost != null) {
            uRIBuilder.setScheme(httpHost.getSchemeName());
            uRIBuilder.setHost(httpHost.getHostName());
            uRIBuilder.setPort(httpHost.getPort());
        } else {
            uRIBuilder.setScheme(null);
            uRIBuilder.setHost(null);
            uRIBuilder.setPort(-1);
        }
        if (z10) {
            uRIBuilder.setFragment(null);
        }
        if (TextUtils.isEmpty(uRIBuilder.getPath())) {
            uRIBuilder.setPath(e.F0);
        }
        return uRIBuilder.build();
    }

    public static URI resolve(URI uri, URI uri2) {
        Args.notNull(uri, "Base URI");
        Args.notNull(uri2, "Reference URI");
        String string = uri2.toString();
        if (string.startsWith("?")) {
            return resolveReferenceStartingWithQueryString(uri, uri2);
        }
        boolean z10 = string.length() == 0;
        if (z10) {
            uri2 = URI.create("#");
        }
        URI uriResolve = uri.resolve(uri2);
        if (z10) {
            String string2 = uriResolve.toString();
            uriResolve = URI.create(string2.substring(0, string2.indexOf(35)));
        }
        return normalizeSyntax(uriResolve);
    }

    public static URI resolve(URI uri, HttpHost httpHost, List<URI> list) throws URISyntaxException {
        URIBuilder uRIBuilder;
        Args.notNull(uri, "Request URI");
        if (list != null && !list.isEmpty()) {
            uRIBuilder = new URIBuilder(list.get(list.size() - 1));
            String fragment = uRIBuilder.getFragment();
            for (int size = list.size() - 1; fragment == null && size >= 0; size--) {
                fragment = list.get(size).getFragment();
            }
            uRIBuilder.setFragment(fragment);
        } else {
            uRIBuilder = new URIBuilder(uri);
        }
        if (uRIBuilder.getFragment() == null) {
            uRIBuilder.setFragment(uri.getFragment());
        }
        if (httpHost != null && !uRIBuilder.isAbsolute()) {
            uRIBuilder.setScheme(httpHost.getSchemeName());
            uRIBuilder.setHost(httpHost.getHostName());
            uRIBuilder.setPort(httpHost.getPort());
        }
        return uRIBuilder.build();
    }

    public static URI rewriteURI(URI uri, HttpHost httpHost) throws URISyntaxException {
        return rewriteURI(uri, httpHost, false);
    }

    public static URI rewriteURI(URI uri) throws URISyntaxException {
        Args.notNull(uri, "URI");
        if (uri.isOpaque()) {
            return uri;
        }
        URIBuilder uRIBuilder = new URIBuilder(uri);
        if (uRIBuilder.getUserInfo() != null) {
            uRIBuilder.setUserInfo(null);
        }
        if (TextUtils.isEmpty(uRIBuilder.getPath())) {
            uRIBuilder.setPath(e.F0);
        }
        if (uRIBuilder.getHost() != null) {
            uRIBuilder.setHost(uRIBuilder.getHost().toLowerCase(Locale.ENGLISH));
        }
        uRIBuilder.setFragment(null);
        return uRIBuilder.build();
    }
}
