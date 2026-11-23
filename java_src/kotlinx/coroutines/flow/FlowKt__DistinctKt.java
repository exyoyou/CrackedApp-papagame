package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class FlowKt__DistinctKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private static final Function1<Object, Object> f92930a = new Function1<Object, Object>() { // from class: kotlinx.coroutines.flow.FlowKt__DistinctKt$defaultKeySelector$1
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final Object invoke(@Nullable Object obj) {
            return obj;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final Function2<Object, Object, Boolean> f92931b = new Function2<Object, Object, Boolean>() { // from class: kotlinx.coroutines.flow.FlowKt__DistinctKt$defaultAreEquivalent$1
        @Override // kotlin.jvm.functions.Function2
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@Nullable Object obj, @Nullable Object obj2) {
            return Boolean.valueOf(Intrinsics.areEqual(obj, obj2));
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> e<T> a(@NotNull e<? extends T> eVar) {
        return eVar instanceof u ? eVar : d(eVar, f92930a, f92931b);
    }

    @NotNull
    public static final <T> e<T> b(@NotNull e<? extends T> eVar, @NotNull Function2<? super T, ? super T, Boolean> function2) {
        Function1<Object, Object> function1 = f92930a;
        Intrinsics.checkNotNull(function2, "null cannot be cast to non-null type kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Boolean>");
        return d(eVar, function1, (Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2));
    }

    @NotNull
    public static final <T, K> e<T> c(@NotNull e<? extends T> eVar, @NotNull Function1<? super T, ? extends K> function1) {
        return d(eVar, function1, f92931b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T> e<T> d(e<? extends T> eVar, Function1<? super T, ? extends Object> function1, Function2<Object, Object, Boolean> function2) {
        if (eVar instanceof DistinctFlowImpl) {
            DistinctFlowImpl distinctFlowImpl = (DistinctFlowImpl) eVar;
            if (distinctFlowImpl.f92822c == function1 && distinctFlowImpl.f92823d == function2) {
                return eVar;
            }
        }
        return new DistinctFlowImpl(eVar, function1, function2);
    }
}
