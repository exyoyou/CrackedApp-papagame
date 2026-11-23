package org.apache.http.impl.cookie;

import io.netty.handler.codec.http.HttpHeaders;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import x.a;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class RFC2965SpecHC4 extends RFC2109SpecHC4 {
    public RFC2965SpecHC4() {
        this(null, false);
    }

    private static CookieOrigin adjustEffectiveHost(CookieOrigin cookieOrigin) {
        String host = cookieOrigin.getHost();
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= host.length()) {
                z10 = true;
                break;
            }
            char cCharAt = host.charAt(i10);
            if (cCharAt == '.' || cCharAt == ':') {
                break;
            }
            i10++;
        }
        if (!z10) {
            return cookieOrigin;
        }
        return new CookieOrigin(host + ".local", cookieOrigin.getPort(), cookieOrigin.getPath(), cookieOrigin.isSecure());
    }

    private List<Cookie> createCookies(HeaderElement[] headerElementArr, CookieOrigin cookieOrigin) throws MalformedCookieException {
        ArrayList arrayList = new ArrayList(headerElementArr.length);
        for (HeaderElement headerElement : headerElementArr) {
            String name = headerElement.getName();
            String value = headerElement.getValue();
            if (name == null || name.length() == 0) {
                throw new MalformedCookieException("Cookie name may not be empty");
            }
            BasicClientCookie2HC4 basicClientCookie2HC4 = new BasicClientCookie2HC4(name, value);
            basicClientCookie2HC4.setPath(CookieSpecBaseHC4.getDefaultPath(cookieOrigin));
            basicClientCookie2HC4.setDomain(CookieSpecBaseHC4.getDefaultDomain(cookieOrigin));
            basicClientCookie2HC4.setPorts(new int[]{cookieOrigin.getPort()});
            NameValuePair[] parameters = headerElement.getParameters();
            HashMap map = new HashMap(parameters.length);
            for (int length = parameters.length - 1; length >= 0; length--) {
                NameValuePair nameValuePair = parameters[length];
                map.put(nameValuePair.getName().toLowerCase(Locale.ENGLISH), nameValuePair);
            }
            Iterator it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                NameValuePair nameValuePair2 = (NameValuePair) ((Map.Entry) it2.next()).getValue();
                String lowerCase = nameValuePair2.getName().toLowerCase(Locale.ENGLISH);
                basicClientCookie2HC4.setAttribute(lowerCase, nameValuePair2.getValue());
                CookieAttributeHandler cookieAttributeHandlerFindAttribHandler = findAttribHandler(lowerCase);
                if (cookieAttributeHandlerFindAttribHandler != null) {
                    cookieAttributeHandlerFindAttribHandler.parse(basicClientCookie2HC4, nameValuePair2.getValue());
                }
            }
            arrayList.add(basicClientCookie2HC4);
        }
        return arrayList;
    }

    @Override // org.apache.http.impl.cookie.RFC2109SpecHC4
    protected void formatCookieAsVer(CharArrayBuffer charArrayBuffer, Cookie cookie, int i10) {
        String attribute;
        int[] ports;
        super.formatCookieAsVer(charArrayBuffer, cookie, i10);
        if (!(cookie instanceof ClientCookie) || (attribute = ((ClientCookie) cookie).getAttribute("port")) == null) {
            return;
        }
        charArrayBuffer.append("; $Port");
        charArrayBuffer.append("=\"");
        if (attribute.trim().length() > 0 && (ports = cookie.getPorts()) != null) {
            int length = ports.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (i11 > 0) {
                    charArrayBuffer.append(",");
                }
                charArrayBuffer.append(Integer.toString(ports[i11]));
            }
        }
        charArrayBuffer.append(a.f97579g);
    }

    @Override // org.apache.http.impl.cookie.RFC2109SpecHC4, org.apache.http.cookie.CookieSpec
    public int getVersion() {
        return 1;
    }

    @Override // org.apache.http.impl.cookie.RFC2109SpecHC4, org.apache.http.cookie.CookieSpec
    public Header getVersionHeader() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(40);
        charArrayBuffer.append("Cookie2");
        charArrayBuffer.append(": ");
        charArrayBuffer.append("$Version=");
        charArrayBuffer.append(Integer.toString(getVersion()));
        return new BufferedHeader(charArrayBuffer);
    }

    @Override // org.apache.http.impl.cookie.CookieSpecBaseHC4, org.apache.http.cookie.CookieSpec
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, "Cookie");
        Args.notNull(cookieOrigin, "Cookie origin");
        return super.match(cookie, adjustEffectiveHost(cookieOrigin));
    }

    @Override // org.apache.http.impl.cookie.RFC2109SpecHC4, org.apache.http.cookie.CookieSpec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(header, "Header");
        Args.notNull(cookieOrigin, "Cookie origin");
        if (header.getName().equalsIgnoreCase(HttpHeaders.Names.SET_COOKIE2)) {
            return createCookies(header.getElements(), adjustEffectiveHost(cookieOrigin));
        }
        throw new MalformedCookieException("Unrecognized cookie header '" + header.toString() + "'");
    }

    @Override // org.apache.http.impl.cookie.RFC2109SpecHC4
    public String toString() {
        return "rfc2965";
    }

    @Override // org.apache.http.impl.cookie.RFC2109SpecHC4, org.apache.http.impl.cookie.CookieSpecBaseHC4, org.apache.http.cookie.CookieSpec
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, "Cookie");
        Args.notNull(cookieOrigin, "Cookie origin");
        super.validate(cookie, adjustEffectiveHost(cookieOrigin));
    }

    public RFC2965SpecHC4(String[] strArr, boolean z10) {
        super(strArr, z10);
        registerAttribHandler("domain", new RFC2965DomainAttributeHandlerHC4());
        registerAttribHandler("port", new RFC2965PortAttributeHandlerHC4());
        registerAttribHandler("commenturl", new RFC2965CommentUrlAttributeHandlerHC4());
        registerAttribHandler("discard", new RFC2965DiscardAttributeHandlerHC4());
        registerAttribHandler("version", new RFC2965VersionAttributeHandlerHC4());
    }

    @Override // org.apache.http.impl.cookie.CookieSpecBaseHC4
    protected List<Cookie> parse(HeaderElement[] headerElementArr, CookieOrigin cookieOrigin) throws MalformedCookieException {
        return createCookies(headerElementArr, adjustEffectiveHost(cookieOrigin));
    }
}
