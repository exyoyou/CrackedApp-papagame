package com.zyyoona7.wheel.adapter;

import com.zyyoona7.wheel.formatter.c;
import java.util.List;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class a<T> extends BaseWheelAdapter<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private c f90691e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private Function1<Object, String> f90692f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private InterfaceC1145a f90693g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f90694h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private b f90695i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private Function2<? super a<?>, Object, Integer> f90696j;

    /* JADX INFO: renamed from: com.zyyoona7.wheel.adapter.a$a, reason: collision with other inner class name */
    public interface InterfaceC1145a {
        void a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public a() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ int y(a aVar, Object obj, boolean z10, int i10, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return aVar.x(obj, z10);
    }

    private final int z(Object obj, boolean z10) {
        int size = a().size();
        for (int i10 = 0; i10 < size; i10++) {
            if (z10) {
                if (Intrinsics.areEqual(e(i10), obj)) {
                    return i10;
                }
            } else if (Intrinsics.areEqual(a().get(i10), obj)) {
                return i10;
            }
        }
        return -1;
    }

    public final void A(@Nullable InterfaceC1145a interfaceC1145a) {
        this.f90693g = interfaceC1145a;
    }

    public final void B(@Nullable Function1<Object, String> function1) {
        this.f90692f = function1;
    }

    public final void C(@Nullable b bVar) {
        this.f90695i = bVar;
    }

    public final void D(@Nullable Function2<? super a<?>, Object, Integer> function2) {
        this.f90696j = function2;
    }

    public final void E(int i10) {
        this.f90694h = i10;
    }

    public final void F(@Nullable c cVar) {
        this.f90691e = cVar;
    }

    @Override // com.zyyoona7.wheel.adapter.BaseWheelAdapter
    @NotNull
    public String d(@Nullable Object obj) {
        String string;
        String strInvoke;
        String strA;
        c cVar = this.f90691e;
        if (cVar != null && (strA = cVar.a(obj)) != null) {
            return strA;
        }
        Function1<Object, String> function1 = this.f90692f;
        if (function1 == null || (strInvoke = function1.invoke(obj)) == null) {
            return (obj == null || (string = obj.toString()) == null) ? "" : string;
        }
        return strInvoke;
    }

    @Override // com.zyyoona7.wheel.adapter.BaseWheelAdapter
    @NotNull
    public String e(int i10) {
        int iB = b();
        if (iB == 0) {
            return "";
        }
        if (!i()) {
            return (i10 >= 0 && iB > i10) ? d(c(i10)) : "";
        }
        int i11 = i10 % iB;
        if (i11 < 0) {
            i11 += iB;
        }
        return d(c(i11));
    }

    @Nullable
    public final <V> List<V> m() {
        List<T> listA = a();
        if (listA instanceof List) {
            return listA;
        }
        return null;
    }

    @Nullable
    public final InterfaceC1145a n() {
        return this.f90693g;
    }

    @Nullable
    public final Function1<Object, String> o() {
        return this.f90692f;
    }

    @Nullable
    public final <V> V p(int i10) {
        T tC = c(i10);
        if (tC instanceof Object) {
            return tC;
        }
        return null;
    }

    @Nullable
    public final b q() {
        return this.f90695i;
    }

    @Nullable
    public final Function2<a<?>, Object, Integer> r() {
        return this.f90696j;
    }

    @Nullable
    public final <V> V s() {
        InterfaceC1145a interfaceC1145a = this.f90693g;
        if (interfaceC1145a != null) {
            interfaceC1145a.a();
        }
        return (V) p(this.f90694h);
    }

    public final int t() {
        return this.f90694h;
    }

    public final int u() {
        InterfaceC1145a interfaceC1145a = this.f90693g;
        if (interfaceC1145a != null) {
            interfaceC1145a.a();
        }
        return this.f90694h;
    }

    @Nullable
    public final c v() {
        return this.f90691e;
    }

    @JvmOverloads
    public final int w(@Nullable Object obj) {
        return y(this, obj, false, 2, null);
    }

    @JvmOverloads
    public final int x(@Nullable Object obj, boolean z10) {
        Integer numInvoke;
        b bVar = this.f90695i;
        if (bVar != null) {
            return bVar.a(this, obj);
        }
        Function2<? super a<?>, Object, Integer> function2 = this.f90696j;
        return (function2 == null || (numInvoke = function2.invoke(this, obj)) == null) ? z(obj, z10) : numInvoke.intValue();
    }

    public /* synthetic */ a(List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : list);
    }

    @JvmOverloads
    public a(@Nullable List<? extends T> list) {
        super(list);
    }
}
