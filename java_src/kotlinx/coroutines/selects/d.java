package kotlinx.coroutines.selects;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final Object f93762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Function3<Object, j<?>, Object, Unit> f93763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final Function3<j<?>, Object, Object, Function1<Throwable, Unit>> f93764c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final Function3<Object, Object, Object, Object> f93765d;

    /* JADX WARN: Multi-variable type inference failed */
    public d(@NotNull Object obj, @NotNull Function3<Object, ? super j<?>, Object, Unit> function3, @Nullable Function3<? super j<?>, Object, Object, ? extends Function1<? super Throwable, Unit>> function4) {
        this.f93762a = obj;
        this.f93763b = function3;
        this.f93764c = function4;
        this.f93765d = SelectKt.f93745a;
    }

    @Override // kotlinx.coroutines.selects.i
    @Nullable
    public Function3<j<?>, Object, Object, Function1<Throwable, Unit>> a() {
        return this.f93764c;
    }

    @Override // kotlinx.coroutines.selects.i
    @NotNull
    public Function3<Object, Object, Object, Object> b() {
        return this.f93765d;
    }

    @Override // kotlinx.coroutines.selects.i
    @NotNull
    public Function3<Object, j<?>, Object, Unit> c() {
        return this.f93763b;
    }

    @Override // kotlinx.coroutines.selects.i
    @NotNull
    public Object d() {
        return this.f93762a;
    }

    public /* synthetic */ d(Object obj, Function3 function3, Function3 function4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, function3, (i10 & 4) != 0 ? null : function4);
    }
}
