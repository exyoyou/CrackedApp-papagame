package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class b1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @JvmField
    @NotNull
    public final CoroutineContext f93477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Object[] f93478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final t2<Object>[] f93479c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f93480d;

    public b1(@NotNull CoroutineContext coroutineContext, int i10) {
        this.f93477a = coroutineContext;
        this.f93478b = new Object[i10];
        this.f93479c = new t2[i10];
    }

    public final void a(@NotNull t2<?> t2Var, @Nullable Object obj) {
        Object[] objArr = this.f93478b;
        int i10 = this.f93480d;
        objArr[i10] = obj;
        t2<Object>[] t2VarArr = this.f93479c;
        this.f93480d = i10 + 1;
        Intrinsics.checkNotNull(t2Var, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        t2VarArr[i10] = t2Var;
    }

    public final void b(@NotNull CoroutineContext coroutineContext) {
        int length = this.f93479c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i10 = length - 1;
            t2<Object> t2Var = this.f93479c[length];
            Intrinsics.checkNotNull(t2Var);
            t2Var.n(coroutineContext, this.f93478b[length]);
            if (i10 < 0) {
                return;
            } else {
                length = i10;
            }
        }
    }
}
