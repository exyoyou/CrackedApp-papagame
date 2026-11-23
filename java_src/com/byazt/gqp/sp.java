package com.byazt.gqp;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.mgps.Util.o0;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.text.Typography;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, 91})
public final class sp {
    public static final char[] uj = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f14690a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f14691c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final String f14692da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f14693i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f14694n;
    public final List<String> sp;
    public final String tt;
    public final int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final List<String> f14695x;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, 180})
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<String> f14696a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f14697c;
        public List<String> sp;
        public String uj;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public String f14699x;
        public String tt = "";
        public String ve = "";

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f14698n = -1;

        /* JADX INFO: renamed from: com.byazt.gqp.sp$c$c, reason: collision with other inner class name */
        enum EnumC0323c {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public c() {
            ArrayList arrayList = new ArrayList();
            this.f14696a = arrayList;
            arrayList.add("");
        }

        private boolean a(String str) {
            return "..".equals(str) || "%2e.".equalsIgnoreCase(str) || ".%2e".equalsIgnoreCase(str) || "%2e%2e".equalsIgnoreCase(str);
        }

        private boolean n(String str) {
            return o0.f49827a.equals(str) || "%2e".equalsIgnoreCase(str);
        }

        public c c(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if ("http".equalsIgnoreCase(str)) {
                this.f14697c = "http";
            } else {
                if (!"https".equalsIgnoreCase(str)) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                this.f14697c = "https";
            }
            return this;
        }

        public c query(String str) {
            this.sp = str != null ? sp.tt(sp.c(str, HttpUrl.QUERY_ENCODE_SET, false, false, true, true)) : null;
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f14697c);
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
            if (iC != sp.c(this.f14697c)) {
                sb2.append(':');
                sb2.append(iC);
            }
            sp.c(sb2, this.f14696a);
            if (this.sp != null) {
                sb2.append('?');
                sp.tt(sb2, this.sp);
            }
            if (this.f14699x != null) {
                sb2.append('#');
                sb2.append(this.f14699x);
            }
            return sb2.toString();
        }

        public c tt(String str) {
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

        public c uj(String str) {
            this.sp = str != null ? sp.tt(sp.c(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        public c ve(String str) {
            if (str != null) {
                return c(str, true);
            }
            throw new NullPointerException("encodedPathSegments == null");
        }

        private static String n(String str, int i10, int i11) {
            return com.byazt.na.da.c(sp.c(str, i10, i11, false));
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

        private void ve() {
            List<String> list = this.f14696a;
            if (list.remove(list.size() - 1).isEmpty() && !this.f14696a.isEmpty()) {
                List<String> list2 = this.f14696a;
                list2.set(list2.size() - 1, "");
            } else {
                this.f14696a.add("");
            }
        }

        private static int a(String str, int i10, int i11) {
            try {
                int i12 = Integer.parseInt(sp.c(str, i10, i11, "", false, false, false, true, null));
                if (i12 <= 0 || i12 > 65535) {
                    return -1;
                }
                return i12;
            } catch (NumberFormatException unused) {
            }
        }

        public sp tt() {
            if (this.f14697c != null) {
                if (this.uj != null) {
                    return new sp(this);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
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

        public int c() {
            int i10 = this.f14698n;
            return i10 != -1 ? i10 : sp.c(this.f14697c);
        }

        private c c(String str, boolean z10) {
            int i10 = 0;
            do {
                int iC = com.byazt.na.da.c(str, i10, str.length(), "/\\");
                c(str, i10, iC, iC < str.length(), z10);
                i10 = iC + 1;
            } while (i10 <= str.length());
            return this;
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

        public c c(String str, String str2) {
            if (str != null) {
                if (this.sp == null) {
                    this.sp = new ArrayList();
                }
                this.sp.add(sp.c(str, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true));
                this.sp.add(str2 != null ? sp.c(str2, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("encodedName == null");
        }

        public EnumC0323c c(sp spVar, String str) {
            int iC;
            int i10;
            int iC2 = com.byazt.na.da.c(str, 0, str.length());
            int iTt = com.byazt.na.da.tt(str, iC2, str.length());
            if (tt(str, iC2, iTt) != -1) {
                if (str.regionMatches(true, iC2, "https:", 0, 6)) {
                    this.f14697c = "https";
                    iC2 += 6;
                } else if (str.regionMatches(true, iC2, "http:", 0, 5)) {
                    this.f14697c = "http";
                    iC2 += 5;
                } else {
                    return EnumC0323c.UNSUPPORTED_SCHEME;
                }
            } else if (spVar != null) {
                this.f14697c = spVar.f14691c;
            } else {
                return EnumC0323c.MISSING_SCHEME;
            }
            int iVe = ve(str, iC2, iTt);
            char c10 = '?';
            char c11 = '#';
            if (iVe < 2 && spVar != null && spVar.f14691c.equals(this.f14697c)) {
                this.tt = spVar.tt();
                this.ve = spVar.ve();
                this.uj = spVar.tt;
                this.f14698n = spVar.ve;
                this.f14696a.clear();
                this.f14696a.addAll(spVar.uj());
                if (iC2 == iTt || str.charAt(iC2) == '#') {
                    uj(spVar.n());
                }
            } else {
                int i11 = iC2 + iVe;
                boolean z10 = false;
                boolean z11 = false;
                while (true) {
                    iC = com.byazt.na.da.c(str, i11, iTt, "@/\\?#");
                    byte bCharAt = iC != iTt ? str.charAt(iC) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c11 || bCharAt == 47 || bCharAt == 92 || bCharAt == c10) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (!z10) {
                            int iC3 = com.byazt.na.da.c(str, i11, iC, ':');
                            i10 = iC;
                            String strC = sp.c(str, i11, iC3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z11) {
                                strC = this.tt + "%40" + strC;
                            }
                            this.tt = strC;
                            if (iC3 != i10) {
                                this.ve = sp.c(str, iC3 + 1, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z10 = true;
                            }
                            z11 = true;
                        } else {
                            i10 = iC;
                            this.ve += "%40" + sp.c(str, i11, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
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
                    this.f14698n = iA;
                    if (iA == -1) {
                        return EnumC0323c.INVALID_PORT;
                    }
                } else {
                    this.uj = n(str, i11, iUj);
                    this.f14698n = sp.c(this.f14697c);
                }
                if (this.uj == null) {
                    return EnumC0323c.INVALID_HOST;
                }
                iC2 = iC;
            }
            int iC4 = com.byazt.na.da.c(str, iC2, iTt, "?#");
            c(str, iC2, iC4);
            if (iC4 < iTt && str.charAt(iC4) == '?') {
                int iC5 = com.byazt.na.da.c(str, iC4, iTt, '#');
                this.sp = sp.tt(sp.c(str, iC4 + 1, iC5, HttpUrl.QUERY_ENCODE_SET, true, false, true, true, null));
                iC4 = iC5;
            }
            if (iC4 < iTt && str.charAt(iC4) == '#') {
                this.f14699x = sp.c(str, 1 + iC4, iTt, "", true, false, false, false, null);
            }
            return EnumC0323c.SUCCESS;
        }

        private void c(String str, int i10, int i11) {
            if (i10 == i11) {
                return;
            }
            char cCharAt = str.charAt(i10);
            if (cCharAt != '/' && cCharAt != '\\') {
                List<String> list = this.f14696a;
                list.set(list.size() - 1, "");
            } else {
                this.f14696a.clear();
                this.f14696a.add("");
                i10++;
            }
            while (true) {
                int i12 = i10;
                if (i12 >= i11) {
                    return;
                }
                i10 = com.byazt.na.da.c(str, i12, i11, "/\\");
                boolean z10 = i10 < i11;
                c(str, i12, i10, z10, true);
                if (z10) {
                    i10++;
                }
            }
        }

        private void c(String str, int i10, int i11, boolean z10, boolean z11) {
            String strC = sp.c(str, i10, i11, HttpUrl.PATH_SEGMENT_ENCODE_SET, z11, false, false, true, null);
            if (n(strC)) {
                return;
            }
            if (a(strC)) {
                ve();
                return;
            }
            List<String> list = this.f14696a;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.f14696a;
                list2.set(list2.size() - 1, strC);
            } else {
                this.f14696a.add(strC);
            }
            if (z10) {
                this.f14696a.add("");
            }
        }
    }

    public sp(c cVar) {
        this.f14691c = cVar.f14697c;
        this.f14694n = c(cVar.tt, false);
        this.f14690a = c(cVar.ve, false);
        this.tt = cVar.uj;
        this.ve = cVar.c();
        this.sp = c(cVar.f14696a, false);
        List<String> list = cVar.sp;
        this.f14695x = list != null ? c(list, true) : null;
        String str = cVar.f14699x;
        this.f14693i = str != null ? c(str, false) : null;
        this.f14692da = cVar.toString();
    }

    public String a() {
        if (this.f14693i == null) {
            return null;
        }
        return this.f14692da.substring(this.f14692da.indexOf(35) + 1);
    }

    public URL c() {
        try {
            return new URL(this.f14692da);
        } catch (MalformedURLException e10) {
            throw new RuntimeException(e10);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof sp) && ((sp) obj).f14692da.equals(this.f14692da);
    }

    public int hashCode() {
        return this.f14692da.hashCode();
    }

    public String n() {
        if (this.f14695x == null) {
            return null;
        }
        int iIndexOf = this.f14692da.indexOf(63) + 1;
        String str = this.f14692da;
        return this.f14692da.substring(iIndexOf, com.byazt.na.da.c(str, iIndexOf, str.length(), '#'));
    }

    public String query() {
        if (this.f14695x == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        tt(sb2, this.f14695x);
        return sb2.toString();
    }

    public c sp() {
        c cVar = new c();
        cVar.f14697c = this.f14691c;
        cVar.tt = tt();
        cVar.ve = ve();
        cVar.uj = this.tt;
        cVar.f14698n = this.ve != c(this.f14691c) ? this.ve : -1;
        cVar.f14696a.clear();
        cVar.f14696a.addAll(uj());
        cVar.uj(n());
        cVar.f14699x = a();
        return cVar;
    }

    public String toString() {
        return this.f14692da;
    }

    public String tt() {
        if (this.f14694n.isEmpty()) {
            return "";
        }
        int length = this.f14691c.length() + 3;
        String str = this.f14692da;
        return this.f14692da.substring(length, com.byazt.na.da.c(str, length, str.length(), ":@"));
    }

    public List<String> uj() {
        int iIndexOf = this.f14692da.indexOf(47, this.f14691c.length() + 3);
        String str = this.f14692da;
        int iC = com.byazt.na.da.c(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iC) {
            int i10 = iIndexOf + 1;
            int iC2 = com.byazt.na.da.c(this.f14692da, i10, iC, '/');
            arrayList.add(this.f14692da.substring(i10, iC2));
            iIndexOf = iC2;
        }
        return arrayList;
    }

    public String ve() {
        if (this.f14690a.isEmpty()) {
            return "";
        }
        return this.f14692da.substring(this.f14692da.indexOf(58, this.f14691c.length() + 3) + 1, this.f14692da.indexOf(64));
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

    public static sp ve(String str) {
        c cVar = new c();
        if (cVar.c((sp) null, str) == c.EnumC0323c.SUCCESS) {
            return cVar.tt();
        }
        return null;
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
                com.byazt.na.c cVar = new com.byazt.na.c();
                cVar.c(str, i10, i12);
                c(cVar, str, i12, i11, z10);
                return cVar.ve();
            }
        }
        return str.substring(i10, i11);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0039  */
    public static void c(com.byazt.na.c cVar, String str, int i10, int i11, boolean z10) {
        int i12;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (iCodePointAt == 37 && (i12 = i10 + 2) < i11) {
                int iC = com.byazt.na.da.c(str.charAt(i10 + 1));
                int iC2 = com.byazt.na.da.c(str.charAt(i12));
                if (iC != -1 && iC2 != -1) {
                    cVar.tt((iC << 4) + iC2);
                    i10 = i12;
                } else {
                    cVar.c(iCodePointAt);
                }
            } else if (iCodePointAt == 43 && z10) {
                cVar.tt(32);
            } else {
                cVar.c(iCodePointAt);
            }
            i10 += Character.charCount(iCodePointAt);
        }
    }

    public static boolean c(String str, int i10, int i11) {
        int i12 = i10 + 2;
        return i12 < i11 && str.charAt(i10) == '%' && com.byazt.na.da.c(str.charAt(i10 + 1)) != -1 && com.byazt.na.da.c(str.charAt(i12)) != -1;
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
            com.byazt.na.c cVar = new com.byazt.na.c();
            cVar.c(str, i10, iCharCount);
            c(cVar, str, iCharCount, i11, str2, z10, z11, z12, z13, charset);
            return cVar.ve();
        }
        return str.substring(i10, i11);
    }

    public static void c(com.byazt.na.c cVar, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        com.byazt.na.c cVar2 = null;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (!z10 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z12) {
                    cVar.c(z10 ? "+" : "%2B");
                } else if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z13) && str2.indexOf(iCodePointAt) == -1 && (iCodePointAt != 37 || (z10 && (!z11 || c(str, i10, i11)))))) {
                    cVar.c(iCodePointAt);
                } else {
                    if (cVar2 == null) {
                        cVar2 = new com.byazt.na.c();
                    }
                    if (charset != null && !charset.equals(com.byazt.na.da.f17051c)) {
                        cVar2.c(str, i10, Character.charCount(iCodePointAt) + i10, charset);
                    } else {
                        cVar2.c(iCodePointAt);
                    }
                    while (!cVar2.c()) {
                        int iTt = cVar2.tt() & 255;
                        cVar.tt(37);
                        char[] cArr = uj;
                        cVar.tt((int) cArr[(iTt >> 4) & 15]);
                        cVar.tt((int) cArr[iTt & 15]);
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
