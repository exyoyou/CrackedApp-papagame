package org.json.alipay;

import com.join.mgps.Util.o0;
import io.netty.util.internal.StringUtil;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.conn.ssl.TokenParser;

/* JADX INFO: loaded from: classes10.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f95832a = new a(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map f95833b;

    private static final class a {
        private a() {
        }

        protected final Object clone() {
            return this;
        }

        public final boolean equals(Object obj) {
            return obj == null || obj == this;
        }

        public final String toString() {
            return "null";
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }

    public c() {
        this.f95833b = new HashMap();
    }

    private static void b(Object obj) throws org.json.alipay.a {
        if (obj != null) {
            if (obj instanceof Double) {
                Double d10 = (Double) obj;
                if (d10.isInfinite() || d10.isNaN()) {
                    throw new org.json.alipay.a("JSON does not allow non-finite numbers.");
                }
                return;
            }
            if (obj instanceof Float) {
                Float f10 = (Float) obj;
                if (f10.isInfinite() || f10.isNaN()) {
                    throw new org.json.alipay.a("JSON does not allow non-finite numbers.");
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0086  */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0034. Please report as an issue. */
    public static String c(String str) {
        String str2;
        if (str == null || str.length() == 0) {
            return "\"\"";
        }
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length + 4);
        stringBuffer.append('\"');
        int i10 = 0;
        char c10 = 0;
        while (i10 < length) {
            char cCharAt = str.charAt(i10);
            if (cCharAt == '\f') {
                str2 = "\\f";
            } else if (cCharAt != '\r') {
                if (cCharAt == '\"') {
                    stringBuffer.append(TokenParser.ESCAPE);
                } else if (cCharAt != '/') {
                    if (cCharAt != '\\') {
                        switch (cCharAt) {
                            case '\b':
                                str2 = "\\b";
                                break;
                            case '\t':
                                str2 = "\\t";
                                break;
                            case '\n':
                                str2 = "\\n";
                                break;
                            default:
                                if (cCharAt < ' ' || ((cCharAt >= 128 && cCharAt < 160) || (cCharAt >= 8192 && cCharAt < 8448))) {
                                    String str3 = "000" + Integer.toHexString(cCharAt);
                                    str2 = "\\u" + str3.substring(str3.length() - 4);
                                }
                                break;
                        }
                        i10++;
                        c10 = cCharAt;
                    } else {
                        stringBuffer.append(TokenParser.ESCAPE);
                    }
                } else if (c10 == '<') {
                    stringBuffer.append(TokenParser.ESCAPE);
                }
                stringBuffer.append(cCharAt);
                i10++;
                c10 = cCharAt;
            } else {
                str2 = "\\r";
            }
            stringBuffer.append(str2);
            i10++;
            c10 = cCharAt;
        }
        stringBuffer.append('\"');
        return stringBuffer.toString();
    }

    public final Object a(String str) throws org.json.alipay.a {
        Object obj = str == null ? null : this.f95833b.get(str);
        if (obj != null) {
            return obj;
        }
        throw new org.json.alipay.a("JSONObject[" + c(str) + "] not found.");
    }

    public String toString() {
        try {
            Iterator itA = a();
            StringBuffer stringBuffer = new StringBuffer("{");
            while (itA.hasNext()) {
                if (stringBuffer.length() > 1) {
                    stringBuffer.append(StringUtil.COMMA);
                }
                Object next = itA.next();
                stringBuffer.append(c(next.toString()));
                stringBuffer.append(':');
                stringBuffer.append(a(this.f95833b.get(next)));
            }
            stringBuffer.append('}');
            return stringBuffer.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public c(String str) {
        this(new d(str));
    }

    static String a(Object obj) throws org.json.alipay.a {
        if (obj == null || obj.equals(null)) {
            return "null";
        }
        if (!(obj instanceof Number)) {
            if ((obj instanceof Boolean) || (obj instanceof c) || (obj instanceof b)) {
                return obj.toString();
            }
            if (obj instanceof Map) {
                return new c((Map) obj).toString();
            }
            if (obj instanceof Collection) {
                return new b((Collection) obj).toString();
            }
            return obj.getClass().isArray() ? new b(obj).toString() : c(obj.toString());
        }
        Number number = (Number) obj;
        b(number);
        String string = number.toString();
        if (string.indexOf(46) <= 0 || string.indexOf(101) >= 0 || string.indexOf(69) >= 0) {
            return string;
        }
        while (string.endsWith("0")) {
            string = string.substring(0, string.length() - 1);
        }
        return string.endsWith(o0.f49827a) ? string.substring(0, string.length() - 1) : string;
    }

    public final boolean b(String str) {
        return this.f95833b.containsKey(str);
    }

    public c(Map map) {
        this.f95833b = map == null ? new HashMap() : map;
    }

    public final Iterator a() {
        return this.f95833b.keySet().iterator();
    }

    public c(d dVar) throws org.json.alipay.a {
        this();
        if (dVar.c() != '{') {
            throw dVar.a("A JSONObject text must begin with '{'");
        }
        while (true) {
            char c10 = dVar.c();
            if (c10 == 0) {
                throw dVar.a("A JSONObject text must end with '}'");
            }
            if (c10 == '}') {
                return;
            }
            dVar.a();
            String string = dVar.d().toString();
            char c11 = dVar.c();
            if (c11 == '=') {
                if (dVar.b() != '>') {
                    dVar.a();
                }
            } else if (c11 != ':') {
                throw dVar.a("Expected a ':' after a key");
            }
            Object objD = dVar.d();
            if (string == null) {
                throw new org.json.alipay.a("Null key.");
            }
            if (objD != null) {
                b(objD);
                this.f95833b.put(string, objD);
            } else {
                this.f95833b.remove(string);
            }
            char c12 = dVar.c();
            if (c12 != ',' && c12 != ';') {
                if (c12 != '}') {
                    throw dVar.a("Expected a ',' or '}'");
                }
                return;
            } else if (dVar.c() == '}') {
                return;
            } else {
                dVar.a();
            }
        }
    }
}
