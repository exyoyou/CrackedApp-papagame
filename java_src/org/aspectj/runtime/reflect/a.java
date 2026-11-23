package org.aspectj.runtime.reflect;

import com.join.mgps.Util.o0;
import java.lang.reflect.Method;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes4.dex */
class a extends c implements ad.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    Class f95180p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Method f95181q;

    a(int i10, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        super(i10, str, cls, clsArr, strArr, clsArr2);
        this.f95181q = null;
        this.f95180p = cls2;
    }

    private String F(String str) {
        if (str.indexOf(36) == -1) {
            return str;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, "$");
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.startsWith("before") || strNextToken.startsWith("after") || strNextToken.startsWith("around")) {
                return strNextToken;
            }
        }
        return str;
    }

    @Override // ad.b
    public Class getReturnType() {
        if (this.f95180p == null) {
            this.f95180p = v(6);
        }
        return this.f95180p;
    }

    @Override // ad.b
    public Method n() {
        if (this.f95181q == null) {
            try {
                this.f95181q = a().getDeclaredMethod(getName(), c());
            } catch (Exception unused) {
            }
        }
        return this.f95181q;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String r(n nVar) {
        StringBuffer stringBuffer = new StringBuffer();
        if (nVar.f95230b) {
            stringBuffer.append(nVar.g(getReturnType()));
        }
        if (nVar.f95230b) {
            stringBuffer.append(" ");
        }
        stringBuffer.append(nVar.f(a(), l()));
        stringBuffer.append(o0.f49827a);
        stringBuffer.append(F(getName()));
        nVar.a(stringBuffer, c());
        nVar.b(stringBuffer, e());
        return stringBuffer.toString();
    }

    a(String str) {
        super(str);
        this.f95181q = null;
    }
}
