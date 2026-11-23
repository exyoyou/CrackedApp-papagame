package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: classes7.dex */
public enum SerializerFeature {
    QuoteFieldNames,
    UseSingleQuotes,
    WriteMapNullValue,
    WriteEnumUsingToString,
    UseISO8601DateFormat,
    WriteNullListAsEmpty,
    WriteNullStringAsEmpty,
    WriteNullNumberAsZero,
    WriteNullBooleanAsFalse,
    SkipTransientField,
    SortField,
    WriteTabAsSpecial,
    PrettyFormat,
    WriteClassName,
    DisableCircularReferenceDetect,
    WriteSlashAsSpecial,
    BrowserCompatible,
    WriteDateUseDateFormat,
    NotWriteRootClassName,
    DisableCheckSpecialChar,
    BeanToArray,
    WriteNonStringKeyAsString,
    NotWriteDefaultValue;

    private final int mask = 1 << ordinal();

    SerializerFeature() {
    }

    public static int config(int i10, SerializerFeature serializerFeature, boolean z10) {
        return z10 ? i10 | serializerFeature.getMask() : i10 & (~serializerFeature.getMask());
    }

    public static boolean isEnabled(int i10, SerializerFeature serializerFeature) {
        return (i10 & serializerFeature.getMask()) != 0;
    }

    public static int of(SerializerFeature[] serializerFeatureArr) {
        if (serializerFeatureArr == null) {
            return 0;
        }
        int mask = 0;
        for (SerializerFeature serializerFeature : serializerFeatureArr) {
            mask |= serializerFeature.getMask();
        }
        return mask;
    }

    public final int getMask() {
        return this.mask;
    }

    public static boolean isEnabled(int i10, int i11, SerializerFeature serializerFeature) {
        int mask = serializerFeature.getMask();
        return ((i10 & mask) == 0 && (i11 & mask) == 0) ? false : true;
    }
}
