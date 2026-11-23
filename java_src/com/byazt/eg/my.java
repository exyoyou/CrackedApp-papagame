package com.byazt.eg;

import com.join.mgps.Util.o0;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.text.Typography;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 145})
public final class my {
    public static final char[] uj = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f13354a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f13355c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final String f13356da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f13357i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f13358n;
    public final List<String> sp;
    public final String tt;
    public final int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final List<String> f13359x;

    @com.byazt.zqa.c(c = {0, 1, 16, 932})
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<String> f13360a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f13361c;
        public List<String> sp;
        public String uj;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public String f13363x;
        public String tt = "";
        public String ve = "";

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f13362n = -1;

        /* JADX INFO: renamed from: com.byazt.eg.my$c$c, reason: collision with other inner class name */
        enum EnumC0301c {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public c() {
            ArrayList arrayList = new ArrayList();
            this.f13360a = arrayList;
            arrayList.add("");
        }

        private boolean a(String str) {
            return o0.f49827a.equals(str) || "%2e".equalsIgnoreCase(str);
        }

        private boolean sp(String str) {
            return "..".equals(str) || "%2e. ".equalsIgnoreCase(str) || ".%2e".equalsIgnoreCase(str) || "%2e%2e".equalsIgnoreCase(str);
        }

        public c c(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if ("http".equalsIgnoreCase(str)) {
                this.f13361c = "http";
            } else {
                if (!"https".equalsIgnoreCase(str)) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                this.f13361c = "https";
            }
            return this;
        }

