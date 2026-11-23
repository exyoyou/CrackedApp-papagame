package org.json.alipay;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* JADX INFO: loaded from: classes10.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f95834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Reader f95835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private char f95836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f95837d;

    private d(Reader reader) {
        this.f95835b = reader.markSupported() ? reader : new BufferedReader(reader);
        this.f95837d = false;
        this.f95834a = 0;
    }

    private String a(int i10) throws a {
        if (i10 == 0) {
            return "";
        }
        char[] cArr = new char[i10];
        int i11 = 0;
        if (this.f95837d) {
            this.f95837d = false;
            cArr[0] = this.f95836c;
            i11 = 1;
        }
        while (i11 < i10) {
            try {
                int i12 = this.f95835b.read(cArr, i11, i10 - i11);
                if (i12 == -1) {
                    break;
                }
                i11 += i12;
            } catch (IOException e10) {
                throw new a(e10);
            }
        }
        this.f95834a += i11;
        if (i11 < i10) {
            throw a("Substring bounds error");
        }
        this.f95836c = cArr[i10 - 1];
        return new String(cArr);
    }

    public final char b() throws a {
        if (this.f95837d) {
            this.f95837d = false;
            char c10 = this.f95836c;
            if (c10 != 0) {
                this.f95834a++;
            }
            return c10;
        }
        try {
            int i10 = this.f95835b.read();
            if (i10 <= 0) {
                this.f95836c = (char) 0;
                return (char) 0;
            }
            this.f95834a++;
            char c11 = (char) i10;
            this.f95836c = c11;
            return c11;
        } catch (IOException e10) {
            throw new a(e10);
        }
    }

    public final char c() {
        char cB;
        char cB2;
        while (true) {
            char cB3 = b();
            if (cB3 == '/') {
                char cB4 = b();
                if (cB4 == '*') {
                    while (true) {
                        char cB5 = b();
                        if (cB5 == 0) {
                            throw a("Unclosed comment");
                        }
                        if (cB5 == '*') {
                            if (b() == '/') {
                                break;
                            }
                            a();
                        }
                    }
                } else {
                    if (cB4 != '/') {
                        a();
                        return '/';
                    }
                    do {
                        cB = b();
                        if (cB == '\n' || cB == '\r') {
                            break;
                        }
                    } while (cB != 0);
                }
            } else if (cB3 == '#') {
                do {
                    cB2 = b();
                    if (cB2 == '\n' || cB2 == '\r') {
                        break;
                    }
                } while (cB2 != 0);
            } else if (cB3 == 0 || cB3 > ' ') {
                return cB3;
            }
        }
    }

    public final Object d() {
        String strA;
        char c10 = c();
        if (c10 != '\"') {
            if (c10 != '[') {
                if (c10 == '{') {
                    a();
                    return new c(this);
                }
                if (c10 != '\'') {
                    if (c10 != '(') {
                        StringBuffer stringBuffer = new StringBuffer();
                        char cB = c10;
                        while (cB >= ' ' && ",:]}/\\\"[{;=#".indexOf(cB) < 0) {
                            stringBuffer.append(cB);
                            cB = b();
                        }
                        a();
                        String strTrim = stringBuffer.toString().trim();
                        if (strTrim.equals("")) {
                            throw a("Missing value");
                        }
                        if (strTrim.equalsIgnoreCase("true")) {
                            return Boolean.TRUE;
                        }
                        if (strTrim.equalsIgnoreCase("false")) {
                            return Boolean.FALSE;
                        }
                        if (strTrim.equalsIgnoreCase("null")) {
                            return c.f95832a;
                        }
                        if ((c10 < '0' || c10 > '9') && c10 != '.' && c10 != '-' && c10 != '+') {
                            return strTrim;
                        }
                        if (c10 == '0') {
                            try {
                                return (strTrim.length() <= 2 || !(strTrim.charAt(1) == 'x' || strTrim.charAt(1) == 'X')) ? new Integer(Integer.parseInt(strTrim, 8)) : new Integer(Integer.parseInt(strTrim.substring(2), 16));
                            } catch (Exception unused) {
                            }
                        }
                        try {
                            try {
                                try {
                                    return new Integer(strTrim);
                                } catch (Exception unused2) {
                                    return new Double(strTrim);
                                }
                            } catch (Exception unused3) {
                                return new Long(strTrim);
                            }
                        } catch (Exception unused4) {
                            return strTrim;
                        }
                    }
                }
            }
            a();
            return new b(this);
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        while (true) {
            char cB2 = b();
            if (cB2 == 0 || cB2 == '\n' || cB2 == '\r') {
                break;
            }
            if (cB2 == '\\') {
                cB2 = b();
                if (cB2 == 'b') {
                    stringBuffer2.append('\b');
                } else if (cB2 == 'f') {
                    cB2 = '\f';
                } else if (cB2 == 'n') {
                    stringBuffer2.append('\n');
                } else if (cB2 != 'r') {
                    if (cB2 == 'x') {
                        strA = a(2);
                    } else if (cB2 == 't') {
                        cB2 = '\t';
                    } else if (cB2 == 'u') {
                        strA = a(4);
                    }
                    cB2 = (char) Integer.parseInt(strA, 16);
                } else {
                    stringBuffer2.append('\r');
                }
            } else if (cB2 == c10) {
                return stringBuffer2.toString();
            }
            stringBuffer2.append(cB2);
        }
        throw a("Unterminated string");
    }

    public final String toString() {
        return " at character " + this.f95834a;
    }

    public d(String str) {
        this(new StringReader(str));
    }

    public final a a(String str) {
        return new a(str + toString());
    }

    public final void a() {
        int i10;
        if (this.f95837d || (i10 = this.f95834a) <= 0) {
            throw new a("Stepping back two steps is not supported");
        }
        this.f95834a = i10 - 1;
        this.f95837d = true;
    }
}
