package kotlinx.coroutines.flow;

import java.util.NoSuchElementException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,168:1\n123#2,15:169\n123#2,15:184\n123#2,15:199\n123#2,15:214\n123#2,15:229\n*S KotlinDebug\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n68#1:169,15\n88#1:184,15\n102#1:199,15\n120#1:214,15\n133#1:229,15\n*E\n"})
final /* synthetic */ class FlowKt__ReduceKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    @SourceDebugExtension({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n1#1,138:1\n89#2,2:139\n*E\n"})
    public static final class a<T> implements kotlinx.coroutines.flow.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f93045b;

        public a(Ref.ObjectRef objectRef) {
            this.f93045b = objectRef;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
            this.f93045b.element = t10;
            throw new AbortFlowException(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @SourceDebugExtension({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n1#1,138:1\n121#2,2:139\n*E\n"})
    public static final class b<T> implements kotlinx.coroutines.flow.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f93046b;

        public b(Ref.ObjectRef objectRef) {
            this.f93046b = objectRef;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
            this.f93046b.element = t10;
            throw new AbortFlowException(this);
        }
    }

    static final class c<T> implements kotlinx.coroutines.flow.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<Object> f93047b;

        c(Ref.ObjectRef<Object> objectRef) {
            this.f93047b = objectRef;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
            this.f93047b.element = t10;
            return Unit.INSTANCE;
        }
    }

    static final class d<T> implements kotlinx.coroutines.flow.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<T> f93048b;

        d(Ref.ObjectRef<T> objectRef) {
            this.f93048b = objectRef;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
            this.f93048b.element = t10;
            return Unit.INSTANCE;
        }
    }

    @SourceDebugExtension({"SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt$single$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n1#2:169\n*E\n"})
    static final class e<T> implements kotlinx.coroutines.flow.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<Object> f93049b;

        e(Ref.ObjectRef<Object> objectRef) {
            this.f93049b = objectRef;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
            Ref.ObjectRef<Object> objectRef = this.f93049b;
            if (!(objectRef.element == kotlinx.coroutines.flow.internal.l.f93396a)) {
                throw new IllegalArgumentException("Flow has more than one element".toString());
            }
            objectRef.element = t10;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @SourceDebugExtension({"SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n1#1,138:1\n70#2,7:139\n*E\n"})
    public static final class f<T> implements kotlinx.coroutines.flow.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f93050b;

        public f(Ref.ObjectRef objectRef) {
            this.f93050b = objectRef;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
            boolean z10;
            Ref.ObjectRef objectRef = this.f93050b;
            T t11 = objectRef.element;
            T t12 = (T) kotlinx.coroutines.flow.internal.l.f93396a;
            if (t11 == t12) {
                objectRef.element = t10;
                z10 = true;
            } else {
                objectRef.element = t12;
                z10 = false;
            }
            if (z10) {
                return Unit.INSTANCE;
            }
            throw new AbortFlowException(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object a(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, @NotNull Continuation<? super T> continuation) {
        FlowKt__ReduceKt$first$1 flowKt__ReduceKt$first$1;
        Ref.ObjectRef objectRef;
        AbortFlowException e10;
        kotlinx.coroutines.flow.f<? super Object> fVar;
        if (continuation instanceof FlowKt__ReduceKt$first$1) {
            flowKt__ReduceKt$first$1 = (FlowKt__ReduceKt$first$1) continuation;
            int i10 = flowKt__ReduceKt$first$1.f93056e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$1.f93056e = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$first$1 = new FlowKt__ReduceKt$first$1(continuation);
            }
        } else {
            flowKt__ReduceKt$first$1 = new FlowKt__ReduceKt$first$1(continuation);
        }
        Object obj = flowKt__ReduceKt$first$1.f93055d;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__ReduceKt$first$1.f93056e;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = (T) kotlinx.coroutines.flow.internal.l.f93396a;
            kotlinx.coroutines.flow.f<? super Object> aVar = new a<>(objectRef2);
            try {
                flowKt__ReduceKt$first$1.f93053b = objectRef2;
                flowKt__ReduceKt$first$1.f93054c = aVar;
                flowKt__ReduceKt$first$1.f93056e = 1;
                if (eVar.a(aVar, flowKt__ReduceKt$first$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
            } catch (AbortFlowException e11) {
                objectRef = objectRef2;
                e10 = e11;
                fVar = aVar;
                kotlinx.coroutines.flow.internal.h.b(e10, fVar);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fVar = (a) flowKt__ReduceKt$first$1.f93054c;
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$first$1.f93053b;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e12) {
                e10 = e12;
                kotlinx.coroutines.flow.internal.h.b(e10, fVar);
            }
        }
        T t10 = objectRef.element;
        if (t10 != kotlinx.coroutines.flow.internal.l.f93396a) {
            return t10;
        }
        throw new NoSuchElementException("Expected at least one element");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object b(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        FlowKt__ReduceKt$first$3 flowKt__ReduceKt$first$3;
        Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function3;
        Ref.ObjectRef objectRef;
        AbortFlowException e10;
        kotlinx.coroutines.flow.f<? super Object> fVar;
        if (continuation instanceof FlowKt__ReduceKt$first$3) {
            flowKt__ReduceKt$first$3 = (FlowKt__ReduceKt$first$3) continuation;
            int i10 = flowKt__ReduceKt$first$3.f93061f;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$first$3.f93061f = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$first$3 = new FlowKt__ReduceKt$first$3(continuation);
            }
        } else {
            flowKt__ReduceKt$first$3 = new FlowKt__ReduceKt$first$3(continuation);
        }
        Object obj = flowKt__ReduceKt$first$3.f93060e;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__ReduceKt$first$3.f93061f;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = (T) kotlinx.coroutines.flow.internal.l.f93396a;
            kotlinx.coroutines.flow.f<? super Object> flowKt__ReduceKt$first$$inlined$collectWhile$2 = new FlowKt__ReduceKt$first$$inlined$collectWhile$2<>(function2, objectRef2);
            try {
                flowKt__ReduceKt$first$3.f93057b = function2;
                flowKt__ReduceKt$first$3.f93058c = objectRef2;
                flowKt__ReduceKt$first$3.f93059d = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                flowKt__ReduceKt$first$3.f93061f = 1;
                if (eVar.a(flowKt__ReduceKt$first$$inlined$collectWhile$2, flowKt__ReduceKt$first$3) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                function3 = function2;
                objectRef = objectRef2;
            } catch (AbortFlowException e11) {
                function3 = function2;
                objectRef = objectRef2;
                e10 = e11;
                fVar = flowKt__ReduceKt$first$$inlined$collectWhile$2;
                kotlinx.coroutines.flow.internal.h.b(e10, fVar);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fVar = (FlowKt__ReduceKt$first$$inlined$collectWhile$2) flowKt__ReduceKt$first$3.f93059d;
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$first$3.f93058c;
            function3 = (Function2) flowKt__ReduceKt$first$3.f93057b;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e12) {
                e10 = e12;
                kotlinx.coroutines.flow.internal.h.b(e10, fVar);
            }
        }
        T t10 = objectRef.element;
        if (t10 != kotlinx.coroutines.flow.internal.l.f93396a) {
            return t10;
        }
        throw new NoSuchElementException("Expected at least one element matching the predicate " + function3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object c(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, @NotNull Continuation<? super T> continuation) {
        FlowKt__ReduceKt$firstOrNull$1 flowKt__ReduceKt$firstOrNull$1;
        Ref.ObjectRef objectRef;
        AbortFlowException e10;
        kotlinx.coroutines.flow.f<? super Object> fVar;
        if (continuation instanceof FlowKt__ReduceKt$firstOrNull$1) {
            flowKt__ReduceKt$firstOrNull$1 = (FlowKt__ReduceKt$firstOrNull$1) continuation;
            int i10 = flowKt__ReduceKt$firstOrNull$1.f93067e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$firstOrNull$1.f93067e = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$firstOrNull$1 = new FlowKt__ReduceKt$firstOrNull$1(continuation);
            }
        } else {
            flowKt__ReduceKt$firstOrNull$1 = new FlowKt__ReduceKt$firstOrNull$1(continuation);
        }
        Object obj = flowKt__ReduceKt$firstOrNull$1.f93066d;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__ReduceKt$firstOrNull$1.f93067e;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            kotlinx.coroutines.flow.f<? super Object> bVar = new b<>(objectRef2);
            try {
                flowKt__ReduceKt$firstOrNull$1.f93064b = objectRef2;
                flowKt__ReduceKt$firstOrNull$1.f93065c = bVar;
                flowKt__ReduceKt$firstOrNull$1.f93067e = 1;
                if (eVar.a(bVar, flowKt__ReduceKt$firstOrNull$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
            } catch (AbortFlowException e11) {
                objectRef = objectRef2;
                e10 = e11;
                fVar = bVar;
                kotlinx.coroutines.flow.internal.h.b(e10, fVar);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fVar = (b) flowKt__ReduceKt$firstOrNull$1.f93065c;
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$firstOrNull$1.f93064b;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e12) {
                e10 = e12;
                kotlinx.coroutines.flow.internal.h.b(e10, fVar);
            }
        }
        return objectRef.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object d(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        FlowKt__ReduceKt$firstOrNull$3 flowKt__ReduceKt$firstOrNull$3;
        Ref.ObjectRef objectRef;
        AbortFlowException e10;
        kotlinx.coroutines.flow.f<? super Object> fVar;
        if (continuation instanceof FlowKt__ReduceKt$firstOrNull$3) {
            flowKt__ReduceKt$firstOrNull$3 = (FlowKt__ReduceKt$firstOrNull$3) continuation;
            int i10 = flowKt__ReduceKt$firstOrNull$3.f93071e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$firstOrNull$3.f93071e = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$firstOrNull$3 = new FlowKt__ReduceKt$firstOrNull$3(continuation);
            }
        } else {
            flowKt__ReduceKt$firstOrNull$3 = new FlowKt__ReduceKt$firstOrNull$3(continuation);
        }
        Object obj = flowKt__ReduceKt$firstOrNull$3.f93070d;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__ReduceKt$firstOrNull$3.f93071e;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            kotlinx.coroutines.flow.f<? super Object> flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 = new FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2<>(function2, objectRef2);
            try {
                flowKt__ReduceKt$firstOrNull$3.f93068b = objectRef2;
                flowKt__ReduceKt$firstOrNull$3.f93069c = flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
                flowKt__ReduceKt$firstOrNull$3.f93071e = 1;
                if (eVar.a(flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2, flowKt__ReduceKt$firstOrNull$3) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
            } catch (AbortFlowException e11) {
                objectRef = objectRef2;
                e10 = e11;
                fVar = flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
                kotlinx.coroutines.flow.internal.h.b(e10, fVar);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fVar = (FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2) flowKt__ReduceKt$firstOrNull$3.f93069c;
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$firstOrNull$3.f93068b;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e12) {
                e10 = e12;
                kotlinx.coroutines.flow.internal.h.b(e10, fVar);
            }
        }
        return objectRef.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <T, R> Object e(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, R r10, @NotNull Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, @NotNull Continuation<? super R> continuation) {
        FlowKt__ReduceKt$fold$1 flowKt__ReduceKt$fold$1;
        Ref.ObjectRef objectRef;
        if (continuation instanceof FlowKt__ReduceKt$fold$1) {
            flowKt__ReduceKt$fold$1 = (FlowKt__ReduceKt$fold$1) continuation;
            int i10 = flowKt__ReduceKt$fold$1.f93074d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$fold$1.f93074d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$fold$1 = new FlowKt__ReduceKt$fold$1(continuation);
            }
        } else {
            flowKt__ReduceKt$fold$1 = new FlowKt__ReduceKt$fold$1(continuation);
        }
        Object obj = flowKt__ReduceKt$fold$1.f93073c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__ReduceKt$fold$1.f93074d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = r10;
            kotlinx.coroutines.flow.f<? super Object> flowKt__ReduceKt$fold$2 = new FlowKt__ReduceKt$fold$2<>(objectRef2, function3);
            flowKt__ReduceKt$fold$1.f93072b = objectRef2;
            flowKt__ReduceKt$fold$1.f93074d = 1;
            if (eVar.a(flowKt__ReduceKt$fold$2, flowKt__ReduceKt$fold$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$fold$1.f93072b;
            ResultKt.throwOnFailure(obj);
        }
        return objectRef.element;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T, R> Object f(kotlinx.coroutines.flow.e<? extends T> eVar, R r10, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super R> continuation) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = r10;
        FlowKt__ReduceKt$fold$2 flowKt__ReduceKt$fold$2 = new FlowKt__ReduceKt$fold$2(objectRef, function3);
        InlineMarker.mark(0);
        eVar.a(flowKt__ReduceKt$fold$2, continuation);
        InlineMarker.mark(1);
        return objectRef.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object g(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, @NotNull Continuation<? super T> continuation) {
        FlowKt__ReduceKt$last$1 flowKt__ReduceKt$last$1;
        Ref.ObjectRef objectRef;
        if (continuation instanceof FlowKt__ReduceKt$last$1) {
            flowKt__ReduceKt$last$1 = (FlowKt__ReduceKt$last$1) continuation;
            int i10 = flowKt__ReduceKt$last$1.f93079d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$last$1.f93079d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$last$1 = new FlowKt__ReduceKt$last$1(continuation);
            }
        } else {
            flowKt__ReduceKt$last$1 = new FlowKt__ReduceKt$last$1(continuation);
        }
        Object obj = flowKt__ReduceKt$last$1.f93078c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__ReduceKt$last$1.f93079d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = (T) kotlinx.coroutines.flow.internal.l.f93396a;
            kotlinx.coroutines.flow.f<? super Object> cVar = new c<>(objectRef2);
            flowKt__ReduceKt$last$1.f93077b = objectRef2;
            flowKt__ReduceKt$last$1.f93079d = 1;
            if (eVar.a(cVar, flowKt__ReduceKt$last$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$last$1.f93077b;
            ResultKt.throwOnFailure(obj);
        }
        T t10 = objectRef.element;
        if (t10 != kotlinx.coroutines.flow.internal.l.f93396a) {
            return t10;
        }
        throw new NoSuchElementException("Expected at least one element");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object h(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, @NotNull Continuation<? super T> continuation) {
        FlowKt__ReduceKt$lastOrNull$1 flowKt__ReduceKt$lastOrNull$1;
        Ref.ObjectRef objectRef;
        if (continuation instanceof FlowKt__ReduceKt$lastOrNull$1) {
            flowKt__ReduceKt$lastOrNull$1 = (FlowKt__ReduceKt$lastOrNull$1) continuation;
            int i10 = flowKt__ReduceKt$lastOrNull$1.f93082d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$lastOrNull$1.f93082d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$lastOrNull$1 = new FlowKt__ReduceKt$lastOrNull$1(continuation);
            }
        } else {
            flowKt__ReduceKt$lastOrNull$1 = new FlowKt__ReduceKt$lastOrNull$1(continuation);
        }
        Object obj = flowKt__ReduceKt$lastOrNull$1.f93081c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__ReduceKt$lastOrNull$1.f93082d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            kotlinx.coroutines.flow.f<? super Object> dVar = new d<>(objectRef2);
            flowKt__ReduceKt$lastOrNull$1.f93080b = objectRef2;
            flowKt__ReduceKt$lastOrNull$1.f93082d = 1;
            if (eVar.a(dVar, flowKt__ReduceKt$lastOrNull$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$lastOrNull$1.f93080b;
            ResultKt.throwOnFailure(obj);
        }
        return objectRef.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.internal.q0] */
    @Nullable
    public static final <S, T extends S> Object i(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, @NotNull Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3, @NotNull Continuation<? super S> continuation) {
        FlowKt__ReduceKt$reduce$1 flowKt__ReduceKt$reduce$1;
        Ref.ObjectRef objectRef;
        if (continuation instanceof FlowKt__ReduceKt$reduce$1) {
            flowKt__ReduceKt$reduce$1 = (FlowKt__ReduceKt$reduce$1) continuation;
            int i10 = flowKt__ReduceKt$reduce$1.f93085d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$reduce$1.f93085d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$reduce$1 = new FlowKt__ReduceKt$reduce$1(continuation);
            }
        } else {
            flowKt__ReduceKt$reduce$1 = new FlowKt__ReduceKt$reduce$1(continuation);
        }
        Object obj = flowKt__ReduceKt$reduce$1.f93084c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__ReduceKt$reduce$1.f93085d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = kotlinx.coroutines.flow.internal.l.f93396a;
            kotlinx.coroutines.flow.f<? super Object> flowKt__ReduceKt$reduce$2 = new FlowKt__ReduceKt$reduce$2<>(objectRef2, function3);
            flowKt__ReduceKt$reduce$1.f93083b = objectRef2;
            flowKt__ReduceKt$reduce$1.f93085d = 1;
            if (eVar.a(flowKt__ReduceKt$reduce$2, flowKt__ReduceKt$reduce$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$reduce$1.f93083b;
            ResultKt.throwOnFailure(obj);
        }
        T t10 = objectRef.element;
        if (t10 != kotlinx.coroutines.flow.internal.l.f93396a) {
            return t10;
        }
        throw new NoSuchElementException("Empty flow can't be reduced");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object j(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, @NotNull Continuation<? super T> continuation) {
        FlowKt__ReduceKt$single$1 flowKt__ReduceKt$single$1;
        Ref.ObjectRef objectRef;
        if (continuation instanceof FlowKt__ReduceKt$single$1) {
            flowKt__ReduceKt$single$1 = (FlowKt__ReduceKt$single$1) continuation;
            int i10 = flowKt__ReduceKt$single$1.f93094d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$single$1.f93094d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$single$1 = new FlowKt__ReduceKt$single$1(continuation);
            }
        } else {
            flowKt__ReduceKt$single$1 = new FlowKt__ReduceKt$single$1(continuation);
        }
        Object obj = flowKt__ReduceKt$single$1.f93093c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__ReduceKt$single$1.f93094d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = (T) kotlinx.coroutines.flow.internal.l.f93396a;
            kotlinx.coroutines.flow.f<? super Object> eVar2 = new e<>(objectRef2);
            flowKt__ReduceKt$single$1.f93092b = objectRef2;
            flowKt__ReduceKt$single$1.f93094d = 1;
            if (eVar.a(eVar2, flowKt__ReduceKt$single$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$single$1.f93092b;
            ResultKt.throwOnFailure(obj);
        }
        T t10 = objectRef.element;
        if (t10 != kotlinx.coroutines.flow.internal.l.f93396a) {
            return t10;
        }
        throw new NoSuchElementException("Flow is empty");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object k(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, @NotNull Continuation<? super T> continuation) {
        FlowKt__ReduceKt$singleOrNull$1 flowKt__ReduceKt$singleOrNull$1;
        Ref.ObjectRef objectRef;
        AbortFlowException e10;
        kotlinx.coroutines.flow.f<? super Object> fVar;
        if (continuation instanceof FlowKt__ReduceKt$singleOrNull$1) {
            flowKt__ReduceKt$singleOrNull$1 = (FlowKt__ReduceKt$singleOrNull$1) continuation;
            int i10 = flowKt__ReduceKt$singleOrNull$1.f93098e;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__ReduceKt$singleOrNull$1.f93098e = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__ReduceKt$singleOrNull$1 = new FlowKt__ReduceKt$singleOrNull$1(continuation);
            }
        } else {
            flowKt__ReduceKt$singleOrNull$1 = new FlowKt__ReduceKt$singleOrNull$1(continuation);
        }
        Object obj = flowKt__ReduceKt$singleOrNull$1.f93097d;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__ReduceKt$singleOrNull$1.f93098e;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = (T) kotlinx.coroutines.flow.internal.l.f93396a;
            kotlinx.coroutines.flow.f<? super Object> fVar2 = new f<>(objectRef2);
            try {
                flowKt__ReduceKt$singleOrNull$1.f93095b = objectRef2;
                flowKt__ReduceKt$singleOrNull$1.f93096c = fVar2;
                flowKt__ReduceKt$singleOrNull$1.f93098e = 1;
                if (eVar.a(fVar2, flowKt__ReduceKt$singleOrNull$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef = objectRef2;
            } catch (AbortFlowException e11) {
                objectRef = objectRef2;
                e10 = e11;
                fVar = fVar2;
                kotlinx.coroutines.flow.internal.h.b(e10, fVar);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fVar = (f) flowKt__ReduceKt$singleOrNull$1.f93096c;
            objectRef = (Ref.ObjectRef) flowKt__ReduceKt$singleOrNull$1.f93095b;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e12) {
                e10 = e12;
                kotlinx.coroutines.flow.internal.h.b(e10, fVar);
            }
        }
        T t10 = objectRef.element;
        if (t10 == kotlinx.coroutines.flow.internal.l.f93396a) {
            return null;
        }
        return t10;
    }
}
