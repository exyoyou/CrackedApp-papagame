package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.s;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "Lkotlinx/coroutines/l0;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1", f = "Combine.kt", i = {0, 0}, l = {123}, m = "invokeSuspend", n = {"second", "collectJob"}, s = {"L$0", "L$1"})
final class CombineKt$zipImpl$1$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f93331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f93332c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private /* synthetic */ Object f93333d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.e<T2> f93334e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.e<T1> f93335f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.flow.f<R> f93336g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f93337h;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "", "it", "<anonymous>"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2", f = "Combine.kt", i = {}, l = {124}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f93339b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.e<T1> f93340c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ CoroutineContext f93341d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f93342e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ReceiveChannel<Object> f93343f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.f<R> f93344g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f93345h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ z f93346i;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1, reason: invalid class name */
        static final class AnonymousClass1<T> implements kotlinx.coroutines.flow.f {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ CoroutineContext f93347b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Object f93348c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ ReceiveChannel<Object> f93349d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.flow.f<R> f93350e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f93351f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ z f93352g;

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "", "it", "<anonymous>"}, k = 3, mv = {1, 9, 0})
            @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1", f = "Combine.kt", i = {}, l = {126, 129, 129}, m = "invokeSuspend", n = {}, s = {})
            @SourceDebugExtension({"SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,140:1\n509#2,5:141\n14#3:146\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n*L\n126#1:141,5\n129#1:146\n*E\n"})
            static final class C12001 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                Object f93353b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                int f93354c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                final /* synthetic */ ReceiveChannel<Object> f93355d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.f<R> f93356e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f93357f;

                /* JADX INFO: renamed from: g, reason: collision with root package name */
                final /* synthetic */ T1 f93358g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                final /* synthetic */ z f93359h;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C12001(ReceiveChannel<? extends Object> receiveChannel, kotlinx.coroutines.flow.f<? super R> fVar, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, T1 t10, z zVar, Continuation<? super C12001> continuation) {
                    super(2, continuation);
                    this.f93355d = receiveChannel;
                    this.f93356e = fVar;
                    this.f93357f = function3;
                    this.f93358g = t10;
                    this.f93359h = zVar;
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public final Object invoke(@NotNull Unit unit, @Nullable Continuation<? super Unit> continuation) {
                    return ((C12001) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
                    return new C12001(this.f93355d, this.f93356e, this.f93357f, this.f93358g, this.f93359h, continuation);
                }

                /* JADX WARN: Code duplicated, block: B:29:0x0070 A[RETURN] */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r1v3, types: [kotlinx.coroutines.flow.f] */
                /* JADX WARN: Type inference failed for: r1v6 */
                /* JADX WARN: Type inference failed for: r1v7 */
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
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
                    Object objZ;
                    ?? r10;
                    Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i10 = this.f93354c;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            ResultKt.throwOnFailure(obj);
                            objZ = ((kotlinx.coroutines.channels.j) obj).o();
                        } else if (i10 == 2) {
                            kotlinx.coroutines.flow.f fVar = (kotlinx.coroutines.flow.f) this.f93353b;
                            ResultKt.throwOnFailure(obj);
                            r10 = fVar;
                            this.f93353b = null;
                            this.f93354c = 3;
                            if (r10.emit(obj, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            if (i10 != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                        }
                        return Unit.INSTANCE;
                    }
                    ResultKt.throwOnFailure(obj);
                    ReceiveChannel<Object> receiveChannel = this.f93355d;
                    this.f93354c = 1;
                    objZ = receiveChannel.z(this);
                    if (objZ == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    z zVar = this.f93359h;
                    if (objZ instanceof kotlinx.coroutines.channels.j.c) {
                        Throwable thF = kotlinx.coroutines.channels.j.f(objZ);
                        if (thF == null) {
                            throw new AbortFlowException(zVar);
                        }
                        throw thF;
                    }
                    Object obj2 = this.f93356e;
                    Function3 function3 = this.f93357f;
                    Object obj3 = this.f93358g;
                    if (objZ == l.f93396a) {
                        objZ = null;
                    }
                    this.f93353b = obj2;
                    this.f93354c = 2;
                    obj = function3.invoke(obj3, objZ, this);
                    r10 = obj2;
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    this.f93353b = null;
                    this.f93354c = 3;
                    if (r10.emit(obj, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(CoroutineContext coroutineContext, Object obj, ReceiveChannel<? extends Object> receiveChannel, kotlinx.coroutines.flow.f<? super R> fVar, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, z zVar) {
                this.f93347b = coroutineContext;
                this.f93348c = obj;
                this.f93349d = receiveChannel;
                this.f93350e = fVar;
                this.f93351f = function3;
                this.f93352g = zVar;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.f
            @Nullable
            public final Object emit(T1 t10, @NotNull Continuation<? super Unit> continuation) {
                CombineKt$zipImpl$1$1$2$1$emit$1 combineKt$zipImpl$1$1$2$1$emit$1;
                if (continuation instanceof CombineKt$zipImpl$1$1$2$1$emit$1) {
                    combineKt$zipImpl$1$1$2$1$emit$1 = (CombineKt$zipImpl$1$1$2$1$emit$1) continuation;
                    int i10 = combineKt$zipImpl$1$1$2$1$emit$1.f93362d;
                    if ((i10 & Integer.MIN_VALUE) != 0) {
                        combineKt$zipImpl$1$1$2$1$emit$1.f93362d = i10 - Integer.MIN_VALUE;
                    } else {
                        combineKt$zipImpl$1$1$2$1$emit$1 = new CombineKt$zipImpl$1$1$2$1$emit$1(this, continuation);
                    }
                } else {
                    combineKt$zipImpl$1$1$2$1$emit$1 = new CombineKt$zipImpl$1$1$2$1$emit$1(this, continuation);
                }
                Object obj = combineKt$zipImpl$1$1$2$1$emit$1.f93360b;
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i11 = combineKt$zipImpl$1$1$2$1$emit$1.f93362d;
                if (i11 == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineContext coroutineContext = this.f93347b;
                    Unit unit = Unit.INSTANCE;
                    Object obj2 = this.f93348c;
                    C12001 c12001 = new C12001(this.f93349d, this.f93350e, this.f93351f, t10, this.f93352g, null);
                    combineKt$zipImpl$1$1$2$1$emit$1.f93362d = 1;
                    if (d.c(coroutineContext, unit, obj2, c12001, combineKt$zipImpl$1$1$2$1$emit$1) == coroutine_suspended) {
                        return coroutine_suspended;
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(kotlinx.coroutines.flow.e<? extends T1> eVar, CoroutineContext coroutineContext, Object obj, ReceiveChannel<? extends Object> receiveChannel, kotlinx.coroutines.flow.f<? super R> fVar, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, z zVar, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.f93340c = eVar;
            this.f93341d = coroutineContext;
            this.f93342e = obj;
            this.f93343f = receiveChannel;
            this.f93344g = fVar;
            this.f93345h = function3;
            this.f93346i = zVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull Unit unit, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass2(this.f93340c, this.f93341d, this.f93342e, this.f93343f, this.f93344g, this.f93345h, this.f93346i, continuation);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.Continuation to kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2 for r10v1 'this'  kotlin.coroutines.Continuation
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.f93339b
                r2 = 1
                if (r1 == 0) goto L17
                if (r1 != r2) goto Lf
                kotlin.ResultKt.throwOnFailure(r11)
                goto L37
            Lf:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L17:
                kotlin.ResultKt.throwOnFailure(r11)
                kotlinx.coroutines.flow.e<T1> r11 = r10.f93340c
                kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1 r1 = new kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1
                kotlin.coroutines.CoroutineContext r4 = r10.f93341d
                java.lang.Object r5 = r10.f93342e
                kotlinx.coroutines.channels.ReceiveChannel<java.lang.Object> r6 = r10.f93343f
                kotlinx.coroutines.flow.f<R> r7 = r10.f93344g
                kotlin.jvm.functions.Function3<T1, T2, kotlin.coroutines.Continuation<? super R>, java.lang.Object> r8 = r10.f93345h
                kotlinx.coroutines.z r9 = r10.f93346i
                r3 = r1
                r3.<init>(r4, r5, r6, r7, r8, r9)
                r10.f93339b = r2
                java.lang.Object r11 = r11.a(r1, r10)
                if (r11 != r0) goto L37
                return r0
            L37:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CombineKt$zipImpl$1$1(kotlinx.coroutines.flow.e<? extends T2> eVar, kotlinx.coroutines.flow.e<? extends T1> eVar2, kotlinx.coroutines.flow.f<? super R> fVar, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super CombineKt$zipImpl$1$1> continuation) {
        super(2, continuation);
        this.f93334e = eVar;
        this.f93335f = eVar2;
        this.f93336g = fVar;
        this.f93337h = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        CombineKt$zipImpl$1$1 combineKt$zipImpl$1$1 = new CombineKt$zipImpl$1$1(this.f93334e, this.f93335f, this.f93336g, this.f93337h, continuation);
        combineKt$zipImpl$1$1.f93333d = obj;
        return combineKt$zipImpl$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        ReceiveChannel receiveChannel;
        ReceiveChannel receiveChannel2;
        z zVar;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.f93332c;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            l0 l0Var = (l0) this.f93333d;
            ReceiveChannel receiveChannelF = ProduceKt.f(l0Var, null, 0, new CombineKt$zipImpl$1$1$second$1(this.f93334e, null), 3, null);
            final z zVarC = JobKt__JobKt.c(null, 1, null);
            Intrinsics.checkNotNull(receiveChannelF, "null cannot be cast to non-null type kotlinx.coroutines.channels.SendChannel<*>");
            ((s) receiveChannelF).r(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1.1
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
                    if (zVarC.isActive()) {
                        zVarC.b(new AbortFlowException(zVarC));
                    }
                }
            });
            try {
                CoroutineContext coroutineContext = l0Var.getCoroutineContext();
                Object objB = ThreadContextKt.b(coroutineContext);
                CoroutineContext coroutineContextPlus = l0Var.getCoroutineContext().plus(zVarC);
                Unit unit = Unit.INSTANCE;
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f93335f, coroutineContext, objB, receiveChannelF, this.f93336g, this.f93337h, zVarC, null);
                this.f93333d = receiveChannelF;
                this.f93331b = zVarC;
                this.f93332c = 1;
                receiveChannel = receiveChannelF;
                try {
                    if (d.d(coroutineContextPlus, unit, null, anonymousClass2, this, 4, null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    receiveChannel2 = receiveChannel;
                } catch (AbortFlowException e10) {
                    e = e10;
                    receiveChannel2 = receiveChannel;
                    zVar = zVarC;
                    h.b(e, zVar);
                } catch (Throwable th) {
                    th = th;
                    receiveChannel2 = receiveChannel;
                    ReceiveChannel.DefaultImpls.b(receiveChannel2, null, 1, null);
                    throw th;
                }
            } catch (AbortFlowException e11) {
                e = e11;
                receiveChannel = receiveChannelF;
            } catch (Throwable th2) {
                th = th2;
                receiveChannel = receiveChannelF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            zVar = (z) this.f93331b;
            receiveChannel2 = (ReceiveChannel) this.f93333d;
            try {
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (AbortFlowException e12) {
                    e = e12;
                    h.b(e, zVar);
                }
            } catch (Throwable th3) {
                th = th3;
                ReceiveChannel.DefaultImpls.b(receiveChannel2, null, 1, null);
                throw th;
            }
        }
        ReceiveChannel.DefaultImpls.b(receiveChannel2, null, 1, null);
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull l0 l0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((CombineKt$zipImpl$1$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
