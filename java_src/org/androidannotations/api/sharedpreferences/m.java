package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Method f95041a = b(SharedPreferences.Editor.class, "apply", new Class[0]);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Method f95042b = b(SharedPreferences.class, "getStringSet", String.class, Set.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Method f95043c = b(SharedPreferences.Editor.class, "putStringSet", String.class, Set.class);

    private m() {
    }

    public static void a(SharedPreferences.Editor editor) {
        try {
            d(f95041a, editor, new Object[0]);
        } catch (NoSuchMethodException unused) {
            editor.commit();
        }
    }

    private static Method b(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static Set<String> c(SharedPreferences sharedPreferences, String str, Set<String> set) {
        try {
            return (Set) d(f95042b, sharedPreferences, str, set);
        } catch (NoSuchMethodException unused) {
            String string = sharedPreferences.getString(str, null);
            return string == null ? set : l.a(string);
        }
    }

    public static <T> T d(Method method, Object obj, Object... objArr) throws NoSuchMethodException {
        if (method == null) {
            throw new NoSuchMethodException();
        }
        try {
            return (T) method.invoke(obj, objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            throw new NoSuchMethodException(method.getName());
        }
    }

    public static void e(SharedPreferences.Editor editor, String str, Set<String> set) {
        try {
            d(f95043c, editor, str, set);
        } catch (NoSuchMethodException unused) {
            editor.putString(str, l.b(set));
        }
    }
}
