package com.sigmob.sdk.base.utils;

import android.os.Build;
import com.airbnb.lottie.parser.moshi.LinkedHashTreeMap;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79732a = "i";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f79733b = "yyyy-MM-dd HH:mm:ss";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map<Class<?>, b> f79734c = new HashMap();

    public static class a implements ParameterizedType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class<?> f79735a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Type[] f79736b;

        public a(Class<?> rawType, Type[] typeArguments) {
            this.f79735a = rawType;
            this.f79736b = typeArguments;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return this.f79736b;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return null;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f79735a;
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Field[] f79737a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Method[] f79738b;

        b(Field[] fields, Method[] methods) {
            this.f79737a = fields;
            this.f79738b = methods;
        }
    }

    private static Object a(Object value, Class<?> targetClass) {
        if (value != null && !targetClass.isInstance(value)) {
            if (g(targetClass)) {
                return d(value);
            }
            if (targetClass.isEnum()) {
                String string = value.toString();
                try {
                    Object[] enumConstants = targetClass.getEnumConstants();
                    if (enumConstants == null) {
                        return null;
                    }
                    for (Object obj : enumConstants) {
                        Enum r10 = (Enum) obj;
                        if (r10.name().equals(string)) {
                            return r10;
                        }
                    }
                    for (Object obj2 : enumConstants) {
                        Enum r11 = (Enum) obj2;
                        if (r11.name().equalsIgnoreCase(string)) {
                            return r11;
                        }
                    }
                } catch (Exception unused) {
                    k.f(f79732a, "convertValue: enum parse error, value = " + string + ", targetClass = " + targetClass.getName(), new Object[0]);
                }
                return null;
            }
            String string2 = value.toString();
            if (targetClass == String.class) {
                return string2;
            }
            if (targetClass != Integer.class) {
                try {
                    if (targetClass != Integer.TYPE) {
                        if (targetClass != Long.class && targetClass != Long.TYPE) {
                            if (targetClass != Float.class && targetClass != Float.TYPE) {
                                if (targetClass != Double.class && targetClass != Double.TYPE) {
                                    if (targetClass != Boolean.class && targetClass != Boolean.TYPE) {
                                        if (targetClass != Short.class && targetClass != Short.TYPE) {
                                            if (targetClass != Byte.class && targetClass != Byte.TYPE) {
                                                if (targetClass != Character.class && targetClass != Character.TYPE) {
                                                    if (targetClass == BigDecimal.class) {
                                                        return new BigDecimal(string2);
                                                    }
                                                    if (targetClass == BigInteger.class) {
                                                        return new BigInteger(string2);
                                                    }
                                                }
                                                return Character.valueOf(string2.charAt(0));
                                            }
                                            return Byte.valueOf(Byte.parseByte(string2));
                                        }
                                        return Short.valueOf(Short.parseShort(string2));
                                    }
                                    return Boolean.valueOf(Boolean.parseBoolean(string2));
                                }
                                return Double.valueOf(Double.parseDouble(string2));
                            }
                            return Float.valueOf(Float.parseFloat(string2));
                        }
                        return Long.valueOf(Long.parseLong(string2));
                    }
                } catch (NumberFormatException unused2) {
                    k.f(f79732a, "convertValue: number format error, value = " + string2 + ", targetClass = " + targetClass.getName(), new Object[0]);
                } catch (Exception e10) {
                    k.f(f79732a, "convertValue: error = " + e10.getMessage(), new Object[0]);
                }
            }
            return Integer.valueOf(Integer.parseInt(string2));
        }
        return value;
    }

    private static <T extends Enum<T>> T b(Object obj, Class<T> cls) {
        if (obj == null) {
            return null;
        }
        try {
            return (T) Enum.valueOf(cls, obj.toString());
        } catch (IllegalArgumentException unused) {
            try {
                String string = obj.toString();
                T[] enumConstants = cls.getEnumConstants();
                if (enumConstants == null) {
                    return null;
                }
                for (T t10 : enumConstants) {
                    if (t10.name().equalsIgnoreCase(string)) {
                        return t10;
                    }
                }
            } catch (Exception unused2) {
            }
            k.f(f79732a, "parseEnum: invalid enum value, value = " + obj + ", enumClass = " + cls.getName(), new Object[0]);
            return null;
        }
    }

    public static JSONObject c(Object obj) {
        try {
            String strA = a(obj);
            k.c(f79732a, "bean2JSONObject: json = " + strA, new Object[0]);
            return new JSONObject(strA);
        } catch (JSONException e10) {
            k.d(f79732a, "bean2JSONObject: error = ", e10, new Object[0]);
            return null;
        }
    }

    private static Date d(Object value) {
        if (value == null) {
            return null;
        }
        String string = value.toString();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(f79733b, Locale.getDefault());
        try {
            return simpleDateFormat.parse(string);
        } catch (ParseException unused) {
            String[] strArr = {"yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss.SSS", "yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy.MM.dd", "yyyy.MM.dd HH:mm:ss", "EEE, dd MMM yyyy HH:mm:ss z", "EEE, dd MMM yyyy HH:mm:ss Z"};
            for (int i10 = 0; i10 < 8; i10++) {
                try {
                    simpleDateFormat.applyPattern(strArr[i10]);
                    return simpleDateFormat.parse(string);
                } catch (ParseException unused2) {
                }
            }
            k.f(f79732a, "parseDate: invalid date format, value = " + string, new Object[0]);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
    
        if (r1 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
    
        if (r1 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
    
        r2.set(r0, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
    
        a(r0, r1, r5, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0032, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void e(java.lang.Object r0, java.lang.reflect.Method r1, java.lang.reflect.Field r2, org.json.JSONObject r3, java.lang.String r4, java.lang.Class<?> r5) throws java.lang.Exception {
        /*
            java.lang.Object r3 = r3.opt(r4)
            boolean r4 = f(r3)
            if (r4 == 0) goto L32
            boolean r4 = r3 instanceof org.json.JSONObject
            if (r4 == 0) goto L1f
            java.lang.Class<java.lang.Object> r4 = java.lang.Object.class
            if (r5 != r4) goto L15
            java.lang.Class<java.util.Map> r4 = java.util.Map.class
            goto L16
        L15:
            r4 = r5
        L16:
            org.json.JSONObject r3 = (org.json.JSONObject) r3
            java.lang.Object r3 = a(r3, r4)
            if (r1 != 0) goto L2f
            goto L2b
        L1f:
            java.lang.Class r4 = r3.getClass()
            boolean r4 = k(r4)
            if (r4 == 0) goto L32
            if (r1 != 0) goto L2f
        L2b:
            r2.set(r0, r3)
            goto L32
        L2f:
            a(r0, r1, r5, r3)
        L32:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.utils.i.e(java.lang.Object, java.lang.reflect.Method, java.lang.reflect.Field, org.json.JSONObject, java.lang.String, java.lang.Class):void");
    }

    private static void f(Object obj, Method method, Field field, JSONObject jo, String fieldName, Class<?> targetClazz) throws Exception {
        Object objOpt = jo.opt(fieldName);
        if (f(objOpt)) {
            if (method == null) {
                field.set(obj, new SimpleDateFormat(f79733b, Locale.getDefault()).parse(objOpt.toString()));
            } else {
                a(obj, method, targetClazz, objOpt);
            }
        }
    }

    public static boolean g(Class<?> clazz) {
        return f((Object) clazz) && Date.class.isAssignableFrom(clazz);
    }

    public static boolean h(Class<?> clazz) {
        return f((Object) clazz) && List.class.isAssignableFrom(clazz);
    }

    private static b i(Class<?> clazz) {
        Map<Class<?>, b> map = f79734c;
        b bVar = map.get(clazz);
        if (bVar == null) {
            synchronized (i.class) {
                bVar = map.get(clazz);
                if (bVar == null) {
                    b bVar2 = new b(clazz.getDeclaredFields(), clazz.getDeclaredMethods());
                    map.put(clazz, bVar2);
                    bVar = bVar2;
                }
            }
        }
        return bVar;
    }

    private static <T> T j(Class<T> cls) {
        if (cls == null) {
            return null;
        }
        if (!cls.isInterface()) {
            try {
                return cls.newInstance();
            } catch (Exception e10) {
                k.d(f79732a, "newInstance: error = ", e10, new Object[0]);
                return null;
            }
        }
        if (cls.equals(Map.class)) {
            return (T) new HashMap();
        }
        if (cls.equals(List.class)) {
            return (T) new ArrayList();
        }
        if (cls.equals(Set.class)) {
            return (T) new HashSet();
        }
        k.f(f79732a, "newInstance: unknown interface = " + cls, new Object[0]);
        return null;
    }

    private static boolean k(Class<?> clazz) {
        return a(clazz) || b(clazz) || c(clazz);
    }

    private static boolean l(Class<?> clazz) {
        return (!f((Object) clazz) || k(clazz) || d(clazz) || e(clazz) || f(clazz)) ? false : true;
    }

    private static Object a(Object jsonValue, Type targetType) {
        if (jsonValue == null || targetType == null) {
            return null;
        }
        try {
            if (targetType instanceof Class) {
                Class cls = (Class) targetType;
                if (!(jsonValue instanceof JSONObject)) {
                    return jsonValue instanceof JSONArray ? jsonValue : a(jsonValue, (Class<?>) cls);
                }
                try {
                    return a((JSONObject) jsonValue, cls);
                } catch (JSONException e10) {
                    k.f(f79732a, String.format("parseJsonValue: Failed to parse JSONObject to %s, value = %s, error = %s", cls.getName(), jsonValue, e10.getMessage()), new Object[0]);
                    return jsonValue;
                }
            }
            if (targetType instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) targetType;
                Class cls2 = (Class) parameterizedType.getRawType();
                if (Map.class.isAssignableFrom(cls2)) {
                    if (jsonValue instanceof JSONObject) {
                        return a((JSONObject) jsonValue, parameterizedType);
                    }
                    k.f(f79732a, String.format("parseJsonValue: Expected JSONObject for Map type, got %s, value = %s", jsonValue.getClass().getName(), jsonValue), new Object[0]);
                } else if (Collection.class.isAssignableFrom(cls2)) {
                    if (jsonValue instanceof JSONArray) {
                        return a((JSONArray) jsonValue, parameterizedType);
                    }
                    k.f(f79732a, String.format("parseJsonValue: Expected JSONArray for Collection type, got %s, value = %s", jsonValue.getClass().getName(), jsonValue), new Object[0]);
                }
            }
            return jsonValue;
        } catch (Exception e11) {
            k.f(f79732a, String.format("parseJsonValue: Unexpected error when parsing %s to %s, error = %s", jsonValue, Build.VERSION.SDK_INT >= 28 ? targetType.getTypeName() : targetType.getClass().getName(), e11.getMessage()), new Object[0]);
        }
    }

    public static Map<String, Object> b(Object obj) {
        Object objInvoke;
        Class<?> cls = obj.getClass();
        HashMap map = new HashMap();
        b bVarI = i(cls);
        Method[] methodArr = bVarI.f79738b;
        for (Field field : bVarI.f79737a) {
            try {
                String name = field.getName();
                Class<?> type = field.getType();
                String strA = a(name, "get");
                if (a(methodArr, strA)) {
                    objInvoke = cls.getMethod(strA, new Class[0]).invoke(obj, new Object[0]);
                } else {
                    boolean zIsAccessible = field.isAccessible();
                    if (!zIsAccessible) {
                        field.setAccessible(true);
                    }
                    Object obj2 = field.get(obj);
                    if (!zIsAccessible) {
                        field.setAccessible(false);
                    }
                    objInvoke = obj2;
                }
                if (objInvoke != null) {
                    if (Date.class.isAssignableFrom(type)) {
                        objInvoke = new SimpleDateFormat(f79733b, Locale.getDefault()).format((Date) objInvoke);
                    }
                    map.put(field.getName(), objInvoke);
                }
            } catch (Exception e10) {
                k.d(f79732a, "bean2Map: error = ", e10, new Object[0]);
            }
        }
        return map;
    }

    private static void c(Object obj, Method method, Field field, JSONObject jo, String fieldName, Class<?> targetClazz) throws Exception {
        JSONObject jSONObjectOptJSONObject = jo.optJSONObject(fieldName);
        if (f(jSONObjectOptJSONObject)) {
            Type typeA = a(field, 1);
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object objOpt = jSONObjectOptJSONObject.opt(next);
                Object objA = a(objOpt, typeA);
                if (objA != null) {
                    objOpt = objA;
                }
                map.put(next, objOpt);
            }
            if (method != null) {
                a(obj, method, targetClazz, map);
                return;
            }
            field.setAccessible(true);
            field.set(obj, map);
            field.setAccessible(false);
        }
    }

    private static void d(Object obj, Method method, Field field, JSONObject jo, String fieldName, Class<?> targetClazz) throws Exception {
        Object objOpt = jo.opt(fieldName);
        if (f(objOpt)) {
            Object objA = a(objOpt, targetClazz);
            if (method == null) {
                field.set(obj, objA);
            } else {
                a(obj, method, targetClazz, objA);
            }
        }
    }

    public static boolean e(Class<?> clazz) {
        return f((Object) clazz) && Collection.class.isAssignableFrom(clazz);
    }

    public static boolean f(Class<?> clazz) {
        return f((Object) clazz) && Map.class.isAssignableFrom(clazz);
    }

    public static <T> T a(String str, Class<T> cls) throws JSONException {
        if (cls == null || str == null || str.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        if (e(jSONObject)) {
            return null;
        }
        return (T) a(jSONObject, (Class) cls);
    }

    private static void b(Object obj, Method method, Field field, JSONObject jo, String fieldName, Class<?> targetClazz) throws Exception {
        JSONArray jSONArrayOptJSONArray = jo.optJSONArray(fieldName);
        if (f(jSONArrayOptJSONArray)) {
            Type typeA = a(field, 0);
            Collection<?> collectionA = typeA instanceof Class ? a(jSONArrayOptJSONArray, targetClazz, (Class) typeA) : a(jSONArrayOptJSONArray, (ParameterizedType) field.getGenericType());
            if (method == null) {
                field.set(obj, collectionA);
            } else {
                a(obj, method, targetClazz, collectionA);
            }
        }
    }

    private static void c(JSONStringer js, Object obj) {
        Object objInvoke;
        try {
            js.object();
            Class<?> cls = obj.getClass();
            b bVarI = i(cls);
            Method[] methodArr = bVarI.f79738b;
            for (Field field : bVarI.f79737a) {
                try {
                    if (!Modifier.isStatic(field.getModifiers())) {
                        String name = field.getName();
                        Class<?> type = field.getType();
                        String strA = a(name, "get");
                        if (a(methodArr, strA)) {
                            objInvoke = cls.getMethod(strA, new Class[0]).invoke(obj, new Object[0]);
                        } else {
                            boolean zIsAccessible = field.isAccessible();
                            if (!zIsAccessible) {
                                field.setAccessible(true);
                            }
                            Object obj2 = field.get(obj);
                            if (!zIsAccessible) {
                                field.setAccessible(false);
                            }
                            objInvoke = obj2;
                        }
                        if (objInvoke != null) {
                            if (Date.class.isAssignableFrom(type)) {
                                objInvoke = new SimpleDateFormat(f79733b, Locale.getDefault()).format((Date) objInvoke);
                            }
                            String name2 = field.getName();
                            n nVar = (n) field.getAnnotation(n.class);
                            if (nVar != null) {
                                name2 = nVar.a();
                            }
                            js.key(name2);
                            a(js, objInvoke);
                        }
                    }
                } catch (Exception e10) {
                    k.d(f79732a, "serializeObject: error = ", e10, new Object[0]);
                }
            }
            js.endObject();
        } catch (Exception e11) {
            k.d(f79732a, "serializeObject: error = ", e11, new Object[0]);
        }
    }

    public static boolean d(Class<?> clazz) {
        return f((Object) clazz) && clazz.isArray();
    }

    private static boolean e(Object obj) {
        if (obj instanceof JSONObject) {
            return JSONObject.NULL.equals(obj);
        }
        return obj == null;
    }

    private static boolean f(Object obj) {
        return !e(obj);
    }

    public static <T> T a(String str, Type type) throws JSONException {
        if (type == null || str == null || str.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        if (e(jSONObject)) {
            return null;
        }
        return (T) a(jSONObject, type);
    }

    private static void b(JSONStringer js, Object array) {
        try {
            js.array();
            for (int i10 = 0; i10 < Array.getLength(array); i10++) {
                a(js, Array.get(array, i10));
            }
            js.endArray();
        } catch (Exception e10) {
            k.d(f79732a, "serializeArray: error = ", e10, new Object[0]);
        }
    }

    public static boolean c(Class<?> clazz) {
        return f((Object) clazz) && (String.class.isAssignableFrom(clazz) || Character.TYPE.isAssignableFrom(clazz) || Character.class.isAssignableFrom(clazz));
    }

    public static <T> T a(Map<?, ?> map, Class<T> cls) throws JSONException {
        return (T) a(new JSONObject(map), (Class) cls);
    }

    public static boolean b(Class<?> clazz) {
        return f((Object) clazz) && (Byte.TYPE.isAssignableFrom(clazz) || Short.TYPE.isAssignableFrom(clazz) || Integer.TYPE.isAssignableFrom(clazz) || Long.TYPE.isAssignableFrom(clazz) || Float.TYPE.isAssignableFrom(clazz) || Double.TYPE.isAssignableFrom(clazz) || Number.class.isAssignableFrom(clazz));
    }

    public static <T> T a(JSONObject jSONObject, Class<T> cls) throws JSONException {
        T t10;
        if (cls == null || e(jSONObject) || (t10 = (T) j(cls)) == null) {
            return null;
        }
        if (!f((Class<?>) cls)) {
            b bVarI = i(cls);
            Method[] methodArr = bVarI.f79738b;
            Field[] fieldArr = bVarI.f79737a;
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObject.opt(next);
                for (Field field : fieldArr) {
                    String name = field.getName();
                    n nVar = (n) field.getAnnotation(n.class);
                    String strA = nVar == null ? name : nVar.a();
                    if (!t.b(strA, next)) {
                        String strA2 = a(name, "set");
                        if (!a(methodArr, strA2)) {
                            field.setAccessible(true);
                            if (f(jSONObject.opt(strA))) {
                                a(t10, (Method) null, field, jSONObject);
                            }
                            field.setAccessible(false);
                            break;
                        }
                        try {
                            a(t10, cls.getMethod(strA2, field.getType()), field, jSONObject);
                            break;
                        } catch (Exception e10) {
                            k.d(f79732a, "parseObject: error = ", e10, new Object[0]);
                            break;
                        }
                    }
                }
            }
        } else {
            a(t10, jSONObject);
        }
        return t10;
    }

    public static <T> T[] b(String str, Class<T> cls) {
        JSONArray jSONArray;
        if (cls == null || str == null || str.isEmpty()) {
            return null;
        }
        try {
            jSONArray = new JSONArray(str);
        } catch (JSONException e10) {
            k.d(f79732a, "parseArray: error = ", e10, new Object[0]);
            jSONArray = null;
        }
        if (e(jSONArray)) {
            return null;
        }
        return (T[]) a(jSONArray, (Class) cls);
    }

    private static Object a(JSONObject jo, String key, Field field, Type resolvedType) {
        Object objOpt = jo.opt(key);
        if (objOpt == null) {
            return null;
        }
        if (!(resolvedType instanceof Class)) {
            if (resolvedType instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) resolvedType;
                Class cls = (Class) parameterizedType.getRawType();
                if (e((Class<?>) cls)) {
                    JSONArray jSONArrayOptJSONArray = jo.optJSONArray(key);
                    if (f(jSONArrayOptJSONArray)) {
                        return a(jSONArrayOptJSONArray, parameterizedType);
                    }
                    return null;
                }
                if (f((Class<?>) cls)) {
                    JSONObject jSONObjectOptJSONObject = jo.optJSONObject(key);
                    if (f(jSONObjectOptJSONObject)) {
                        return a(jSONObjectOptJSONObject, parameterizedType);
                    }
                    return null;
                }
                if (objOpt instanceof JSONObject) {
                    try {
                        return a((JSONObject) objOpt, resolvedType);
                    } catch (JSONException unused) {
                        return objOpt;
                    }
                }
            }
            return a(objOpt, resolvedType);
        }
        Class<Map> cls2 = (Class) resolvedType;
        if (d((Class<?>) cls2)) {
            JSONArray jSONArrayOptJSONArray2 = jo.optJSONArray(key);
            if (f(jSONArrayOptJSONArray2)) {
                return a(jSONArrayOptJSONArray2, (Class) cls2.getComponentType());
            }
            return null;
        }
        if (e((Class<?>) cls2)) {
            JSONArray jSONArrayOptJSONArray3 = jo.optJSONArray(key);
            if (e(jSONArrayOptJSONArray3)) {
                return null;
            }
            Type typeA = a(field, 0);
            return typeA instanceof Class ? a(jSONArrayOptJSONArray3, cls2, (Class) typeA) : a(jSONArrayOptJSONArray3, (ParameterizedType) field.getGenericType());
        }
        if (!f((Class<?>) cls2)) {
            if (!(objOpt instanceof JSONObject)) {
                return a(objOpt, (Class<?>) cls2);
            }
            if (cls2 == Object.class) {
                cls2 = Map.class;
            }
            try {
                return a((JSONObject) objOpt, (Class) cls2);
            } catch (JSONException unused2) {
                return objOpt;
            }
        }
        JSONObject jSONObjectOptJSONObject2 = jo.optJSONObject(key);
        if (e(jSONObjectOptJSONObject2)) {
            return null;
        }
        Type typeA2 = a(field, 1);
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, a(jSONObjectOptJSONObject2.opt(next), typeA2));
        }
        return map;
    }

    public static <T> T a(JSONObject jSONObject, Type type) throws JSONException {
        if (type != null && !e(jSONObject)) {
            if (type instanceof ParameterizedType) {
                k.c(f79732a, "parseObject(Type): type = " + type, new Object[0]);
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Class cls = (Class) parameterizedType.getRawType();
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                T t10 = (T) j(cls);
                if (t10 == null) {
                    return null;
                }
                b bVarI = i(cls);
                Method[] methodArr = bVarI.f79738b;
                Field[] fieldArr = bVarI.f79737a;
                TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObject.opt(next);
                    for (Field field : fieldArr) {
                        String name = field.getName();
                        n nVar = (n) field.getAnnotation(n.class);
                        if (!t.b(nVar == null ? name : nVar.a(), next)) {
                            try {
                                Type typeA = a(field.getGenericType(), typeParameters, actualTypeArguments);
                                String strA = a(name, "set");
                                if (!a(methodArr, strA)) {
                                    field.setAccessible(true);
                                    Object objA = a(jSONObject, next, field, typeA);
                                    if (f(objA)) {
                                        field.set(t10, objA);
                                    }
                                    field.setAccessible(false);
                                    break;
                                }
                                Method method = cls.getMethod(strA, field.getType());
                                Object objA2 = a(jSONObject, next, field, typeA);
                                if (!f(objA2)) {
                                    break;
                                }
                                a(t10, method, field.getType(), objA2);
                                break;
                            } catch (Exception e10) {
                                k.d(f79732a, "parseObject(Type): error = ", e10, new Object[0]);
                            }
                        }
                    }
                }
                return t10;
            }
            if (type instanceof Class) {
                return (T) a(jSONObject, (Class) type);
            }
        }
        return null;
    }

    public static String a(Object obj) {
        JSONStringer jSONStringer = new JSONStringer();
        a(jSONStringer, obj);
        return jSONStringer.toString();
    }

    public static String a(String fieldName, String methodType) {
        if (fieldName == null || fieldName.isEmpty()) {
            return null;
        }
        return methodType + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
    }

    private static Type a(Field field, int index) {
        Type genericType = field.getGenericType();
        if (!(genericType instanceof ParameterizedType)) {
            return null;
        }
        Type[] actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments();
        if (actualTypeArguments.length > index) {
            return actualTypeArguments[index];
        }
        return null;
    }

    private static Type a(Type fieldType, TypeVariable<?>[] typeParams, Type[] typeArgs) {
        int i10 = 0;
        if (fieldType instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) fieldType;
            while (i10 < typeParams.length) {
                if (typeParams[i10].getName().equals(typeVariable.getName())) {
                    return i10 < typeArgs.length ? typeArgs[i10] : Object.class;
                }
                i10++;
            }
            return Object.class;
        }
        if (!(fieldType instanceof ParameterizedType)) {
            return fieldType;
        }
        ParameterizedType parameterizedType = (ParameterizedType) fieldType;
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        Type[] typeArr = new Type[actualTypeArguments.length];
        while (i10 < actualTypeArguments.length) {
            typeArr[i10] = a(actualTypeArguments[i10], typeParams, typeArgs);
            i10++;
        }
        return new a((Class) parameterizedType.getRawType(), typeArr);
    }

    public static <T> Collection<T> a(String jsonStr, Class<?> collectionClazz, Class<T> genericType) {
        JSONArray jSONArray;
        if (collectionClazz == null || genericType == null || jsonStr == null || jsonStr.isEmpty()) {
            return null;
        }
        try {
            int iIndexOf = jsonStr.indexOf("[");
            String strSubstring = iIndexOf == -1 ? null : jsonStr.substring(iIndexOf);
            if (!t.a((CharSequence) strSubstring)) {
                jsonStr = strSubstring;
            }
            jSONArray = new JSONArray(jsonStr);
        } catch (JSONException e10) {
            k.d(f79732a, "parseCollection: error = ", e10, new Object[0]);
            jSONArray = null;
        }
        if (e(jSONArray)) {
            return null;
        }
        return a(jSONArray, collectionClazz, genericType);
    }

    public static <T> Collection<T> a(JSONArray jSONArray, Class<?> cls, Class<T> cls2) {
        if (cls == null || cls2 == null || e(jSONArray)) {
            return null;
        }
        LinkedHashTreeMap.e eVar = (Collection<T>) ((Collection) j(cls));
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            try {
                Object objA = jSONArray.get(i10);
                if (objA != null) {
                    if (objA instanceof JSONObject) {
                        objA = a((JSONObject) objA, (Class<Object>) cls2);
                    }
                    eVar.add(objA);
                }
            } catch (JSONException e10) {
                k.d(f79732a, "parseCollection: error = ", e10, new Object[0]);
            }
        }
        return eVar;
    }

    private static Collection<?> a(JSONArray jsonArray, ParameterizedType ptype) {
        ArrayList arrayList = new ArrayList();
        try {
            Type[] actualTypeArguments = ptype.getActualTypeArguments();
            Type type = actualTypeArguments.length > 0 ? actualTypeArguments[0] : Object.class;
            for (int i10 = 0; i10 < jsonArray.length(); i10++) {
                arrayList.add(a(jsonArray.get(i10), type));
            }
        } catch (Exception e10) {
            k.f(f79732a, "parseNestedCollection: error = " + e10.getMessage(), new Object[0]);
        }
        return arrayList;
    }

    private static Map<?, ?> a(JSONObject jsonObject, ParameterizedType ptype) {
        HashMap map = new HashMap();
        try {
            Type[] actualTypeArguments = ptype.getActualTypeArguments();
            Type type = actualTypeArguments.length > 1 ? actualTypeArguments[1] : Object.class;
            Iterator<String> itKeys = jsonObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, a(jsonObject.opt(next), type));
            }
        } catch (Exception e10) {
            k.f(f79732a, "parseNestedMap: error = " + e10.getMessage(), new Object[0]);
        }
        return map;
    }

    public static void a(Object obj, Method method, Class<?> fieldType, Object value) {
        if (obj == null || method == null || value == null || "".equals(value)) {
            return;
        }
        try {
            if (Date.class.isAssignableFrom(fieldType)) {
                method.invoke(obj, new SimpleDateFormat(f79733b, Locale.getDefault()).parse(value.toString()));
            } else {
                method.invoke(obj, value);
            }
        } catch (Exception e10) {
            k.f(f79732a, "setFieldValue: fieldType = " + fieldType + ", method = " + method + ", value = " + value + ", error = " + e10.getMessage(), new Object[0]);
        }
    }

    private static void a(Object obj, Method method, Field field, JSONObject jo) {
        String simpleName = field.getDeclaringClass().getSimpleName();
        String name = field.getName();
        n nVar = (n) field.getAnnotation(n.class);
        if (nVar != null) {
            name = nVar.a();
        }
        Class<?> type = field.getType();
        try {
            if (d(type)) {
                a(obj, method, field, jo, name, type);
            } else if (e(type)) {
                b(obj, method, field, jo, name, type);
            } else if (f(type)) {
                c(obj, method, field, jo, name, type);
            } else if (k(type)) {
                d(obj, method, field, jo, name, type);
            } else if (l(type)) {
                e(obj, method, field, jo, name, type);
            } else if (g(type)) {
                f(obj, method, field, jo, name, type);
            } else {
                k.f(f79732a, "setField: unknown type field = " + field, new Object[0]);
            }
        } catch (Exception e10) {
            String strA = q.a(e10);
            k.f(f79732a, "setField: class = " + simpleName + ", field = " + name + ", error = " + strA, new Object[0]);
        }
    }

    private static void a(Object obj, Method method, Field field, JSONObject jo, String fieldName, Class<?> targetClazz) throws Exception {
        Class<?> componentType = targetClazz.getComponentType();
        JSONArray jSONArrayOptJSONArray = jo.optJSONArray(fieldName);
        if (f(jSONArrayOptJSONArray)) {
            Object[] objArrA = a(jSONArrayOptJSONArray, (Class) componentType);
            if (method == null) {
                field.set(obj, objArrA);
            } else {
                a(obj, method, targetClazz, objArrA);
            }
        }
    }

    public static void a(Object obj, Map<String, String> valMap) {
        Class<?> cls = obj.getClass();
        b bVarI = i(cls);
        Method[] methodArr = bVarI.f79738b;
        for (Field field : bVarI.f79737a) {
            try {
                String name = field.getName();
                String strA = a(name, "set");
                if (a(methodArr, strA)) {
                    Method method = cls.getMethod(strA, field.getType());
                    String str = valMap.get(name);
                    if (str != null && !str.isEmpty()) {
                        method.invoke(obj, a((Object) str, field.getType()));
                    }
                }
            } catch (Exception e10) {
                k.d(f79732a, "setFieldValue: error = ", e10, new Object[0]);
            }
        }
    }

    private static void a(Object obj, JSONObject jo) {
        try {
            Iterator<String> itKeys = jo.keys();
            Map map = (Map) obj;
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jo.get(next));
            }
        } catch (JSONException e10) {
            k.d(f79732a, "setField: error = ", e10, new Object[0]);
        }
    }

    private static void a(JSONStringer js, Object o10) {
        Object obj = 0;
        if (e(o10)) {
            try {
                js.value((Object) null);
                return;
            } catch (JSONException e10) {
                k.d(f79732a, "serialize: error = ", e10, new Object[0]);
                return;
            }
        }
        Class<?> cls = o10.getClass();
        if (l(cls)) {
            c(js, o10);
            return;
        }
        if (d(cls)) {
            b(js, o10);
            return;
        }
        if (e(cls)) {
            a(js, (Collection<?>) o10);
            return;
        }
        if (f(cls)) {
            a(js, (Map<?, ?>) o10);
            return;
        }
        if ((o10 instanceof Float) && Float.isNaN(((Float) o10).floatValue())) {
            o10 = obj;
        }
        try {
            js.value(((o10 instanceof Double) && Double.isNaN(((Double) o10).doubleValue())) ? 0 : o10);
        } catch (JSONException e11) {
            k.d(f79732a, "serialize: error = ", e11, new Object[0]);
        }
    }

    private static void a(JSONStringer js, Collection<?> collection) {
        try {
            js.array();
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                a(js, it2.next());
            }
            js.endArray();
        } catch (Exception e10) {
            k.d(f79732a, "serializeCollect: error = ", e10, new Object[0]);
        }
    }

    private static void a(JSONStringer js, Map<?, ?> map) {
        try {
            js.object();
            for (Map.Entry<?, ?> entry : map.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                js.key(key.toString());
                a(js, value);
            }
            js.endObject();
        } catch (Exception e10) {
            k.d(f79732a, "serializeMap: error = ", e10, new Object[0]);
        }
    }

    public static boolean a(Class<?> clazz) {
        return f((Object) clazz) && (Boolean.TYPE.isAssignableFrom(clazz) || Boolean.class.isAssignableFrom(clazz));
    }

    public static boolean a(Method[] methods, String fieldMethod) {
        for (Method method : methods) {
            if (fieldMethod.equals(method.getName())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] a(JSONArray jSONArray, Class<T> cls) {
        if (cls == null || e(jSONArray)) {
            return null;
        }
        int length = jSONArray.length();
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, length));
        for (int i10 = 0; i10 < length; i10++) {
            try {
                Object objA = jSONArray.get(i10);
                if (objA != null) {
                    if (objA instanceof JSONObject) {
                        objA = a((JSONObject) objA, (Class<Object>) cls);
                    }
                    tArr[i10] = objA;
                }
            } catch (Exception e10) {
                k.d(f79732a, "parseArray: error = ", e10, new Object[0]);
            }
        }
        return tArr;
    }
}
