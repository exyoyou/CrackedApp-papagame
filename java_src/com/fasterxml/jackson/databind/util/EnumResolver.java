package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class EnumResolver implements Serializable {
    private static final long serialVersionUID = 1;
    protected final Enum<?> _defaultValue;
    protected final Class<Enum<?>> _enumClass;
    protected final Enum<?>[] _enums;
    protected final HashMap<String, Enum<?>> _enumsById;
    protected final boolean _isIgnoreCase;

    protected EnumResolver(Class<Enum<?>> cls, Enum<?>[] enumArr, HashMap<String, Enum<?>> map, Enum<?> r10, boolean z10) {
        this._enumClass = cls;
        this._enums = enumArr;
        this._enumsById = map;
        this._defaultValue = r10;
        this._isIgnoreCase = z10;
    }

    protected static EnumResolver _constructFor(Class<?> cls, AnnotationIntrospector annotationIntrospector, boolean z10) {
        Class<Enum<?>> cls_enumClass = _enumClass(cls);
        Enum<?>[] enumArr_enumConstants = _enumConstants(cls);
        String[] strArrFindEnumValues = annotationIntrospector.findEnumValues(cls_enumClass, enumArr_enumConstants, new String[enumArr_enumConstants.length]);
        String[][] strArr = new String[strArrFindEnumValues.length][];
        annotationIntrospector.findEnumAliases(cls_enumClass, enumArr_enumConstants, strArr);
        HashMap map = new HashMap();
        int length = enumArr_enumConstants.length;
        for (int i10 = 0; i10 < length; i10++) {
            Enum<?> r10 = enumArr_enumConstants[i10];
            String strName = strArrFindEnumValues[i10];
            if (strName == null) {
                strName = r10.name();
            }
            map.put(strName, r10);
            String[] strArr2 = strArr[i10];
            if (strArr2 != null) {
                for (String str : strArr2) {
                    if (!map.containsKey(str)) {
                        map.put(str, r10);
                    }
                }
            }
        }
        return new EnumResolver(cls_enumClass, enumArr_enumConstants, map, _enumDefault(annotationIntrospector, cls_enumClass), z10);
    }

    protected static EnumResolver _constructUsingMethod(Class<?> cls, AnnotatedMember annotatedMember, AnnotationIntrospector annotationIntrospector, boolean z10) {
        Class<Enum<?>> cls_enumClass = _enumClass(cls);
        Enum<?>[] enumArr_enumConstants = _enumConstants(cls);
        HashMap map = new HashMap();
        int length = enumArr_enumConstants.length;
        while (true) {
            length--;
            if (length < 0) {
                return new EnumResolver(cls_enumClass, enumArr_enumConstants, map, _enumDefault(annotationIntrospector, cls_enumClass), z10);
            }
            Enum<?> r10 = enumArr_enumConstants[length];
            try {
                Object value = annotatedMember.getValue(r10);
                if (value != null) {
                    map.put(value.toString(), r10);
                }
            } catch (Exception e10) {
                throw new IllegalArgumentException("Failed to access @JsonValue of Enum value " + r10 + ": " + e10.getMessage());
            }
        }
    }

    protected static EnumResolver _constructUsingToString(Class<?> cls, AnnotationIntrospector annotationIntrospector, boolean z10) {
        Class<Enum<?>> cls_enumClass = _enumClass(cls);
        Enum<?>[] enumArr_enumConstants = _enumConstants(cls);
        HashMap map = new HashMap();
        String[][] strArr = new String[enumArr_enumConstants.length][];
        annotationIntrospector.findEnumAliases(cls_enumClass, enumArr_enumConstants, strArr);
        int length = enumArr_enumConstants.length;
        while (true) {
            length--;
            if (length < 0) {
                return new EnumResolver(cls_enumClass, enumArr_enumConstants, map, _enumDefault(annotationIntrospector, cls_enumClass), z10);
            }
            Enum<?> r10 = enumArr_enumConstants[length];
            map.put(r10.toString(), r10);
            String[] strArr2 = strArr[length];
            if (strArr2 != null) {
                for (String str : strArr2) {
                    if (!map.containsKey(str)) {
                        map.put(str, r10);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected static Class<Enum<?>> _enumClass(Class<?> cls) {
        return cls;
    }

    protected static Enum<?>[] _enumConstants(Class<?> cls) {
        Enum<?>[] enumConstants = _enumClass(cls).getEnumConstants();
        if (enumConstants != null) {
            return enumConstants;
        }
        throw new IllegalArgumentException("No enum constants for class " + cls.getName());
    }

    protected static Enum<?> _enumDefault(AnnotationIntrospector annotationIntrospector, Class<?> cls) {
        if (annotationIntrospector != null) {
            return annotationIntrospector.findDefaultEnumValue(_enumClass(cls));
        }
        return null;
    }

    public static EnumResolver constructFor(DeserializationConfig deserializationConfig, Class<?> cls) {
        return _constructFor(cls, deserializationConfig.getAnnotationIntrospector(), deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS));
    }

    @Deprecated
    public static EnumResolver constructUnsafe(Class<?> cls, AnnotationIntrospector annotationIntrospector) {
        return _constructFor(cls, annotationIntrospector, false);
    }

    @Deprecated
    public static EnumResolver constructUnsafeUsingMethod(Class<?> cls, AnnotatedMember annotatedMember, AnnotationIntrospector annotationIntrospector) {
        return _constructUsingMethod(cls, annotatedMember, annotationIntrospector, false);
    }

    @Deprecated
    public static EnumResolver constructUnsafeUsingToString(Class<?> cls, AnnotationIntrospector annotationIntrospector) {
        return _constructUsingToString(cls, annotationIntrospector, false);
    }

    public static EnumResolver constructUsingMethod(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMember annotatedMember) {
        return _constructUsingMethod(cls, annotatedMember, deserializationConfig.getAnnotationIntrospector(), deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS));
    }

    public static EnumResolver constructUsingToString(DeserializationConfig deserializationConfig, Class<?> cls) {
        return _constructUsingToString(cls, deserializationConfig.getAnnotationIntrospector(), deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_ENUMS));
    }

    protected Enum<?> _findEnumCaseInsensitive(String str) {
        for (Map.Entry<String, Enum<?>> entry : this._enumsById.entrySet()) {
            if (str.equalsIgnoreCase(entry.getKey())) {
                return entry.getValue();
            }
        }
        return null;
    }

    public CompactStringObjectMap constructLookup() {
        return CompactStringObjectMap.construct(this._enumsById);
    }

    public Enum<?> findEnum(String str) {
        Enum<?> r10 = this._enumsById.get(str);
        return (r10 == null && this._isIgnoreCase) ? _findEnumCaseInsensitive(str) : r10;
    }

    public Enum<?> getDefaultValue() {
        return this._defaultValue;
    }

    public Enum<?> getEnum(int i10) {
        if (i10 < 0) {
            return null;
        }
        Enum<?>[] enumArr = this._enums;
        if (i10 >= enumArr.length) {
            return null;
        }
        return enumArr[i10];
    }

    public Class<Enum<?>> getEnumClass() {
        return this._enumClass;
    }

    public Collection<String> getEnumIds() {
        return this._enumsById.keySet();
    }

    public List<Enum<?>> getEnums() {
        ArrayList arrayList = new ArrayList(this._enums.length);
        for (Enum<?> r10 : this._enums) {
            arrayList.add(r10);
        }
        return arrayList;
    }

    public Enum<?>[] getRawEnums() {
        return this._enums;
    }

    public int lastValidIndex() {
        return this._enums.length - 1;
    }

    @Deprecated
    public static EnumResolver constructFor(Class<Enum<?>> cls, AnnotationIntrospector annotationIntrospector) {
        return _constructFor(cls, annotationIntrospector, false);
    }

    @Deprecated
    public static EnumResolver constructUsingMethod(Class<Enum<?>> cls, AnnotatedMember annotatedMember, AnnotationIntrospector annotationIntrospector) {
        return _constructUsingMethod(cls, annotatedMember, annotationIntrospector, false);
    }

    @Deprecated
    public static EnumResolver constructUsingToString(Class<Enum<?>> cls, AnnotationIntrospector annotationIntrospector) {
        return _constructUsingToString(cls, annotationIntrospector, false);
    }

    @Deprecated
    public static EnumResolver constructUsingToString(Class<Enum<?>> cls) {
        return _constructUsingToString(cls, null, false);
    }

    @Deprecated
    protected EnumResolver(Class<Enum<?>> cls, Enum<?>[] enumArr, HashMap<String, Enum<?>> map, Enum<?> r10) {
        this(cls, enumArr, map, r10, false);
    }
}
