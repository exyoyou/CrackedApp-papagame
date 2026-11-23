package com.zyyoona7.wheel.formatter;

import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class a extends b<Integer> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final String f90697b = "%d";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f90698c = "%02d";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C1146a f90699d = new C1146a(null);

    /* JADX INFO: renamed from: com.zyyoona7.wheel.formatter.a$a, reason: collision with other inner class name */
    public static final class C1146a {
        private C1146a() {
        }

        public /* synthetic */ C1146a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public a() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ a(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "%02d" : str);
    }

    @JvmOverloads
    public a(@NotNull String str) {
        super(str);
    }
}
