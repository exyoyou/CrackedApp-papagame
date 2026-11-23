package external.org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: loaded from: classes8.dex */
public class f extends g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f90930e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f90931f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String[] f90932g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Class<?> f90933h;

    public f(Object obj) {
        super(obj);
        this.f90930e = false;
        this.f90931f = false;
        this.f90933h = null;
    }

    public static String A0(Object obj, Collection<String> collection) {
        return B0(obj, t0(collection));
    }

    public static String B0(Object obj, String... strArr) {
        return new f(obj).r0(strArr).toString();
    }

    static String[] t0(Collection<String> collection) {
        return collection == null ? external.org.apache.commons.lang3.a.f90904c : u0(collection.toArray());
    }

    static String[] u0(Object[] objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj.toString());
            }
        }
        return (String[]) arrayList.toArray(external.org.apache.commons.lang3.a.f90904c);
    }

    public static String v0(Object obj) {
        return z0(obj, null, false, false, null);
    }

    public static String w0(Object obj, ToStringStyle toStringStyle) {
        return z0(obj, toStringStyle, false, false, null);
    }

    public static String x0(Object obj, ToStringStyle toStringStyle, boolean z10) {
        return z0(obj, toStringStyle, z10, false, null);
    }

    public static String y0(Object obj, ToStringStyle toStringStyle, boolean z10, boolean z11) {
        return z0(obj, toStringStyle, z10, z11, null);
    }

    public static <T> String z0(T t10, ToStringStyle toStringStyle, boolean z10, boolean z11, Class<? super T> cls) {
        return new f(t10, toStringStyle, null, cls, z10, z11).toString();
    }

    protected boolean h0(Field field) {
        if (field.getName().indexOf(36) != -1) {
            return false;
        }
        if (Modifier.isTransient(field.getModifiers()) && !n0()) {
            return false;
        }
        if (Modifier.isStatic(field.getModifiers()) && !m0()) {
            return false;
        }
        String[] strArr = this.f90932g;
        return strArr == null || Arrays.binarySearch(strArr, field.getName()) < 0;
    }

    protected void i0(Class<?> cls) {
        if (cls.isArray()) {
            o0(Z());
            return;
        }
        Field[] declaredFields = cls.getDeclaredFields();
        AccessibleObject.setAccessible(declaredFields, true);
        for (Field field : declaredFields) {
            String name = field.getName();
            if (h0(field)) {
                try {
                    n(name, l0(field));
                } catch (IllegalAccessException e10) {
                    throw new InternalError("Unexpected IllegalAccessException: " + e10.getMessage());
                }
            }
        }
    }

    public String[] j0() {
        return (String[]) this.f90932g.clone();
    }

    public Class<?> k0() {
        return this.f90933h;
    }

    protected Object l0(Field field) throws IllegalAccessException, IllegalArgumentException {
        return field.get(Z());
    }

    public boolean m0() {
        return this.f90930e;
    }

    public boolean n0() {
        return this.f90931f;
    }

    public f o0(Object obj) {
        b0().reflectionAppendArrayDetail(a0(), null, obj);
        return this;
    }

    public void p0(boolean z10) {
        this.f90930e = z10;
    }

    public void q0(boolean z10) {
        this.f90931f = z10;
    }

    public f r0(String... strArr) {
        if (strArr == null) {
            this.f90932g = null;
        } else {
            String[] strArrU0 = u0(strArr);
            this.f90932g = strArrU0;
            Arrays.sort(strArrU0);
        }
        return this;
    }

    public void s0(Class<?> cls) {
        Object objZ;
        if (cls != null && (objZ = Z()) != null && !cls.isInstance(objZ)) {
            throw new IllegalArgumentException("Specified class is not a superclass of the object");
        }
        this.f90933h = cls;
    }

    @Override // external.org.apache.commons.lang3.builder.g
    public String toString() {
        if (Z() == null) {
            return b0().getNullText();
        }
        Class<?> superclass = Z().getClass();
        i0(superclass);
        while (superclass.getSuperclass() != null && superclass != k0()) {
            superclass = superclass.getSuperclass();
            i0(superclass);
        }
        return super.toString();
    }

    public f(Object obj, ToStringStyle toStringStyle) {
        super(obj, toStringStyle);
        this.f90930e = false;
        this.f90931f = false;
        this.f90933h = null;
    }

    public f(Object obj, ToStringStyle toStringStyle, StringBuffer stringBuffer) {
        super(obj, toStringStyle, stringBuffer);
        this.f90930e = false;
        this.f90931f = false;
        this.f90933h = null;
    }

    public <T> f(T t10, ToStringStyle toStringStyle, StringBuffer stringBuffer, Class<? super T> cls, boolean z10, boolean z11) {
        super(t10, toStringStyle, stringBuffer);
        this.f90930e = false;
        this.f90931f = false;
        this.f90933h = null;
        s0(cls);
        q0(z10);
        p0(z11);
    }
}
