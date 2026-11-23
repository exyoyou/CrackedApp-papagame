package com.zyyoona7.wheel.formatter;

import java.util.Arrays;
import java.util.Locale;
import kotlin.TypeCastException;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class b<T> implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f90700a;

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public b() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.zyyoona7.wheel.formatter.c
    @NotNull
    public String a(@Nullable Object obj) {
        if (obj == 0) {
            return "";
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.getDefault();
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.getDefault()");
        String str = String.format(locale, this.f90700a, Arrays.copyOf(new Object[]{b(obj)}, 1));
        Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(locale, format, *args)");
        return str != null ? str : "";
    }

    @NotNull
    protected Object b(T t10) {
        if (t10 != null) {
            return t10;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Any");
    }

    @JvmOverloads
    public b(@NotNull String str) {
        this.f90700a = str;
    }

    public /* synthetic */ b(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "%s" : str);
    }
}
