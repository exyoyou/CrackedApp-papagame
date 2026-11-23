package org.aspectj.internal.lang.reflect;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes4.dex */
public class h extends i implements ad.n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Method f95100e;

    public h(ad.c<?> cVar, String str, int i10, Method method) {
        super(cVar, str, i10);
        this.f95100e = method;
    }

    @Override // ad.n
    public ad.c<?>[] c() {
        Class<?>[] parameterTypes = this.f95100e.getParameterTypes();
        ad.c<?>[] cVarArr = new ad.c[parameterTypes.length - 1];
        for (int i10 = 1; i10 < parameterTypes.length; i10++) {
            cVarArr[i10 - 1] = ad.d.a(parameterTypes[i10]);
        }
        return cVarArr;
    }

    @Override // ad.n
    public ad.c<?>[] e() {
        Class<?>[] exceptionTypes = this.f95100e.getExceptionTypes();
        ad.c<?>[] cVarArr = new ad.c[exceptionTypes.length];
        for (int i10 = 0; i10 < exceptionTypes.length; i10++) {
            cVarArr[i10] = ad.d.a(exceptionTypes[i10]);
        }
        return cVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ad.n
    public Type[] f() {
        Type[] genericParameterTypes = this.f95100e.getGenericParameterTypes();
        ad.c[] cVarArr = new ad.c[genericParameterTypes.length - 1];
        for (int i10 = 1; i10 < genericParameterTypes.length; i10++) {
            Type type = genericParameterTypes[i10];
            if (type instanceof Class) {
                cVarArr[i10 - 1] = ad.d.a((Class) type);
            } else {
                cVarArr[i10 - 1] = type;
            }
        }
        return cVarArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Modifier.toString(d()));
        stringBuffer.append(" ");
        stringBuffer.append(this.f95102b);
        stringBuffer.append(".new");
        stringBuffer.append("(");
        ad.c<?>[] cVarArrC = c();
        for (int i10 = 0; i10 < cVarArrC.length - 1; i10++) {
            stringBuffer.append(cVarArrC[i10].toString());
            stringBuffer.append(", ");
        }
        if (cVarArrC.length > 0) {
            stringBuffer.append(cVarArrC[cVarArrC.length - 1].toString());
        }
        stringBuffer.append(")");
        return stringBuffer.toString();
    }
}
