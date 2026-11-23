package com.zyyoona7.wheel.adapter;

import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class BaseWheelAdapter<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<T> f90686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f90687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f90688c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f90689d;

    /* JADX WARN: Multi-variable type inference failed */
    public BaseWheelAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final List<T> f() {
        return (List) this.f90689d.getValue();
    }

    @NotNull
    public final List<T> a() {
        return (this.f90688c || !this.f90687b) ? this.f90686a : f();
    }

    public final int b() {
        return ((this.f90688c || !this.f90687b) ? this.f90686a : f()).size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final T c(int i10) {
        if (this.f90688c || !this.f90687b) {
            if (h(i10, this.f90686a)) {
                return this.f90686a.get(i10);
            }
            return null;
        }
        if (h(i10, f())) {
            return (T) f().get(i10);
        }
        return null;
    }

    @NotNull
    public abstract String d(@Nullable Object obj);

    @NotNull
    public abstract String e(int i10);

    public final int g() {
        return this.f90686a.size();
    }

    protected final boolean h(int i10, @NotNull List<? extends T> list) {
        List<? extends T> list2 = list;
        if (!list2.isEmpty()) {
            int size = list2.size();
            if (i10 >= 0 && size > i10) {
                return true;
            }
        }
        return false;
    }

    public final boolean i() {
        return this.f90688c;
    }

    public final void j(boolean z10) {
        this.f90688c = z10;
    }

    public final void k(@NotNull List<? extends T> list) {
        this.f90686a.clear();
        this.f90686a.addAll(list);
    }

    public final void l(int i10, int i11) {
        if (i10 < 0 || i11 < 0 || i10 > i11 || !h(i10, this.f90686a) || !h(i11, this.f90686a)) {
            this.f90687b = false;
            f().clear();
            return;
        }
        this.f90687b = true;
        f().clear();
        if (i10 > i11) {
            return;
        }
        while (true) {
            f().add(this.f90686a.get(i10));
            if (i10 == i11) {
                return;
            } else {
                i10++;
            }
        }
    }

    public BaseWheelAdapter(@Nullable List<? extends T> list) {
        this.f90686a = new ArrayList();
        this.f90689d = LazyKt__LazyJVMKt.lazy(new Function0<List<T>>() { // from class: com.zyyoona7.wheel.adapter.BaseWheelAdapter$rangeDataList$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<T> invoke() {
                return new ArrayList();
            }
        });
        if (list != null) {
            k(list);
        }
    }

    public /* synthetic */ BaseWheelAdapter(List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : list);
    }
}
