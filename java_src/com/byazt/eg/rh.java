package com.byazt.eg;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 115})
public final class rh {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f13379c;

    public rh(c cVar) {
        List<String> list = cVar.f13380c;
        this.f13379c = (String[]) list.toArray(new String[list.size()]);
    }

    public String c(String str) {
        return c(this.f13379c, str);
    }

    public boolean equals(Object obj) {
        return (obj instanceof rh) && Arrays.equals(((rh) obj).f13379c, this.f13379c);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f13379c);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        int iC = c();
        for (int i10 = 0; i10 < iC; i10++) {
            sb2.append(c(i10));
            sb2.append(": ");
            sb2.append(tt(i10));
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public String tt(int i10) {
        return this.f13379c[(i10 * 2) + 1];
    }

    public Map<String, List<String>> ve() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int iC = c();
        for (int i10 = 0; i10 < iC; i10++) {
            String lowerCase = c(i10).toLowerCase(Locale.US);
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(tt(i10));
        }
        return treeMap;
    }

    @com.byazt.zqa.c(c = {0, 1, 16, 739})
    public static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<String> f13380c = new ArrayList(20);

        private void uj(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                char cCharAt = str.charAt(i10);
                if (cCharAt <= ' ' || cCharAt >= 127) {
                    throw new IllegalArgumentException(com.byazt.kh.ve.c("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i10), str));
                }
            }
            if (str2 == null) {
                throw new NullPointerException("value for name " + str + " == null");
            }
            int length2 = str2.length();
            for (int i11 = 0; i11 < length2; i11++) {
                char cCharAt2 = str2.charAt(i11);
                if ((cCharAt2 <= 31 && cCharAt2 != '\t') || cCharAt2 >= 127) {
                    throw new IllegalArgumentException(com.byazt.kh.ve.c("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i11), str, str2));
                }
            }
        }

        public c c(String str) {
            int iIndexOf = str.indexOf(":", 1);
            if (iIndexOf != -1) {
                return tt(str.substring(0, iIndexOf), str.substring(iIndexOf + 1));
            }
            return str.startsWith(":") ? tt("", str.substring(1)) : tt("", str);
        }

        public c tt(String str, String str2) {
            this.f13380c.add(str);
            this.f13380c.add(str2.trim());
            return this;
        }

        public c ve(String str, String str2) {
            try {
                uj(str, str2);
            } catch (Throwable unused) {
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        int length = str2.length();
                        for (int i10 = 0; i10 < length; i10++) {
                            char cCharAt = str2.charAt(i10);
                            if ((cCharAt > 31 || cCharAt == '\t') && cCharAt < 127) {
                                sb2.append(cCharAt);
                            } else {
                                sb2.append(URLEncoder.encode(String.valueOf(cCharAt), "UTF-8"));
                            }
                        }
                        str2 = sb2.toString();
                    } catch (UnsupportedEncodingException e10) {
                        com.byazt.nr.m.c(e10);
                        return this;
                    }
                }
                return this;
            }
            tt(str);
            tt(str, str2);
            return this;
        }

        public c tt(String str) {
            int i10 = 0;
            while (i10 < this.f13380c.size()) {
                if (str.equalsIgnoreCase(this.f13380c.get(i10))) {
                    this.f13380c.remove(i10);
                    this.f13380c.remove(i10);
                    i10 -= 2;
                }
                i10 += 2;
            }
            return this;
        }

        public c c(String str, String str2) {
            try {
                uj(str, str2);
            } catch (Throwable unused) {
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        int length = str2.length();
                        for (int i10 = 0; i10 < length; i10++) {
                            char cCharAt = str2.charAt(i10);
                            if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                                sb2.append(URLEncoder.encode(String.valueOf(cCharAt), "UTF-8"));
                            } else {
                                sb2.append(cCharAt);
                            }
                        }
                        str2 = sb2.toString();
                    } catch (UnsupportedEncodingException e10) {
                        com.byazt.nr.m.c(e10);
                        return this;
                    }
                }
                return this;
            }
            return tt(str, str2);
        }

        public rh c() {
            return new rh(this);
        }
    }

    public int c() {
        return this.f13379c.length / 2;
    }

    public List<String> tt(String str) {
        int iC = c();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < iC; i10++) {
            if (str.equalsIgnoreCase(c(i10))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(tt(i10));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    private rh(String[] strArr) {
        this.f13379c = strArr;
    }

    public String c(int i10) {
        return this.f13379c[i10 * 2];
    }

    private static String c(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public static rh c(String... strArr) {
        if (strArr != null) {
            if (strArr.length % 2 == 0) {
                String[] strArr2 = (String[]) strArr.clone();
                for (int i10 = 0; i10 < strArr2.length; i10++) {
                    String str = strArr2[i10];
                    if (str != null) {
                        strArr2[i10] = str.trim();
                    } else {
                        throw new IllegalArgumentException("Headers cannot be null");
                    }
                }
                for (int i11 = 0; i11 < strArr2.length; i11 += 2) {
                    String str2 = strArr2[i11];
                    String str3 = strArr2[i11 + 1];
                    if (str2.length() == 0 || str2.indexOf(0) != -1 || str3.indexOf(0) != -1) {
                        throw new IllegalArgumentException("Unexpected header: " + str2 + ": " + str3);
                    }
                }
                return new rh(strArr2);
            }
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        throw new NullPointerException("namesAndValues == null");
    }

    public c tt() {
        c cVar = new c();
        Collections.addAll(cVar.f13380c, this.f13379c);
        return cVar;
    }
}
