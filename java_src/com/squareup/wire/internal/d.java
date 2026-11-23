package com.squareup.wire.internal;

import com.squareup.wire.WireEnumConstant;
import com.squareup.wire.h0;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class d<E extends h0> implements r<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final Map<String, E> f82370a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Map<E, String> f82371b;

    /* JADX WARN: Multi-variable type inference failed */
    public d(@NotNull com.squareup.wire.f<E> adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        KClass<?> type = adapter.getType();
        Intrinsics.checkNotNull(type);
        Class javaClass = JvmClassMappingKt.getJavaClass((KClass) type);
        Intrinsics.checkNotNull(javaClass, "null cannot be cast to non-null type java.lang.Class<E of com.squareup.wire.internal.EnumJsonFormatter>");
        Object[] enumConstants = javaClass.getEnumConstants();
        Intrinsics.checkNotNullExpressionValue(enumConstants, "getEnumConstants(...)");
        for (h0 h0Var : (h0[]) enumConstants) {
            Intrinsics.checkNotNull(h0Var, "null cannot be cast to non-null type kotlin.Enum<*>");
            String strName = ((Enum) h0Var).name();
            linkedHashMap.put(strName, h0Var);
            linkedHashMap.put(String.valueOf(h0Var.getValue()), h0Var);
            linkedHashMap2.put(h0Var, strName);
            WireEnumConstant wireEnumConstant = (WireEnumConstant) javaClass.getDeclaredField(strName).getAnnotation(WireEnumConstant.class);
            if (wireEnumConstant != null) {
                if (wireEnumConstant.declaredName().length() > 0) {
                    linkedHashMap.put(wireEnumConstant.declaredName(), h0Var);
                    linkedHashMap2.put(h0Var, wireEnumConstant.declaredName());
                }
            }
        }
        this.f82370a = linkedHashMap;
        this.f82371b = linkedHashMap2;
    }

    @Override // com.squareup.wire.internal.r
    @Nullable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public E a(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return this.f82370a.get(value);
    }

    @Override // com.squareup.wire.internal.r
    @NotNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public String b(@NotNull E value) {
        Intrinsics.checkNotNullParameter(value, "value");
        String str = this.f82371b.get(value);
        Intrinsics.checkNotNull(str);
        return str;
    }
}
