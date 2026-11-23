package io.netty.handler.codec.http.cookie;

import com.haima.hmcp.beans.HmInputMappingContent;
import io.netty.util.internal.ObjectUtil;

/* JADX INFO: loaded from: classes.dex */
public class DefaultCookie implements Cookie {
    private String domain;
    private boolean httpOnly;
    private long maxAge = Long.MIN_VALUE;
    private final String name;
    private String path;
    private boolean secure;
    private String value;
    private boolean wrap;

    public DefaultCookie(String str, String str2) {
        String strTrim = ((String) ObjectUtil.checkNotNull(str, "name")).trim();
        if (strTrim.isEmpty()) {
            throw new IllegalArgumentException("empty name");
        }
        this.name = strTrim;
        setValue(str2);
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public String domain() {
        return this.domain;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        if (!name().equals(cookie.name())) {
            return false;
        }
        if (path() == null) {
            if (cookie.path() != null) {
                return false;
            }
        } else if (cookie.path() == null || !path().equals(cookie.path())) {
            return false;
        }
        if (domain() == null) {
            return cookie.domain() == null;
        }
        return domain().equalsIgnoreCase(cookie.domain());
    }

    public int hashCode() {
        return name().hashCode();
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public boolean isHttpOnly() {
        return this.httpOnly;
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public boolean isSecure() {
        return this.secure;
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public long maxAge() {
        return this.maxAge;
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public String name() {
        return this.name;
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public String path() {
        return this.path;
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public void setDomain(String str) {
        this.domain = CookieUtil.validateAttributeValue("domain", str);
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public void setHttpOnly(boolean z10) {
        this.httpOnly = z10;
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public void setMaxAge(long j10) {
        this.maxAge = j10;
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public void setPath(String str) {
        this.path = CookieUtil.validateAttributeValue("path", str);
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public void setSecure(boolean z10) {
        this.secure = z10;
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public void setValue(String str) {
        this.value = (String) ObjectUtil.checkNotNull(str, HmInputMappingContent.FIELD_VALUE);
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public void setWrap(boolean z10) {
        this.wrap = z10;
    }

    public String toString() {
        StringBuilder sbStringBuilder = CookieUtil.stringBuilder();
        sbStringBuilder.append(name());
        sbStringBuilder.append('=');
        sbStringBuilder.append(value());
        if (domain() != null) {
            sbStringBuilder.append(", domain=");
            sbStringBuilder.append(domain());
        }
        if (path() != null) {
            sbStringBuilder.append(", path=");
            sbStringBuilder.append(path());
        }
        if (maxAge() >= 0) {
            sbStringBuilder.append(", maxAge=");
            sbStringBuilder.append(maxAge());
            sbStringBuilder.append('s');
        }
        if (isSecure()) {
            sbStringBuilder.append(", secure");
        }
        if (isHttpOnly()) {
            sbStringBuilder.append(", HTTPOnly");
        }
        return sbStringBuilder.toString();
    }

    @Deprecated
    protected String validateValue(String str, String str2) {
        return CookieUtil.validateAttributeValue(str, str2);
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public String value() {
        return this.value;
    }

    @Override // io.netty.handler.codec.http.cookie.Cookie
    public boolean wrap() {
        return this.wrap;
    }

    @Override // java.lang.Comparable
    public int compareTo(Cookie cookie) {
        int iCompareTo = name().compareTo(cookie.name());
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        if (path() == null) {
            if (cookie.path() != null) {
                return -1;
            }
        } else {
            if (cookie.path() == null) {
                return 1;
            }
            int iCompareTo2 = path().compareTo(cookie.path());
            if (iCompareTo2 != 0) {
                return iCompareTo2;
            }
        }
        if (domain() == null) {
            return cookie.domain() != null ? -1 : 0;
        }
        if (cookie.domain() == null) {
            return 1;
        }
        return domain().compareToIgnoreCase(cookie.domain());
    }
}
