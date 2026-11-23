package sa;

import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: loaded from: classes8.dex */
public class v {
    public static Class<?>[] a(Class<?> cls) {
        if (cls == null) {
            return new Class[0];
        }
        HashSet hashSet = new HashSet(Arrays.asList(cls.getInterfaces()));
        while (cls.getSuperclass() != Object.class && (cls = cls.getSuperclass()) != null) {
            hashSet.addAll(Arrays.asList(cls.getInterfaces()));
        }
        Class<?>[] clsArr = new Class[hashSet.size()];
        hashSet.toArray(clsArr);
        return clsArr;
    }
}
