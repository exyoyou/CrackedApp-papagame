package io.netty.handler.codec.http.cookie;

import io.netty.handler.codec.DateFormatter;
import io.netty.util.internal.ObjectUtil;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class ClientCookieDecoder extends CookieDecoder {
    public static final ClientCookieDecoder STRICT = new ClientCookieDecoder(true);
    public static final ClientCookieDecoder LAX = new ClientCookieDecoder(false);

    private static class CookieBuilder {
        private final DefaultCookie cookie;
        private String domain;
        private int expiresEnd;
        private int expiresStart;
        private final String header;
        private boolean httpOnly;
        private long maxAge = Long.MIN_VALUE;
        private String path;
        private boolean secure;

        CookieBuilder(DefaultCookie defaultCookie, String str) {
            this.cookie = defaultCookie;
            this.header = str;
        }

        private String computeValue(int i10, int i11) {
            if (isValueDefined(i10, i11)) {
                return this.header.substring(i10, i11);
            }
            return null;
        }

        private static boolean isValueDefined(int i10, int i11) {
            return (i10 == -1 || i10 == i11) ? false : true;
        }

        private long mergeMaxAgeAndExpires() {
            Date httpDate;
            long j10 = this.maxAge;
            if (j10 != Long.MIN_VALUE) {
                return j10;
            }
            if (!isValueDefined(this.expiresStart, this.expiresEnd) || (httpDate = DateFormatter.parseHttpDate(this.header, this.expiresStart, this.expiresEnd)) == null) {
                return Long.MIN_VALUE;
            }
            long time = httpDate.getTime() - System.currentTimeMillis();
            return (time / 1000) + ((long) (time % 1000 != 0 ? 1 : 0));
        }

        private void parse4(int i10, int i11, int i12) {
            if (this.header.regionMatches(true, i10, CookieHeaderNames.PATH, 0, 4)) {
                this.path = computeValue(i11, i12);
            }
        }

        private void parse6(int i10, int i11, int i12) {
            if (this.header.regionMatches(true, i10, CookieHeaderNames.DOMAIN, 0, 5)) {
                this.domain = computeValue(i11, i12);
            } else if (this.header.regionMatches(true, i10, CookieHeaderNames.SECURE, 0, 5)) {
                this.secure = true;
            }
        }

        private void parse7(int i10, int i11, int i12) {
            if (this.header.regionMatches(true, i10, "Expires", 0, 7)) {
                this.expiresStart = i11;
                this.expiresEnd = i12;
            } else if (this.header.regionMatches(true, i10, CookieHeaderNames.MAX_AGE, 0, 7)) {
                setMaxAge(computeValue(i11, i12));
            }
        }

        private void parse8(int i10) {
            if (this.header.regionMatches(true, i10, CookieHeaderNames.HTTPONLY, 0, 8)) {
                this.httpOnly = true;
            }
        }

        private void setMaxAge(String str) {
            try {
                this.maxAge = Math.max(Long.parseLong(str), 0L);
            } catch (NumberFormatException unused) {
            }
        }

        void appendAttribute(int i10, int i11, int i12, int i13) {
            int i14 = i11 - i10;
            if (i14 == 4) {
                parse4(i10, i12, i13);
                return;
            }
            if (i14 == 6) {
                parse6(i10, i12, i13);
            } else if (i14 == 7) {
                parse7(i10, i12, i13);
            } else if (i14 == 8) {
                parse8(i10);
            }
        }

        Cookie cookie() {
            this.cookie.setDomain(this.domain);
            this.cookie.setPath(this.path);
            this.cookie.setMaxAge(mergeMaxAgeAndExpires());
            this.cookie.setSecure(this.secure);
            this.cookie.setHttpOnly(this.httpOnly);
            return this.cookie;
        }
    }

    private ClientCookieDecoder(boolean z10) {
        super(z10);
    }

    public Cookie decode(String str) {
        int i10;
        int i11;
        int i12;
        int i13;
        int length = ((String) ObjectUtil.checkNotNull(str, "header")).length();
        if (length == 0) {
            return null;
        }
        CookieBuilder cookieBuilder = null;
        int i14 = 0;
        while (i14 != length) {
            char cCharAt = str.charAt(i14);
            if (cCharAt == ',') {
                break;
            }
            if (cCharAt == '\t' || cCharAt == '\n' || cCharAt == 11 || cCharAt == '\f' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == ';') {
                i14++;
            } else {
                int i15 = i14;
                while (true) {
                    char cCharAt2 = str.charAt(i15);
                    if (cCharAt2 == ';') {
                        i10 = i15;
                        i11 = i10;
                    } else {
                        if (cCharAt2 == '=') {
                            i12 = i15 + 1;
                            if (i12 != length) {
                                int iIndexOf = str.indexOf(59, i12);
                                i11 = iIndexOf > 0 ? iIndexOf : length;
                                i10 = i15;
                                i13 = i11;
                                break;
                            }
                            i10 = i15;
                            i11 = i12;
                            i13 = 0;
                            i12 = 0;
                            break;
                        }
                        i15++;
                        if (i15 == length) {
                            i10 = length;
                            i11 = i15;
                        }
                    }
                    i13 = -1;
                    i12 = -1;
                    break;
                }
                if (i13 > 0 && str.charAt(i13 - 1) == ',') {
                    i13--;
                }
                int i16 = i13;
                if (cookieBuilder == null) {
                    DefaultCookie defaultCookieInitCookie = initCookie(str, i14, i10, i12, i16);
                    if (defaultCookieInitCookie == null) {
                        return null;
                    }
                    cookieBuilder = new CookieBuilder(defaultCookieInitCookie, str);
                } else {
                    cookieBuilder.appendAttribute(i14, i10, i12, i16);
                }
                i14 = i11;
            }
        }
        if (cookieBuilder != null) {
            return cookieBuilder.cookie();
        }
        return null;
    }
}
