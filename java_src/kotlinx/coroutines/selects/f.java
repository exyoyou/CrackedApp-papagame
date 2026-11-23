package kotlinx.coroutines.selects;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class f<Q> implements e<Q> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private final Object f93766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Function3<Object, j<?>, Object, Unit> f93767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final Function3<Object, Object, Object, Object> f93768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final Function3<j<?>, Object, Object, Function1<Throwable, Unit>> f93769d;

    /* JADX WARN: Multi-variable type inference failed */
    public f(@NotNull Object obj, @NotNull Function3<Object, ? super j<?>, Object, Unit> function3, @NotNull Function3<Object, Object, Object, ? extends Object> function4, @Nullable Function3<? super j<?>, Object, Object, ? extends Function1<? super Throwable, Unit>> function5) {
        this.f93766a = obj;
        this.f93767b = function3;
        this.f93768c = function4;
        this.f93769d = function5;
    }

    @Override // kotlinx.coroutines.selects.i
    @Nullable
    public Function3<j<?>, Object, Object, Function1<Throwable, Unit>> a() {
        return this.f93769d;
    }

    @Override // kotlinx.coroutines.selects.i
    @NotNull
    public Function3<Object, Object, Object, Object> b() {
        return this.f93768c;
    }

    @Override // kotlinx.coroutines.selects.i
    @NotNull
    public Function3<Object, j<?>, Object, Unit> c() {
        return this.f93767b;
    }

    @Override // kotlinx.coroutines.selects.i
    @NotNull
    public Object d() {
        return this.f93766a;
    }

    public /* synthetic */ f(Object obj, Function3 function3, Function3 function4, Function3 function5, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, function3, function4, (i10 & 8) != 0 ? null : function5);
    }
}
