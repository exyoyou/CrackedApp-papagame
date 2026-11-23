package org.aspectj.runtime.reflect;

import java.lang.ref.SoftReference;
import java.util.StringTokenizer;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes4.dex */
abstract class l implements org.aspectj.lang.e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f95210h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final char f95211i = '-';

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static String[] f95212j = new String[0];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static Class[] f95213k = new Class[0];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final String f95214l = ":";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f95215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f95216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f95217c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Class f95218d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    a f95219e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f95220f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ClassLoader f95221g;

    private interface a {
        void a(int i10, String str);

        String get(int i10);
    }

    private static final class b implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SoftReference f95222a;

        public b() {
            c();
        }

        private String[] b() {
            return (String[]) this.f95222a.get();
        }

        private String[] c() {
            String[] strArr = new String[3];
            this.f95222a = new SoftReference(strArr);
            return strArr;
        }

        @Override // org.aspectj.runtime.reflect.l.a
        public void a(int i10, String str) {
            String[] strArrB = b();
            if (strArrB == null) {
                strArrB = c();
            }
            strArrB[i10] = str;
        }

        @Override // org.aspectj.runtime.reflect.l.a
        public String get(int i10) {
            String[] strArrB = b();
            if (strArrB == null) {
                return null;
            }
            return strArrB[i10];
        }
    }

    l(int i10, String str, Class cls) {
        this.f95221g = null;
        this.f95215a = i10;
        this.f95216b = str;
        this.f95218d = cls;
    }

    static void B(boolean z10) {
        f95210h = z10;
    }

    private ClassLoader y() {
        if (this.f95221g == null) {
            this.f95221g = getClass().getClassLoader();
        }
        return this.f95221g;
    }

    static boolean z() {
        return f95210h;
    }

    public void A(ClassLoader classLoader) {
        this.f95221g = classLoader;
    }

    String C(Class cls) {
        if (cls == null) {
            return "ANONYMOUS";
        }
        if (!cls.isArray()) {
            return D(cls.getName()).replace('$', external.org.apache.commons.lang3.d.f90941a);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(C(cls.getComponentType()));
        stringBuffer.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        return stringBuffer.toString();
    }

    String D(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf == -1 ? str : str.substring(iLastIndexOf + 1);
    }

    String E(n nVar) {
        String strR;
        if (f95210h) {
            a aVar = this.f95219e;
            if (aVar == null) {
                try {
                    this.f95219e = new b();
                } catch (Throwable unused) {
                    f95210h = false;
                }
                strR = null;
            } else {
                strR = aVar.get(nVar.f95237i);
            }
        } else {
            strR = null;
        }
        if (strR == null) {
            strR = r(nVar);
        }
        if (f95210h) {
            this.f95219e.a(nVar.f95237i, strR);
        }
        return strR;
    }

    @Override // org.aspectj.lang.e
    public Class a() {
        if (this.f95218d == null) {
            this.f95218d = v(2);
        }
        return this.f95218d;
    }

    @Override // org.aspectj.lang.e
    public final String b() {
        return E(n.f95226j);
    }

    @Override // org.aspectj.lang.e
    public int d() {
        if (this.f95215a == -1) {
            this.f95215a = s(0);
        }
        return this.f95215a;
    }

    @Override // org.aspectj.lang.e
    public final String f() {
        return E(n.f95228l);
    }

    @Override // org.aspectj.lang.e
    public String getName() {
        if (this.f95216b == null) {
            this.f95216b = t(1);
        }
        return this.f95216b;
    }

    @Override // org.aspectj.lang.e
    public String l() {
        if (this.f95217c == null) {
            this.f95217c = a().getName();
        }
        return this.f95217c;
    }

    void o(StringBuffer stringBuffer, Class[] clsArr) {
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(x(clsArr[i10]));
        }
    }

    void p(StringBuffer stringBuffer, Class[] clsArr) {
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(C(clsArr[i10]));
        }
    }

    void q(StringBuffer stringBuffer, Class[] clsArr) {
        o(stringBuffer, clsArr);
    }

    protected abstract String r(n nVar);

    int s(int i10) {
        return Integer.parseInt(t(i10), 16);
    }

    String t(int i10) {
        int iIndexOf = this.f95220f.indexOf(45);
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i10 <= 0) {
                break;
            }
            i11 = iIndexOf + 1;
            iIndexOf = this.f95220f.indexOf(45, i11);
            i10 = i12;
        }
        if (iIndexOf == -1) {
            iIndexOf = this.f95220f.length();
        }
        return this.f95220f.substring(i11, iIndexOf);
    }

    @Override // org.aspectj.lang.e
    public final String toString() {
        return E(n.f95227k);
    }

    String[] u(int i10) {
        StringTokenizer stringTokenizer = new StringTokenizer(t(i10), ":");
        int iCountTokens = stringTokenizer.countTokens();
        String[] strArr = new String[iCountTokens];
        for (int i11 = 0; i11 < iCountTokens; i11++) {
            strArr[i11] = stringTokenizer.nextToken();
        }
        return strArr;
    }

    Class v(int i10) {
        return e.h(t(i10), y());
    }

    Class[] w(int i10) {
        StringTokenizer stringTokenizer = new StringTokenizer(t(i10), ":");
        int iCountTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[iCountTokens];
        for (int i11 = 0; i11 < iCountTokens; i11++) {
            clsArr[i11] = e.h(stringTokenizer.nextToken(), y());
        }
        return clsArr;
    }

    String x(Class cls) {
        if (cls == null) {
            return "ANONYMOUS";
        }
        if (!cls.isArray()) {
            return cls.getName().replace('$', external.org.apache.commons.lang3.d.f90941a);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(x(cls.getComponentType()));
        stringBuffer.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        return stringBuffer.toString();
    }

    public l(String str) {
        this.f95215a = -1;
        this.f95221g = null;
        this.f95220f = str;
    }
}
