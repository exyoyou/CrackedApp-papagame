package dagger.hilt.android;

import android.content.ComponentCallbacks2;
import android.content.Context;
import java.lang.annotation.Annotation;
import javax.annotation.Nonnull;
import jb.f;

/* JADX INFO: loaded from: classes8.dex */
public final class b {
    private b() {
    }

    @Nonnull
    public static <T> T a(Context context, Class<T> cls) {
        ComponentCallbacks2 componentCallbacks2A = fb.a.a(context);
        jb.d.d(componentCallbacks2A instanceof jb.c, "Expected application to implement GeneratedComponentManagerHolder. Check that you're passing in an application context that uses Hilt. Application class found: %s", componentCallbacks2A.getClass());
        jb.b<?> bVarComponentManager = ((jb.c) componentCallbacks2A).componentManager();
        if (!(bVarComponentManager instanceof f)) {
            return (T) dagger.hilt.a.a(componentCallbacks2A, cls);
        }
        jb.d.d(b(cls, EarlyEntryPoint.class), "%s should be called with EntryPoints.get() rather than EarlyEntryPoints.get()", cls.getCanonicalName());
        return cls.cast(((f) bVarComponentManager).r());
    }

    private static boolean b(Class<?> clazz, Class<? extends Annotation> annotationClazz) {
        for (Annotation annotation : clazz.getAnnotations()) {
            if (annotation.annotationType().equals(annotationClazz)) {
                return true;
            }
        }
        return false;
    }
}
