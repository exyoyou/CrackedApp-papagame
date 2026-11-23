package cn.fly.tools.a;

import cn.fly.commons.a.m;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes7.dex */
class g implements a {
    g() {
    }

    @Override // cn.fly.tools.a.a
    public <T> T a(Class cls, Object obj, String str, Class[] clsArr, Object[] objArr, Class<?> cls2) throws Throwable {
        Method method = (Method) Class.class.getDeclaredMethod(m.a("0173fk7gj9gm%gdhe:ekLg@edidSgjiFeled"), String.class, Class[].class).invoke(cls, str, clsArr);
        method.setAccessible(true);
        return (T) method.invoke(obj, objArr);
    }

    @Override // cn.fly.tools.a.a
    public Class b(String str) throws Throwable {
        return (Class) Class.class.getDeclaredMethod(m.a("0075fgelekfh[e9egUg"), String.class).invoke(null, str);
    }

    @Override // cn.fly.tools.a.a
    public <T> T a(String str, Object obj, String str2, Class[] clsArr, Object[] objArr, Class<?> cls) throws Throwable {
        return (T) a((Class) Class.class.getDeclaredMethod(m.a("007Nfgelekfh=eUeg^g"), String.class).invoke(null, str), obj, str2, clsArr, objArr, cls);
    }

    @Override // cn.fly.tools.a.a
    public <T> T a(String str) throws Throwable {
        return (T) Class.class.getDeclaredMethod(m.a("011fg<ghff7f0gj(jefdg"), new Class[0]).invoke((Class) Class.class.getDeclaredMethod(m.a("007(fgelekfh6e)eg!g"), String.class).invoke(null, str), new Object[0]);
    }

    @Override // cn.fly.tools.a.a
    public <T> T a(String str, String str2, Object obj, Class<?> cls) throws Throwable {
        Field field = (Field) Class.class.getDeclaredMethod(m.a("016HfkXgjNgm_gdheMek3gOedhdejVghUed"), String.class).invoke((Class) Class.class.getDeclaredMethod(m.a("007%fgelekfh^e.egIg"), String.class).invoke(null, str), str2);
        field.setAccessible(true);
        return (T) field.get(obj);
    }

    @Override // cn.fly.tools.a.a
    public <T> T a(String str, Class[] clsArr, Object[] objArr) throws Throwable {
        if (clsArr != null && clsArr.length != 0 && objArr != null && objArr.length != 0) {
            Constructor constructor = (Constructor) Class.class.getDeclaredMethod(m.a("022?fk:gj]gmGgdheSekNgVedfeel;f*gj<jTekehIdj]elek"), Class[].class).invoke((Class) Class.class.getDeclaredMethod(m.a("007LfgelekfhKe3eg(g"), String.class).invoke(null, str), clsArr);
            constructor.setAccessible(true);
            return (T) constructor.newInstance(objArr);
        }
        return (T) a(str);
    }
}
