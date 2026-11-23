package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class ThreadContextKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final q0 f93468a = new q0("NO_THREAD_ELEMENTS");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final Function2<Object, CoroutineContext.Element, Object> f93469b = new Function2<Object, CoroutineContext.Element, Object>() { // from class: kotlinx.coroutines.internal.ThreadContextKt$countAll$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@Nullable Object obj, @NotNull CoroutineContext.Element element) {
            if (!(element instanceof t2)) {
                return obj;
            }
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            int iIntValue = num != null ? num.intValue() : 1;
            return iIntValue == 0 ? element : Integer.valueOf(iIntValue + 1);
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private static final Function2<t2<?>, CoroutineContext.Element, t2<?>> f93470c = new Function2<t2<?>, CoroutineContext.Element, t2<?>>() { // from class: kotlinx.coroutines.internal.ThreadContextKt$findOne$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final t2<?> invoke(@Nullable t2<?> t2Var, @NotNull CoroutineContext.Element element) {
            if (t2Var != null) {
                return t2Var;
            }
            if (element instanceof t2) {
                return (t2) element;
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private static final Function2<b1, CoroutineContext.Element, b1> f93471d = new Function2<b1, CoroutineContext.Element, b1>() { // from class: kotlinx.coroutines.internal.ThreadContextKt$updateState$1
        @Override // kotlin.jvm.functions.Function2
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final b1 invoke(@NotNull b1 b1Var, @NotNull CoroutineContext.Element element) {
            if (element instanceof t2) {
                t2<?> t2Var = (t2) element;
                b1Var.a(t2Var, t2Var.a0(b1Var.f93477a));
            }
            return b1Var;
        }
    };

    public static final void a(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        if (obj == f93468a) {
            return;
        }
        if (obj instanceof b1) {
            ((b1) obj).b(coroutineContext);
            return;
        }
        Object objFold = coroutineContext.fold(null, f93470c);
        Intrinsics.checkNotNull(objFold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((t2) objFold).n(coroutineContext, obj);
    }

    @NotNull
    public static final Object b(@NotNull CoroutineContext coroutineContext) {
        Object objFold = coroutineContext.fold(0, f93469b);
        Intrinsics.checkNotNull(objFold);
        return objFold;
    }

    @Nullable
    public static final Object c(@NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        if (obj == null) {
            obj = b(coroutineContext);
        }
        if (obj == 0) {
            return f93468a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new b1(coroutineContext, ((Number) obj).intValue()), f93471d);
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((t2) obj).a0(coroutineContext);
    }
}
