package org.aspectj.internal.lang.reflect;

import ad.x;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import org.aspectj.lang.annotation.AdviceName;
import org.aspectj.lang.reflect.AdviceKind;

/* JADX INFO: loaded from: classes4.dex */
public class a implements ad.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f95054h = "org.aspectj.runtime.internal";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AdviceKind f95055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Method f95056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private x f95057c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f95058d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Type[] f95059e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ad.c[] f95060f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ad.c[] f95061g;

    /* JADX INFO: renamed from: org.aspectj.internal.lang.reflect.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C1223a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f95062a;

        static {
            int[] iArr = new int[AdviceKind.values().length];
            f95062a = iArr;
            try {
                iArr[AdviceKind.AFTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f95062a[AdviceKind.AFTER_RETURNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f95062a[AdviceKind.AFTER_THROWING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f95062a[AdviceKind.AROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f95062a[AdviceKind.BEFORE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected a(Method method, String str, AdviceKind adviceKind) {
        this.f95058d = false;
        this.f95055a = adviceKind;
        this.f95056b = method;
        this.f95057c = new n(str);
    }

    @Override // ad.a
    public ad.c a() {
        return ad.d.a(this.f95056b.getDeclaringClass());
    }

    @Override // ad.a
    public x b() {
        return this.f95057c;
    }

    @Override // ad.a
    public ad.c<?>[] c() {
        if (this.f95060f == null) {
            Class<?>[] parameterTypes = this.f95056b.getParameterTypes();
            int i10 = 0;
            int i11 = 0;
            for (Class<?> cls : parameterTypes) {
                if (cls.getPackage().getName().equals(f95054h)) {
                    i11++;
                }
            }
            this.f95060f = new ad.c[parameterTypes.length - i11];
            while (true) {
                ad.c[] cVarArr = this.f95060f;
                if (i10 >= cVarArr.length) {
                    break;
                }
                cVarArr[i10] = ad.d.a(parameterTypes[i10]);
                i10++;
            }
        }
        return this.f95060f;
    }

    @Override // ad.a
    public ad.c<?>[] e() {
        if (this.f95061g == null) {
            Class<?>[] exceptionTypes = this.f95056b.getExceptionTypes();
            this.f95061g = new ad.c[exceptionTypes.length];
            for (int i10 = 0; i10 < exceptionTypes.length; i10++) {
                this.f95061g[i10] = ad.d.a(exceptionTypes[i10]);
            }
        }
        return this.f95061g;
    }

    @Override // ad.a
    public Type[] f() {
        if (this.f95059e == null) {
            Type[] genericParameterTypes = this.f95056b.getGenericParameterTypes();
            int i10 = 0;
            int i11 = 0;
            for (Type type : genericParameterTypes) {
                if ((type instanceof Class) && ((Class) type).getPackage().getName().equals(f95054h)) {
                    i11++;
                }
            }
            this.f95059e = new Type[genericParameterTypes.length - i11];
            while (true) {
                Type[] typeArr = this.f95059e;
                if (i10 >= typeArr.length) {
                    break;
                }
                Type type2 = genericParameterTypes[i10];
                if (type2 instanceof Class) {
                    typeArr[i10] = ad.d.a((Class) type2);
                } else {
                    typeArr[i10] = type2;
                }
                i10++;
            }
        }
        return this.f95059e;
    }

    @Override // ad.a
    public AdviceKind getKind() {
        return this.f95055a;
    }

    @Override // ad.a
    public String getName() {
        String name = this.f95056b.getName();
        if (!name.startsWith("ajc$")) {
            return name;
        }
        AdviceName adviceName = (AdviceName) this.f95056b.getAnnotation(AdviceName.class);
        return adviceName != null ? adviceName.value() : "";
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:46:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00e8 A[SYNTHETIC] */
    public String toString() {
        ad.c<?>[] cVarArrE;
        StringBuffer stringBuffer = new StringBuffer();
        if (getName().length() > 0) {
            stringBuffer.append("@AdviceName(\"");
            stringBuffer.append(getName());
            stringBuffer.append("\") ");
        }
        if (getKind() == AdviceKind.AROUND) {
            stringBuffer.append(this.f95056b.getGenericReturnType().toString());
            stringBuffer.append(" ");
        }
        int i10 = C1223a.f95062a[getKind().ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            stringBuffer.append("after(");
        } else if (i10 == 4) {
            stringBuffer.append("around(");
        } else if (i10 == 5) {
            stringBuffer.append("before(");
        }
        ad.c<?>[] cVarArrC = c();
        int length = cVarArrC.length;
        if (this.f95058d) {
            length--;
        }
        int i11 = 0;
        int i12 = 0;
        while (i12 < length) {
            stringBuffer.append(cVarArrC[i12].getName());
            i12++;
            if (i12 < length) {
                stringBuffer.append(",");
            }
        }
        stringBuffer.append(") ");
        int i13 = C1223a.f95062a[getKind().ordinal()];
        if (i13 != 2) {
            if (i13 == 3) {
            }
            cVarArrE = e();
            if (cVarArrE.length > 0) {
                stringBuffer.append("throws ");
                while (i11 < cVarArrE.length) {
                    stringBuffer.append(cVarArrE[i11].getName());
                    i11++;
                    if (i11 < cVarArrE.length) {
                        stringBuffer.append(",");
                    }
                }
                stringBuffer.append(" ");
            }
            stringBuffer.append(": ");
            stringBuffer.append(b().a());
            return stringBuffer.toString();
        }
        stringBuffer.append("returning");
        if (this.f95058d) {
            stringBuffer.append("(");
            stringBuffer.append(cVarArrC[length - 1].getName());
            stringBuffer.append(") ");
        }
        stringBuffer.append("throwing");
        if (this.f95058d) {
            stringBuffer.append("(");
            stringBuffer.append(cVarArrC[length - 1].getName());
            stringBuffer.append(") ");
        }
        cVarArrE = e();
        if (cVarArrE.length > 0) {
            stringBuffer.append("throws ");
            while (i11 < cVarArrE.length) {
                stringBuffer.append(cVarArrE[i11].getName());
                i11++;
                if (i11 < cVarArrE.length) {
                    stringBuffer.append(",");
                }
            }
            stringBuffer.append(" ");
        }
        stringBuffer.append(": ");
        stringBuffer.append(b().a());
        return stringBuffer.toString();
    }

    protected a(Method method, String str, AdviceKind adviceKind, String str2) {
        this(method, str, adviceKind);
        this.f95058d = true;
    }
}
