package com.kwad.sdk.api.loader;

import android.annotation.SuppressLint;
import android.os.Build;
import java.io.File;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"LongLogTag"})
final class z {

    static final class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static String c(ClassLoader classLoader) throws IllegalAccessException {
            Object obj = z.c(classLoader, "pathList").get(classLoader);
            return z.A(Arrays.asList((File[]) z.c(obj, "nativeLibraryDirectories").get(obj)));
        }
    }

    static final class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static String c(ClassLoader classLoader) throws IllegalAccessException {
            Object obj = z.c(classLoader, "pathList").get(classLoader);
            return z.A((List) z.c(obj, "nativeLibraryDirectories").get(obj));
        }
    }

    static final class c {
        /* JADX INFO: Access modifiers changed from: private */
        public static String c(ClassLoader classLoader) throws IllegalAccessException {
            Object obj = z.c(classLoader, "pathList").get(classLoader);
            return z.A((List) z.c(obj, "nativeLibraryDirectories").get(obj));
        }
    }

    static final class d {
        /* JADX INFO: Access modifiers changed from: private */
        public static String g(ClassLoader classLoader) throws IllegalAccessException {
            Object obj = z.c(classLoader, "pathList").get(classLoader);
            return z.A((List) z.c(obj, "nativeLibraryDirectories").get(obj));
        }
    }

    static final class e {
        /* JADX INFO: Access modifiers changed from: private */
        public static String c(ClassLoader classLoader) {
            return String.valueOf(z.c(classLoader, "libPath").get(classLoader));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String A(List<File> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            sb2.append(list.get(i10).getAbsolutePath());
            if (i10 < list.size() - 1) {
                sb2.append(File.pathSeparator);
            }
        }
        return sb2.toString();
    }

    public static synchronized String b(ClassLoader classLoader) {
        String strC;
        int i10 = Build.VERSION.SDK_INT;
        if ((i10 == 25 && Build.VERSION.PREVIEW_SDK_INT != 0) || i10 > 25) {
            try {
                strC = d.g(classLoader);
            } catch (Throwable th) {
                String.format("installNativeLibraryPath, v25 fail, sdk: %d, error: %s, try to fallback to V23", Integer.valueOf(Build.VERSION.SDK_INT), th.getMessage());
                strC = b.c(classLoader);
            }
        } else if (i10 == 24) {
            try {
                strC = c.c(classLoader);
            } catch (Throwable th2) {
                String.format("installNativeLibraryPath, v23 fail, sdk: %d, error: %s, try to fallback to V14", Integer.valueOf(Build.VERSION.SDK_INT), th2.getMessage());
                try {
                    strC = a.c(classLoader);
                } catch (Throwable unused) {
                    throw th2;
                }
            }
        } else if (i10 >= 23) {
            try {
                strC = b.c(classLoader);
            } catch (Throwable th3) {
                String.format("installNativeLibraryPath, v23 fail, sdk: %d, error: %s, try to fallback to V14", Integer.valueOf(Build.VERSION.SDK_INT), th3.getMessage());
                try {
                    strC = a.c(classLoader);
                } catch (Throwable unused2) {
                    throw th3;
                }
            }
        } else {
            strC = a.c(classLoader);
        }
        return strC;
    }

    public static Field c(Object obj, String str) {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
