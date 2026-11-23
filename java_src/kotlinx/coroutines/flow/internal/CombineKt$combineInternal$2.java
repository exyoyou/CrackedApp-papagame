package kotlinx.coroutines.flow.internal;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.channels.s;
import kotlinx.coroutines.h3;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"R", "T", "Lkotlinx/coroutines/l0;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {51, 73, 76}, m = "invokeSuspend", n = {"latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1"})
final class CombineKt$combineInternal$2 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f93311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f93312c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f93313d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f93314e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f93315f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private /* synthetic */ Object f93316g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.e<T>[] f93317h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final /* synthetic */ Function0<T[]> f93318i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final /* synthetic */ Function3<kotlinx.coroutines.flow.f<? super R>, T[], Continuation<? super Unit>, Object> f93319j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.f<R> f93320k;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"R", "T", "Lkotlinx/coroutines/l0;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f93321b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.e<T>[] f93322c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f93323d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ AtomicInteger f93324e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.channels.g<IndexedValue<Object>> f93325f;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1, reason: invalid class name and collision with other inner class name */
        static final class C11991<T> implements kotlinx.coroutines.flow.f {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.channels.g<IndexedValue<Object>> f93326b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f93327c;

            C11991(kotlinx.coroutines.channels.g<IndexedValue<Object>> gVar, int i10) {
                this.f93326b = gVar;
                this.f93327c = i10;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.f
            @Nullable
            public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
                CombineKt$combineInternal$2$1$1$emit$1 combineKt$combineInternal$2$1$1$emit$1;
                if (continuation instanceof CombineKt$combineInternal$2$1$1$emit$1) {
                    combineKt$combineInternal$2$1$1$emit$1 = (CombineKt$combineInternal$2$1$1$emit$1) continuation;
                    int i10 = combineKt$combineInternal$2$1$1$emit$1.f93330d;
                    if ((i10 & Integer.MIN_VALUE) != 0) {
                        combineKt$combineInternal$2$1$1$emit$1.f93330d = i10 - Integer.MIN_VALUE;
                    } else {
                        combineKt$combineInternal$2$1$1$emit$1 = new CombineKt$combineInternal$2$1$1$emit$1(this, continuation);
                    }
                } else {
                    combineKt$combineInternal$2$1$1$emit$1 = new CombineKt$combineInternal$2$1$1$emit$1(this, continuation);
                }
                Object obj = combineKt$combineInternal$2$1$1$emit$1.f93328b;
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i11 = combineKt$combineInternal$2$1$1$emit$1.f93330d;
                if (i11 != 0) {
                    if (i11 == 1) {
                        ResultKt.throwOnFailure(obj);
                    } else {
                        if (i11 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.channels.g<IndexedValue<Object>> gVar = this.f93326b;
                IndexedValue<Object> indexedValue = new IndexedValue<>(this.f93327c, t10);
                combineKt$combineInternal$2$1$1$emit$1.f93330d = 1;
                if (gVar.V(indexedValue, combineKt$combineInternal$2$1$1$emit$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                combineKt$combineInternal$2$1$1$emit$1.f93330d = 2;
                if (h3.a(combineKt$combineInternal$2$1$1$emit$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(kotlinx.coroutines.flow.e<? extends T>[] eVarArr, int i10, AtomicInteger atomicInteger, kotlinx.coroutines.channels.g<IndexedValue<Object>> gVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.f93322c = eVarArr;
            this.f93323d = i10;
            this.f93324e = atomicInteger;
            this.f93325f = gVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass1(this.f93322c, this.f93323d, this.f93324e, this.f93325f, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.f93321b;
            try {
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    kotlinx.coroutines.flow.e[] eVarArr = this.f93322c;
                    int i11 = this.f93323d;
                    kotlinx.coroutines.flow.e eVar = eVarArr[i11];
                    C11991 c11991 = new C11991(this.f93325f, i11);
                    this.f93321b = 1;
                    if (eVar.a(c11991, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                if (this.f93324e.decrementAndGet() == 0) {
                    s.a.a(this.f93325f, null, 1, null);
                }
                return Unit.INSTANCE;
            } catch (Throwable th) {
                if (this.f93324e.decrementAndGet() == 0) {
                    s.a.a(this.f93325f, null, 1, null);
                }
                throw th;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull l0 l0Var, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CombineKt$combineInternal$2(kotlinx.coroutines.flow.e<? extends T>[] eVarArr, Function0<T[]> function0, Function3<? super kotlinx.coroutines.flow.f<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, kotlinx.coroutines.flow.f<? super R> fVar, Continuation<? super CombineKt$combineInternal$2> continuation) {
        super(2, continuation);
        this.f93317h = eVarArr;
        this.f93318i = function0;
        this.f93319j = function3;
        this.f93320k = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(this.f93317h, this.f93318i, this.f93319j, this.f93320k, continuation);
        combineKt$combineInternal$2.f93316g = obj;
        return combineKt$combineInternal$2;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00d7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:26:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:28:0x00e5 A[LOOP:0: B:28:0x00e5->B:51:?, LOOP_START, PHI: r6 r10
      0x00e5: PHI (r6v6 int) = (r6v5 int), (r6v7 int) binds: [B:25:0x00e0, B:51:?] A[DONT_GENERATE, DONT_INLINE]
      0x00e5: PHI (r10v8 kotlin.collections.IndexedValue) = (r10v7 kotlin.collections.IndexedValue), (r10v21 kotlin.collections.IndexedValue) binds: [B:25:0x00e0, B:51:?] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:30:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:33:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:36:0x010c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0116  */
    /* JADX WARN: Code duplicated, block: B:40:0x012c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x012d  */
    /* JADX WARN: Code duplicated, block: B:46:0x015f  */
    /* JADX WARN: Code duplicated, block: B:49:0x010a A[EDGE_INSN: B:49:0x010a->B:35:0x010a BREAK  A[LOOP:0: B:28:0x00e5->B:51:?], SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x012d -> B:20:0x00c2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r23) {
        /*
            Method dump skipped, instruction units count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull l0 l0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((CombineKt$combineInternal$2) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
