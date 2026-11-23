package com.join.mgps.Util;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class BeanUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List<Class<?>> f49370a = new ArrayList<Class<?>>() { // from class: com.join.mgps.Util.BeanUtils.1
        {
            add(Long.class);
            add(Double.class);
            add(Integer.class);
            add(String.class);
            add(Boolean.class);
            add(Date.class);
            add(java.sql.Date.class);
        }
    };

    private static final boolean a(Class<?> cls) {
        return cls.isPrimitive() || f49370a.contains(cls);
    }

    public static void b(Object src, Object dest) {
        HashMap map = new HashMap();
        for (Field field : src.getClass().getDeclaredFields()) {
            try {
                field.setAccessible(true);
                field.getName();
                map.put(field.getName(), field.get(src));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        for (Field field2 : dest.getClass().getDeclaredFields()) {
            if (map.get(field2.getName()) != null) {
                try {
                    field2.set(dest, map.get(field2.getName()));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public static <T> List<T> c(List<?> fromObjList, Class<T> toObjClazz) {
        ArrayList arrayList = new ArrayList(fromObjList.size());
        for (int i10 = 0; i10 < fromObjList.size(); i10++) {
            arrayList.add(g(fromObjList.get(i10), toObjClazz));
        }
        return arrayList;
    }

    public static <T> List<T> d(List<Map<String, ?>> mapList, Class<T> toObjClass) {
        ArrayList arrayList = new ArrayList(mapList.size());
        Iterator<Map<String, ?>> it2 = mapList.iterator();
        while (it2.hasNext()) {
            arrayList.add(f(it2.next(), toObjClass));
        }
        return arrayList;
    }

    public static <T> Map<String, T> e(Map<String, ?> fromObjMap, Class<T> toObjClazz) {
        HashMap map = new HashMap(fromObjMap.size());
        for (String str : fromObjMap.keySet()) {
            map.put(str, g(fromObjMap.get(str), toObjClazz));
        }
        return map;
    }

    public static <T> T f(Map<String, ?> map, Class<T> toObjClass) {
        try {
            Set<String> setKeySet = map.keySet();
            T tNewInstance = toObjClass.newInstance();
            for (String str : setKeySet) {
                try {
                    Object obj = map.get(str);
                    Field declaredField = toObjClass.getDeclaredField(str);
                    declaredField.setAccessible(true);
                    declaredField.set(tNewInstance, obj);
                } catch (Exception unused) {
                }
            }
            return tNewInstance;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T g(Object fromObj, Class<T> toObjClazz) {
        try {
            Class<?> cls = fromObj.getClass();
            if (a(toObjClazz)) {
                return fromObj;
            }
            T tNewInstance = toObjClazz.newInstance();
            for (Field field : toObjClazz.getDeclaredFields()) {
                try {
                    int modifiers = field.getModifiers();
                    if (!Modifier.isFinal(modifiers) && !Modifier.isStatic(modifiers)) {
                        String name = field.getName();
                        Mapping mapping = (Mapping) field.getAnnotation(Mapping.class);
                        if (mapping != null && mapping.name() != null && !mapping.name().trim().equals("")) {
                            name = mapping.name();
                        }
                        field.setAccessible(true);
                        Field declaredField = cls.getDeclaredField(name);
                        declaredField.setAccessible(true);
                        field.set(tNewInstance, declaredField.get(fromObj));
                    }
                } catch (Exception e10) {
                    if (e10 instanceof IllegalArgumentException) {
                        e10.printStackTrace();
                    }
                }
            }
            return tNewInstance;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }
}
