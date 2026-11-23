package com.alibaba.fastjson;

import com.alibaba.fastjson.parser.deserializer.x0;
import com.alibaba.fastjson.serializer.j1;
import com.alibaba.fastjson.serializer.t1;
import com.alibaba.fastjson.serializer.v0;
import com.alibaba.fastjson.serializer.z0;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
public class JSONPath implements j1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f6298e = 1024;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static ConcurrentMap<String, JSONPath> f6299f = new ConcurrentHashMap(128, 0.75f, 1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6300a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private q[] f6301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private t1 f6302c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.alibaba.fastjson.parser.k f6303d;

    enum Operator {
        EQ,
        NE,
        GT,
        GE,
        LT,
        LE,
        LIKE,
        NOT_LIKE,
        RLIKE,
        NOT_RLIKE,
        IN,
        NOT_IN,
        BETWEEN,
        NOT_BETWEEN
    }

    static class a implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f6304a;

        public a(int i10) {
            this.f6304a = i10;
        }

        @Override // com.alibaba.fastjson.JSONPath.q
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.o(obj2, this.f6304a);
        }

        public boolean b(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.y(jSONPath, obj, this.f6304a, obj2);
        }
    }

    interface b {
        boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3);
    }

    public static class c implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b f6305a;

        public c(b bVar) {
            this.f6305a = bVar;
        }

        @Override // com.alibaba.fastjson.JSONPath.q
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (obj2 == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            if (!(obj2 instanceof Iterable)) {
                if (this.f6305a.a(jSONPath, obj, obj2, obj2)) {
                    return obj2;
                }
                return null;
            }
            for (Object obj3 : (Iterable) obj2) {
                if (this.f6305a.a(jSONPath, obj, obj2, obj3)) {
                    arrayList.add(obj3);
                }
            }
            return arrayList;
        }
    }

    static class d implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6306a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f6307b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f6308c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f6309d;

        public d(String str, long j10, long j11, boolean z10) {
            this.f6306a = str;
            this.f6307b = j10;
            this.f6308c = j11;
            this.f6309d = z10;
        }

        @Override // com.alibaba.fastjson.JSONPath.b
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objR = jSONPath.r(obj3, this.f6306a, false);
            if (objR == null) {
                return false;
            }
            if (objR instanceof Number) {
                long jLongValue = ((Number) objR).longValue();
                if (jLongValue >= this.f6307b && jLongValue <= this.f6308c) {
                    return !this.f6309d;
                }
            }
            return this.f6309d;
        }
    }

    static class e implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6310a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long[] f6311b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f6312c;

        public e(String str, long[] jArr, boolean z10) {
            this.f6310a = str;
            this.f6311b = jArr;
            this.f6312c = z10;
        }

        @Override // com.alibaba.fastjson.JSONPath.b
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objR = jSONPath.r(obj3, this.f6310a, false);
            if (objR == null) {
                return false;
            }
            if (objR instanceof Number) {
                long jLongValue = ((Number) objR).longValue();
                for (long j10 : this.f6311b) {
                    if (j10 == jLongValue) {
                        return !this.f6312c;
                    }
                }
            }
            return this.f6312c;
        }
    }

    static class f implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Long[] f6314b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f6315c;

        public f(String str, Long[] lArr, boolean z10) {
            this.f6313a = str;
            this.f6314b = lArr;
            this.f6315c = z10;
        }

        @Override // com.alibaba.fastjson.JSONPath.b
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            int i10 = 0;
            Object objR = jSONPath.r(obj3, this.f6313a, false);
            if (objR == null) {
                Long[] lArr = this.f6314b;
                int length = lArr.length;
                while (i10 < length) {
                    if (lArr[i10] == null) {
                        return !this.f6315c;
                    }
                    i10++;
                }
                return this.f6315c;
            }
            if (objR instanceof Number) {
                long jLongValue = ((Number) objR).longValue();
                Long[] lArr2 = this.f6314b;
                int length2 = lArr2.length;
                while (i10 < length2) {
                    Long l10 = lArr2[i10];
                    if (l10 != null && l10.longValue() == jLongValue) {
                        return !this.f6315c;
                    }
                    i10++;
                }
            }
            return this.f6315c;
        }
    }

    static class g implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6316a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f6317b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Operator f6318c;

        public g(String str, long j10, Operator operator) {
            this.f6316a = str;
            this.f6317b = j10;
            this.f6318c = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.b
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objR = jSONPath.r(obj3, this.f6316a, false);
            if (objR == null || !(objR instanceof Number)) {
                return false;
            }
            long jLongValue = ((Number) objR).longValue();
            Operator operator = this.f6318c;
            if (operator == Operator.EQ) {
                return jLongValue == this.f6317b;
            }
            if (operator == Operator.NE) {
                return jLongValue != this.f6317b;
            }
            if (operator == Operator.GE) {
                return jLongValue >= this.f6317b;
            }
            if (operator == Operator.GT) {
                return jLongValue > this.f6317b;
            }
            if (operator == Operator.LE) {
                return jLongValue <= this.f6317b;
            }
            return operator == Operator.LT && jLongValue < this.f6317b;
        }
    }

    static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6319a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f6320b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private char f6321c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f6322d;

        public h(String str) {
            this.f6319a = str;
            f();
        }

        static boolean d(char c10) {
            return c10 == '-' || c10 == '+' || (c10 >= '0' && c10 <= '9');
        }

        void a(char c10) {
            if (this.f6321c == c10) {
                if (e()) {
                    return;
                }
                f();
            } else {
                throw new JSONPathException("expect '" + c10 + ", but '" + this.f6321c + "'");
            }
        }

        q b(String str) {
            int length = str.length();
            int i10 = 0;
            char cCharAt = str.charAt(0);
            int i11 = length - 1;
            char cCharAt2 = str.charAt(i11);
            int iIndexOf = str.indexOf(44);
            if (str.length() > 2 && cCharAt == '\'' && cCharAt2 == '\'') {
                if (iIndexOf == -1) {
                    return new n(str.substring(1, i11));
                }
                String[] strArrSplit = str.split(",");
                String[] strArr = new String[strArrSplit.length];
                while (i10 < strArrSplit.length) {
                    String str2 = strArrSplit[i10];
                    strArr[i10] = str2.substring(1, str2.length() - 1);
                    i10++;
                }
                return new k(strArr);
            }
            int iIndexOf2 = str.indexOf(58);
            if (iIndexOf == -1 && iIndexOf2 == -1) {
                return new a(Integer.parseInt(str));
            }
            if (iIndexOf != -1) {
                String[] strArrSplit2 = str.split(",");
                int[] iArr = new int[strArrSplit2.length];
                while (i10 < strArrSplit2.length) {
                    iArr[i10] = Integer.parseInt(strArrSplit2[i10]);
                    i10++;
                }
                return new j(iArr);
            }
            if (iIndexOf2 == -1) {
                throw new UnsupportedOperationException();
            }
            String[] strArrSplit3 = str.split(":");
            int length2 = strArrSplit3.length;
            int[] iArr2 = new int[length2];
            for (int i12 = 0; i12 < strArrSplit3.length; i12++) {
                String str3 = strArrSplit3[i12];
                if (!str3.isEmpty()) {
                    iArr2[i12] = Integer.parseInt(str3);
                } else {
                    if (i12 != 0) {
                        throw new UnsupportedOperationException();
                    }
                    iArr2[i12] = 0;
                }
            }
            int i13 = iArr2[0];
            int i14 = length2 > 1 ? iArr2[1] : -1;
            int i15 = length2 == 3 ? iArr2[2] : 1;
            if (i14 < 0 || i14 >= i13) {
                if (i15 > 0) {
                    return new o(i13, i14, i15);
                }
                throw new UnsupportedOperationException("step must greater than zero : " + i15);
            }
            throw new UnsupportedOperationException("end must greater than or equals start. start " + i13 + ",  end " + i14);
        }

        public q[] c() {
            String str = this.f6319a;
            if (str == null || str.isEmpty()) {
                throw new IllegalArgumentException();
            }
            q[] qVarArr = new q[8];
            while (true) {
                q qVarK = k();
                if (qVarK == null) {
                    break;
                }
                int i10 = this.f6322d;
                this.f6322d = i10 + 1;
                qVarArr[i10] = qVarK;
            }
            int i11 = this.f6322d;
            if (i11 == 8) {
                return qVarArr;
            }
            q[] qVarArr2 = new q[i11];
            System.arraycopy(qVarArr, 0, qVarArr2, 0, i11);
            return qVarArr2;
        }

        boolean e() {
            return this.f6320b >= this.f6319a.length();
        }

        void f() {
            String str = this.f6319a;
            int i10 = this.f6320b;
            this.f6320b = i10 + 1;
            this.f6321c = str.charAt(i10);
        }

        q g() {
            boolean z10;
            String[] strArr;
            String str;
            String str2;
            a('[');
            int i10 = 0;
            if (this.f6321c == '?') {
                f();
                a('(');
                if (this.f6321c == '@') {
                    f();
                    a(external.org.apache.commons.lang3.d.f90941a);
                }
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10 && !com.alibaba.fastjson.util.f.c(this.f6321c)) {
                int i11 = this.f6320b - 1;
                while (this.f6321c != ']' && !e()) {
                    f();
                }
                String strSubstring = this.f6319a.substring(i11, this.f6320b - 1);
                if (!e()) {
                    a(']');
                }
                return b(strSubstring);
            }
            String strI = i();
            n();
            if (z10 && this.f6321c == ')') {
                f();
                a(']');
                return new c(new l(strI));
            }
            if (this.f6321c == ']') {
                f();
                return new c(new l(strI));
            }
            Operator operatorJ = j();
            n();
            if (operatorJ == Operator.BETWEEN || operatorJ == Operator.NOT_BETWEEN) {
                boolean z11 = operatorJ == Operator.NOT_BETWEEN;
                Object objM = m();
                if (!"and".equalsIgnoreCase(i())) {
                    throw new JSONPathException(this.f6319a);
                }
                Object objM2 = m();
                if (objM == null || objM2 == null) {
                    throw new JSONPathException(this.f6319a);
                }
                if (JSONPath.v(objM.getClass()) && JSONPath.v(objM2.getClass())) {
                    return new c(new d(strI, ((Number) objM).longValue(), ((Number) objM2).longValue(), z11));
                }
                throw new JSONPathException(this.f6319a);
            }
            if (operatorJ == Operator.IN || operatorJ == Operator.NOT_IN) {
                boolean z12 = operatorJ == Operator.NOT_IN;
                a('(');
                ArrayList arrayList = new ArrayList();
                arrayList.add(m());
                while (true) {
                    n();
                    if (this.f6321c != ',') {
                        break;
                    }
                    f();
                    arrayList.add(m());
                }
                a(')');
                if (z10) {
                    a(')');
                }
                a(']');
                boolean z13 = true;
                boolean z14 = true;
                boolean z15 = true;
                for (Object obj : arrayList) {
                    if (obj != null) {
                        Class<?> cls = obj.getClass();
                        if (z13 && cls != Byte.class && cls != Short.class && cls != Integer.class && cls != Long.class) {
                            z13 = false;
                            z15 = false;
                        }
                        if (z14 && cls != String.class) {
                            z14 = false;
                        }
                    } else if (z13) {
                        z13 = false;
                    }
                }
                if (arrayList.size() == 1 && arrayList.get(0) == null) {
                    return z12 ? new c(new l(strI)) : new c(new m(strI));
                }
                if (z13) {
                    if (arrayList.size() == 1) {
                        return new c(new g(strI, ((Number) arrayList.get(0)).longValue(), z12 ? Operator.NE : Operator.EQ));
                    }
                    int size = arrayList.size();
                    long[] jArr = new long[size];
                    while (i10 < size) {
                        jArr[i10] = ((Number) arrayList.get(i10)).longValue();
                        i10++;
                    }
                    return new c(new e(strI, jArr, z12));
                }
                if (z14) {
                    if (arrayList.size() == 1) {
                        return new c(new u(strI, (String) arrayList.get(0), z12 ? Operator.NE : Operator.EQ));
                    }
                    String[] strArr2 = new String[arrayList.size()];
                    arrayList.toArray(strArr2);
                    return new c(new t(strI, strArr2, z12));
                }
                if (!z15) {
                    throw new UnsupportedOperationException();
                }
                int size2 = arrayList.size();
                Long[] lArr = new Long[size2];
                while (i10 < size2) {
                    Number number = (Number) arrayList.get(i10);
                    if (number != null) {
                        lArr[i10] = Long.valueOf(number.longValue());
                    }
                    i10++;
                }
                return new c(new f(strI, lArr, z12));
            }
            char c10 = this.f6321c;
            if (c10 != '\'' && c10 != '\"') {
                if (d(c10)) {
                    long jH = h();
                    if (z10) {
                        a(')');
                    }
                    a(']');
                    return new c(new g(strI, jH, operatorJ));
                }
                if (this.f6321c != 'n' || !"null".equals(i())) {
                    throw new UnsupportedOperationException();
                }
                if (z10) {
                    a(')');
                }
                a(']');
                if (operatorJ == Operator.EQ) {
                    return new c(new m(strI));
                }
                if (operatorJ == Operator.NE) {
                    return new c(new l(strI));
                }
                throw new UnsupportedOperationException();
            }
            String strL = l();
            if (z10) {
                a(')');
            }
            a(']');
            if (operatorJ == Operator.RLIKE) {
                return new c(new p(strI, strL, false));
            }
            if (operatorJ == Operator.NOT_RLIKE) {
                return new c(new p(strI, strL, true));
            }
            if (operatorJ == Operator.LIKE || operatorJ == Operator.NOT_LIKE) {
                while (strL.indexOf("%%") != -1) {
                    strL = strL.replaceAll("%%", "%");
                }
                boolean z16 = operatorJ == Operator.NOT_LIKE;
                int iIndexOf = strL.indexOf(37);
                if (iIndexOf != -1) {
                    String[] strArrSplit = strL.split("%");
                    String[] strArr3 = null;
                    if (iIndexOf == 0) {
                        if (strL.charAt(strL.length() - 1) == '%') {
                            int length = strArrSplit.length - 1;
                            String[] strArr4 = new String[length];
                            System.arraycopy(strArrSplit, 1, strArr4, 0, length);
                            str = null;
                            str2 = null;
                            strArr3 = strArr4;
                        } else {
                            String str3 = strArrSplit[strArrSplit.length - 1];
                            if (strArrSplit.length > 2) {
                                int length2 = strArrSplit.length - 2;
                                strArr = new String[length2];
                                System.arraycopy(strArrSplit, 1, strArr, 0, length2);
                                str2 = str3;
                                str = null;
                                strArr3 = strArr;
                            } else {
                                str2 = str3;
                                str = null;
                            }
                        }
                    } else if (strL.charAt(strL.length() - 1) == '%') {
                        str = null;
                        str2 = null;
                        strArr3 = strArrSplit;
                    } else if (strArrSplit.length == 1) {
                        str = strArrSplit[0];
                        str2 = null;
                    } else if (strArrSplit.length == 2) {
                        str = strArrSplit[0];
                        str2 = strArrSplit[1];
                    } else {
                        String str4 = strArrSplit[0];
                        String str5 = strArrSplit[strArrSplit.length - 1];
                        int length3 = strArrSplit.length - 2;
                        strArr = new String[length3];
                        System.arraycopy(strArrSplit, 1, strArr, 0, length3);
                        str = str4;
                        str2 = str5;
                        strArr3 = strArr;
                    }
                    return new c(new i(strI, str, str2, strArr3, z16));
                }
                operatorJ = operatorJ == Operator.LIKE ? Operator.EQ : Operator.NE;
            }
            return new c(new u(strI, strL, operatorJ));
        }

        protected long h() {
            int i10 = this.f6320b - 1;
            char c10 = this.f6321c;
            if (c10 == '+' || c10 == '-') {
                f();
            }
            while (true) {
                char c11 = this.f6321c;
                if (c11 < '0' || c11 > '9') {
                    break;
                }
                f();
            }
            return Long.parseLong(this.f6319a.substring(i10, this.f6320b - 1));
        }

        String i() {
            n();
            if (!com.alibaba.fastjson.util.f.c(this.f6321c)) {
                throw new JSONPathException("illeal jsonpath syntax. " + this.f6319a);
            }
            int i10 = this.f6320b - 1;
            while (!e() && com.alibaba.fastjson.util.f.g(this.f6321c)) {
                f();
            }
            int i11 = this.f6320b - 1;
            if (e() && com.alibaba.fastjson.util.f.g(this.f6321c)) {
                i11 = this.f6320b;
            }
            return this.f6319a.substring(i10, i11);
        }

        protected Operator j() {
            Operator operator;
            char c10 = this.f6321c;
            if (c10 == '=') {
                f();
                operator = Operator.EQ;
            } else if (c10 == '!') {
                f();
                a('=');
                operator = Operator.NE;
            } else if (c10 == '<') {
                f();
                if (this.f6321c == '=') {
                    f();
                    operator = Operator.LE;
                } else {
                    operator = Operator.LT;
                }
            } else if (c10 == '>') {
                f();
                if (this.f6321c == '=') {
                    f();
                    operator = Operator.GE;
                } else {
                    operator = Operator.GT;
                }
            } else {
                operator = null;
            }
            if (operator != null) {
                return operator;
            }
            String strI = i();
            if (!"not".equalsIgnoreCase(strI)) {
                if ("like".equalsIgnoreCase(strI)) {
                    return Operator.LIKE;
                }
                if ("rlike".equalsIgnoreCase(strI)) {
                    return Operator.RLIKE;
                }
                if ("in".equalsIgnoreCase(strI)) {
                    return Operator.IN;
                }
                if ("between".equalsIgnoreCase(strI)) {
                    return Operator.BETWEEN;
                }
                throw new UnsupportedOperationException();
            }
            n();
            String strI2 = i();
            if ("like".equalsIgnoreCase(strI2)) {
                return Operator.NOT_LIKE;
            }
            if ("rlike".equalsIgnoreCase(strI2)) {
                return Operator.NOT_RLIKE;
            }
            if ("in".equalsIgnoreCase(strI2)) {
                return Operator.NOT_IN;
            }
            if ("between".equalsIgnoreCase(strI2)) {
                return Operator.NOT_BETWEEN;
            }
            throw new UnsupportedOperationException();
        }

        q k() {
            while (!e()) {
                n();
                char c10 = this.f6321c;
                if (c10 == '@') {
                    f();
                    return r.f6340a;
                }
                if (c10 != '$') {
                    if (c10 != '.') {
                        if (c10 == '[') {
                            return g();
                        }
                        if (this.f6322d == 0) {
                            return new n(i());
                        }
                        throw new UnsupportedOperationException();
                    }
                    f();
                    if (this.f6321c == '*') {
                        if (!e()) {
                            f();
                        }
                        return v.f6348a;
                    }
                    String strI = i();
                    if (this.f6321c != '(') {
                        return new n(strI);
                    }
                    f();
                    if (this.f6321c != ')') {
                        throw new UnsupportedOperationException();
                    }
                    if (!e()) {
                        f();
                    }
                    if ("size".equals(strI)) {
                        return s.f6341a;
                    }
                    throw new UnsupportedOperationException();
                }
                f();
            }
            return null;
        }

        String l() {
            char c10 = this.f6321c;
            f();
            int i10 = this.f6320b - 1;
            while (this.f6321c != c10 && !e()) {
                f();
            }
            String strSubstring = this.f6319a.substring(i10, e() ? this.f6320b : this.f6320b - 1);
            a(c10);
            return strSubstring;
        }

        protected Object m() {
            n();
            if (d(this.f6321c)) {
                return Long.valueOf(h());
            }
            char c10 = this.f6321c;
            if (c10 == '\"' || c10 == '\'') {
                return l();
            }
            if (c10 != 'n') {
                throw new UnsupportedOperationException();
            }
            if ("null".equals(i())) {
                return null;
            }
            throw new JSONPathException(this.f6319a);
        }

        public final void n() {
            while (true) {
                char c10 = this.f6321c;
                boolean[] zArr = com.alibaba.fastjson.util.f.f6832l;
                if (c10 >= zArr.length || !zArr[c10]) {
                    return;
                } else {
                    f();
                }
            }
        }
    }

    static class i implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6323a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f6324b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f6325c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String[] f6326d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f6327e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f6328f;

        public i(String str, String str2, String str3, String[] strArr, boolean z10) {
            this.f6323a = str;
            this.f6324b = str2;
            this.f6325c = str3;
            this.f6326d = strArr;
            this.f6328f = z10;
            int length = str2 != null ? str2.length() + 0 : 0;
            length = str3 != null ? length + str3.length() : length;
            if (strArr != null) {
                for (String str4 : strArr) {
                    length += str4.length();
                }
            }
            this.f6327e = length;
        }

        @Override // com.alibaba.fastjson.JSONPath.b
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            int length;
            Object objR = jSONPath.r(obj3, this.f6323a, false);
            if (objR == null) {
                return false;
            }
            String string = objR.toString();
            if (string.length() < this.f6327e) {
                return this.f6328f;
            }
            String str = this.f6324b;
            if (str == null) {
                length = 0;
            } else {
                if (!string.startsWith(str)) {
                    return this.f6328f;
                }
                length = this.f6324b.length() + 0;
            }
            String[] strArr = this.f6326d;
            if (strArr != null) {
                for (String str2 : strArr) {
                    int iIndexOf = string.indexOf(str2, length);
                    if (iIndexOf == -1) {
                        return this.f6328f;
                    }
                    length = iIndexOf + str2.length();
                }
            }
            String str3 = this.f6325c;
            return (str3 == null || string.endsWith(str3)) ? !this.f6328f : this.f6328f;
        }
    }

    static class j implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int[] f6329a;

        public j(int[] iArr) {
            this.f6329a = iArr;
        }

        @Override // com.alibaba.fastjson.JSONPath.q
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            ArrayList arrayList = new ArrayList(this.f6329a.length);
            int i10 = 0;
            while (true) {
                int[] iArr = this.f6329a;
                if (i10 >= iArr.length) {
                    return arrayList;
                }
                arrayList.add(jSONPath.o(obj2, iArr[i10]));
                i10++;
            }
        }
    }

    static class k implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String[] f6330a;

        public k(String[] strArr) {
            this.f6330a = strArr;
        }

        @Override // com.alibaba.fastjson.JSONPath.q
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            ArrayList arrayList = new ArrayList(this.f6330a.length);
            for (String str : this.f6330a) {
                arrayList.add(jSONPath.r(obj2, str, true));
            }
            return arrayList;
        }
    }

    static class l implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6331a;

        public l(String str) {
            this.f6331a = str;
        }

        @Override // com.alibaba.fastjson.JSONPath.b
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            return jSONPath.r(obj3, this.f6331a, false) != null;
        }
    }

    static class m implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6332a;

        public m(String str) {
            this.f6332a = str;
        }

        @Override // com.alibaba.fastjson.JSONPath.b
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            return jSONPath.r(obj3, this.f6332a, false) == null;
        }
    }

    static class n implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6333a;

        public n(String str) {
            this.f6333a = str;
        }

        @Override // com.alibaba.fastjson.JSONPath.q
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.r(obj2, this.f6333a, true);
        }

        public void b(JSONPath jSONPath, Object obj, Object obj2) {
            jSONPath.z(obj, this.f6333a, obj2);
        }
    }

    static class o implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f6334a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f6335b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f6336c;

        public o(int i10, int i11, int i12) {
            this.f6334a = i10;
            this.f6335b = i11;
            this.f6336c = i12;
        }

        @Override // com.alibaba.fastjson.JSONPath.q
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            int iIntValue = s.f6341a.a(jSONPath, obj, obj2).intValue();
            int i10 = this.f6334a;
            if (i10 < 0) {
                i10 += iIntValue;
            }
            int i11 = this.f6335b;
            if (i11 < 0) {
                i11 += iIntValue;
            }
            ArrayList arrayList = new ArrayList(((i11 - i10) / this.f6336c) + 1);
            while (i10 <= i11 && i10 < iIntValue) {
                arrayList.add(jSONPath.o(obj2, i10));
                i10 += this.f6336c;
            }
            return arrayList;
        }
    }

    static class p implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6337a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Pattern f6338b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f6339c;

        public p(String str, String str2, boolean z10) {
            this.f6337a = str;
            this.f6338b = Pattern.compile(str2);
            this.f6339c = z10;
        }

        @Override // com.alibaba.fastjson.JSONPath.b
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objR = jSONPath.r(obj3, this.f6337a, false);
            if (objR == null) {
                return false;
            }
            boolean zMatches = this.f6338b.matcher(objR.toString()).matches();
            return this.f6339c ? !zMatches : zMatches;
        }
    }

    interface q {
        Object a(JSONPath jSONPath, Object obj, Object obj2);
    }

    static class r implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final r f6340a = new r();

        r() {
        }

        @Override // com.alibaba.fastjson.JSONPath.q
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            return obj2;
        }
    }

    static class s implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final s f6341a = new s();

        s() {
        }

        @Override // com.alibaba.fastjson.JSONPath.q
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Integer a(JSONPath jSONPath, Object obj, Object obj2) {
            return Integer.valueOf(jSONPath.n(obj2));
        }
    }

    static class t implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6342a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String[] f6343b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f6344c;

        public t(String str, String[] strArr, boolean z10) {
            this.f6342a = str;
            this.f6343b = strArr;
            this.f6344c = z10;
        }

        @Override // com.alibaba.fastjson.JSONPath.b
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objR = jSONPath.r(obj3, this.f6342a, false);
            for (String str : this.f6343b) {
                if (str == objR) {
                    return !this.f6344c;
                }
                if (str != null && str.equals(objR)) {
                    return !this.f6344c;
                }
            }
            return this.f6344c;
        }
    }

    static class u implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6345a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f6346b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Operator f6347c;

        public u(String str, String str2, Operator operator) {
            this.f6345a = str;
            this.f6346b = str2;
            this.f6347c = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.b
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objR = jSONPath.r(obj3, this.f6345a, false);
            Operator operator = this.f6347c;
            if (operator == Operator.EQ) {
                return this.f6346b.equals(objR);
            }
            if (operator == Operator.NE) {
                return !this.f6346b.equals(objR);
            }
            if (objR == null) {
                return false;
            }
            int iCompareTo = this.f6346b.compareTo(objR.toString());
            Operator operator2 = this.f6347c;
            if (operator2 == Operator.GE) {
                return iCompareTo <= 0;
            }
            if (operator2 == Operator.GT) {
                return iCompareTo < 0;
            }
            if (operator2 == Operator.LE) {
                return iCompareTo >= 0;
            }
            return operator2 == Operator.LT && iCompareTo > 0;
        }
    }

    static class v implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static v f6348a = new v();

        v() {
        }

        @Override // com.alibaba.fastjson.JSONPath.q
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.s(obj2);
        }
    }

    public JSONPath(String str) {
        this(str, t1.f(), com.alibaba.fastjson.parser.k.k());
    }

    public static int B(Object obj, String str) {
        JSONPath jSONPathE = e(str);
        return jSONPathE.n(jSONPathE.l(obj));
    }

    public static void b(Object obj, String str, Object... objArr) {
        e(str).c(obj, objArr);
    }

    public static JSONPath e(String str) {
        JSONPath jSONPath = f6299f.get(str);
        if (jSONPath != null) {
            return jSONPath;
        }
        JSONPath jSONPath2 = new JSONPath(str);
        if (f6299f.size() >= f6298e) {
            return jSONPath2;
        }
        f6299f.putIfAbsent(str, jSONPath2);
        return f6299f.get(str);
    }

    public static boolean g(Object obj, String str) {
        if (obj == null) {
            return false;
        }
        return e(str).f(obj);
    }

    public static boolean i(Object obj, String str, Object obj2) {
        return e(str).h(obj, obj2);
    }

    static boolean j(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if (obj.getClass() == obj2.getClass()) {
            return obj.equals(obj2);
        }
        if (!(obj instanceof Number)) {
            return obj.equals(obj2);
        }
        if (obj2 instanceof Number) {
            return k((Number) obj, (Number) obj2);
        }
        return false;
    }

    static boolean k(Number number, Number number2) {
        Class<?> cls = number.getClass();
        boolean zV = v(cls);
        Class<?> cls2 = number.getClass();
        boolean zV2 = v(cls2);
        if (zV && zV2) {
            return number.longValue() == number2.longValue();
        }
        boolean zU = u(cls);
        boolean zU2 = u(cls2);
        return ((zU && zU2) || ((zU && zV) || (zU2 && zV))) && number.doubleValue() == number2.doubleValue();
    }

    public static Object m(Object obj, String str) {
        return e(str).l(obj);
    }

    protected static boolean u(Class<?> cls) {
        return cls == Float.class || cls == Double.class;
    }

    protected static boolean v(Class<?> cls) {
        return cls == Byte.class || cls == Short.class || cls == Integer.class || cls == Long.class;
    }

    public static void w(Object obj, String str, Object obj2) {
        e(str).x(obj, obj2);
    }

    public int A(Object obj) {
        if (obj == null) {
            return -1;
        }
        t();
        int i10 = 0;
        Object objA = obj;
        while (true) {
            q[] qVarArr = this.f6301b;
            if (i10 >= qVarArr.length) {
                return n(objA);
            }
            objA = qVarArr[i10].a(this, obj, objA);
            i10++;
        }
    }

    public void c(Object obj, Object... objArr) {
        if (objArr == null || objArr.length == 0 || obj == null) {
            return;
        }
        t();
        int i10 = 0;
        Object obj2 = null;
        Object objA = obj;
        int i11 = 0;
        while (true) {
            q[] qVarArr = this.f6301b;
            if (i11 >= qVarArr.length) {
                break;
            }
            if (i11 == qVarArr.length - 1) {
                obj2 = objA;
            }
            objA = qVarArr[i11].a(this, obj, objA);
            i11++;
        }
        if (objA == null) {
            throw new JSONPathException("value not found in path " + this.f6300a);
        }
        if (objA instanceof Collection) {
            Collection collection = (Collection) objA;
            int length = objArr.length;
            while (i10 < length) {
                collection.add(objArr[i10]);
                i10++;
            }
            return;
        }
        Class<?> cls = objA.getClass();
        if (!cls.isArray()) {
            throw new UnsupportedOperationException();
        }
        int length2 = Array.getLength(objA);
        Object objNewInstance = Array.newInstance(cls.getComponentType(), objArr.length + length2);
        System.arraycopy(objA, 0, objNewInstance, 0, length2);
        while (i10 < objArr.length) {
            Array.set(objNewInstance, length2 + i10, objArr[i10]);
            i10++;
        }
        q[] qVarArr2 = this.f6301b;
        q qVar = qVarArr2[qVarArr2.length - 1];
        if (qVar instanceof n) {
            ((n) qVar).b(this, obj2, objNewInstance);
        } else {
            if (!(qVar instanceof a)) {
                throw new UnsupportedOperationException();
            }
            ((a) qVar).b(this, obj2, objNewInstance);
        }
    }

    @Override // com.alibaba.fastjson.serializer.j1
    public void d(v0 v0Var, Object obj, Object obj2, Type type, int i10) throws IOException {
        v0Var.L(this.f6300a);
    }

    public boolean f(Object obj) {
        if (obj == null) {
            return false;
        }
        t();
        Object objA = obj;
        int i10 = 0;
        while (true) {
            q[] qVarArr = this.f6301b;
            if (i10 >= qVarArr.length) {
                return true;
            }
            objA = qVarArr[i10].a(this, obj, objA);
            if (objA == null) {
                return false;
            }
            i10++;
        }
    }

    public boolean h(Object obj, Object obj2) {
        Object objL = l(obj);
        if (objL == obj2) {
            return true;
        }
        if (objL == null) {
            return false;
        }
        if (!(objL instanceof Iterable)) {
            return j(objL, obj2);
        }
        Iterator it2 = ((Iterable) objL).iterator();
        while (it2.hasNext()) {
            if (j(it2.next(), obj2)) {
                return true;
            }
        }
        return false;
    }

    public Object l(Object obj) {
        if (obj == null) {
            return null;
        }
        t();
        int i10 = 0;
        Object objA = obj;
        while (true) {
            q[] qVarArr = this.f6301b;
            if (i10 >= qVarArr.length) {
                return objA;
            }
            objA = qVarArr[i10].a(this, obj, objA);
            i10++;
        }
    }

    int n(Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).size();
        }
        if (obj instanceof Object[]) {
            return ((Object[]) obj).length;
        }
        if (obj.getClass().isArray()) {
            return Array.getLength(obj);
        }
        int i10 = 0;
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).values().iterator();
            while (it2.hasNext()) {
                if (it2.next() != null) {
                    i10++;
                }
            }
            return i10;
        }
        z0 z0VarP = p(obj.getClass());
        if (z0VarP == null) {
            return -1;
        }
        try {
            List<Object> listF = z0VarP.f(obj);
            int i11 = 0;
            while (i10 < listF.size()) {
                if (listF.get(i10) != null) {
                    i11++;
                }
                i10++;
            }
            return i11;
        } catch (Exception e10) {
            throw new JSONException("evalSize error : " + this.f6300a, e10);
        }
    }

    protected Object o(Object obj, int i10) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (i10 >= 0) {
                if (i10 < list.size()) {
                    return list.get(i10);
                }
                return null;
            }
            if (Math.abs(i10) <= list.size()) {
                return list.get(list.size() + i10);
            }
            return null;
        }
        if (!obj.getClass().isArray()) {
            throw new UnsupportedOperationException();
        }
        int length = Array.getLength(obj);
        if (i10 >= 0) {
            if (i10 < length) {
                return Array.get(obj, i10);
            }
            return null;
        }
        if (Math.abs(i10) <= length) {
            return Array.get(obj, length + i10);
        }
        return null;
    }

    protected z0 p(Class<?> cls) {
        j1 j1VarG = this.f6302c.g(cls);
        if (j1VarG instanceof z0) {
            return (z0) j1VarG;
        }
        if (j1VarG instanceof com.alibaba.fastjson.serializer.a) {
            return ((com.alibaba.fastjson.serializer.a) j1VarG).b();
        }
        return null;
    }

    public String q() {
        return this.f6300a;
    }

    protected Object r(Object obj, String str, boolean z10) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Map) {
            return ((Map) obj).get(str);
        }
        z0 z0VarP = p(obj.getClass());
        if (z0VarP != null) {
            try {
                return z0VarP.e(obj, str);
            } catch (Exception e10) {
                throw new JSONPathException("jsonpath error, path " + this.f6300a + ", segement " + str, e10);
            }
        }
        if (!(obj instanceof List)) {
            throw new JSONPathException("jsonpath error, path " + this.f6300a + ", segement " + str);
        }
        List list = (List) obj;
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            arrayList.add(r(list.get(i10), str, z10));
        }
        return arrayList;
    }

    protected Collection<Object> s(Object obj) {
        z0 z0VarP = p(obj.getClass());
        if (z0VarP == null) {
            if (obj instanceof Map) {
                return ((Map) obj).values();
            }
            throw new UnsupportedOperationException();
        }
        try {
            return z0VarP.f(obj);
        } catch (Exception e10) {
            throw new JSONPathException("jsonpath error, path " + this.f6300a, e10);
        }
    }

    protected void t() {
        if (this.f6301b != null) {
            return;
        }
        if (WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD.equals(this.f6300a)) {
            this.f6301b = new q[]{v.f6348a};
        } else {
            this.f6301b = new h(this.f6300a).c();
        }
    }

    public boolean x(Object obj, Object obj2) {
        if (obj == null) {
            return false;
        }
        t();
        Object objA = obj;
        int i10 = 0;
        while (true) {
            q[] qVarArr = this.f6301b;
            if (i10 < qVarArr.length) {
                if (i10 == qVarArr.length - 1) {
                    break;
                }
                objA = qVarArr[i10].a(this, obj, objA);
                if (objA != null) {
                    i10++;
                }
            }
            objA = null;
            break;
        }
        if (objA == null) {
            return false;
        }
        q[] qVarArr2 = this.f6301b;
        q qVar = qVarArr2[qVarArr2.length - 1];
        if (qVar instanceof n) {
            ((n) qVar).b(this, objA, obj2);
            return true;
        }
        if (qVar instanceof a) {
            return ((a) qVar).b(this, objA, obj2);
        }
        throw new UnsupportedOperationException();
    }

    public boolean y(JSONPath jSONPath, Object obj, int i10, Object obj2) {
        if (obj instanceof List) {
            List list = (List) obj;
            if (i10 >= 0) {
                list.set(i10, obj2);
            } else {
                list.set(list.size() + i10, obj2);
            }
            return true;
        }
        if (!obj.getClass().isArray()) {
            throw new UnsupportedOperationException();
        }
        int length = Array.getLength(obj);
        if (i10 >= 0) {
            if (i10 < length) {
                Array.set(obj, i10, obj2);
            }
        } else if (Math.abs(i10) <= length) {
            Array.set(obj, length + i10, obj2);
        }
        return true;
    }

    protected boolean z(Object obj, String str, Object obj2) {
        com.alibaba.fastjson.parser.deserializer.v vVarI;
        if (obj instanceof Map) {
            ((Map) obj).put(str, obj2);
            return true;
        }
        x0 x0VarG = this.f6303d.g(obj.getClass());
        if (x0VarG instanceof com.alibaba.fastjson.parser.deserializer.v) {
            vVarI = (com.alibaba.fastjson.parser.deserializer.v) x0VarG;
        } else {
            vVarI = x0VarG instanceof com.alibaba.fastjson.parser.deserializer.b ? ((com.alibaba.fastjson.parser.deserializer.b) x0VarG).i() : null;
        }
        if (vVarI == null) {
            throw new UnsupportedOperationException();
        }
        com.alibaba.fastjson.parser.deserializer.r rVarJ = vVarI.j(str);
        if (rVarJ == null) {
            return false;
        }
        rVarJ.j(obj, obj2);
        return true;
    }

    public JSONPath(String str, t1 t1Var, com.alibaba.fastjson.parser.k kVar) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException();
        }
        this.f6300a = str;
        this.f6302c = t1Var;
        this.f6303d = kVar;
    }
}
