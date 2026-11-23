package dagger.hilt;

import java.lang.annotation.Annotation;
import javax.annotation.Nonnull;
import jb.d;
import jb.e;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f90770a = "dagger.hilt.android.EarlyEntryPoint";

    private a() {
    }

    @Nonnull
    public static <T> T a(Object obj, Class<T> cls) {
        if (obj instanceof jb.a) {
            if (obj instanceof e) {
                d.d(!b(cls, f90770a), "Interface, %s, annotated with @EarlyEntryPoint should be called with EarlyEntryPoints.get() rather than EntryPoints.get()", cls.getCanonicalName());
            }
            return cls.cast(obj);
        }
        if (obj instanceof jb.b) {
            return (T) a(((jb.b) obj).generatedComponent(), cls);
        }
        throw new IllegalStateException(String.format("Given component holder %s does not implement %s or %s", obj.getClass(), jb.a.class, jb.b.class));
    }

    private static boolean b(Class<?> clazz, String annotationName) {
        for (Annotation annotation : clazz.getAnnotations()) {
            if (annotation.annotationType().getCanonicalName().contentEquals(annotationName)) {
                return true;
            }
        }
        return false;
    }
}
