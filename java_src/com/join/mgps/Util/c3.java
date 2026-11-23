package com.join.mgps.Util;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
public class c3 {

    private class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Integer f49532a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f49533b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f49534c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f49535d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f49536e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f49537f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f49538g;

        public a() {
        }

        public a(Integer id2, String address, String name, String descript, String time, String number, String score) {
            this.f49532a = id2;
            this.f49533b = address;
            this.f49534c = name;
            this.f49535d = descript;
            this.f49536e = time;
            this.f49537f = number;
            this.f49538g = score;
        }
    }

    private static String a(String scope, Object obj, List visitedObjs) {
        Iterator it2;
        int size;
        StringBuffer stringBuffer = new StringBuffer("");
        int i10 = 0;
        if (!obj.getClass().isArray()) {
            boolean z10 = obj instanceof Collection;
            boolean z11 = obj instanceof Hashtable;
            boolean z12 = obj instanceof HashMap;
            boolean z13 = obj instanceof HashSet;
            if ((obj instanceof AbstractMap) || z12 || z11) {
                Map map = (Map) obj;
                Set setKeySet = map.keySet();
                if (setKeySet.size() > 0) {
                    for (Object obj2 : setKeySet) {
                        stringBuffer.append(h(scope + "[" + obj2 + "]", map.get(obj2), visitedObjs));
                    }
                } else {
                    stringBuffer.append(scope + "[]: empty\n");
                }
            } else if (z10 || z13) {
                if (z10) {
                    Collection collection = (Collection) obj;
                    it2 = collection.iterator();
                    size = collection.size();
                } else if (z11) {
                    Hashtable hashtable = (Hashtable) obj;
                    it2 = hashtable.values().iterator();
                    size = hashtable.size();
                } else if (z13) {
                    HashSet hashSet = (HashSet) obj;
                    it2 = hashSet.iterator();
                    size = hashSet.size();
                } else if (z12) {
                    HashMap map2 = (HashMap) obj;
                    it2 = map2.values().iterator();
                    size = map2.size();
                } else {
                    it2 = null;
                    size = 0;
                }
                if (size > 0) {
                    while (it2.hasNext()) {
                        stringBuffer.append(h(scope + "[" + i10 + "]", it2.next(), visitedObjs));
                        i10++;
                    }
                } else {
                    stringBuffer.append(scope + "[]: empty\n");
                }
            }
        } else if (Array.getLength(obj) > 0) {
            while (i10 < Array.getLength(obj)) {
                stringBuffer.append(h(scope + "[" + i10 + "]", Array.get(obj, i10), visitedObjs));
                i10++;
            }
        } else {
            stringBuffer.append(scope + "[]: empty\n");
        }
        return stringBuffer.toString();
    }

    private static String b(String scope, Object parentObject, List visitedObjs) {
        StringBuffer stringBuffer = new StringBuffer("");
        try {
            for (Class<?> superclass = parentObject.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                e(superclass.getDeclaredFields(), scope, parentObject, stringBuffer, visitedObjs);
            }
        } catch (IllegalAccessException e10) {
            stringBuffer.append(e10.toString());
        }
        return stringBuffer.toString();
    }

    public static boolean c(Object obj) {
        return obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Hashtable) || (obj instanceof HashMap) || (obj instanceof HashSet) || (obj instanceof List) || (obj instanceof AbstractMap);
    }

    public static boolean d(Object obj) {
        Class<?> cls;
        return ((obj instanceof Boolean) || (obj instanceof Short) || (obj instanceof Byte) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Character) || (obj instanceof Double) || (obj instanceof String) || (cls = obj.getClass()) == Boolean.TYPE || cls == Boolean.class || cls == Short.TYPE || cls == Short.class || cls == Byte.TYPE || cls == Byte.class || cls == Integer.TYPE || cls == Integer.class || cls == Long.TYPE || cls == Long.class || cls == Float.TYPE || cls == Float.class || cls == Character.TYPE || cls == Character.class || cls == Double.TYPE || cls == Double.class || cls == String.class) ? false : true;
    }

    private static void e(Field[] fields, String scope, Object parentObject, StringBuffer buffer, List visitedObjs) throws IllegalAccessException {
        for (int i10 = 0; i10 < fields.length; i10++) {
            if (!fields[i10].getName().equals("__discriminator") && !fields[i10].getName().equals("__uninitialized")) {
                fields[i10].setAccessible(true);
                if (!Modifier.isStatic(fields[i10].getModifiers())) {
                    buffer.append(h(scope + o0.f49827a + fields[i10].getName(), fields[i10].get(parentObject), visitedObjs));
                }
            }
        }
    }

    public static LinkedMultiValueMap<String, String> f(String scope, Object obj) {
        if (obj == null || c(obj)) {
            return null;
        }
        d(obj);
        return null;
    }

    public static String g(String scope, Object obj) {
        if (obj == null) {
            return scope + ": null\n";
        }
        if (c(obj)) {
            return a(scope, obj, new ArrayList());
        }
        if (d(obj)) {
            return b(scope, obj, new ArrayList());
        }
        return scope + ": " + obj.toString() + "\n\r";
    }

    private static String h(String scope, Object obj, List visitedObjs) {
        if (obj == null) {
            return scope + ": null\n";
        }
        if (c(obj)) {
            return a(scope, obj, visitedObjs);
        }
        if (!d(obj)) {
            return scope + ": " + obj.toString() + "\n";
        }
        if (!visitedObjs.contains(obj)) {
            visitedObjs.add(obj);
            return b(scope, obj, visitedObjs);
        }
        return scope + ": <already visited>\n";
    }
}
