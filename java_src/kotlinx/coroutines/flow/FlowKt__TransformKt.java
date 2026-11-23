package kotlinx.coroutines.flow;

import com.haima.hmcp.beans.HmInputMappingContent;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,132:1\n17#1:139\n19#1:143\n17#1:144\n19#1:148\n46#2:133\n51#2:135\n46#2:136\n51#2:138\n46#2:140\n51#2:142\n46#2:145\n51#2:147\n46#2:149\n51#2:151\n46#2:152\n51#2:154\n46#2:155\n51#2:157\n46#2:159\n51#2:161\n105#3:134\n105#3:137\n105#3:141\n105#3:146\n105#3:150\n105#3:153\n105#3:156\n105#3:158\n105#3:160\n105#3:162\n105#3:163\n*S KotlinDebug\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n32#1:139\n32#1:143\n37#1:144\n37#1:148\n17#1:133\n17#1:135\n24#1:136\n24#1:138\n32#1:140\n32#1:142\n37#1:145\n37#1:147\n42#1:149\n42#1:151\n49#1:152\n49#1:154\n56#1:155\n56#1:157\n74#1:159\n74#1:161\n17#1:134\n24#1:137\n32#1:141\n37#1:146\n42#1:150\n49#1:153\n56#1:156\n64#1:158\n74#1:160\n101#1:162\n121#1:163\n*E\n"})
final /* synthetic */ class FlowKt__TransformKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,111:1\n122#2,10:112\n*E\n"})
    public static final class a<T> implements e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f93118b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Function3 f93119c;

        public a(e eVar, Function3 function3) {
            this.f93118b = eVar;
            this.f93119c = function3;
        }

        @Override // kotlinx.coroutines.flow.e
        @Nullable
        public Object a(@NotNull f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) {
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = (T) kotlinx.coroutines.flow.internal.l.f93396a;
            Object objA = this.f93118b.a(new FlowKt__TransformKt$runningReduce$1$1(objectRef, this.f93119c, fVar), continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,111:1\n65#2,5:112\n*E\n"})
    public static final class b<T> implements e<IndexedValue<? extends T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ e f93120b;

        public b(e eVar) {
            this.f93120b = eVar;
        }

        @Override // kotlinx.coroutines.flow.e
        @Nullable
        public Object a(@NotNull f<? super IndexedValue<? extends T>> fVar, @NotNull Continuation<? super Unit> continuation) {
            Object objA = this.f93120b.a(new FlowKt__TransformKt$withIndex$1$1(fVar, new Ref.IntRef()), continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
    }

    @NotNull
    public static final <T> e<T> a(@NotNull e<? extends T> eVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__TransformKt$filter$$inlined$unsafeTransform$1(eVar, function2);
    }

    public static final /* synthetic */ <R> e<R> b(e<?> eVar) {
        Intrinsics.needClassReification();
        return new FlowKt__TransformKt$filterIsInstance$$inlined$filter$1(eVar);
    }

    @NotNull
    public static final <R> e<R> c(@NotNull final e<?> eVar, @NotNull final KClass<R> kClass) {
        return (e<R>) new e<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2, reason: invalid class name */
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,218:1\n18#2:219\n37#2:220\n19#2:221\n*E\n"})
            public static final class AnonymousClass2<T> implements f {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ f f93129b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                final /* synthetic */ KClass f93130c;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2", f = "Transform.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,218:1\n*E\n"})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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

                public AnonymousClass2(f fVar, KClass kClass) {
                    this.f93129b = fVar;
                    this.f93130c = kClass;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.f
                @Nullable
                public final Object emit(Object obj, @NotNull Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
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
                    if (i11 == 0) {
                        ResultKt.throwOnFailure(obj2);
                        f fVar = this.f93129b;
                        if (this.f93130c.isInstance(obj)) {
                            anonymousClass1.label = 1;
                            if (fVar.emit(obj, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        if (i11 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.e
            @Nullable
            public Object a(@NotNull f<? super Object> fVar, @NotNull Continuation continuation) {
                Object objA = eVar.a(new AnonymousClass2(fVar, kClass), continuation);
                return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
            }
        };
    }

    @NotNull
    public static final <T> e<T> d(@NotNull e<? extends T> eVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1(eVar, function2);
    }

    @NotNull
    public static final <T> e<T> e(@NotNull final e<? extends T> eVar) {
        return new e<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2, reason: invalid class name */
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,218:1\n43#2,2:219\n*E\n"})
            public static final class AnonymousClass2<T> implements f {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ f f93136b;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,218:1\n*E\n"})
                public static final class AnonymousClass1 extends ContinuationImpl {
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

                public AnonymousClass2(f fVar) {
                    this.f93136b = fVar;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.f
                @Nullable
                public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
                    AnonymousClass1 anonymousClass1;
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
                    Object obj = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i11 = anonymousClass1.label;
                    if (i11 == 0) {
                        ResultKt.throwOnFailure(obj);
                        f fVar = this.f93136b;
                        if (t10 != null) {
                            anonymousClass1.label = 1;
                            if (fVar.emit(t10, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        if (i11 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.e
            @Nullable
            public Object a(@NotNull f fVar, @NotNull Continuation continuation) {
                Object objA = eVar.a(new AnonymousClass2(fVar), continuation);
                return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
            }
        };
    }

    @NotNull
    public static final <T, R> e<R> f(@NotNull e<? extends T> eVar, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return new FlowKt__TransformKt$map$$inlined$unsafeTransform$1(eVar, function2);
    }

    @NotNull
    public static final <T, R> e<R> g(@NotNull e<? extends T> eVar, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return new FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1(eVar, function2);
    }

    @NotNull
    public static final <T> e<T> h(@NotNull final e<? extends T> eVar, @NotNull final Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new e<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2, reason: invalid class name */
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,218:1\n75#2,2:219\n*E\n"})
            public static final class AnonymousClass2<T> implements f {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ f f93147b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                final /* synthetic */ Function2 f93148c;

                /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {0, 0}, l = {219, 220}, m = "emit", n = {HmInputMappingContent.FIELD_VALUE, "$this$onEach_u24lambda_u248"}, s = {"L$0", "L$1"})
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,218:1\n*E\n"})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
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
                    this.f93147b = fVar;
                    this.f93148c = function2;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlinx.coroutines.flow.f
                @Nullable
                public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
                    AnonymousClass1 anonymousClass1;
                    Object obj;
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
                            f fVar2 = (f) anonymousClass1.L$1;
                            obj = anonymousClass1.L$0;
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
                    f fVar3 = this.f93147b;
                    Function2 function2 = this.f93148c;
                    anonymousClass1.L$0 = t10;
                    anonymousClass1.L$1 = fVar3;
                    anonymousClass1.label = 1;
                    InlineMarker.mark(6);
                    Object objInvoke = function2.invoke(t10, anonymousClass1);
                    InlineMarker.mark(7);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj = t10;
                    fVar = fVar3;
                    anonymousClass1.L$0 = null;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.label = 2;
                    if (fVar.emit(obj, anonymousClass1) == coroutine_suspended) {
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
        };
    }

    @NotNull
    public static final <T, R> e<R> i(@NotNull e<? extends T> eVar, R r10, @BuilderInference @NotNull Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return new FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1(r10, eVar, function3);
    }

    @NotNull
    public static final <T> e<T> j(@NotNull e<? extends T> eVar, @NotNull Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3) {
        return new a(eVar, function3);
    }

    @NotNull
    public static final <T, R> e<R> k(@NotNull e<? extends T> eVar, R r10, @BuilderInference @NotNull Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return g.y1(eVar, r10, function3);
    }

    @NotNull
    public static final <T> e<IndexedValue<T>> l(@NotNull e<? extends T> eVar) {
        return new b(eVar);
    }
}
