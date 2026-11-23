package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.deserializer.r;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.swift.sandhook.annotation.MethodReflectParams;
import com.umeng.analytics.pro.bm;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.security.AccessControlException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes7.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f6857a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f6858b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ConcurrentMap<String, Class<?>> f6859c;

    static {
        try {
            String property = System.getProperty("fastjson.compatibleWithJavaBean");
            if ("true".equals(property)) {
                f6857a = true;
            } else if ("false".equals(property)) {
                f6857a = false;
            }
        } catch (Throwable unused) {
        }
        f6859c = new ConcurrentHashMap();
        a();
    }

    public static String A(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        if (str.length() > 1 && Character.isUpperCase(str.charAt(1)) && Character.isUpperCase(str.charAt(0))) {
            return str;
        }
        char[] charArray = str.toCharArray();
        charArray[0] = Character.toLowerCase(charArray[0]);
        return new String(charArray);
    }

    public static Class<?> B(Type type) {
        if (type.getClass() == Class.class) {
            return (Class) type;
        }
        return type instanceof ParameterizedType ? B(((ParameterizedType) type).getRawType()) : Object.class;
    }

    public static Field C(Class<?> cls, String str) {
        for (Field field : cls.getDeclaredFields()) {
            if (str.equals(field.getName())) {
                return field;
            }
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass == null || superclass == Object.class) {
            return null;
        }
        return C(superclass, str);
    }

    public static Type D(Type type) {
        return (!(type instanceof ParameterizedType) && (type instanceof Class)) ? D(((Class) type).getGenericSuperclass()) : type;
    }

    public static JSONType E(Class<?> cls) {
        return (JSONType) cls.getAnnotation(JSONType.class);
    }

    public static int F(Class<?> cls) {
        JSONType jSONType = (JSONType) cls.getAnnotation(JSONType.class);
        if (jSONType == null) {
            return 0;
        }
        return Feature.of(jSONType.parseFeatures());
    }

    public static int G(Class<?> cls) {
        JSONType jSONType = (JSONType) cls.getAnnotation(JSONType.class);
        if (jSONType == null) {
            return 0;
        }
        return SerializerFeature.of(jSONType.serialzeFeatures());
    }

    public static JSONField H(Class<?> cls, Method method) {
        boolean z10;
        JSONField jSONField;
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Method method2 : cls2.getMethods()) {
                if (method2.getName().equals(method.getName()) && method2.getParameterTypes().length == method.getParameterTypes().length) {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= method2.getParameterTypes().length) {
                            z10 = true;
                            break;
                        }
                        if (!method2.getParameterTypes()[i10].equals(method.getParameterTypes()[i10])) {
                            z10 = false;
                            break;
                        }
                        i10++;
                    }
                    if (z10 && (jSONField = (JSONField) method2.getAnnotation(JSONField.class)) != null) {
                        return jSONField;
                    }
                }
            }
        }
        return null;
    }

    public static boolean I(Type type) {
        if (type instanceof ParameterizedType) {
            return true;
        }
        if (type instanceof Class) {
            return I(((Class) type).getGenericSuperclass());
        }
        return false;
    }

    private static boolean J(Class<?> cls, String str) {
        JSONType jSONType = (JSONType) cls.getAnnotation(JSONType.class);
        if (jSONType != null && jSONType.ignores() != null) {
            for (String str2 : jSONType.ignores()) {
                if (str.equalsIgnoreCase(str2)) {
                    return true;
                }
            }
        }
        return (cls.getSuperclass() == Object.class || cls.getSuperclass() == null || !J(cls.getSuperclass(), str)) ? false : true;
    }

    public static Class<?> K(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        Class<?> cls = f6859c.get(str);
        if (cls != null) {
            return cls;
        }
        if (str.charAt(0) == '[') {
            return Array.newInstance(K(str.substring(1)), 0).getClass();
        }
        if (str.startsWith("L") && str.endsWith(";")) {
            return K(str.substring(1, str.length() - 1));
        }
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader != null) {
                cls = contextClassLoader.loadClass(str);
                b(str, cls);
                return cls;
            }
        } catch (Throwable unused) {
        }
        try {
            cls = Class.forName(str);
            b(str, cls);
            return cls;
        } catch (Throwable unused2) {
            return cls;
        }
    }

    static void L(AccessibleObject accessibleObject) {
        if (f6858b && !accessibleObject.isAccessible()) {
            try {
                accessibleObject.setAccessible(true);
            } catch (AccessControlException unused) {
                f6858b = false;
            }
        }
    }

    public static Type M(Type type) {
        if (!(type instanceof GenericArrayType)) {
            return type;
        }
        Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
        if (genericComponentType == Byte.TYPE) {
            return byte[].class;
        }
        return genericComponentType == Character.TYPE ? char[].class : type;
    }

    public static void a() {
        f6859c.put(MethodReflectParams.BYTE, Byte.TYPE);
        f6859c.put(MethodReflectParams.SHORT, Short.TYPE);
        f6859c.put("int", Integer.TYPE);
        f6859c.put(MethodReflectParams.LONG, Long.TYPE);
        f6859c.put("float", Float.TYPE);
        f6859c.put(MethodReflectParams.DOUBLE, Double.TYPE);
        f6859c.put("boolean", Boolean.TYPE);
        f6859c.put(MethodReflectParams.CHAR, Character.TYPE);
        f6859c.put("[byte", byte[].class);
        f6859c.put("[short", short[].class);
        f6859c.put("[int", int[].class);
        f6859c.put("[long", long[].class);
        f6859c.put("[float", float[].class);
        f6859c.put("[double", double[].class);
        f6859c.put("[boolean", boolean[].class);
        f6859c.put("[char", char[].class);
        f6859c.put(HashMap.class.getName(), HashMap.class);
    }

    public static void b(String str, Class<?> cls) {
        if (str == null) {
            str = cls.getName();
        }
        f6859c.put(str, cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T c(Object obj, Class<T> cls, com.alibaba.fastjson.parser.k kVar) {
        Object obj2;
        if (obj == 0) {
            return null;
        }
        if (cls == null) {
            throw new IllegalArgumentException("clazz is null");
        }
        if (cls == obj.getClass()) {
            return obj;
        }
        if (obj instanceof Map) {
            if (cls == Map.class) {
                return obj;
            }
            Map map = (Map) obj;
            return (cls != Object.class || map.containsKey(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY)) ? (T) r(map, cls, kVar) : obj;
        }
        if (cls.isArray()) {
            if (obj instanceof Collection) {
                Collection collection = (Collection) obj;
                T t10 = (T) Array.newInstance(cls.getComponentType(), collection.size());
                Iterator it2 = collection.iterator();
                int i10 = 0;
                while (it2.hasNext()) {
                    Array.set(t10, i10, c(it2.next(), cls.getComponentType(), kVar));
                    i10++;
                }
                return t10;
            }
            if (cls == byte[].class) {
                return (T) j(obj);
            }
        }
        if (cls.isAssignableFrom(obj.getClass())) {
            return obj;
        }
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            return (T) h(obj);
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            return (T) i(obj);
        }
        if (cls == Short.TYPE || cls == Short.class) {
            return (T) t(obj);
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return (T) p(obj);
        }
        if (cls == Long.TYPE || cls == Long.class) {
            return (T) s(obj);
        }
        if (cls == Float.TYPE || cls == Float.class) {
            return (T) o(obj);
        }
        if (cls == Double.TYPE || cls == Double.class) {
            return (T) m(obj);
        }
        if (cls == String.class) {
            return (T) v(obj);
        }
        if (cls == BigDecimal.class) {
            return (T) f(obj);
        }
        if (cls == BigInteger.class) {
            return (T) g(obj);
        }
        if (cls == Date.class) {
            return (T) l(obj);
        }
        if (cls == java.sql.Date.class) {
            return (T) u(obj);
        }
        if (cls == Timestamp.class) {
            return (T) w(obj);
        }
        if (cls.isEnum()) {
            return (T) n(obj, cls, kVar);
        }
        if (!Calendar.class.isAssignableFrom(cls)) {
            if ((obj instanceof String) && ((String) obj).length() == 0) {
                return null;
            }
            throw new JSONException("can not cast to : " + cls.getName());
        }
        Date dateL = l(obj);
        if (cls == Calendar.class) {
            obj2 = (T) Calendar.getInstance();
        } else {
            try {
                obj2 = (T) ((Calendar) cls.newInstance());
            } catch (Exception e10) {
                throw new JSONException("can not cast to : " + cls.getName(), e10);
            }
        }
        ((Calendar) obj2).setTime(dateL);
        return (T) obj2;
    }

    /* JADX WARN: Type inference failed for: r8v5, types: [T, java.util.HashMap, java.util.Map] */
    public static final <T> T d(Object obj, ParameterizedType parameterizedType, com.alibaba.fastjson.parser.k kVar) {
        Type rawType = parameterizedType.getRawType();
        if (rawType == Set.class || rawType == HashSet.class || rawType == TreeSet.class || rawType == List.class || rawType == ArrayList.class) {
            Type type = parameterizedType.getActualTypeArguments()[0];
            if (obj instanceof Iterable) {
                T t10 = (rawType == Set.class || rawType == HashSet.class) ? (T) new HashSet() : rawType == TreeSet.class ? (T) new TreeSet() : (T) new ArrayList();
                Iterator<T> it2 = ((Iterable) obj).iterator();
                while (it2.hasNext()) {
                    ((Collection) t10).add(e(it2.next(), type, kVar));
                }
                return t10;
            }
        }
        if (rawType == Map.class || rawType == HashMap.class) {
            Type type2 = parameterizedType.getActualTypeArguments()[0];
            Type type3 = parameterizedType.getActualTypeArguments()[1];
            if (obj instanceof Map) {
                ?? r10 = (T) new HashMap();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    r10.put(e(entry.getKey(), type2, kVar), e(entry.getValue(), type3, kVar));
                }
                return r10;
            }
        }
        if ((obj instanceof String) && ((String) obj).length() == 0) {
            return null;
        }
        if (parameterizedType.getActualTypeArguments().length == 1 && (parameterizedType.getActualTypeArguments()[0] instanceof WildcardType)) {
            return (T) e(obj, rawType, kVar);
        }
        throw new JSONException("can not cast to : " + parameterizedType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T e(Object obj, Type type, com.alibaba.fastjson.parser.k kVar) {
        if (obj == 0) {
            return null;
        }
        if (type instanceof Class) {
            return (T) c(obj, (Class) type, kVar);
        }
        if (type instanceof ParameterizedType) {
            return (T) d(obj, (ParameterizedType) type, kVar);
        }
        if ((obj instanceof String) && ((String) obj).length() == 0) {
            return null;
        }
        if (type instanceof TypeVariable) {
            return obj;
        }
        throw new JSONException("can not cast to : " + type);
    }

    public static final BigDecimal f(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof BigDecimal) {
            return (BigDecimal) obj;
        }
        if (obj instanceof BigInteger) {
            return new BigDecimal((BigInteger) obj);
        }
        String string = obj.toString();
        if (string.length() == 0) {
            return null;
        }
        return new BigDecimal(string);
    }

    public static final BigInteger g(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof BigInteger) {
            return (BigInteger) obj;
        }
        if ((obj instanceof Float) || (obj instanceof Double)) {
            return BigInteger.valueOf(((Number) obj).longValue());
        }
        String string = obj.toString();
        if (string.length() == 0) {
            return null;
        }
        return new BigInteger(string);
    }

    public static final Boolean h(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof Number) {
            return Boolean.valueOf(((Number) obj).intValue() == 1);
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0) {
                return null;
            }
            if ("true".equals(str)) {
                return Boolean.TRUE;
            }
            if ("false".equals(str)) {
                return Boolean.FALSE;
            }
            if ("1".equals(str)) {
                return Boolean.TRUE;
            }
            if ("0".equals(str)) {
                return Boolean.FALSE;
            }
        }
        throw new JSONException("can not cast to int, value : " + obj);
    }

    public static final Byte i(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Byte.valueOf(((Number) obj).byteValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0) {
                return null;
            }
            return Byte.valueOf(Byte.parseByte(str));
        }
        throw new JSONException("can not cast to byte, value : " + obj);
    }

    public static final byte[] j(Object obj) {
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        if (obj instanceof String) {
            return c.a((String) obj);
        }
        throw new JSONException("can not cast to int, value : " + obj);
    }

    public static final Character k(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Character) {
            return (Character) obj;
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to byte, value : " + obj);
        }
        String str = (String) obj;
        if (str.length() == 0) {
            return null;
        }
        if (str.length() == 1) {
            return Character.valueOf(str.charAt(0));
        }
        throw new JSONException("can not cast to byte, value : " + obj);
    }

    public static final Date l(Object obj) {
        String str;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Calendar) {
            return ((Calendar) obj).getTime();
        }
        if (obj instanceof Date) {
            return (Date) obj;
        }
        long jLongValue = obj instanceof Number ? ((Number) obj).longValue() : -1L;
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (str2.indexOf(45) != -1) {
                if (str2.length() == com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT.length()) {
                    str = com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT;
                } else if (str2.length() == 10) {
                    str = "yyyy-MM-dd";
                } else {
                    str = str2.length() == 19 ? "yyyy-MM-dd HH:mm:ss" : "yyyy-MM-dd HH:mm:ss.SSS";
                }
                try {
                    return new SimpleDateFormat(str).parse(str2);
                } catch (ParseException unused) {
                    throw new JSONException("can not cast to Date, value : " + str2);
                }
            }
            if (str2.length() == 0) {
                return null;
            }
            jLongValue = Long.parseLong(str2);
        }
        if (jLongValue >= 0) {
            return new Date(jLongValue);
        }
        throw new JSONException("can not cast to Date, value : " + obj);
    }

    public static final Double m(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        if (obj instanceof String) {
            String string = obj.toString();
            if (string.length() == 0) {
                return null;
            }
            return Double.valueOf(Double.parseDouble(string));
        }
        throw new JSONException("can not cast to double, value : " + obj);
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [T, java.lang.Enum] */
    public static final <T> T n(Object obj, Class<T> cls, com.alibaba.fastjson.parser.k kVar) {
        try {
            if (obj instanceof String) {
                String str = (String) obj;
                if (str.length() == 0) {
                    return null;
                }
                return (T) Enum.valueOf(cls, str);
            }
            if (obj instanceof Number) {
                int iIntValue = ((Number) obj).intValue();
                for (Object obj2 : (Object[]) cls.getMethod(HmDataChannelManager.BEHAVIOR_VALUE, new Class[0]).invoke(null, new Object[0])) {
                    ?? r10 = (T) ((Enum) obj2);
                    if (r10.ordinal() == iIntValue) {
                        return r10;
                    }
                }
            }
            throw new JSONException("can not cast to : " + cls.getName());
        } catch (Exception e10) {
            throw new JSONException("can not cast to : " + cls.getName(), e10);
        }
    }

    public static final Float o(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Float.valueOf(((Number) obj).floatValue());
        }
        if (obj instanceof String) {
            String string = obj.toString();
            if (string.length() == 0) {
                return null;
            }
            return Float.valueOf(Float.parseFloat(string));
        }
        throw new JSONException("can not cast to float, value : " + obj);
    }

    public static final Integer p(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (obj instanceof Number) {
            return Integer.valueOf(((Number) obj).intValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(str));
        }
        throw new JSONException("can not cast to int, value : " + obj);
    }

    public static final <T> T q(Object obj, Class<T> cls) {
        return (T) c(obj, cls, com.alibaba.fastjson.parser.k.k());
    }

    public static final <T> T r(Map<String, Object> map, Class<T> cls, com.alibaba.fastjson.parser.k kVar) {
        int iIntValue = 0;
        try {
            if (cls == StackTraceElement.class) {
                String str = (String) map.get("className");
                String str2 = (String) map.get("methodName");
                String str3 = (String) map.get("fileName");
                Number number = (Number) map.get("lineNumber");
                if (number != null) {
                    iIntValue = number.intValue();
                }
                return (T) new StackTraceElement(str, str2, str3, iIntValue);
            }
            Object obj = map.get(com.alibaba.fastjson.a.DEFAULT_TYPE_KEY);
            if (obj instanceof String) {
                String str4 = (String) obj;
                Class<?> clsK = K(str4);
                if (clsK == null) {
                    throw new ClassNotFoundException(str4 + " not found");
                }
                if (!clsK.equals(cls)) {
                    return (T) r(map, clsK, kVar);
                }
            }
            if (cls.isInterface()) {
                return (T) Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{cls}, map instanceof JSONObject ? (JSONObject) map : new JSONObject(map));
            }
            if (kVar == null) {
                kVar = com.alibaba.fastjson.parser.k.k();
            }
            Map<String, r> mapJ = kVar.j(cls);
            Constructor<T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            T tNewInstance = declaredConstructor.newInstance(new Object[0]);
            for (Map.Entry<String, r> entry : mapJ.entrySet()) {
                String key = entry.getKey();
                r value = entry.getValue();
                if (map.containsKey(key)) {
                    Object obj2 = map.get(key);
                    Method methodF = value.f();
                    if (methodF != null) {
                        methodF.invoke(tNewInstance, e(obj2, methodF.getGenericParameterTypes()[0], kVar));
                    } else {
                        Field fieldB = value.b();
                        fieldB.set(tNewInstance, e(obj2, fieldB.getGenericType(), kVar));
                    }
                }
            }
            return tNewInstance;
        } catch (Exception e10) {
            throw new JSONException(e10.getMessage(), e10);
        }
    }

    public static final Long s(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Long.valueOf(((Number) obj).longValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0) {
                return null;
            }
            try {
                return Long.valueOf(Long.parseLong(str));
            } catch (NumberFormatException unused) {
                com.alibaba.fastjson.parser.g gVar = new com.alibaba.fastjson.parser.g(str);
                Calendar calendarJ0 = gVar.W0(false) ? gVar.j0() : null;
                gVar.close();
                if (calendarJ0 != null) {
                    return Long.valueOf(calendarJ0.getTimeInMillis());
                }
            }
        }
        throw new JSONException("can not cast to long, value : " + obj);
    }

    public static final Short t(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Number) {
            return Short.valueOf(((Number) obj).shortValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0) {
                return null;
            }
            return Short.valueOf(Short.parseShort(str));
        }
        throw new JSONException("can not cast to short, value : " + obj);
    }

    public static final java.sql.Date u(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Calendar) {
            return new java.sql.Date(((Calendar) obj).getTimeInMillis());
        }
        if (obj instanceof java.sql.Date) {
            return (java.sql.Date) obj;
        }
        if (obj instanceof Date) {
            return new java.sql.Date(((Date) obj).getTime());
        }
        long jLongValue = obj instanceof Number ? ((Number) obj).longValue() : 0L;
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0) {
                return null;
            }
            jLongValue = Long.parseLong(str);
        }
        if (jLongValue > 0) {
            return new java.sql.Date(jLongValue);
        }
        throw new JSONException("can not cast to Date, value : " + obj);
    }

    public static final String v(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public static final Timestamp w(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Calendar) {
            return new Timestamp(((Calendar) obj).getTimeInMillis());
        }
        if (obj instanceof Timestamp) {
            return (Timestamp) obj;
        }
        if (obj instanceof Date) {
            return new Timestamp(((Date) obj).getTime());
        }
        long jLongValue = obj instanceof Number ? ((Number) obj).longValue() : 0L;
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.length() == 0) {
                return null;
            }
            jLongValue = Long.parseLong(str);
        }
        if (jLongValue > 0) {
            return new Timestamp(jLongValue);
        }
        throw new JSONException("can not cast to Date, value : " + obj);
    }

    public static void x() {
        f6859c.clear();
        a();
    }

    public static List<e> y(Class<?> cls, Map<String, String> map) {
        return z(cls, map, true);
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0240 A[PHI: r3
      0x0240: PHI (r3v18 java.lang.String) = (r3v17 java.lang.String), (r3v20 java.lang.String) binds: [B:121:0x0235, B:123:0x023d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:166:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:168:0x02ef A[LOOP:3: B:167:0x02ed->B:168:0x02ef, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:169:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:172:0x030b A[LOOP:4: B:170:0x0305->B:172:0x030b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:174:0x0317  */
    /* JADX WARN: Code duplicated, block: B:65:0x0131  */
    /* JADX WARN: Code duplicated, block: B:67:0x0137  */
    /* JADX WARN: Code duplicated, block: B:79:0x016d A[PHI: r5 r12 r13
      0x016d: PHI (r5v27 java.lang.String) = 
      (r5v26 java.lang.String)
      (r5v26 java.lang.String)
      (r5v26 java.lang.String)
      (r5v31 java.lang.String)
      (r5v33 java.lang.String)
     binds: [B:66:0x0135, B:68:0x013d, B:73:0x015b, B:75:0x0161, B:77:0x0169] A[DONT_GENERATE, DONT_INLINE]
      0x016d: PHI (r12v10 int) = (r12v6 int), (r12v6 int), (r12v14 int), (r12v14 int), (r12v14 int) binds: [B:66:0x0135, B:68:0x013d, B:73:0x015b, B:75:0x0161, B:77:0x0169] A[DONT_GENERATE, DONT_INLINE]
      0x016d: PHI (r13v8 int) = (r13v4 int), (r13v4 int), (r13v12 int), (r13v12 int), (r13v12 int) binds: [B:66:0x0135, B:68:0x013d, B:73:0x015b, B:75:0x0161, B:77:0x0169] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:81:0x0173  */
    /* JADX WARN: Instruction removed from duplicated block: B:166:0x02eb, please report this as an issue */
    public static List<e> z(Class<?> cls, Map<String, String> map, boolean z10) {
        String[] strArrOrders;
        boolean z11;
        Iterator it2;
        int i10;
        int i11;
        int i12;
        int iOrdinal;
        int iOf;
        String strSubstring;
        JSONField jSONField;
        String strA;
        Field fieldH;
        JSONField jSONField2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Method[] methods = cls.getMethods();
        int length = methods.length;
        int i13 = 0;
        while (i13 < length) {
            Method method = methods[i13];
            String name = method.getName();
            if (Modifier.isStatic(method.getModifiers()) || method.getReturnType().equals(Void.TYPE) || method.getParameterTypes().length != 0 || method.getReturnType() == ClassLoader.class || (method.getName().equals("getMetaClass") && method.getReturnType().getName().equals("groovy.lang.MetaClass"))) {
                methods = methods;
            } else {
                JSONField jSONFieldH = (JSONField) method.getAnnotation(JSONField.class);
                if (jSONFieldH == null) {
                    jSONFieldH = H(cls, method);
                }
                if (jSONFieldH != null) {
                    if (jSONFieldH.serialize()) {
                        iOrdinal = jSONFieldH.ordinal();
                        iOf = SerializerFeature.of(jSONFieldH.serialzeFeatures());
                        if (jSONFieldH.name().length() != 0) {
                            String strName = jSONFieldH.name();
                            if (map == null || (strName = map.get(strName)) != null) {
                                linkedHashMap.put(strName, new e(strName, method, (Field) null, iOrdinal, iOf));
                            }
                        }
                    }
                    methods = methods;
                } else {
                    iOrdinal = 0;
                    iOf = 0;
                }
                if (name.startsWith("get")) {
                    if (name.length() >= 4 && !name.equals("getClass")) {
                        char cCharAt = name.charAt(3);
                        if (Character.isUpperCase(cCharAt)) {
                            if (f6857a) {
                                strA = A(name.substring(3));
                            } else {
                                strA = Character.toLowerCase(name.charAt(3)) + name.substring(4);
                            }
                            if (!J(cls, strA)) {
                                fieldH = com.alibaba.fastjson.parser.k.h(cls, strA);
                                if (fieldH != null || (jSONField2 = (JSONField) fieldH.getAnnotation(JSONField.class)) == null) {
                                    int i14 = iOrdinal;
                                    int i15 = iOf;
                                    if (map != null || (strA = map.get(strA)) != null) {
                                        iOrdinal = i14;
                                        iOf = i15;
                                        linkedHashMap.put(strA, new e(strA, method, fieldH, iOrdinal, iOf));
                                    }
                                } else if (jSONField2.serialize()) {
                                    iOrdinal = jSONField2.ordinal();
                                    iOf = SerializerFeature.of(jSONField2.serialzeFeatures());
                                    if (jSONField2.name().length() != 0) {
                                        strA = jSONField2.name();
                                        if (map == null || (strA = map.get(strA)) != null) {
                                            int i16 = iOrdinal;
                                            int i17 = iOf;
                                            if (map != null) {
                                            }
                                            iOrdinal = i16;
                                            iOf = i17;
                                            linkedHashMap.put(strA, new e(strA, method, fieldH, iOrdinal, iOf));
                                        }
                                    } else {
                                        int i18 = iOrdinal;
                                        int i19 = iOf;
                                        if (map != null) {
                                        }
                                        iOrdinal = i18;
                                        iOf = i19;
                                        linkedHashMap.put(strA, new e(strA, method, fieldH, iOrdinal, iOf));
                                    }
                                }
                            }
                        } else if (cCharAt == '_') {
                            strA = name.substring(4);
                            if (!J(cls, strA)) {
                                fieldH = com.alibaba.fastjson.parser.k.h(cls, strA);
                                if (fieldH != null) {
                                    int i110 = iOrdinal;
                                    int i111 = iOf;
                                    if (map != null) {
                                    }
                                    iOrdinal = i110;
                                    iOf = i111;
                                    linkedHashMap.put(strA, new e(strA, method, fieldH, iOrdinal, iOf));
                                } else {
                                    int i112 = iOrdinal;
                                    int i113 = iOf;
                                    if (map != null) {
                                    }
                                    iOrdinal = i112;
                                    iOf = i113;
                                    linkedHashMap.put(strA, new e(strA, method, fieldH, iOrdinal, iOf));
                                }
                            }
                        } else {
                            if (cCharAt == 'f') {
                                strA = name.substring(3);
                            } else if (name.length() >= 5 && Character.isUpperCase(name.charAt(4))) {
                                strA = A(name.substring(3));
                            }
                            if (!J(cls, strA)) {
                                fieldH = com.alibaba.fastjson.parser.k.h(cls, strA);
                                if (fieldH != null) {
                                    int i114 = iOrdinal;
                                    int i115 = iOf;
                                    if (map != null) {
                                    }
                                    iOrdinal = i114;
                                    iOf = i115;
                                    linkedHashMap.put(strA, new e(strA, method, fieldH, iOrdinal, iOf));
                                } else {
                                    int i116 = iOrdinal;
                                    int i117 = iOf;
                                    if (map != null) {
                                    }
                                    iOrdinal = i116;
                                    iOf = i117;
                                    linkedHashMap.put(strA, new e(strA, method, fieldH, iOrdinal, iOf));
                                }
                            }
                        }
                    }
                    methods = methods;
                }
                if (name.startsWith(bm.ae) && name.length() >= 3) {
                    char cCharAt2 = name.charAt(2);
                    if (Character.isUpperCase(cCharAt2)) {
                        strSubstring = f6857a ? A(name.substring(2)) : Character.toLowerCase(name.charAt(2)) + name.substring(3);
                    } else if (cCharAt2 == '_') {
                        strSubstring = name.substring(3);
                    } else if (cCharAt2 == 'f') {
                        strSubstring = name.substring(2);
                    }
                    Field fieldH2 = com.alibaba.fastjson.parser.k.h(cls, strSubstring);
                    if (fieldH2 == null) {
                        fieldH2 = com.alibaba.fastjson.parser.k.h(cls, name);
                    }
                    Field field = fieldH2;
                    if (field == null || (jSONField = (JSONField) field.getAnnotation(JSONField.class)) == null) {
                        if (map != null || (strSubstring = map.get(strSubstring)) != null) {
                            linkedHashMap.put(strSubstring, new e(strSubstring, method, field, iOrdinal, iOf));
                        }
                    } else if (jSONField.serialize()) {
                        int iOrdinal2 = jSONField.ordinal();
                        int iOf2 = SerializerFeature.of(jSONField.serialzeFeatures());
                        if (jSONField.name().length() != 0) {
                            strSubstring = jSONField.name();
                            if (map == null || (strSubstring = map.get(strSubstring)) != null) {
                            }
                        }
                        iOrdinal = iOrdinal2;
                        iOf = iOf2;
                        if (map != null) {
                            linkedHashMap.put(strSubstring, new e(strSubstring, method, field, iOrdinal, iOf));
                        } else {
                            linkedHashMap.put(strSubstring, new e(strSubstring, method, field, iOrdinal, iOf));
                        }
                    }
                }
            }
            i13++;
            methods = methods;
        }
        for (Field field2 : cls.getFields()) {
            if (!Modifier.isStatic(field2.getModifiers())) {
                JSONField jSONField3 = (JSONField) field2.getAnnotation(JSONField.class);
                String name2 = field2.getName();
                if (jSONField3 == null) {
                    i11 = 0;
                    i12 = 0;
                } else if (jSONField3.serialize()) {
                    int iOrdinal3 = jSONField3.ordinal();
                    int iOf3 = SerializerFeature.of(jSONField3.serialzeFeatures());
                    if (jSONField3.name().length() != 0) {
                        name2 = jSONField3.name();
                    }
                    i11 = iOrdinal3;
                    i12 = iOf3;
                }
                if (map == null || (name2 = map.get(name2)) != null) {
                    String str = name2;
                    if (!linkedHashMap.containsKey(str)) {
                        linkedHashMap.put(str, new e(str, (Method) null, field2, i11, i12));
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        JSONType jSONType = (JSONType) cls.getAnnotation(JSONType.class);
        if (jSONType != null) {
            strArrOrders = jSONType.orders();
            if (strArrOrders != null && strArrOrders.length == linkedHashMap.size()) {
                int length2 = strArrOrders.length;
                int i20 = 0;
                while (true) {
                    if (i20 >= length2) {
                        z11 = true;
                        break;
                    }
                    if (linkedHashMap.containsKey(strArrOrders[i20])) {
                        i20++;
                    }
                }
            }
            if (z11) {
                for (String str2 : strArrOrders) {
                    arrayList.add((e) linkedHashMap.get(str2));
                }
            } else {
                it2 = linkedHashMap.values().iterator();
                while (it2.hasNext()) {
                    arrayList.add((e) it2.next());
                }
                if (z10) {
                    Collections.sort(arrayList);
                }
            }
            return arrayList;
        }
        strArrOrders = null;
        z11 = false;
        if (z11) {
            while (i10 < r3) {
                arrayList.add((e) linkedHashMap.get(str2));
            }
        } else {
            it2 = linkedHashMap.values().iterator();
            while (it2.hasNext()) {
                arrayList.add((e) it2.next());
            }
            if (z10) {
                Collections.sort(arrayList);
            }
        }
        return arrayList;
    }
}
