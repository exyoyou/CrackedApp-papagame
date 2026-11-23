package kotlinx.coroutines.flow.internal;

import kotlin.BuilderInference;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.m0;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class SafeCollector_commonKt {
    @JvmName(name = "checkContext")
    public static final void a(@NotNull final SafeCollector<?> safeCollector, @NotNull CoroutineContext coroutineContext) {
        if (((Number) coroutineContext.fold(0, new Function2<Integer, CoroutineContext.Element, Integer>() { // from class: kotlinx.coroutines.flow.internal.SafeCollector_commonKt$checkContext$result$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @NotNull
            public final Integer a(int i10, @NotNull CoroutineContext.Element element) {
                CoroutineContext.Key<?> key = element.getKey();
                CoroutineContext.Element element2 = safeCollector.collectContext.get(key);
                if (key != v1.F1) {
                    return Integer.valueOf(element != element2 ? Integer.MIN_VALUE : i10 + 1);
                }
                v1 v1Var = (v1) element2;
                Intrinsics.checkNotNull(element, "null cannot be cast to non-null type kotlinx.coroutines.Job");
                v1 v1VarB = SafeCollector_commonKt.b((v1) element, v1Var);
                if (v1VarB == v1Var) {
                    if (v1Var != null) {
                        i10++;
                    }
                    return Integer.valueOf(i10);
                }
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + v1VarB + ", expected child of " + v1Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(Integer num, CoroutineContext.Element element) {
                return a(num.intValue(), element);
            }
        })).intValue() == safeCollector.collectContextSize) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + safeCollector.collectContext + ",\n\t\tbut emission happened in " + coroutineContext + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    @Nullable
    public static final v1 b(@Nullable v1 v1Var, @Nullable v1 v1Var2) {
        while (v1Var != null) {
            if (v1Var == v1Var2) {
                return v1Var;
            }
            if (!(v1Var instanceof m0)) {
                return v1Var;
            }
            v1Var = v1Var.getParent();
        }
        return null;
    }

    @PublishedApi
    @NotNull
    public static final <T> kotlinx.coroutines.flow.e<T> c(@BuilderInference @NotNull Function2<? super kotlinx.coroutines.flow.f<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new SafeCollector_commonKt$unsafeFlow$1(function2);
    }
}
