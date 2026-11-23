package com.alibaba.fastjson.parser;

/* JADX INFO: loaded from: classes7.dex */
public enum Feature {
    AutoCloseSource,
    AllowComment,
    AllowUnQuotedFieldNames,
    AllowSingleQuotes,
    InternFieldNames,
    AllowISO8601DateFormat,
    AllowArbitraryCommas,
    UseBigDecimal,
    IgnoreNotMatch,
    SortFeidFastMatch,
    DisableASM,
    DisableCircularReferenceDetect,
    InitStringFieldAsEmpty,
    SupportArrayToBean;

    private final int mask = 1 << ordinal();

    Feature() {
    }

    public static int config(int i10, Feature feature, boolean z10) {
        return z10 ? i10 | feature.getMask() : i10 & (~feature.getMask());
    }

    public static boolean isEnabled(int i10, Feature feature) {
        return (i10 & feature.getMask()) != 0;
    }

    public static int of(Feature[] featureArr) {
        if (featureArr == null) {
            return 0;
        }
        int mask = 0;
        for (Feature feature : featureArr) {
            mask |= feature.getMask();
        }
        return mask;
    }

    public final int getMask() {
        return this.mask;
    }
}
