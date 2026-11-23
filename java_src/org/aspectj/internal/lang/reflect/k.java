package org.aspectj.internal.lang.reflect;

import com.join.mgps.Util.o0;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: loaded from: classes4.dex */
public class k extends i implements ad.q {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f95108e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Method f95109f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f95110g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ad.c<?>[] f95111h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Type[] f95112i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ad.c<?> f95113j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Type f95114k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ad.c<?>[] f95115l;

    public k(ad.c<?> cVar, String str, int i10, String str2, Method method) {
        super(cVar, str, i10);
        this.f95110g = 1;
        this.f95108e = str2;
        this.f95109f = method;
    }

    @Override // ad.q
    public Type b() {
        Type genericReturnType = this.f95109f.getGenericReturnType();
        return genericReturnType instanceof Class ? ad.d.a((Class) genericReturnType) : genericReturnType;
    }

    @Override // ad.q
    public ad.c<?>[] c() {
        Class<?>[] parameterTypes = this.f95109f.getParameterTypes();
        int length = parameterTypes.length;
        int i10 = this.f95110g;
        ad.c<?>[] cVarArr = new ad.c[length - i10];
        while (i10 < parameterTypes.length) {
            cVarArr[i10 - this.f95110g] = ad.d.a(parameterTypes[i10]);
            i10++;
        }
        return cVarArr;
    }

    @Override // ad.q
    public ad.c<?>[] e() {
        Class<?>[] exceptionTypes = this.f95109f.getExceptionTypes();
        ad.c<?>[] cVarArr = new ad.c[exceptionTypes.length];
        for (int i10 = 0; i10 < exceptionTypes.length; i10++) {
            cVarArr[i10] = ad.d.a(exceptionTypes[i10]);
        }
        return cVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ad.q
    public Type[] f() {
        Type[] genericParameterTypes = this.f95109f.getGenericParameterTypes();
        int length = genericParameterTypes.length;
        int i10 = this.f95110g;
        ad.c[] cVarArr = new ad.c[length - i10];
        while (i10 < genericParameterTypes.length) {
            Type type = genericParameterTypes[i10];
            if (type instanceof Class) {
                cVarArr[i10 - this.f95110g] = ad.d.a((Class) type);
            } else {
                cVarArr[i10 - this.f95110g] = type;
            }
            i10++;
        }
        return cVarArr;
    }

    @Override // ad.q
    public String getName() {
        return this.f95108e;
    }

    @Override // ad.q
    public ad.c<?> getReturnType() {
        return ad.d.a(this.f95109f.getReturnType());
    }

    @Override // ad.q
    public TypeVariable<Method>[] getTypeParameters() {
        return this.f95109f.getTypeParameters();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Modifier.toString(d()));
        stringBuffer.append(" ");
        stringBuffer.append(getReturnType().toString());
        stringBuffer.append(" ");
        stringBuffer.append(this.f95102b);
        stringBuffer.append(o0.f49827a);
        stringBuffer.append(getName());
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

    public k(ad.c<?> cVar, ad.c<?> cVar2, Method method, int i10) {
        super(cVar, cVar2, i10);
        this.f95110g = 0;
        this.f95108e = method.getName();
        this.f95109f = method;
    }
}
