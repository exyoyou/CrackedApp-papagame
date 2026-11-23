package androidx.room;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.h;
import kotlinx.coroutines.i;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.n;
import kotlinx.coroutines.o;
import kotlinx.coroutines.u2;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a;\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u001c\u0010\u0005\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0017\u0010\t\u001a\u00020\b*\u00020\u0001H\u0082@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001f\u0010\u000f\u001a\u00020\u000e*\u00020\u000b2\u0006\u0010\r\u001a\u00020\fH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"R", "Landroidx/room/RoomDatabase;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "block", "withTransaction", "(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "createTransactionContext", "(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/util/concurrent/Executor;", "Lkotlinx/coroutines/v1;", "controlJob", "Lkotlin/coroutines/ContinuationInterceptor;", "acquireTransactionThread", "(Ljava/util/concurrent/Executor;Lkotlinx/coroutines/v1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "room-ktx_release"}, k = 2, mv = {1, 4, 0})
public final class RoomDatabaseKt {

    /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt$createTransactionContext$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0005\u001a\u0004\u0018\u00010\u0004*\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0082@"}, d2 = {"Landroidx/room/RoomDatabase;", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/CoroutineContext;", "continuation", "", "createTransactionContext"}, k = 3, mv = {1, 4, 0})
    @DebugMetadata(c = "androidx.room.RoomDatabaseKt", f = "RoomDatabase.kt", i = {0, 0}, l = {99}, m = "createTransactionContext", n = {"$this$createTransactionContext", "controlJob"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RoomDatabaseKt.createTransactionContext(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt$withTransaction$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u001c\u0010\u0005\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0086@"}, d2 = {"R", "Landroidx/room/RoomDatabase;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "block", "continuation", "withTransaction"}, k = 3, mv = {1, 4, 0})
    @DebugMetadata(c = "androidx.room.RoomDatabaseKt", f = "RoomDatabase.kt", i = {0, 0, 1, 1, 1}, l = {50, 51}, m = "withTransaction", n = {"$this$withTransaction", "block", "$this$withTransaction", "block", "transactionContext"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    static final class C12911 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C12911(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RoomDatabaseKt.withTransaction(null, null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt$withTransaction$2, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"R", "Lkotlinx/coroutines/l0;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 0})
    @DebugMetadata(c = "androidx.room.RoomDatabaseKt$withTransaction$2", f = "RoomDatabase.kt", i = {0, 0}, l = {58}, m = "invokeSuspend", n = {"$this$withContext", "transactionElement"}, s = {"L$0", "L$1"})
    static final class C12922<R> extends SuspendLambda implements Function2<l0, Continuation<? super R>, Object> {
        final /* synthetic */ Function1 $block;
        final /* synthetic */ RoomDatabase $this_withTransaction;
        Object L$0;
        Object L$1;
        int label;
        private l0 p$;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C12922(RoomDatabase roomDatabase, Function1 function1, Continuation continuation) {
            super(2, continuation);
            this.$this_withTransaction = roomDatabase;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            C12922 c12922 = new C12922(this.$this_withTransaction, this.$block, continuation);
            c12922.p$ = (l0) obj;
            return c12922;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Object obj) {
            return ((C12922) create(l0Var, (Continuation) obj)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            TransactionElement transactionElement;
            TransactionElement transactionElement2;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            try {
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    l0 l0Var = this.p$;
                    CoroutineContext.Element element = l0Var.getCoroutineContext().get(TransactionElement.INSTANCE);
                    if (element == null) {
                        Intrinsics.throwNpe();
                    }
                    transactionElement = (TransactionElement) element;
                    transactionElement.acquire();
                    try {
                        this.$this_withTransaction.beginTransaction();
                        try {
                            Function1 function1 = this.$block;
                            this.L$0 = l0Var;
                            this.L$1 = transactionElement;
                            this.label = 1;
                            obj = function1.invoke(this);
                            if (obj == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            transactionElement2 = transactionElement;
                        } catch (Throwable th) {
                            th = th;
                            this.$this_withTransaction.endTransaction();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        transactionElement.release();
                        throw th;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    TransactionElement transactionElement3 = (TransactionElement) this.L$1;
                    try {
                        ResultKt.throwOnFailure(obj);
                        transactionElement2 = transactionElement3;
                    } catch (Throwable th3) {
                        th = th3;
                        this.$this_withTransaction.endTransaction();
                        throw th;
                    }
                }
                this.$this_withTransaction.setTransactionSuccessful();
                this.$this_withTransaction.endTransaction();
                transactionElement2.release();
                return obj;
            } catch (Throwable th4) {
                th = th4;
                transactionElement = coroutine_suspended;
            }
        }
    }

    @Nullable
    static final /* synthetic */ Object acquireTransactionThread(@NotNull final Executor executor, @NotNull final v1 v1Var, @NotNull Continuation<? super ContinuationInterceptor> continuation) {
        final o oVar = new o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.E(new Function1<Throwable, Unit>() { // from class: androidx.room.RoomDatabaseKt$acquireTransactionThread$$inlined$suspendCancellableCoroutine$lambda$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                v1.a.b(v1Var, null, 1, null);
            }
        });
        try {
            executor.execute(new Runnable() { // from class: androidx.room.RoomDatabaseKt$acquireTransactionThread$$inlined$suspendCancellableCoroutine$lambda$2

                /* JADX INFO: renamed from: androidx.room.RoomDatabaseKt$acquireTransactionThread$$inlined$suspendCancellableCoroutine$lambda$2$1, reason: invalid class name */
                @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/l0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "androidx/room/RoomDatabaseKt$acquireTransactionThread$2$2$1", "<anonymous>"}, k = 3, mv = {1, 4, 0})
                static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
                    Object L$0;
                    int label;
                    private l0 p$;

                    AnonymousClass1(Continuation continuation) {
                        super(2, continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
                        AnonymousClass1 anonymousClass1 = RoomDatabaseKt$acquireTransactionThread$$inlined$suspendCancellableCoroutine$lambda$2.this.new AnonymousClass1(continuation);
                        anonymousClass1.p$ = (l0) obj;
                        return anonymousClass1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i10 = this.label;
                        if (i10 == 0) {
                            ResultKt.throwOnFailure(obj);
                            l0 l0Var = this.p$;
                            n nVar = oVar;
                            CoroutineContext.Element element = l0Var.getCoroutineContext().get(ContinuationInterceptor.INSTANCE);
                            if (element == null) {
                                Intrinsics.throwNpe();
                            }
                            Result.Companion companion = Result.INSTANCE;
                            nVar.resumeWith(Result.m50constructorimpl(element));
                            v1 v1Var = v1Var;
                            this.L$0 = l0Var;
                            this.label = 1;
                            if (v1Var.R(this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // java.lang.Runnable
                public final void run() throws InterruptedException {
                    i.b(null, new AnonymousClass1(null), 1, null);
                }
            });
        } catch (RejectedExecutionException e10) {
            oVar.a(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e10));
        }
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    static final /* synthetic */ Object createTransactionContext(@NotNull RoomDatabase roomDatabase, @NotNull Continuation<? super CoroutineContext> continuation) {
        AnonymousClass1 anonymousClass1;
        RoomDatabase roomDatabase2;
        z zVar;
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
            final z zVarC = JobKt__JobKt.c(null, 1, null);
            v1 v1Var = (v1) anonymousClass1.get$context().get(v1.F1);
            if (v1Var != null) {
                v1Var.l(new Function1<Throwable, Unit>() { // from class: androidx.room.RoomDatabaseKt.createTransactionContext.2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                        invoke2(th);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable Throwable th) {
                        v1.a.b(zVarC, null, 1, null);
                    }
                });
            }
            Executor transactionExecutor = roomDatabase.getTransactionExecutor();
            Intrinsics.checkExpressionValueIsNotNull(transactionExecutor, "transactionExecutor");
            anonymousClass1.L$0 = roomDatabase;
            anonymousClass1.L$1 = zVarC;
            anonymousClass1.label = 1;
            Object objAcquireTransactionThread = acquireTransactionThread(transactionExecutor, zVarC, anonymousClass1);
            if (objAcquireTransactionThread == coroutine_suspended) {
                return coroutine_suspended;
            }
            roomDatabase2 = roomDatabase;
            zVar = zVarC;
            obj = objAcquireTransactionThread;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            zVar = (z) anonymousClass1.L$1;
            roomDatabase2 = (RoomDatabase) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) obj;
        TransactionElement transactionElement = new TransactionElement(zVar, continuationInterceptor);
        ThreadLocal<Integer> suspendingTransactionId = roomDatabase2.getSuspendingTransactionId();
        Intrinsics.checkExpressionValueIsNotNull(suspendingTransactionId, "suspendingTransactionId");
        return continuationInterceptor.plus(transactionElement).plus(u2.a(suspendingTransactionId, Boxing.boxInt(System.identityHashCode(zVar))));
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x0089 A[PHI: r7
      0x0089: PHI (r7v11 java.lang.Object) = (r7v8 java.lang.Object), (r7v1 java.lang.Object) binds: [B:26:0x0086, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <R> Object withTransaction(@NotNull RoomDatabase roomDatabase, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1, @NotNull Continuation<? super R> continuation) throws Throwable {
        C12911 c12911;
        if (continuation instanceof C12911) {
            c12911 = (C12911) continuation;
            int i10 = c12911.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c12911.label = i10 - Integer.MIN_VALUE;
            } else {
                c12911 = new C12911(continuation);
            }
        } else {
            c12911 = new C12911(continuation);
        }
        Object objCreateTransactionContext = c12911.result;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = c12911.label;
        if (i11 != 0) {
            if (i11 == 1) {
                function1 = (Function1) c12911.L$1;
                roomDatabase = (RoomDatabase) c12911.L$0;
                ResultKt.throwOnFailure(objCreateTransactionContext);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objCreateTransactionContext);
            }
            return objCreateTransactionContext;
        }
        ResultKt.throwOnFailure(objCreateTransactionContext);
        TransactionElement transactionElement = (TransactionElement) c12911.get$context().get(TransactionElement.INSTANCE);
        if (transactionElement == null || (transactionDispatcher = transactionElement.getTransactionDispatcher()) == null) {
            c12911.L$0 = roomDatabase;
            c12911.L$1 = function1;
            c12911.label = 1;
            objCreateTransactionContext = createTransactionContext(roomDatabase, c12911);
            if (objCreateTransactionContext == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        C12922 c12922 = new C12922(roomDatabase, function1, null);
        c12911.L$0 = roomDatabase;
        c12911.L$1 = function1;
        c12911.L$2 = transactionDispatcher;
        c12911.label = 2;
        objCreateTransactionContext = h.h(transactionDispatcher, c12922, c12911);
        if (objCreateTransactionContext == coroutine_suspended) {
            return coroutine_suspended;
        }
        return objCreateTransactionContext;
        CoroutineContext transactionDispatcher = (CoroutineContext) objCreateTransactionContext;
        C12922 c12923 = new C12922(roomDatabase, function1, null);
        c12911.L$0 = roomDatabase;
        c12911.L$1 = function1;
        c12911.L$2 = transactionDispatcher;
        c12911.label = 2;
        objCreateTransactionContext = h.h(transactionDispatcher, c12923, c12911);
        if (objCreateTransactionContext == coroutine_suspended) {
            return coroutine_suspended;
        }
        return objCreateTransactionContext;
    }
}
