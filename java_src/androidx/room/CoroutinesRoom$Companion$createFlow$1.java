package androidx.room;

import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.channels.g;
import kotlinx.coroutines.channels.i;
import kotlinx.coroutines.flow.f;
import kotlinx.coroutines.h;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\u0010\u0012\f\u0012\n \u0002*\u0004\u0018\u00018\u00008\u00000\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"R", "Lkotlinx/coroutines/flow/f;", "kotlin.jvm.PlatformType", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "androidx.room.CoroutinesRoom$Companion$createFlow$1", f = "CoroutinesRoom.kt", i = {0, 0, 0, 0, 0}, l = {75}, m = "invokeSuspend", n = {"$this$flow", "observerChannel", "observer", "flowContext", "queryContext"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4"})
final class CoroutinesRoom$Companion$createFlow$1<R> extends SuspendLambda implements Function2<f<? super R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Callable $callable;
    final /* synthetic */ RoomDatabase $db;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ String[] $tableNames;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    private f p$;

    /* JADX INFO: renamed from: androidx.room.CoroutinesRoom$Companion$createFlow$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lkotlinx/coroutines/l0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 0})
    @DebugMetadata(c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1", f = "CoroutinesRoom.kt", i = {0, 1, 1, 1}, l = {80, 82}, m = "invokeSuspend", n = {"$this$withContext", "$this$withContext", HmDataChannelManager.SIGNAL, "result"}, s = {"L$0", "L$0", "L$1", "L$3"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ CoroutineContext $flowContext;
        final /* synthetic */ CoroutinesRoom$Companion$createFlow$1$observer$1 $observer;
        final /* synthetic */ g $observerChannel;
        final /* synthetic */ f $this_flow;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        private l0 p$;

        /* JADX INFO: renamed from: androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lkotlinx/coroutines/l0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 0})
        @DebugMetadata(c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1", f = "CoroutinesRoom.kt", i = {0}, l = {82}, m = "invokeSuspend", n = {"$this$withContext"}, s = {"L$0"})
        static final class C00171 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
            final /* synthetic */ Object $result;
            Object L$0;
            int label;
            private l0 p$;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00171(Object obj, Continuation continuation) {
                super(2, continuation);
                this.$result = obj;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
                C00171 c00171 = AnonymousClass1.this.new C00171(this.$result, continuation);
                c00171.p$ = (l0) obj;
                return c00171;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
                return ((C00171) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i10 = this.label;
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    l0 l0Var = this.p$;
                    f fVar = AnonymousClass1.this.$this_flow;
                    Object obj2 = this.$result;
                    this.L$0 = l0Var;
                    this.label = 1;
                    if (fVar.emit(obj2, this) == coroutine_suspended) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(f fVar, CoroutinesRoom$Companion$createFlow$1$observer$1 coroutinesRoom$Companion$createFlow$1$observer$1, g gVar, CoroutineContext coroutineContext, Continuation continuation) {
            super(2, continuation);
            this.$this_flow = fVar;
            this.$observer = coroutinesRoom$Companion$createFlow$1$observer$1;
            this.$observerChannel = gVar;
            this.$flowContext = coroutineContext;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_flow, this.$observer, this.$observerChannel, this.$flowContext, continuation);
            anonymousClass1.p$ = (l0) obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x005a A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:20:0x005b  */
        /* JADX WARN: Code duplicated, block: B:23:0x0066 A[Catch: all -> 0x009f, TRY_LEAVE, TryCatch #1 {all -> 0x009f, blocks: (B:17:0x004e, B:21:0x005e, B:23:0x0066), top: B:36:0x004e }] */
        /* JADX WARN: Code duplicated, block: B:25:0x008c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:26:0x008d  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008d -> B:36:0x004e). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r11.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L35
                if (r1 == r3) goto L27
                if (r1 != r2) goto L1f
                java.lang.Object r1 = r11.L$2
                kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
                java.lang.Object r4 = r11.L$1
                kotlin.Unit r4 = (kotlin.Unit) r4
                java.lang.Object r4 = r11.L$0
                kotlinx.coroutines.l0 r4 = (kotlinx.coroutines.l0) r4
                kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> La1
                r12 = r4
                goto L4d
            L1f:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L27:
                java.lang.Object r1 = r11.L$1
                kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
                java.lang.Object r4 = r11.L$0
                kotlinx.coroutines.l0 r4 = (kotlinx.coroutines.l0) r4
                kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> La1
                r5 = r4
                r4 = r11
                goto L5e
            L35:
                kotlin.ResultKt.throwOnFailure(r12)
                kotlinx.coroutines.l0 r12 = r11.p$
                androidx.room.CoroutinesRoom$Companion$createFlow$1 r1 = androidx.room.CoroutinesRoom$Companion$createFlow$1.this
                androidx.room.RoomDatabase r1 = r1.$db
                androidx.room.InvalidationTracker r1 = r1.getInvalidationTracker()
                androidx.room.CoroutinesRoom$Companion$createFlow$1$observer$1 r4 = r11.$observer
                r1.addObserver(r4)
                kotlinx.coroutines.channels.g r1 = r11.$observerChannel     // Catch: java.lang.Throwable -> La1
                kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> La1
            L4d:
                r4 = r11
            L4e:
                r4.L$0 = r12     // Catch: java.lang.Throwable -> L9f
                r4.L$1 = r1     // Catch: java.lang.Throwable -> L9f
                r4.label = r3     // Catch: java.lang.Throwable -> L9f
                java.lang.Object r5 = r1.b(r4)     // Catch: java.lang.Throwable -> L9f
                if (r5 != r0) goto L5b
                return r0
            L5b:
                r10 = r5
                r5 = r12
                r12 = r10
            L5e:
                java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch: java.lang.Throwable -> L9f
                boolean r12 = r12.booleanValue()     // Catch: java.lang.Throwable -> L9f
                if (r12 == 0) goto L8f
                java.lang.Object r12 = r1.next()     // Catch: java.lang.Throwable -> L9f
                kotlin.Unit r12 = (kotlin.Unit) r12     // Catch: java.lang.Throwable -> L9f
                androidx.room.CoroutinesRoom$Companion$createFlow$1 r6 = androidx.room.CoroutinesRoom$Companion$createFlow$1.this     // Catch: java.lang.Throwable -> L9f
                java.util.concurrent.Callable r6 = r6.$callable     // Catch: java.lang.Throwable -> L9f
                java.lang.Object r6 = r6.call()     // Catch: java.lang.Throwable -> L9f
                kotlin.coroutines.CoroutineContext r7 = r4.$flowContext     // Catch: java.lang.Throwable -> L9f
                androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1 r8 = new androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1     // Catch: java.lang.Throwable -> L9f
                r9 = 0
                r8.<init>(r6, r9)     // Catch: java.lang.Throwable -> L9f
                r4.L$0 = r5     // Catch: java.lang.Throwable -> L9f
                r4.L$1 = r12     // Catch: java.lang.Throwable -> L9f
                r4.L$2 = r1     // Catch: java.lang.Throwable -> L9f
                r4.L$3 = r6     // Catch: java.lang.Throwable -> L9f
                r4.label = r2     // Catch: java.lang.Throwable -> L9f
                java.lang.Object r12 = kotlinx.coroutines.h.h(r7, r8, r4)     // Catch: java.lang.Throwable -> L9f
                if (r12 != r0) goto L8d
                return r0
            L8d:
                r12 = r5
                goto L4e
            L8f:
                androidx.room.CoroutinesRoom$Companion$createFlow$1 r12 = androidx.room.CoroutinesRoom$Companion$createFlow$1.this
                androidx.room.RoomDatabase r12 = r12.$db
                androidx.room.InvalidationTracker r12 = r12.getInvalidationTracker()
                androidx.room.CoroutinesRoom$Companion$createFlow$1$observer$1 r0 = r4.$observer
                r12.removeObserver(r0)
                kotlin.Unit r12 = kotlin.Unit.INSTANCE
                return r12
            L9f:
                r12 = move-exception
                goto La3
            La1:
                r12 = move-exception
                r4 = r11
            La3:
                androidx.room.CoroutinesRoom$Companion$createFlow$1 r0 = androidx.room.CoroutinesRoom$Companion$createFlow$1.this
                androidx.room.RoomDatabase r0 = r0.$db
                androidx.room.InvalidationTracker r0 = r0.getInvalidationTracker()
                androidx.room.CoroutinesRoom$Companion$createFlow$1$observer$1 r1 = r4.$observer
                r0.removeObserver(r1)
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.CoroutinesRoom$Companion$createFlow$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoroutinesRoom$Companion$createFlow$1(String[] strArr, boolean z10, RoomDatabase roomDatabase, Callable callable, Continuation continuation) {
        super(2, continuation);
        this.$tableNames = strArr;
        this.$inTransaction = z10;
        this.$db = roomDatabase;
        this.$callable = callable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        CoroutinesRoom$Companion$createFlow$1 coroutinesRoom$Companion$createFlow$1 = new CoroutinesRoom$Companion$createFlow$1(this.$tableNames, this.$inTransaction, this.$db, this.$callable, continuation);
        coroutinesRoom$Companion$createFlow$1.p$ = (f) obj;
        return coroutinesRoom$Companion$createFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((CoroutinesRoom$Companion$createFlow$1) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r10v0, types: [androidx.room.CoroutinesRoom$Companion$createFlow$1$observer$1, java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            f fVar = this.p$;
            final g gVarA = i.a(-1);
            final String[] strArr = this.$tableNames;
            ?? r10 = new InvalidationTracker.Observer(strArr) { // from class: androidx.room.CoroutinesRoom$Companion$createFlow$1$observer$1
                @Override // androidx.room.InvalidationTracker.Observer
                public void onInvalidated(@NotNull Set<String> tables) {
                    gVarA.offer(Unit.INSTANCE);
                }
            };
            gVarA.offer(Unit.INSTANCE);
            CoroutineContext coroutineContext = get$context();
            CoroutineDispatcher transactionDispatcher = this.$inTransaction ? CoroutinesRoomKt.getTransactionDispatcher(this.$db) : CoroutinesRoomKt.getQueryDispatcher(this.$db);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(fVar, r10, gVarA, coroutineContext, null);
            this.L$0 = fVar;
            this.L$1 = gVarA;
            this.L$2 = r10;
            this.L$3 = coroutineContext;
            this.L$4 = transactionDispatcher;
            this.label = 1;
            if (h.h(transactionDispatcher, anonymousClass1, this) == coroutine_suspended) {
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
