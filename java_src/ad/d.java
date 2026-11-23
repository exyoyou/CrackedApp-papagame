package ad;

import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<Class, WeakReference<c>> f127a = Collections.synchronizedMap(new WeakHashMap());

    public static <T> c<T> a(Class<T> cls) {
        WeakReference<c> weakReference = f127a.get(cls);
        if (weakReference == null) {
            org.aspectj.internal.lang.reflect.b bVar = new org.aspectj.internal.lang.reflect.b(cls);
            f127a.put(cls, new WeakReference<>(bVar));
            return bVar;
        }
        c<T> cVar = weakReference.get();
        if (cVar != null) {
            return cVar;
        }
        org.aspectj.internal.lang.reflect.b bVar2 = new org.aspectj.internal.lang.reflect.b(cls);
        f127a.put(cls, new WeakReference<>(bVar2));
        return bVar2;
    }
}
