package org.aspectj.internal.lang.reflect;

import ad.v;
import ad.x;
import java.lang.reflect.Method;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes4.dex */
public class o implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f95120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x f95121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Method f95122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ad.c f95123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String[] f95124e;

    protected o(String str, String str2, Method method, ad.c cVar, String str3) {
        this.f95124e = new String[0];
        this.f95120a = str;
        this.f95121b = new n(str2);
        this.f95122c = method;
        this.f95123d = cVar;
        this.f95124e = e(str3);
    }

    private String[] e(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int iCountTokens = stringTokenizer.countTokens();
        String[] strArr = new String[iCountTokens];
        for (int i10 = 0; i10 < iCountTokens; i10++) {
            strArr[i10] = stringTokenizer.nextToken().trim();
        }
        return strArr;
    }

    @Override // ad.v
    public ad.c a() {
        return this.f95123d;
    }

    @Override // ad.v
    public x b() {
        return this.f95121b;
    }

    @Override // ad.v
    public ad.c<?>[] c() {
        Class<?>[] parameterTypes = this.f95122c.getParameterTypes();
        int length = parameterTypes.length;
        ad.c<?>[] cVarArr = new ad.c[length];
        for (int i10 = 0; i10 < length; i10++) {
            cVarArr[i10] = ad.d.a(parameterTypes[i10]);
        }
        return cVarArr;
    }

    @Override // ad.v
    public int d() {
        return this.f95122c.getModifiers();
    }

    @Override // ad.v
    public String[] g() {
        return this.f95124e;
    }

    @Override // ad.v
    public String getName() {
        return this.f95120a;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getName());
        stringBuffer.append("(");
        ad.c<?>[] cVarArrC = c();
        int i10 = 0;
        while (i10 < cVarArrC.length) {
            stringBuffer.append(cVarArrC[i10].getName());
            String[] strArr = this.f95124e;
            if (strArr != null && strArr[i10] != null) {
                stringBuffer.append(" ");
                stringBuffer.append(this.f95124e[i10]);
            }
            i10++;
            if (i10 < cVarArrC.length) {
                stringBuffer.append(",");
            }
        }
        stringBuffer.append(") : ");
        stringBuffer.append(b().a());
        return stringBuffer.toString();
    }
}
