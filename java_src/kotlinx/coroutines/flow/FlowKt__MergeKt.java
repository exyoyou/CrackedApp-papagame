package kotlinx.coroutines.flow;

import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.flow.internal.ChannelFlowMerge;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge;
import kotlinx.coroutines.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,214:1\n49#2:215\n51#2:219\n49#2:220\n51#2:224\n46#3:216\n51#3:218\n46#3:221\n51#3:223\n105#4:217\n105#4:222\n105#4:225\n1#5:226\n*S KotlinDebug\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n43#1:215\n43#1:219\n70#1:220\n70#1:224\n43#1:216\n43#1:218\n70#1:221\n70#1:223\n43#1:217\n70#1:222\n78#1:225\n*E\n"})
final /* synthetic */ class FlowKt__MergeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f93017a = t0.b(g.f93255a, 16, 1, Integer.MAX_VALUE);

    /* JADX INFO: Add missing generic type declarations: [T] */
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n1#1,111:1\n79#2,2:112\n*E\n"})
    public static final class a<T> implements e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f93018b;

        public a(e eVar) {
            this.f93018b = eVar;
        }

        @Override // kotlinx.coroutines.flow.e
        @Nullable
        public Object a(@NotNull f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) {
            Object objA = this.f93018b.a(new FlowKt__MergeKt$flattenConcat$1$1(fVar), continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> e<R> a(@NotNull final e<? extends T> eVar, @NotNull final Function2<? super T, ? super Continuation<? super e<? extends R>>, ? extends Object> function2) {
        return g.F0(new e<e<? extends R>>() { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2, reason: invalid class name */
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,218:1\n50#2:219\n*E\n"})
            public static final class AnonymousClass2<T> implements f {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ f f93021b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                final /* synthetic */ Function2 f93022c;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2", f = "Merge.kt", i = {}, l = {219, 219}, m = "emit", n = {}, s = {})
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,218:1\n*E\n"})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(f fVar, Function2 function2) {
                    this.f93021b = fVar;
                    this.f93022c = function2;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.f
                @Nullable
                public final Object emit(Object obj, @NotNull Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    f fVar;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i10 = anonymousClass1.label;
                        if ((i10 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i10 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i11 = anonymousClass1.label;
                    if (i11 != 0) {
                        if (i11 == 1) {
                            f fVar2 = (f) anonymousClass1.L$0;
                            ResultKt.throwOnFailure(obj2);
                            fVar = fVar2;
                        } else {
                            if (i11 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj2);
                        }
                        return Unit.INSTANCE;
                    }
                    ResultKt.throwOnFailure(obj2);
                    f fVar3 = this.f93021b;
                    Function2 function2 = this.f93022c;
                    anonymousClass1.L$0 = fVar3;
                    anonymousClass1.label = 1;
                    Object objInvoke = function2.invoke(obj, anonymousClass1);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj2 = objInvoke;
                    fVar = fVar3;
                    anonymousClass1.L$0 = null;
                    anonymousClass1.label = 2;
                    if (fVar.emit(obj2, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.e
            @Nullable
            public Object a(@NotNull f fVar, @NotNull Continuation continuation) {
                Object objA = eVar.a(new AnonymousClass2(fVar, function2), continuation);
                return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
            }
        });
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> e<R> b(@NotNull e<? extends T> eVar, @BuilderInference @NotNull Function2<? super T, ? super Continuation<? super e<? extends R>>, ? extends Object> function2) {
        return g.c2(eVar, new FlowKt__MergeKt$flatMapLatest$1(function2, null));
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> e<R> c(@NotNull final e<? extends T> eVar, int i10, @NotNull final Function2<? super T, ? super Continuation<? super e<? extends R>>, ? extends Object> function2) {
        return g.G0(new e<e<? extends R>>() { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2, reason: invalid class name */
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,218:1\n50#2:219\n*E\n"})
            public static final class AnonymousClass2<T> implements f {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ f f93025b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                final /* synthetic */ Function2 f93026c;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2", f = "Merge.kt", i = {}, l = {219, 219}, m = "emit", n = {}, s = {})
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,218:1\n*E\n"})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(f fVar, Function2 function2) {
                    this.f93025b = fVar;
                    this.f93026c = function2;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.f
                @Nullable
                public final Object emit(Object obj, @NotNull Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    f fVar;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i10 = anonymousClass1.label;
                        if ((i10 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i10 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i11 = anonymousClass1.label;
                    if (i11 != 0) {
                        if (i11 == 1) {
                            f fVar2 = (f) anonymousClass1.L$0;
                            ResultKt.throwOnFailure(obj2);
                            fVar = fVar2;
                        } else {
                            if (i11 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj2);
                        }
                        return Unit.INSTANCE;
                    }
                    ResultKt.throwOnFailure(obj2);
                    f fVar3 = this.f93025b;
                    Function2 function2 = this.f93026c;
                    anonymousClass1.L$0 = fVar3;
                    anonymousClass1.label = 1;
                    Object objInvoke = function2.invoke(obj, anonymousClass1);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj2 = objInvoke;
                    fVar = fVar3;
                    anonymousClass1.L$0 = null;
                    anonymousClass1.label = 2;
                    if (fVar.emit(obj2, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.e
            @Nullable
            public Object a(@NotNull f fVar, @NotNull Continuation continuation) {
                Object objA = eVar.a(new AnonymousClass2(fVar, function2), continuation);
                return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
            }
        }, i10);
    }

    public static /* synthetic */ e d(e eVar, int i10, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = f93017a;
        }
        return g.C0(eVar, i10, function2);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T> e<T> e(@NotNull e<? extends e<? extends T>> eVar) {
        return new a(eVar);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T> e<T> f(@NotNull e<? extends e<? extends T>> eVar, int i10) {
        if (i10 > 0) {
            return i10 == 1 ? g.F0(eVar) : new ChannelFlowMerge(eVar, i10, null, 0, null, 28, null);
        }
        throw new IllegalArgumentException(("Expected positive concurrency level, but had " + i10).toString());
    }

    public static /* synthetic */ e g(e eVar, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = f93017a;
        }
        return g.G0(eVar, i10);
    }

    public static final int h() {
        return f93017a;
    }

    @FlowPreview
    public static /* synthetic */ void i() {
    }

    @FlowPreview
    public static /* synthetic */ void j() {
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> e<R> k(@NotNull e<? extends T> eVar, @BuilderInference @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return g.c2(eVar, new FlowKt__MergeKt$mapLatest$1(function2, null));
    }

    @NotNull
    public static final <T> e<T> l(@NotNull Iterable<? extends e<? extends T>> iterable) {
        return new ChannelLimitedFlowMerge(iterable, null, 0, null, 14, null);
    }

    @NotNull
    public static final <T> e<T> m(@NotNull e<? extends T>... eVarArr) {
        return g.Y0(ArraysKt___ArraysKt.asIterable(eVarArr));
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> e<R> n(@NotNull e<? extends T> eVar, @BuilderInference @NotNull Function3<? super f<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new ChannelFlowTransformLatest(function3, eVar, null, 0, null, 28, null);
    }
}
