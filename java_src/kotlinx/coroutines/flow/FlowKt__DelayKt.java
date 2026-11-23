package kotlinx.coroutines.flow;

import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.FlowCoroutineKt;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,407:1\n1#2:408\n*E\n"})
final /* synthetic */ class FlowKt__DelayKt {
    /* JADX WARN: Multi-variable type inference failed */
    @FlowPreview
    @NotNull
    public static final <T> e<T> a(@NotNull e<? extends T> eVar, final long j10) {
        if (j10 >= 0) {
            return j10 == 0 ? eVar : e(eVar, new Function1<T, Long>() { // from class: kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Long invoke(T t10) {
                    return Long.valueOf(j10);
                }
            });
        }
        throw new IllegalArgumentException("Debounce timeout should not be negative".toString());
    }

    @FlowPreview
    @OverloadResolutionByLambdaReturnType
    @NotNull
    public static final <T> e<T> b(@NotNull e<? extends T> eVar, @NotNull Function1<? super T, Long> function1) {
        return e(eVar, function1);
    }

    @FlowPreview
    @NotNull
    public static final <T> e<T> c(@NotNull e<? extends T> eVar, long j10) {
        return g.a0(eVar, DelayKt.e(j10));
    }

    @FlowPreview
    @JvmName(name = "debounceDuration")
    @NotNull
    @OverloadResolutionByLambdaReturnType
    public static final <T> e<T> d(@NotNull e<? extends T> eVar, @NotNull final Function1<? super T, Duration> function1) {
        return e(eVar, new Function1<T, Long>() { // from class: kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Long invoke(T t10) {
                return Long.valueOf(DelayKt.e(function1.invoke(t10).getRawValue()));
            }
        });
    }

    private static final <T> e<T> e(e<? extends T> eVar, Function1<? super T, Long> function1) {
        return FlowCoroutineKt.b(new FlowKt__DelayKt$debounceInternal$1(function1, eVar, null));
    }

    @NotNull
    public static final ReceiveChannel<Unit> f(@NotNull l0 l0Var, long j10) {
        return ProduceKt.f(l0Var, null, 0, new FlowKt__DelayKt$fixedPeriodTicker$1(j10, null), 1, null);
    }

    @FlowPreview
    @NotNull
    public static final <T> e<T> g(@NotNull e<? extends T> eVar, long j10) {
        if (j10 > 0) {
            return FlowCoroutineKt.b(new FlowKt__DelayKt$sample$2(j10, eVar, null));
        }
        throw new IllegalArgumentException("Sample period should be positive".toString());
    }

    @FlowPreview
    @NotNull
    public static final <T> e<T> h(@NotNull e<? extends T> eVar, long j10) {
        return g.A1(eVar, DelayKt.e(j10));
    }

    @FlowPreview
    @NotNull
    public static final <T> e<T> i(@NotNull e<? extends T> eVar, long j10) {
        return j(eVar, j10);
    }

    private static final <T> e<T> j(e<? extends T> eVar, long j10) {
        return FlowCoroutineKt.b(new FlowKt__DelayKt$timeoutInternal$1(j10, eVar, null));
    }
}
