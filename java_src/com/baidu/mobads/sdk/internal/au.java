package com.baidu.mobads.sdk.internal;

import android.content.Context;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class au {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile Map<String, au> f7478c = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Class<?> f7479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Method[] f7480b;

    private au(Context context, String str) {
        this.f7480b = null;
        try {
            Class<?> cls = Class.forName(str, true, bu.a(context));
            this.f7479a = cls;
            this.f7480b = cls.getMethods();
        } catch (Throwable th) {
            bv.a().a(th);
        }
    }

    public static au a(Context context, String str) {
        if (!f7478c.containsKey(str) || f7478c.get(str).f7479a == null) {
            synchronized (au.class) {
                if (!f7478c.containsKey(str) || f7478c.get(str).f7479a == null) {
                    f7478c.put(str, new au(context, str));
                }
            }
        }
        return f7478c.get(str);
    }

    public Object b(Object obj, String str, Object... objArr) {
        try {
            Method methodA = a(str);
            if (methodA == null) {
                return null;
            }
            if (objArr != null && objArr.length != 0) {
                return methodA.invoke(obj, objArr);
            }
            return methodA.invoke(obj, new Object[0]);
        } catch (Throwable th) {
            bv.a().a(th);
            return null;
        }
    }

    public String c(Object obj, String str, Object... objArr) {
        try {
            Method methodA = a(str);
            if (methodA == null) {
                return null;
            }
            Object objInvoke = (objArr == null || objArr.length == 0) ? methodA.invoke(obj, new Object[0]) : methodA.invoke(obj, objArr);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
            return null;
        } catch (Throwable th) {
            bv.a().a(th);
            return null;
        }
    }

    public Object a(Class<?>[] clsArr, Object... objArr) {
        Constructor<?> constructor;
        if (objArr != null) {
            try {
                if (objArr.length != 0) {
                    constructor = this.f7479a.getConstructor(clsArr);
                } else {
                    constructor = this.f7479a.getConstructor(new Class[0]);
                }
            } catch (Throwable th) {
                bv.a().a(th);
                return null;
            }
        } else {
            constructor = this.f7479a.getConstructor(new Class[0]);
        }
        return constructor.newInstance(objArr);
    }

    public void a(Object obj, String str, Object... objArr) {
        try {
            Method methodA = a(str);
            if (methodA != null) {
                if (objArr != null && objArr.length != 0) {
                    methodA.invoke(obj, objArr);
                } else {
                    methodA.invoke(obj, new Object[0]);
                }
            }
        } catch (Throwable th) {
            bv.a().a(th);
        }
    }

    private Method a(String str) {
        Method[] methodArr = this.f7480b;
        if (methodArr == null) {
            return null;
        }
        for (Method method : methodArr) {
            if (method.getName().equals(str)) {
                method.setAccessible(true);
                return method;
            }
        }
        return null;
    }
}
