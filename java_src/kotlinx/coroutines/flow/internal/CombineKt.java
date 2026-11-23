package kotlinx.coroutines.flow.internal;

import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.m0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,140:1\n105#2:141\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n*L\n83#1:141\n*E\n"})
public final class CombineKt {

    /* JADX INFO: Add missing generic type declarations: [R] */
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n*L\n1#1,111:1\n84#2:112\n139#2:113\n*E\n"})
    public static final class a<R> implements kotlinx.coroutines.flow.e<R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.e f93308b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.e f93309c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Function3 f93310d;

        public a(kotlinx.coroutines.flow.e eVar, kotlinx.coroutines.flow.e eVar2, Function3 function3) {
            this.f93308b = eVar;
            this.f93309c = eVar2;
            this.f93310d = function3;
        }

        @Override // kotlinx.coroutines.flow.e
        @Nullable
        public Object a(@NotNull kotlinx.coroutines.flow.f<? super R> fVar, @NotNull Continuation<? super Unit> continuation) {
            Object objG = m0.g(new CombineKt$zipImpl$1$1(this.f93308b, this.f93309c, fVar, this.f93310d, null), continuation);
            return objG == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objG : Unit.INSTANCE;
        }
    }

    @PublishedApi
    @Nullable
    public static final <R, T> Object a(@NotNull kotlinx.coroutines.flow.f<? super R> fVar, @NotNull kotlinx.coroutines.flow.e<? extends T>[] eVarArr, @NotNull Function0<T[]> function0, @NotNull Function3<? super kotlinx.coroutines.flow.f<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, @NotNull Continuation<? super Unit> continuation) {
        Object objA = FlowCoroutineKt.a(new CombineKt$combineInternal$2(eVarArr, function0, function3, fVar, null), continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @NotNull
    public static final <T1, T2, R> kotlinx.coroutines.flow.e<R> b(@NotNull kotlinx.coroutines.flow.e<? extends T1> eVar, @NotNull kotlinx.coroutines.flow.e<? extends T2> eVar2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return new a(eVar2, eVar, function3);
    }
}
