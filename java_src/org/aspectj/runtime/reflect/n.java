package org.aspectj.runtime.reflect;

import java.lang.reflect.Modifier;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes4.dex */
class n {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static n f95226j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static n f95227k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static n f95228l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f95229a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f95230b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f95231c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f95232d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f95233e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f95234f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f95235g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f95236h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f95237i;

    static {
        n nVar = new n();
        f95226j = nVar;
        nVar.f95229a = true;
        nVar.f95230b = false;
        nVar.f95231c = false;
        nVar.f95232d = false;
        nVar.f95233e = true;
        nVar.f95234f = false;
        nVar.f95235g = false;
        nVar.f95237i = 0;
        n nVar2 = new n();
        f95227k = nVar2;
        nVar2.f95229a = true;
        nVar2.f95230b = true;
        nVar2.f95231c = false;
        nVar2.f95232d = false;
        nVar2.f95233e = false;
        f95226j.f95237i = 1;
        n nVar3 = new n();
        f95228l = nVar3;
        nVar3.f95229a = false;
        nVar3.f95230b = true;
        nVar3.f95231c = false;
        nVar3.f95232d = true;
        nVar3.f95233e = false;
        nVar3.f95236h = false;
        nVar3.f95237i = 2;
    }

    n() {
    }

    public void a(StringBuffer stringBuffer, Class[] clsArr) {
        if (clsArr == null) {
            return;
        }
        if (this.f95230b) {
            stringBuffer.append("(");
            c(stringBuffer, clsArr);
            stringBuffer.append(")");
        } else if (clsArr.length == 0) {
            stringBuffer.append("()");
        } else {
            stringBuffer.append("(..)");
        }
    }

    public void b(StringBuffer stringBuffer, Class[] clsArr) {
        if (!this.f95231c || clsArr == null || clsArr.length == 0) {
            return;
        }
        stringBuffer.append(" throws ");
        c(stringBuffer, clsArr);
    }

    public void c(StringBuffer stringBuffer, Class[] clsArr) {
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(g(clsArr[i10]));
        }
    }

    String d(String str) {
        int iLastIndexOf = str.lastIndexOf(45);
        return iLastIndexOf == -1 ? str : str.substring(iLastIndexOf + 1);
    }

    String e(int i10) {
        if (!this.f95232d) {
            return "";
        }
        String string = Modifier.toString(i10);
        if (string.length() == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(string);
        stringBuffer.append(" ");
        return stringBuffer.toString();
    }

    public String f(Class cls, String str) {
        return h(cls, str, this.f95233e);
    }

    public String g(Class cls) {
        return h(cls, cls.getName(), this.f95229a);
    }

    String h(Class cls, String str, boolean z10) {
        if (cls == null) {
            return "ANONYMOUS";
        }
        if (!cls.isArray()) {
            return z10 ? i(str).replace('$', external.org.apache.commons.lang3.d.f90941a) : str.replace('$', external.org.apache.commons.lang3.d.f90941a);
        }
        Class<?> componentType = cls.getComponentType();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(h(componentType, componentType.getName(), z10));
        stringBuffer.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        return stringBuffer.toString();
    }

    String i(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf == -1 ? str : str.substring(iLastIndexOf + 1);
    }
}