        public c n(String str) {
            this.sp = str != null ? my.tt(my.c(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        public c query(String str) {
            this.sp = str != null ? my.tt(my.c(str, HttpUrl.QUERY_ENCODE_SET, false, false, true, true)) : null;
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f13361c);
            sb2.append("://");
            if (!this.tt.isEmpty() || !this.ve.isEmpty()) {
                sb2.append(this.tt);
                if (!this.ve.isEmpty()) {
                    sb2.append(':');
                    sb2.append(this.ve);
                }
                sb2.append('@');
            }
            if (this.uj.indexOf(58) != -1) {
                sb2.append('[');
                sb2.append(this.uj);
                sb2.append(']');
            } else {
                sb2.append(this.uj);
            }
            int iC = c();
            if (iC != my.c(this.f13361c)) {
                sb2.append(':');
                sb2.append(iC);
            }
            my.c(sb2, this.f13360a);
            if (this.sp != null) {
                sb2.append('?');
                my.tt(sb2, this.sp);
            }
            if (this.f13363x != null) {
                sb2.append('#');
                sb2.append(this.f13363x);
            }
            return sb2.toString();
        }

        public c tt(String str) {
            if (str == null) {
                throw new NullPointerException("username == null");
            }
            this.tt = my.c(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public c uj(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String strN = n(str, 0, str.length());
            if (strN != null) {
                this.uj = strN;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        public c ve(String str) {
            if (str == null) {
                throw new NullPointerException("password == null");
            }
            this.ve = my.c(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        private static int a(String str, int i10, int i11) {
            try {
                int i12 = Integer.parseInt(my.c(str, i10, i11, "", false, false, false, true, null));
                if (i12 <= 0 || i12 > 65535) {
                    return -1;
                }
                return i12;
            } catch (NumberFormatException unused) {
            }
        }

        private static String n(String str, int i10, int i11) {
            return com.byazt.kh.ve.c(my.c(str, i10, i11, false));
        }

        public c tt() {
            int size = this.f13360a.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f13360a.set(i10, my.c(this.f13360a.get(i10), HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, true));
            }
            List<String> list = this.sp;
            if (list != null) {
                int size2 = list.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    String str = this.sp.get(i11);
                    if (str != null) {
                        this.sp.set(i11, my.c(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, true));
                    }
                }
            }
            String str2 = this.f13363x;
            if (str2 != null) {
                this.f13363x = my.c(str2, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, false);
            }
            return this;
        }

        public my ve() {
            if (this.f13361c != null) {
                if (this.uj != null) {
                    return new my(this);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        private void uj() {
            List<String> list = this.f13360a;
            if (list.remove(list.size() - 1).isEmpty() && !this.f13360a.isEmpty()) {
                List<String> list2 = this.f13360a;
                list2.set(list2.size() - 1, "");
            } else {
                this.f13360a.add("");
            }
        }

        public c c(int i10) {
            if (i10 > 0 && i10 <= 65535) {
                this.f13362n = i10;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i10);
        }

        private static int ve(String str, int i10, int i11) {
            int i12 = 0;
            while (i10 < i11) {
                char cCharAt = str.charAt(i10);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i12++;
                i10++;
            }
            return i12;
        }

        private static int uj(String str, int i10, int i11) {
            while (i10 < i11) {
                char cCharAt = str.charAt(i10);
                if (cCharAt == ':') {
                    return i10;
                }
                if (cCharAt == '[') {
                    do {
                        i10++;
                        if (i10 >= i11) {
                            break;
                        }
                    } while (str.charAt(i10) != ']');
                }
                i10++;
            }
            return i11;
        }

        public int c() {
            int i10 = this.f13362n;
            return i10 != -1 ? i10 : my.c(this.f13361c);
        }

        public EnumC0301c c(my myVar, String str) {
            int iC;
            int i10;
            int iC2 = com.byazt.kh.ve.c(str, 0, str.length());
            int iTt = com.byazt.kh.ve.tt(str, iC2, str.length());
            if (tt(str, iC2, iTt) != -1) {
                if (str.regionMatches(true, iC2, "https:", 0, 6)) {
                    this.f13361c = "https";
                    iC2 += 6;
                } else if (str.regionMatches(true, iC2, "http:", 0, 5)) {
                    this.f13361c = "http";
                    iC2 += 5;
                } else {
                    return EnumC0301c.UNSUPPORTED_SCHEME;
                }
            } else if (myVar != null) {
                this.f13361c = myVar.f13355c;
            } else {
                return EnumC0301c.MISSING_SCHEME;
            }
            int iVe = ve(str, iC2, iTt);
            char c10 = '?';
            char c11 = '#';
            if (iVe < 2 && myVar != null && myVar.f13355c.equals(this.f13361c)) {
                this.tt = myVar.n();
                this.ve = myVar.a();
                this.uj = myVar.tt;
                this.f13362n = myVar.ve;
                this.f13360a.clear();
                this.f13360a.addAll(myVar.da());
                if (iC2 == iTt || str.charAt(iC2) == '#') {
                    n(myVar.sl());
                }
            } else {
                int i11 = iC2 + iVe;
                boolean z10 = false;
                boolean z11 = false;
                while (true) {
                    iC = com.byazt.kh.ve.c(str, i11, iTt, "@/\\?#");
                    byte bCharAt = iC != iTt ? str.charAt(iC) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c11 || bCharAt == 47 || bCharAt == 92 || bCharAt == c10) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (!z10) {
                            int iC3 = com.byazt.kh.ve.c(str, i11, iC, ':');
                            i10 = iC;
                            String strC = my.c(str, i11, iC3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z11) {
                                strC = this.tt + "%40" + strC;
                            }
                            this.tt = strC;
                            if (iC3 != i10) {
                                this.ve = my.c(str, iC3 + 1, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z10 = true;
                            }
                            z11 = true;
                        } else {
                            i10 = iC;
                            this.ve += "%40" + my.c(str, i11, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        }
                        i11 = i10 + 1;
                        c10 = '?';
                        c11 = '#';
                    }
                }
                int iUj = uj(str, i11, iC);
                int i12 = iUj + 1;
                if (i12 < iC) {
                    this.uj = n(str, i11, iUj);
                    int iA = a(str, i12, iC);
                    this.f13362n = iA;
                    if (iA == -1) {
                        return EnumC0301c.INVALID_PORT;
                    }
                } else {
                    this.uj = n(str, i11, iUj);
                    this.f13362n = my.c(this.f13361c);
                }
                if (this.uj == null) {
                    return EnumC0301c.INVALID_HOST;
                }
                iC2 = iC;
            }
            int iC4 = com.byazt.kh.ve.c(str, iC2, iTt, "?#");
            c(str, iC2, iC4);
            if (iC4 < iTt && str.charAt(iC4) == '?') {
                int iC5 = com.byazt.kh.ve.c(str, iC4, iTt, '#');
                this.sp = my.tt(my.c(str, iC4 + 1, iC5, HttpUrl.QUERY_ENCODE_SET, true, false, true, true, null));
                iC4 = iC5;
            }
            if (iC4 < iTt && str.charAt(iC4) == '#') {
                this.f13363x = my.c(str, 1 + iC4, iTt, "", true, false, false, false, null);
            }
            return EnumC0301c.SUCCESS;
        }

        private static int tt(String str, int i10, int i11) {
            if (i11 - i10 < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i10);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i10++;
                    if (i10 >= i11) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i10);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i10;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private void c(String str, int i10, int i11) {
            if (i10 == i11) {
                return;
            }
            char cCharAt = str.charAt(i10);
            if (cCharAt != '/' && cCharAt != '\\') {
                List<String> list = this.f13360a;
                list.set(list.size() - 1, "");
            } else {
                this.f13360a.clear();
                this.f13360a.add("");
                i10++;
            }
            while (true) {
                int i12 = i10;
                if (i12 >= i11) {
                    return;
                }
                i10 = com.byazt.kh.ve.c(str, i12, i11, "/\\");
                boolean z10 = i10 < i11;
                c(str, i12, i10, z10, true);
                if (z10) {
                    i10++;
                }
            }
        }

        private void c(String str, int i10, int i11, boolean z10, boolean z11) {
            String strC = my.c(str, i10, i11, HttpUrl.PATH_SEGMENT_ENCODE_SET, z11, false, false, true, null);
            if (a(strC)) {
                return;
            }
            if (sp(strC)) {
                uj();
                return;
            }
            List<String> list = this.f13360a;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.f13360a;
                list2.set(list2.size() - 1, strC);
            } else {
                this.f13360a.add(strC);
            }
            if (z10) {
                this.f13360a.add("");
            }
        }
    }

    public my(c cVar) {
        this.f13355c = cVar.f13361c;
        this.f13358n = c(cVar.tt, false);
        this.f13354a = c(cVar.ve, false);
        this.tt = cVar.uj;
        this.ve = cVar.c();
        this.sp = c(cVar.f13360a, false);
        List<String> list = cVar.sp;
        this.f13359x = list != null ? c(list, true) : null;
        String str = cVar.f13363x;
        this.f13357i = str != null ? c(str, false) : null;
        this.f13356da = cVar.toString();
    }

    public String a() {
        if (this.f13354a.isEmpty()) {
            return "";
        }
        return this.f13356da.substring(this.f13356da.indexOf(58, this.f13355c.length() + 3) + 1, this.f13356da.indexOf(64));
    }

    public URL c() {
        try {
            return new URL(this.f13356da);
        } catch (MalformedURLException e10) {
            throw new RuntimeException(e10);
        }
    }

    public List<String> da() {
        int iIndexOf = this.f13356da.indexOf(47, this.f13355c.length() + 3);
        String str = this.f13356da;
        int iC = com.byazt.kh.ve.c(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iC) {
            int i10 = iIndexOf + 1;
            int iC2 = com.byazt.kh.ve.c(this.f13356da, i10, iC, '/');
            arrayList.add(this.f13356da.substring(i10, iC2));
            iIndexOf = iC2;
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        return (obj instanceof my) && ((my) obj).f13356da.equals(this.f13356da);
    }

    public int hashCode() {
        return this.f13356da.hashCode();
    }

    public String i() {
        int iIndexOf = this.f13356da.indexOf(47, this.f13355c.length() + 3);
        String str = this.f13356da;
        return this.f13356da.substring(iIndexOf, com.byazt.kh.ve.c(str, iIndexOf, str.length(), "?#"));
    }

    public String n() {
        if (this.f13358n.isEmpty()) {
            return "";
        }
        int length = this.f13355c.length() + 3;
        String str = this.f13356da;
        return this.f13356da.substring(length, com.byazt.kh.ve.c(str, length, str.length(), ":@"));
    }

    public String query() {
        if (this.f13359x == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        tt(sb2, this.f13359x);
        return sb2.toString();
    }

    public String sl() {
        if (this.f13359x == null) {
            return null;
        }
        int iIndexOf = this.f13356da.indexOf(63) + 1;
        String str = this.f13356da;
        return this.f13356da.substring(iIndexOf, com.byazt.kh.ve.c(str, iIndexOf, str.length(), '#'));
    }

    public String sp() {
        return this.tt;
    }

    public String t() {
        if (this.f13357i == null) {
            return null;
        }
        return this.f13356da.substring(this.f13356da.indexOf(35) + 1);
    }

    public String toString() {
        return this.f13356da;
    }

    public URI tt() {
        String string = yp().tt().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e10) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e10);
            }
        }
    }

    public String u() {
        return uj("/...").tt("").ve("").ve().toString();
    }

    public boolean uj() {
        return "https".equals(this.f13355c);
    }

    public String ve() {
        return this.f13355c;
    }

    public int x() {
        return this.ve;
    }

    public c yp() {
        c cVar = new c();
        cVar.f13361c = this.f13355c;
        cVar.tt = n();
        cVar.ve = a();
        cVar.uj = this.tt;
        cVar.f13362n = this.ve != c(this.f13355c) ? this.ve : -1;
        cVar.f13360a.clear();
        cVar.f13360a.addAll(da());
        cVar.n(sl());
        cVar.f13363x = t();
        return cVar;
    }

    public c uj(String str) {
        c cVar = new c();
        if (cVar.c(this, str) == c.EnumC0301c.SUCCESS) {
            return cVar;
        }
        return null;
    }

    public my ve(String str) {
        c cVarUj = uj(str);
        if (cVarUj != null) {
            return cVarUj.ve();
        }
        return null;
    }

    public static int c(String str) {
        if ("http".equals(str)) {
            return 80;
        }
        return "https".equals(str) ? 443 : -1;
    }

    public static void c(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append('/');
            sb2.append(list.get(i10));
        }
    }

    public static my n(String str) {
        c cVar = new c();
        if (cVar.c(null, str) == c.EnumC0301c.SUCCESS) {
            return cVar.ve();
        }
        return null;
    }

    public static void tt(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            String str = list.get(i10);
            String str2 = list.get(i10 + 1);
            if (i10 > 0) {
                sb2.append(Typography.amp);
            }
            sb2.append(str);
            if (str2 != null) {
                sb2.append('=');
                sb2.append(str2);
            }
        }
    }

    public static my c(URL url) {
        return n(url.toString());
    }

    public static String c(String str, boolean z10) {
        return c(str, 0, str.length(), z10);
    }

    private List<String> c(List<String> list, boolean z10) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            String str = list.get(i10);
            arrayList.add(str != null ? c(str, z10) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static List<String> tt(String str) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 <= str.length()) {
            int iIndexOf = str.indexOf(38, i10);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i10);
            if (iIndexOf2 != -1 && iIndexOf2 <= iIndexOf) {
                arrayList.add(str.substring(i10, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            } else {
                arrayList.add(str.substring(i10, iIndexOf));
                arrayList.add(null);
            }
            i10 = iIndexOf + 1;
        }
        return arrayList;
    }

    public static String c(String str, int i10, int i11, boolean z10) {
        for (int i12 = i10; i12 < i11; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt == '%' || (cCharAt == '+' && z10)) {
                com.byazt.mk.ve veVar = new com.byazt.mk.ve();
                veVar.c(str, i10, i12);
                c(veVar, str, i12, i11, z10);
                return veVar.z();
            }
        }
        return str.substring(i10, i11);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0039  */
    public static void c(com.byazt.mk.ve veVar, String str, int i10, int i11, boolean z10) {
        int i12;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (iCodePointAt == 37 && (i12 = i10 + 2) < i11) {
                int iC = com.byazt.kh.ve.c(str.charAt(i10 + 1));
                int iC2 = com.byazt.kh.ve.c(str.charAt(i12));
                if (iC != -1 && iC2 != -1) {
                    veVar.i((iC << 4) + iC2);
                    i10 = i12;
                } else {
                    veVar.c(iCodePointAt);
                }
            } else if (iCodePointAt == 43 && z10) {
                veVar.i(32);
            } else {
                veVar.c(iCodePointAt);
            }
            i10 += Character.charCount(iCodePointAt);
        }
    }

    public static boolean c(String str, int i10, int i11) {
        int i12 = i10 + 2;
        return i12 < i11 && str.charAt(i10) == '%' && com.byazt.kh.ve.c(str.charAt(i10 + 1)) != -1 && com.byazt.kh.ve.c(str.charAt(i12)) != -1;
    }

    public static String c(String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        int iCharCount = i10;
        while (iCharCount < i11) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt != 127 && (iCodePointAt < 128 || !z13)) {
                if (str2.indexOf(iCodePointAt) == -1 && ((iCodePointAt != 37 || (z10 && (!z11 || c(str, iCharCount, i11)))) && (iCodePointAt != 43 || !z12))) {
                    iCharCount += Character.charCount(iCodePointAt);
                }
            }
            com.byazt.mk.ve veVar = new com.byazt.mk.ve();
            veVar.c(str, i10, iCharCount);
            c(veVar, str, iCharCount, i11, str2, z10, z11, z12, z13, charset);
            return veVar.z();
        }
        return str.substring(i10, i11);
    }

    public static void c(com.byazt.mk.ve veVar, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        com.byazt.mk.ve veVar2 = null;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (!z10 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z12) {
                    veVar.tt(z10 ? "+" : "%2B");
                } else if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z13) && str2.indexOf(iCodePointAt) == -1 && (iCodePointAt != 37 || (z10 && (!z11 || c(str, i10, i11)))))) {
                    veVar.c(iCodePointAt);
                } else {
                    if (veVar2 == null) {
                        veVar2 = new com.byazt.mk.ve();
                    }
                    if (charset != null && !charset.equals(com.byazt.kh.ve.f16267n)) {
                        veVar2.c(str, i10, Character.charCount(iCodePointAt) + i10, charset);
                    } else {
                        veVar2.c(iCodePointAt);
                    }
                    while (!veVar2.n()) {
                        int iX = veVar2.x() & 255;
                        veVar.i(37);
                        char[] cArr = uj;
                        veVar.i((int) cArr[(iX >> 4) & 15]);
                        veVar.i((int) cArr[iX & 15]);
                    }
                }
            }
            i10 += Character.charCount(iCodePointAt);
        }
    }

    public static String c(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        return c(str, 0, str.length(), str2, z10, z11, z12, z13, null);
    }
}
