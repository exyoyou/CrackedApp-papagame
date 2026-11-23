package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.umeng.analytics.pro.bm;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes9.dex */
public class BeanUtil {
    public static String checkUnsupportedType(JavaType javaType) {
        String str;
        String str2;
        Class<?> rawClass = javaType.getRawClass();
        if (isJava8TimeClass(rawClass)) {
            str = "Java 8 date/time";
            str2 = "com.fasterxml.jackson.datatype:jackson-datatype-jsr310";
        } else {
            if (!isJodaTimeClass(rawClass)) {
                return null;
            }
            str = "Joda date/time";
            str2 = "com.fasterxml.jackson.datatype:jackson-datatype-joda";
        }
        return String.format("%s type %s not supported by default: add Module \"%s\" to enable handling", str, ClassUtil.getTypeDescription(javaType), str2);
    }

    public static Object getDefaultValue(JavaType javaType) {
        Class<?> rawClass = javaType.getRawClass();
        Class<?> clsPrimitiveType = ClassUtil.primitiveType(rawClass);
        if (clsPrimitiveType != null) {
            return ClassUtil.defaultValue(clsPrimitiveType);
        }
        if (javaType.isContainerType() || javaType.isReferenceType()) {
            return JsonInclude.Include.NON_EMPTY;
        }
        if (rawClass == String.class) {
            return "";
        }
        if (javaType.isTypeOrSubTypeOf(Date.class)) {
            return new Date(0L);
        }
        if (!javaType.isTypeOrSubTypeOf(Calendar.class)) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(0L);
        return gregorianCalendar;
    }

    protected static boolean isCglibGetCallbacks(AnnotatedMethod annotatedMethod) {
        Class<?> rawType = annotatedMethod.getRawType();
        if (!rawType.isArray()) {
            return false;
        }
        String name = rawType.getComponentType().getName();
        if (name.contains(".cglib")) {
            return name.startsWith("net.sf.cglib") || name.startsWith("org.hibernate.repackage.cglib") || name.startsWith("org.springframework.cglib");
        }
        return false;
    }

    protected static boolean isGroovyMetaClassGetter(AnnotatedMethod annotatedMethod) {
        return annotatedMethod.getRawType().getName().startsWith("groovy.lang");
    }

    public static boolean isJava8TimeClass(Class<?> cls) {
        return cls.getName().startsWith("java.time.");
    }

    public static boolean isJodaTimeClass(Class<?> cls) {
        return cls.getName().startsWith("org.joda.time.");
    }

    protected static String legacyManglePropertyName(String str, int i10) {
        int length = str.length();
        if (length == i10) {
            return null;
        }
        char cCharAt = str.charAt(i10);
        char lowerCase = Character.toLowerCase(cCharAt);
        if (cCharAt == lowerCase) {
            return str.substring(i10);
        }
        StringBuilder sb2 = new StringBuilder(length - i10);
        sb2.append(lowerCase);
        while (true) {
            i10++;
            if (i10 >= length) {
                break;
            }
            char cCharAt2 = str.charAt(i10);
            char lowerCase2 = Character.toLowerCase(cCharAt2);
            if (cCharAt2 == lowerCase2) {
                sb2.append((CharSequence) str, i10, length);
                break;
            }
            sb2.append(lowerCase2);
        }
        return sb2.toString();
    }

    @Deprecated
    public static String okNameForGetter(AnnotatedMethod annotatedMethod, boolean z10) {
        String name = annotatedMethod.getName();
        String strOkNameForIsGetter = okNameForIsGetter(annotatedMethod, name, z10);
        return strOkNameForIsGetter == null ? okNameForRegularGetter(annotatedMethod, name, z10) : strOkNameForIsGetter;
    }

    @Deprecated
    public static String okNameForIsGetter(AnnotatedMethod annotatedMethod, String str, boolean z10) {
        if (!str.startsWith(bm.ae)) {
            return null;
        }
        Class<?> rawType = annotatedMethod.getRawType();
        if (rawType == Boolean.class || rawType == Boolean.TYPE) {
            return z10 ? stdManglePropertyName(str, 2) : legacyManglePropertyName(str, 2);
        }
        return null;
    }

    @Deprecated
    public static String okNameForMutator(AnnotatedMethod annotatedMethod, String str, boolean z10) {
        String name = annotatedMethod.getName();
        if (name.startsWith(str)) {
            return z10 ? stdManglePropertyName(name, str.length()) : legacyManglePropertyName(name, str.length());
        }
        return null;
    }

    @Deprecated
    public static String okNameForRegularGetter(AnnotatedMethod annotatedMethod, String str, boolean z10) {
        if (!str.startsWith("get")) {
            return null;
        }
        if ("getCallbacks".equals(str)) {
            if (isCglibGetCallbacks(annotatedMethod)) {
                return null;
            }
        } else if ("getMetaClass".equals(str) && isGroovyMetaClassGetter(annotatedMethod)) {
            return null;
        }
        return z10 ? stdManglePropertyName(str, 3) : legacyManglePropertyName(str, 3);
    }

    @Deprecated
    public static String okNameForSetter(AnnotatedMethod annotatedMethod, boolean z10) {
        return okNameForMutator(annotatedMethod, "set", z10);
    }

    public static String stdManglePropertyName(String str, int i10) {
        int length = str.length();
        if (length == i10) {
            return null;
        }
        char cCharAt = str.charAt(i10);
        char lowerCase = Character.toLowerCase(cCharAt);
        if (cCharAt == lowerCase) {
            return str.substring(i10);
        }
        int i11 = i10 + 1;
        if (i11 < length && Character.isUpperCase(str.charAt(i11))) {
            return str.substring(i10);
        }
        StringBuilder sb2 = new StringBuilder(length - i10);
        sb2.append(lowerCase);
        sb2.append((CharSequence) str, i11, length);
        return sb2.toString();
    }
}
