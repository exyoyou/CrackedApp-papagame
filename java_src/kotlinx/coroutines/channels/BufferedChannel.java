package kotlinx.coroutines.channels;

import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import io.netty.util.internal.StringUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt___StringsKt;
import kotlin.time.DurationKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.f3;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.internal.n0;
import kotlinx.coroutines.internal.o0;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.internal.q0;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.TrySelectDetailedResult;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 7 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n+ 8 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 9 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 10 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3086:1\n273#1,6:3089\n280#1,68:3096\n397#1,18:3187\n244#1:3205\n269#1,10:3206\n280#1,48:3217\n418#1:3265\n334#1,14:3266\n422#1,3:3281\n244#1:3294\n269#1,10:3295\n280#1,68:3306\n244#1:3384\n269#1,10:3385\n280#1,68:3396\n244#1:3468\n269#1,10:3469\n280#1,68:3480\n244#1:3549\n269#1,10:3550\n280#1,68:3561\n909#1,52:3631\n987#1,8:3687\n881#1:3695\n905#1,33:3696\n997#1:3729\n939#1,14:3730\n958#1,3:3745\n1002#1,6:3748\n909#1,52:3762\n987#1,8:3818\n881#1:3826\n905#1,33:3827\n997#1:3860\n939#1,14:3861\n958#1,3:3876\n1002#1,6:3879\n881#1:3894\n905#1,48:3895\n958#1,3:3944\n881#1:3947\n905#1,48:3948\n958#1,3:3997\n244#1:4009\n269#1,10:4010\n280#1,68:4021\n881#1:4090\n905#1,48:4091\n958#1,3:4140\n1#2:3087\n3069#3:3088\n3069#3:3095\n3069#3:3216\n3069#3:3305\n3069#3:3395\n3069#3:3467\n3069#3:3479\n3069#3:3560\n3069#3:3630\n3069#3:3893\n3069#3:4000\n3069#3:4001\n3083#3:4002\n3083#3:4003\n3082#3:4004\n3082#3:4005\n3082#3:4006\n3083#3:4007\n3082#3:4008\n3069#3:4020\n3070#3:4143\n3069#3:4144\n3069#3:4145\n3069#3:4146\n3070#3:4147\n3069#3:4148\n3070#3:4171\n3069#3:4172\n3069#3:4173\n3070#3:4174\n3069#3:4224\n3070#3:4225\n3070#3:4226\n3070#3:4244\n3070#3:4245\n318#4,9:3164\n327#4,2:3181\n336#4,4:3183\n340#4,8:3284\n318#4,9:3375\n327#4,2:3465\n336#4,4:3683\n340#4,8:3754\n336#4,4:3814\n340#4,8:3885\n216#5:3173\n217#5:3176\n216#5:3177\n217#5:3180\n57#6,2:3174\n57#6,2:3178\n57#6,2:3292\n269#7:3280\n269#7:3374\n269#7:3464\n269#7:3548\n269#7:3629\n269#7:4089\n905#8:3744\n905#8:3875\n905#8:3943\n905#8:3996\n905#8:4139\n33#9,11:4149\n33#9,11:4160\n68#10,3:4175\n42#10,8:4178\n68#10,3:4186\n42#10,8:4189\n42#10,8:4197\n68#10,3:4205\n42#10,8:4208\n42#10,8:4216\n766#11:4227\n857#11,2:4228\n2310#11,14:4230\n766#11:4246\n857#11,2:4247\n2310#11,14:4249\n766#11:4263\n857#11,2:4264\n2310#11,14:4266\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n*L\n113#1:3089,6\n113#1:3096,68\n154#1:3187,18\n154#1:3205\n154#1:3206,10\n154#1:3217,48\n154#1:3265\n154#1:3266,14\n154#1:3281,3\n194#1:3294\n194#1:3295,10\n194#1:3306,68\n225#1:3384\n225#1:3385,10\n225#1:3396,68\n356#1:3468\n356#1:3469,10\n356#1:3480,68\n414#1:3549\n414#1:3550,10\n414#1:3561,68\n690#1:3631,52\n719#1:3687,8\n719#1:3695\n719#1:3696,33\n719#1:3729\n719#1:3730,14\n719#1:3745,3\n719#1:3748,6\n755#1:3762,52\n771#1:3818,8\n771#1:3826\n771#1:3827,33\n771#1:3860\n771#1:3861,14\n771#1:3876,3\n771#1:3879,6\n804#1:3894\n804#1:3895,48\n804#1:3944,3\n994#1:3947\n994#1:3948,48\n994#1:3997,3\n1487#1:4009\n1487#1:4010,10\n1487#1:4021,68\n1535#1:4090\n1535#1:4091,48\n1535#1:4140,3\n70#1:3088\n113#1:3095\n154#1:3216\n194#1:3305\n225#1:3395\n278#1:3467\n356#1:3479\n414#1:3560\n629#1:3630\n794#1:3893\n1030#1:4000\n1079#1:4001\n1397#1:4002\n1399#1:4003\n1429#1:4004\n1439#1:4005\n1448#1:4006\n1449#1:4007\n1456#1:4008\n1487#1:4020\n1896#1:4143\n1898#1:4144\n1900#1:4145\n1913#1:4146\n1924#1:4147\n1925#1:4148\n2227#1:4171\n2240#1:4172\n2250#1:4173\n2253#1:4174\n2570#1:4224\n2572#1:4225\n2597#1:4226\n2659#1:4244\n2660#1:4245\n134#1:3164,9\n134#1:3181,2\n153#1:3183,4\n153#1:3284,8\n221#1:3375,9\n221#1:3465,2\n718#1:3683,4\n718#1:3754,8\n769#1:3814,4\n769#1:3885,8\n138#1:3173\n138#1:3176\n141#1:3177\n141#1:3180\n138#1:3174,2\n141#1:3178,2\n183#1:3292,2\n154#1:3280\n194#1:3374\n225#1:3464\n356#1:3548\n414#1:3629\n1487#1:4089\n719#1:3744\n771#1:3875\n804#1:3943\n994#1:3996\n1535#1:4139\n2129#1:4149,11\n2184#1:4160,11\n2392#1:4175,3\n2392#1:4178,8\n2447#1:4186,3\n2447#1:4189,8\n2466#1:4197,8\n2496#1:4205,3\n2496#1:4208,8\n2557#1:4216,8\n2606#1:4227\n2606#1:4228,2\n2607#1:4230,14\n2671#1:4246\n2671#1:4247,2\n2672#1:4249,14\n2712#1:4263\n2712#1:4264,2\n2713#1:4266,14\n*E\n"})
public class BufferedChannel<E> implements g<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f92385e = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f92386f = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f92387g = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f92388h = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f92389i = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f92390j = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f92391k = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f92392l = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f92393m = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
    private volatile /* synthetic */ Object _closeCause$volatile;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f92394b;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @JvmField
    @Nullable
    public final Function1<E, Unit> f92395c;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final Function3<kotlinx.coroutines.selects.j<?>, Object, Object, Function1<Throwable, Unit>> f92396d;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    @SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3086:1\n909#2,52:3087\n987#2,8:3143\n881#2:3151\n905#2,33:3152\n997#2:3185\n939#2,14:3186\n958#2,3:3201\n1002#2,6:3204\n336#3,4:3139\n340#3,8:3210\n905#4:3200\n57#5,2:3218\n57#5,2:3221\n1#6:3220\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1618#1:3087,52\n1655#1:3143,8\n1655#1:3151\n1655#1:3152,33\n1655#1:3185\n1655#1:3186,14\n1655#1:3201,3\n1655#1:3204,6\n1653#1:3139,4\n1653#1:3210,8\n1655#1:3200\n1691#1:3218,2\n1739#1:3221,2\n*E\n"})
    private final class a implements ChannelIterator<E>, f3 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private Object f92397b = BufferedChannelKt.f92447x;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private kotlinx.coroutines.o<? super Boolean> f92398c;

        public a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object h(k<E> kVar, int i10, long j10, Continuation<? super Boolean> continuation) {
            Boolean boolBoxBoolean;
            BufferedChannel<E> bufferedChannel = BufferedChannel.this;
            kotlinx.coroutines.o oVarB = kotlinx.coroutines.q.b(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
            try {
                this.f92398c = oVarB;
                Object objC2 = bufferedChannel.c2(kVar, i10, j10, this);
                if (objC2 != BufferedChannelKt.f92438o) {
                    Function1<Throwable, Unit> function1A = null;
                    if (objC2 == BufferedChannelKt.f92440q) {
                        if (j10 < bufferedChannel.E0()) {
                            kVar.c();
                        }
                        k kVar2 = (k) BufferedChannel.v0().get(bufferedChannel);
                        while (true) {
                            if (bufferedChannel.D()) {
                                j();
                                break;
                            }
                            long andIncrement = BufferedChannel.x0().getAndIncrement(bufferedChannel);
                            int i11 = BufferedChannelKt.f92425b;
                            long j11 = andIncrement / ((long) i11);
                            int i12 = (int) (andIncrement % ((long) i11));
                            if (kVar2.f93516d != j11) {
                                k kVarB0 = bufferedChannel.b0(j11, kVar2);
                                if (kVarB0 != null) {
                                    kVar2 = kVarB0;
                                }
                            }
                            Object objC3 = bufferedChannel.c2(kVar2, i12, andIncrement, this);
                            if (objC3 == BufferedChannelKt.f92438o) {
                                bufferedChannel.k1(this, kVar2, i12);
                                break;
                            }
                            if (objC3 == BufferedChannelKt.f92440q) {
                                if (andIncrement < bufferedChannel.E0()) {
                                    kVar2.c();
                                }
                            } else {
                                if (objC3 == BufferedChannelKt.f92439p) {
                                    throw new IllegalStateException("unexpected".toString());
                                }
                                kVar2.c();
                                this.f92397b = objC3;
                                this.f92398c = null;
                                boolBoxBoolean = Boxing.boxBoolean(true);
                                Function1<E, Unit> function1 = bufferedChannel.f92395c;
                                if (function1 != null) {
                                    function1A = OnUndeliveredElementKt.a(function1, objC3, oVarB.get$context());
                                }
                            }
                        }
                    } else {
                        kVar.c();
                        this.f92397b = objC2;
                        this.f92398c = null;
                        boolBoxBoolean = Boxing.boxBoolean(true);
                        Function1<E, Unit> function2 = bufferedChannel.f92395c;
                        if (function2 != null) {
                            function1A = OnUndeliveredElementKt.a(function2, objC2, oVarB.get$context());
                        }
                    }
                    oVarB.p(boolBoxBoolean, function1A);
                    break;
                }
                bufferedChannel.k1(this, kVar, i10);
                Object objZ = oVarB.z();
                if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return objZ;
            } catch (Throwable th) {
                oVarB.Y();
                throw th;
            }
        }

        private final boolean i() throws Throwable {
            this.f92397b = BufferedChannelKt.z();
            Throwable thJ0 = BufferedChannel.this.j0();
            if (thJ0 == null) {
                return false;
            }
            throw p0.o(thJ0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void j() {
            kotlinx.coroutines.o<? super Boolean> oVar = this.f92398c;
            Intrinsics.checkNotNull(oVar);
            this.f92398c = null;
            this.f92397b = BufferedChannelKt.z();
            Throwable thJ0 = BufferedChannel.this.j0();
            if (thJ0 == null) {
                Result.Companion companion = Result.INSTANCE;
                oVar.resumeWith(Result.m50constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                oVar.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(thJ0)));
            }
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
        @JvmName(name = "next")
        public /* synthetic */ Object a(Continuation continuation) {
            return ChannelIterator.DefaultImpls.a(this, continuation);
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        @Nullable
        public Object b(@NotNull Continuation<? super Boolean> continuation) {
            k<E> kVar;
            BufferedChannel<E> bufferedChannel = BufferedChannel.this;
            k<E> kVar2 = (k) BufferedChannel.v0().get(bufferedChannel);
            while (!bufferedChannel.D()) {
                long andIncrement = BufferedChannel.x0().getAndIncrement(bufferedChannel);
                int i10 = BufferedChannelKt.f92425b;
                long j10 = andIncrement / ((long) i10);
                int i11 = (int) (andIncrement % ((long) i10));
                if (kVar2.f93516d != j10) {
                    k<E> kVarB0 = bufferedChannel.b0(j10, kVar2);
                    if (kVarB0 == null) {
                        continue;
                    } else {
                        kVar = kVarB0;
                    }
                } else {
                    kVar = kVar2;
                }
                Object objC2 = bufferedChannel.c2(kVar, i11, andIncrement, null);
                if (objC2 == BufferedChannelKt.f92438o) {
                    throw new IllegalStateException("unreachable".toString());
                }
                if (objC2 != BufferedChannelKt.f92440q) {
                    if (objC2 == BufferedChannelKt.f92439p) {
                        return h(kVar, i11, andIncrement, continuation);
                    }
                    kVar.c();
                    this.f92397b = objC2;
                    return Boxing.boxBoolean(true);
                }
                if (andIncrement < bufferedChannel.E0()) {
                    kVar.c();
                }
                kVar2 = kVar;
            }
            return Boxing.boxBoolean(i());
        }

        @Override // kotlinx.coroutines.f3
        public void c(@NotNull n0<?> n0Var, int i10) {
            kotlinx.coroutines.o<? super Boolean> oVar = this.f92398c;
            if (oVar != null) {
                oVar.c(n0Var, i10);
            }
        }

        public final boolean k(E e10) {
            kotlinx.coroutines.o<? super Boolean> oVar = this.f92398c;
            Intrinsics.checkNotNull(oVar);
            this.f92398c = null;
            this.f92397b = e10;
            Boolean bool = Boolean.TRUE;
            Function1<E, Unit> function1 = BufferedChannel.this.f92395c;
            return BufferedChannelKt.F(oVar, bool, function1 != null ? OnUndeliveredElementKt.a(function1, e10, oVar.get$context()) : null);
        }

        public final void l() {
            kotlinx.coroutines.o<? super Boolean> oVar = this.f92398c;
            Intrinsics.checkNotNull(oVar);
            this.f92398c = null;
            this.f92397b = BufferedChannelKt.z();
            Throwable thJ0 = BufferedChannel.this.j0();
            if (thJ0 == null) {
                Result.Companion companion = Result.INSTANCE;
                oVar.resumeWith(Result.m50constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                oVar.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(thJ0)));
            }
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public E next() throws Throwable {
            E e10 = (E) this.f92397b;
            if (!(e10 != BufferedChannelKt.f92447x)) {
                throw new IllegalStateException("`hasNext()` has not been invoked".toString());
            }
            this.f92397b = BufferedChannelKt.f92447x;
            if (e10 != BufferedChannelKt.z()) {
                return e10;
            }
            throw p0.o(BufferedChannel.this.t0());
        }
    }

    private static final class b implements f3 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NotNull
        private final kotlinx.coroutines.n<Boolean> f92400b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final /* synthetic */ kotlinx.coroutines.o<Boolean> f92401c;

        /* JADX WARN: Multi-variable type inference failed */
        public b(@NotNull kotlinx.coroutines.n<? super Boolean> nVar) {
            this.f92400b = nVar;
            Intrinsics.checkNotNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlin.Boolean>");
            this.f92401c = (kotlinx.coroutines.o) nVar;
        }

        @NotNull
        public final kotlinx.coroutines.n<Boolean> a() {
            return this.f92400b;
        }

        @Override // kotlinx.coroutines.f3
        public void c(@NotNull n0<?> n0Var, int i10) {
            this.f92401c.c(n0Var, i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [kotlin.jvm.functions.Function1<? super E, kotlin.Unit>, kotlin.jvm.functions.Function1<E, kotlin.Unit>] */
    public BufferedChannel(int i10, @Nullable Function1<? super E, Unit> function1) {
        this.f92394b = i10;
        this.f92395c = function1;
        if (!(i10 >= 0)) {
            throw new IllegalArgumentException(("Invalid channel capacity: " + i10 + ", should be >=0").toString());
        }
        this.bufferEnd$volatile = BufferedChannelKt.E(i10);
        this.completedExpandBuffersAndPauseFlag$volatile = g0();
        k kVar = new k(0L, null, this, 3);
        this.sendSegment$volatile = kVar;
        this.receiveSegment$volatile = kVar;
        if (T0()) {
            kVar = BufferedChannelKt.f92424a;
            Intrinsics.checkNotNull(kVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment$volatile = kVar;
        this.f92396d = function1 != 0 ? new Function3<kotlinx.coroutines.selects.j<?>, Object, Object, Function1<? super Throwable, ? extends Unit>>(this) { // from class: kotlinx.coroutines.channels.BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ BufferedChannel<E> f92410b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
                this.f92410b = this;
            }

            @Override // kotlin.jvm.functions.Function3
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Function1<Throwable, Unit> invoke(@NotNull final kotlinx.coroutines.selects.j<?> jVar, @Nullable Object obj, @Nullable final Object obj2) {
                final BufferedChannel<E> bufferedChannel = this.f92410b;
                return new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.channels.BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1.1
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
                    public final void invoke2(@NotNull Throwable th) {
                        if (obj2 != BufferedChannelKt.z()) {
                            OnUndeliveredElementKt.b(bufferedChannel.f92395c, obj2, jVar.getContext());
                        }
                    }
                };
            }
        } : null;
        this._closeCause$volatile = BufferedChannelKt.A;
    }

    private final /* synthetic */ Object A0() {
        return this.sendSegment$volatile;
    }

    private final void A1(f3 f3Var) {
        C1(f3Var, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater B0() {
        return f92389i;
    }

    private final void B1(f3 f3Var) {
        C1(f3Var, false);
    }

    private final /* synthetic */ long C0() {
        return this.sendersAndCloseStatus$volatile;
    }

    private final void C1(f3 f3Var, boolean z10) {
        if (f3Var instanceof b) {
            kotlinx.coroutines.n<Boolean> nVarA = ((b) f3Var).a();
            Result.Companion companion = Result.INSTANCE;
            nVarA.resumeWith(Result.m50constructorimpl(Boolean.FALSE));
            return;
        }
        if (f3Var instanceof kotlinx.coroutines.n) {
            Continuation continuation = (Continuation) f3Var;
            Result.Companion companion2 = Result.INSTANCE;
            continuation.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(z10 ? t0() : z0())));
        } else if (f3Var instanceof r) {
            kotlinx.coroutines.o<j<? extends E>> oVar = ((r) f3Var).f92714b;
            Result.Companion companion3 = Result.INSTANCE;
            oVar.resumeWith(Result.m50constructorimpl(j.b(j.f92703b.a(j0()))));
        } else if (f3Var instanceof a) {
            ((a) f3Var).l();
        } else {
            if (f3Var instanceof kotlinx.coroutines.selects.j) {
                ((kotlinx.coroutines.selects.j) f3Var).i(this, BufferedChannelKt.z());
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + f3Var).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicLongFieldUpdater D0() {
        return f92385e;
    }

    static /* synthetic */ <E> Object D1(BufferedChannel<E> bufferedChannel, E e10, Continuation<? super Unit> continuation) {
        k<E> kVar;
        k<E> kVar2 = (k) B0().get(bufferedChannel);
        while (true) {
            long andIncrement = D0().getAndIncrement(bufferedChannel);
            long j10 = andIncrement & 1152921504606846975L;
            boolean zQ0 = bufferedChannel.Q0(andIncrement);
            int i10 = BufferedChannelKt.f92425b;
            long j11 = j10 / ((long) i10);
            int i11 = (int) (j10 % ((long) i10));
            if (kVar2.f93516d != j11) {
                k<E> kVarC0 = bufferedChannel.c0(j11, kVar2);
                if (kVarC0 != null) {
                    kVar = kVarC0;
                } else if (zQ0) {
                    Object objG1 = bufferedChannel.g1(e10, continuation);
                    if (objG1 != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        break;
                    }
                    return objG1;
                }
            } else {
                kVar = kVar2;
            }
            int iE2 = bufferedChannel.e2(kVar, i11, e10, j10, null, zQ0);
            if (iE2 == 0) {
                kVar.c();
                break;
            }
            if (iE2 != 1) {
                if (iE2 == 2) {
                    if (!zQ0) {
                        break;
                    }
                    kVar.A();
                    Object objG2 = bufferedChannel.g1(e10, continuation);
                    if (objG2 != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        break;
                    }
                    return objG2;
                }
                if (iE2 == 3) {
                    Object objJ1 = bufferedChannel.J1(kVar, i11, e10, j10, continuation);
                    if (objJ1 != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        break;
                    }
                    return objJ1;
                }
                if (iE2 == 4) {
                    if (j10 < bufferedChannel.y0()) {
                        kVar.c();
                    }
                    Object objG3 = bufferedChannel.g1(e10, continuation);
                    if (objG3 != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        break;
                    }
                    return objG3;
                }
                if (iE2 == 5) {
                    kVar.c();
                }
                kVar2 = kVar;
            } else {
                break;
            }
        }
        return Unit.INSTANCE;
    }

    private final /* synthetic */ Object F0() {
        return this._closeCause$volatile;
    }

    static /* synthetic */ <E> Object F1(BufferedChannel<E> bufferedChannel, E e10, Continuation<? super Boolean> continuation) {
        k kVar;
        kotlinx.coroutines.o oVar = new kotlinx.coroutines.o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.S();
        if (!(bufferedChannel.f92395c == null)) {
            throw new IllegalStateException("the `onUndeliveredElement` feature is unsupported for `sendBroadcast(e)`".toString());
        }
        b bVar = new b(oVar);
        k kVar2 = (k) B0().get(bufferedChannel);
        while (true) {
            long andIncrement = D0().getAndIncrement(bufferedChannel);
            long j10 = andIncrement & 1152921504606846975L;
            boolean zQ0 = bufferedChannel.Q0(andIncrement);
            int i10 = BufferedChannelKt.f92425b;
            long j11 = j10 / ((long) i10);
            int i11 = (int) (j10 % ((long) i10));
            if (kVar2.f93516d != j11) {
                k kVarC0 = bufferedChannel.c0(j11, kVar2);
                if (kVarC0 != null) {
                    kVar = kVarC0;
                } else if (zQ0) {
                    Result.Companion companion = Result.INSTANCE;
                    oVar.resumeWith(Result.m50constructorimpl(Boxing.boxBoolean(false)));
                    break;
                }
            } else {
                kVar = kVar2;
            }
            k kVar3 = kVar;
            int iE2 = bufferedChannel.e2(kVar, i11, e10, j10, bVar, zQ0);
            if (iE2 == 0) {
                kVar3.c();
            } else if (iE2 != 1) {
                if (iE2 == 2) {
                    if (!zQ0) {
                        bufferedChannel.l1(bVar, kVar3, i11);
                        break;
                    }
                    kVar3.A();
                } else {
                    if (iE2 == 3) {
                        throw new IllegalStateException("unexpected".toString());
                    }
                    if (iE2 != 4) {
                        if (iE2 == 5) {
                            kVar3.c();
                        }
                        kVar2 = kVar3;
                    } else if (j10 < bufferedChannel.y0()) {
                        kVar3.c();
                    }
                }
                Result.Companion companion2 = Result.INSTANCE;
                oVar.resumeWith(Result.m50constructorimpl(Boxing.boxBoolean(false)));
                break;
            }
            Result.Companion companion3 = Result.INSTANCE;
            oVar.resumeWith(Result.m50constructorimpl(Boxing.boxBoolean(true)));
            break;
        }
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ;
    }

    private final <R> R G1(E e10, Object obj, Function0<? extends R> function0, Function2<? super k<E>, ? super Integer, ? extends R> function2, Function0<? extends R> function1, Function4<? super k<E>, ? super Integer, ? super E, ? super Long, ? extends R> function4) {
        k kVar;
        k kVar2 = (k) B0().get(this);
        while (true) {
            long andIncrement = D0().getAndIncrement(this);
            long j10 = andIncrement & 1152921504606846975L;
            boolean zQ0 = Q0(andIncrement);
            int i10 = BufferedChannelKt.f92425b;
            long j11 = j10 / ((long) i10);
            int i11 = (int) (j10 % ((long) i10));
            if (kVar2.f93516d != j11) {
                k kVarC0 = c0(j11, kVar2);
                if (kVarC0 != null) {
                    kVar = kVarC0;
                } else if (zQ0) {
                    return function1.invoke();
                }
            } else {
                kVar = kVar2;
            }
            int iE2 = e2(kVar, i11, e10, j10, obj, zQ0);
            if (iE2 == 0) {
                kVar.c();
                return function0.invoke();
            }
            if (iE2 == 1) {
                return function0.invoke();
            }
            if (iE2 == 2) {
                if (zQ0) {
                    kVar.A();
                    return function1.invoke();
                }
                f3 f3Var = obj instanceof f3 ? (f3) obj : null;
                if (f3Var != null) {
                    l1(f3Var, kVar, i11);
                }
                return function2.invoke(kVar, Integer.valueOf(i11));
            }
            if (iE2 == 3) {
                return function4.invoke(kVar, Integer.valueOf(i11), e10, Long.valueOf(j10));
            }
            if (iE2 == 4) {
                if (j10 < y0()) {
                    kVar.c();
                }
                return function1.invoke();
            }
            if (iE2 == 5) {
                kVar.c();
            }
            kVar2 = kVar;
        }
    }

    static /* synthetic */ Object H1(BufferedChannel bufferedChannel, Object obj, Object obj2, Function0 function0, Function2 function2, Function0 function1, Function4 function4, int i10, Object obj3) {
        k kVar;
        if (obj3 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendImpl");
        }
        Function4 function5 = (i10 & 32) != 0 ? new Function4() { // from class: kotlinx.coroutines.channels.BufferedChannel$sendImpl$1
            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Object invoke(Object obj4, Object obj5, Object obj6, Object obj7) {
                return invoke((k<Object>) obj4, ((Number) obj5).intValue(), obj6, ((Number) obj7).longValue());
            }

            @NotNull
            public final Void invoke(@NotNull k<E> kVar2, int i11, E e10, long j10) {
                throw new IllegalStateException("unexpected".toString());
            }
        } : function4;
        k kVar2 = (k) B0().get(bufferedChannel);
        while (true) {
            long andIncrement = D0().getAndIncrement(bufferedChannel);
            long j10 = andIncrement & 1152921504606846975L;
            boolean zQ0 = bufferedChannel.Q0(andIncrement);
            int i11 = BufferedChannelKt.f92425b;
            long j11 = j10 / ((long) i11);
            int i12 = (int) (j10 % ((long) i11));
            if (kVar2.f93516d != j11) {
                k kVarC0 = bufferedChannel.c0(j11, kVar2);
                if (kVarC0 != null) {
                    kVar = kVarC0;
                } else if (zQ0) {
                    return function1.invoke();
                }
            } else {
                kVar = kVar2;
            }
            int iE2 = bufferedChannel.e2(kVar, i12, obj, j10, obj2, zQ0);
            if (iE2 == 0) {
                kVar.c();
                return function0.invoke();
            }
            if (iE2 == 1) {
                return function0.invoke();
            }
            if (iE2 == 2) {
                if (zQ0) {
                    kVar.A();
                    return function1.invoke();
                }
                f3 f3Var = obj2 instanceof f3 ? (f3) obj2 : null;
                if (f3Var != null) {
                    bufferedChannel.l1(f3Var, kVar, i12);
                }
                return function2.invoke(kVar, Integer.valueOf(i12));
            }
            if (iE2 == 3) {
                return function5.invoke(kVar, Integer.valueOf(i12), obj, Long.valueOf(j10));
            }
            if (iE2 == 4) {
                if (j10 < bufferedChannel.y0()) {
                    kVar.c();
                }
                return function1.invoke();
            }
            if (iE2 == 5) {
                kVar.c();
            }
            kVar2 = kVar;
        }
    }

    private final void I0(long j10) {
        if ((f92388h.addAndGet(this, j10) & 4611686018427387904L) != 0) {
            do {
            } while ((f92388h.get(this) & 4611686018427387904L) != 0);
        }
    }

    private final void I1(k<E> kVar, int i10, E e10, long j10, f3 f3Var, Function0<Unit> function0, Function0<Unit> function1) {
        k kVar2;
        Unit unitInvoke;
        f3 f3Var2 = f3Var;
        int iE2 = e2(kVar, i10, e10, j10, f3Var, false);
        if (iE2 == 0) {
            kVar.c();
            function0.invoke();
            return;
        }
        if (iE2 == 1) {
            function0.invoke();
            return;
        }
        if (iE2 == 2) {
            l1(f3Var2, kVar, i10);
            return;
        }
        if (iE2 == 4) {
            if (j10 < y0()) {
                kVar.c();
            }
            function1.invoke();
            return;
        }
        if (iE2 != 5) {
            throw new IllegalStateException("unexpected".toString());
        }
        kVar.c();
        k kVar3 = (k) B0().get(this);
        while (true) {
            long andIncrement = D0().getAndIncrement(this);
            long j11 = andIncrement & 1152921504606846975L;
            boolean zQ0 = Q0(andIncrement);
            int i11 = BufferedChannelKt.f92425b;
            long j12 = j11 / ((long) i11);
            int i12 = (int) (j11 % ((long) i11));
            if (kVar3.f93516d != j12) {
                k kVarC0 = c0(j12, kVar3);
                if (kVarC0 != null) {
                    kVar2 = kVarC0;
                } else if (zQ0) {
                    unitInvoke = function1.invoke();
                    break;
                }
            } else {
                kVar2 = kVar3;
            }
            k kVar4 = kVar2;
            int iE3 = e2(kVar2, i12, e10, j11, f3Var, zQ0);
            if (iE3 == 0) {
                kVar4.c();
                unitInvoke = function0.invoke();
                break;
            }
            if (iE3 == 1) {
                unitInvoke = function0.invoke();
                break;
            }
            if (iE3 == 2) {
                if (!zQ0) {
                    if (!(f3Var2 instanceof f3)) {
                        f3Var2 = null;
                    }
                    if (f3Var2 != null) {
                        l1(f3Var2, kVar4, i12);
                    }
                    unitInvoke = Unit.INSTANCE;
                    break;
                }
                kVar4.A();
                unitInvoke = function1.invoke();
                break;
            }
            if (iE3 == 3) {
                throw new IllegalStateException("unexpected".toString());
            }
            if (iE3 == 4) {
                if (j11 < y0()) {
                    kVar4.c();
                }
                unitInvoke = function1.invoke();
                break;
            } else {
                if (iE3 == 5) {
                    kVar4.c();
                }
                kVar3 = kVar4;
            }
        }
    }

    static /* synthetic */ void J0(BufferedChannel bufferedChannel, long j10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i10 & 1) != 0) {
            j10 = 1;
        }
        bufferedChannel.I0(j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:60:0x0119  */
    /* JADX WARN: Code duplicated, block: B:63:0x0122 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x0123  */
    public final Object J1(k<E> kVar, int i10, E e10, long j10, Continuation<? super Unit> continuation) {
        Object objM50constructorimpl;
        Object objZ;
        k kVar2;
        kotlinx.coroutines.o oVarB = kotlinx.coroutines.q.b(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        try {
            int iE2 = e2(kVar, i10, e10, j10, oVarB, false);
            if (iE2 == 0) {
                kVar.c();
                Result.Companion companion = Result.INSTANCE;
                objM50constructorimpl = Result.m50constructorimpl(Unit.INSTANCE);
            } else {
                if (iE2 != 1) {
                    if (iE2 != 2) {
                        if (iE2 != 4) {
                            if (iE2 != 5) {
                                throw new IllegalStateException("unexpected".toString());
                            }
                            kVar.c();
                            k kVar3 = (k) B0().get(this);
                            while (true) {
                                long andIncrement = D0().getAndIncrement(this);
                                long j11 = andIncrement & 1152921504606846975L;
                                boolean zQ0 = Q0(andIncrement);
                                int i11 = BufferedChannelKt.f92425b;
                                long j12 = j11 / ((long) i11);
                                int i12 = (int) (j11 % ((long) i11));
                                if (kVar3.f93516d != j12) {
                                    k kVarC0 = c0(j12, kVar3);
                                    if (kVarC0 != null) {
                                        kVar2 = kVarC0;
                                    } else if (zQ0) {
                                    }
                                } else {
                                    kVar2 = kVar3;
                                }
                                k kVar4 = kVar2;
                                int iE3 = e2(kVar2, i12, e10, j11, oVarB, zQ0);
                                if (iE3 == 0) {
                                    kVar4.c();
                                    Result.Companion companion2 = Result.INSTANCE;
                                    objM50constructorimpl = Result.m50constructorimpl(Unit.INSTANCE);
                                } else if (iE3 == 1) {
                                    Result.Companion companion3 = Result.INSTANCE;
                                    objM50constructorimpl = Result.m50constructorimpl(Unit.INSTANCE);
                                } else if (iE3 == 2) {
                                    if (!zQ0) {
                                        kotlinx.coroutines.o oVar = oVarB instanceof f3 ? oVarB : null;
                                        if (oVar == null) {
                                            break;
                                        }
                                        l1(oVar, kVar4, i12);
                                        break;
                                    }
                                    kVar4.A();
                                } else {
                                    if (iE3 == 3) {
                                        throw new IllegalStateException("unexpected".toString());
                                    }
                                    if (iE3 != 4) {
                                        if (iE3 == 5) {
                                            kVar4.c();
                                        }
                                        kVar3 = kVar4;
                                    } else if (j11 < y0()) {
                                        kVar4.c();
                                    }
                                }
                            }
                        } else if (j10 < y0()) {
                            kVar.c();
                        }
                        h1(e10, oVarB);
                        break;
                    } else {
                        l1(oVarB, kVar, i10);
                    }
                    objZ = oVarB.z();
                    if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(continuation);
                    }
                    if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objZ;
                    }
                    return Unit.INSTANCE;
                }
                Result.Companion companion4 = Result.INSTANCE;
                objM50constructorimpl = Result.m50constructorimpl(Unit.INSTANCE);
            }
            oVarB.resumeWith(objM50constructorimpl);
            objZ = oVarB.z();
            if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                return objZ;
            }
            return Unit.INSTANCE;
        } catch (Throwable th) {
            oVarB.Y();
            throw th;
        }
    }

    private final void K0() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f92393m;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, obj, obj == null ? BufferedChannelKt.f92448y : BufferedChannelKt.f92449z));
        if (obj == null) {
            return;
        }
        ((Function1) obj).invoke(j0());
    }

    private final /* synthetic */ void K1(long j10) {
        this.bufferEnd$volatile = j10;
    }

    private final boolean L0(k<E> kVar, int i10, long j10) {
        Object objJ;
        do {
            objJ = kVar.J(i10);
            if (objJ != null && objJ != BufferedChannelKt.f92430g) {
                if (objJ == BufferedChannelKt.f92429f) {
                    return true;
                }
                if (objJ == BufferedChannelKt.f92435l || objJ == BufferedChannelKt.z() || objJ == BufferedChannelKt.f92434k || objJ == BufferedChannelKt.f92433j) {
                    return false;
                }
                if (objJ == BufferedChannelKt.f92432i) {
                    return true;
                }
                return objJ != BufferedChannelKt.f92431h && j10 == y0();
            }
        } while (!kVar.D(i10, objJ, BufferedChannelKt.f92433j));
        Z();
        return false;
    }

    private final /* synthetic */ void L1(Object obj) {
        this.bufferEndSegment$volatile = obj;
    }

    private final boolean M(long j10) {
        return j10 < g0() || j10 < y0() + ((long) this.f92394b);
    }

    private final boolean M0(long j10, boolean z10) {
        int i10 = (int) (j10 >> 60);
        if (i10 == 0 || i10 == 1) {
            return false;
        }
        if (i10 == 2) {
            W(j10 & 1152921504606846975L);
            if (z10 && H0()) {
                return false;
            }
        } else {
            if (i10 != 3) {
                throw new IllegalStateException(("unexpected close status: " + i10).toString());
            }
            S(j10 & 1152921504606846975L);
        }
        return true;
    }

    private final /* synthetic */ void M1(Object obj) {
        this.closeHandler$volatile = obj;
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void N0() {
    }

    private final /* synthetic */ void N1(long j10) {
        this.completedExpandBuffersAndPauseFlag$volatile = j10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void O(k<E> kVar, long j10) {
        Object objC = kotlinx.coroutines.internal.q.c(null, 1, null);
        loop0: while (kVar != null) {
            for (int i10 = BufferedChannelKt.f92425b - 1; -1 < i10; i10--) {
                if ((kVar.f93516d * ((long) BufferedChannelKt.f92425b)) + ((long) i10) < j10) {
                    break loop0;
                }
                while (true) {
                    Object objJ = kVar.J(i10);
                    if (objJ != null && objJ != BufferedChannelKt.f92430g) {
                        if (!(objJ instanceof t)) {
                            if (!(objJ instanceof f3)) {
                                break;
                            }
                            if (kVar.D(i10, objJ, BufferedChannelKt.z())) {
                                objC = kotlinx.coroutines.internal.q.h(objC, objJ);
                                kVar.K(i10, true);
                                break;
                            }
                        } else {
                            if (kVar.D(i10, objJ, BufferedChannelKt.z())) {
                                objC = kotlinx.coroutines.internal.q.h(objC, ((t) objJ).f92715a);
                                kVar.K(i10, true);
                                break;
                            }
                        }
                    } else {
                        if (kVar.D(i10, objJ, BufferedChannelKt.z())) {
                            kVar.A();
                            break;
                        }
                    }
                }
            }
            kVar = (k) kVar.h();
        }
        if (objC != null) {
            if (!(objC instanceof ArrayList)) {
                A1((f3) objC);
                return;
            }
            Intrinsics.checkNotNull(objC, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ArrayList arrayList = (ArrayList) objC;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                A1((f3) arrayList.get(size));
            }
        }
    }

    private final boolean O0(long j10) {
        return M0(j10, true);
    }

    private final /* synthetic */ void O1(Object obj) {
        this.receiveSegment$volatile = obj;
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void P0() {
    }

    private final /* synthetic */ void P1(long j10) {
        this.receivers$volatile = j10;
    }

    private final k<E> Q() {
        Object obj = f92391k.get(this);
        k kVar = (k) f92389i.get(this);
        if (kVar.f93516d > ((k) obj).f93516d) {
            obj = kVar;
        }
        k kVar2 = (k) f92390j.get(this);
        if (kVar2.f93516d > ((k) obj).f93516d) {
            obj = kVar2;
        }
        return (k) kotlinx.coroutines.internal.f.d((kotlinx.coroutines.internal.g) obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean Q0(long j10) {
        return M0(j10, false);
    }

    private final /* synthetic */ void Q1(Object obj) {
        this.sendSegment$volatile = obj;
    }

    private final /* synthetic */ void R1(long j10) {
        this.sendersAndCloseStatus$volatile = j10;
    }

    private final void S(long j10) {
        z1(W(j10));
    }

    @ExperimentalCoroutinesApi
    public static /* synthetic */ void S0() {
    }

    private final /* synthetic */ void S1(Object obj) {
        this._closeCause$volatile = obj;
    }

    private final boolean T0() {
        long jG0 = g0();
        return jG0 == 0 || jG0 == Long.MAX_VALUE;
    }

    private final boolean T1(long j10) {
        if (Q0(j10)) {
            return false;
        }
        return !M(j10 & 1152921504606846975L);
    }

    private final /* synthetic */ void U0(Object obj, AtomicLongFieldUpdater atomicLongFieldUpdater, Function1<? super Long, Unit> function1) {
        while (true) {
            function1.invoke(Long.valueOf(atomicLongFieldUpdater.get(obj)));
        }
    }

    private final /* synthetic */ void V0(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    private final k<E> W(long j10) {
        k<E> kVarQ = Q();
        if (R0()) {
            long jW0 = W0(kVarQ);
            if (jW0 != -1) {
                Y(jW0);
            }
        }
        O(kVarQ, j10);
        return kVarQ;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long W0(k<E> kVar) {
        do {
            int i10 = BufferedChannelKt.f92425b;
            while (true) {
                i10--;
                if (-1 < i10) {
                    long j10 = (kVar.f93516d * ((long) BufferedChannelKt.f92425b)) + ((long) i10);
                    if (j10 >= y0()) {
                        while (true) {
                            Object objJ = kVar.J(i10);
                            if (objJ != null && objJ != BufferedChannelKt.f92430g) {
                                if (objJ != BufferedChannelKt.f92429f) {
                                    break;
                                }
                                return j10;
                            }
                            if (kVar.D(i10, objJ, BufferedChannelKt.z())) {
                                kVar.A();
                                break;
                            }
                        }
                    } else {
                        return -1L;
                    }
                }
            }
            kVar = (k) kVar.h();
        } while (kVar != null);
        return -1L;
    }

    private final boolean W1(Object obj, E e10) {
        if (obj instanceof kotlinx.coroutines.selects.j) {
            return ((kotlinx.coroutines.selects.j) obj).i(this, e10);
        }
        if (obj instanceof r) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            r rVar = (r) obj;
            kotlinx.coroutines.o<j<? extends E>> oVar = rVar.f92714b;
            j jVarB = j.b(j.f92703b.c(e10));
            Function1<E, Unit> function1 = this.f92395c;
            return BufferedChannelKt.F(oVar, jVarB, function1 != null ? OnUndeliveredElementKt.a(function1, e10, rVar.f92714b.get$context()) : null);
        }
        if (obj instanceof a) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((a) obj).k(e10);
        }
        if (obj instanceof kotlinx.coroutines.n) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            kotlinx.coroutines.n nVar = (kotlinx.coroutines.n) obj;
            Function1<E, Unit> function2 = this.f92395c;
            return BufferedChannelKt.F(nVar, e10, function2 != null ? OnUndeliveredElementKt.a(function2, e10, nVar.get$context()) : null);
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    private final void X() {
        A();
    }

    private final void X0() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f92385e;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if (((int) (j10 >> 60)) != 0) {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, BufferedChannelKt.w(1152921504606846975L & j10, 1)));
    }

    private final boolean X1(Object obj, k<E> kVar, int i10) {
        if (obj instanceof kotlinx.coroutines.n) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return BufferedChannelKt.G((kotlinx.coroutines.n) obj, Unit.INSTANCE, null, 2, null);
        }
        if (obj instanceof kotlinx.coroutines.selects.j) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            TrySelectDetailedResult trySelectDetailedResultL = ((SelectImplementation) obj).L(this, Unit.INSTANCE);
            if (trySelectDetailedResultL == TrySelectDetailedResult.REREGISTER) {
                kVar.E(i10);
            }
            return trySelectDetailedResultL == TrySelectDetailedResult.SUCCESSFUL;
        }
        if (obj instanceof b) {
            return BufferedChannelKt.G(((b) obj).a(), Boolean.TRUE, null, 2, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    private final void Y0() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f92385e;
        do {
            j10 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, BufferedChannelKt.w(1152921504606846975L & j10, 3)));
    }

    private final void Z() {
        if (T0()) {
            return;
        }
        k<E> kVar = (k) f92391k.get(this);
        while (true) {
            long andIncrement = f92387g.getAndIncrement(this);
            int i10 = BufferedChannelKt.f92425b;
            long j10 = andIncrement / ((long) i10);
            if (E0() <= andIncrement) {
                if (kVar.f93516d < j10 && kVar.f() != 0) {
                    a1(j10, kVar);
                }
                J0(this, 0L, 1, null);
                return;
            }
            if (kVar.f93516d != j10) {
                k<E> kVarA0 = a0(j10, kVar, andIncrement);
                if (kVarA0 == null) {
                    continue;
                } else {
                    kVar = kVarA0;
                }
            }
            if (a2(kVar, (int) (andIncrement % ((long) i10)), andIncrement)) {
                J0(this, 0L, 1, null);
                return;
            }
            J0(this, 0L, 1, null);
        }
    }

    private final void Z0() {
        long j10;
        long jW;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f92385e;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            int i10 = (int) (j10 >> 60);
            if (i10 == 0) {
                jW = BufferedChannelKt.w(j10 & 1152921504606846975L, 2);
            } else if (i10 != 1) {
                return;
            } else {
                jW = BufferedChannelKt.w(j10 & 1152921504606846975L, 3);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, jW));
    }

    private final /* synthetic */ void Z1(Object obj, AtomicLongFieldUpdater atomicLongFieldUpdater, Function1<? super Long, Long> function1) {
        long j10;
        do {
            j10 = atomicLongFieldUpdater.get(obj);
        } while (!atomicLongFieldUpdater.compareAndSet(obj, j10, function1.invoke(Long.valueOf(j10)).longValue()));
    }

    private final k<E> a0(long j10, k<E> kVar, long j11) {
        Object objG;
        boolean z10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f92391k;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        do {
            objG = kotlinx.coroutines.internal.f.g(kVar, j10, function2);
            if (!o0.h(objG)) {
                n0 n0VarF = o0.f(objG);
                while (true) {
                    n0 n0Var = (n0) atomicReferenceFieldUpdater.get(this);
                    if (n0Var.f93516d < n0VarF.f93516d) {
                        if (!n0VarF.C()) {
                            z10 = false;
                            break;
                        }
                        if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, n0Var, n0VarF)) {
                            if (n0Var.v()) {
                                n0Var.q();
                            }
                        } else if (n0VarF.v()) {
                            n0VarF.q();
                        }
                    }
                    z10 = true;
                    break;
                }
            } else {
                break;
            }
        } while (!z10);
        if (o0.h(objG)) {
            X();
            a1(j10, kVar);
            J0(this, 0L, 1, null);
            return null;
        }
        k<E> kVar2 = (k) o0.f(objG);
        if (kVar2.f93516d <= j10) {
            return kVar2;
        }
        long j12 = kVar2.f93516d;
        int i10 = BufferedChannelKt.f92425b;
        if (f92387g.compareAndSet(this, j11 + 1, j12 * ((long) i10))) {
            I0((kVar2.f93516d * ((long) i10)) - j11);
            return null;
        }
        J0(this, 0L, 1, null);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a1(long j10, k<E> kVar) {
        boolean z10;
        k<E> kVar2;
        k<E> kVar3;
        while (kVar.f93516d < j10 && (kVar3 = (k) kVar.f()) != null) {
            kVar = kVar3;
        }
        while (true) {
            if (!kVar.m() || (kVar2 = (k) kVar.f()) == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f92391k;
                while (true) {
                    n0 n0Var = (n0) atomicReferenceFieldUpdater.get(this);
                    z10 = true;
                    if (n0Var.f93516d >= kVar.f93516d) {
                        break;
                    }
                    if (!kVar.C()) {
                        z10 = false;
                        break;
                    } else if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, n0Var, kVar)) {
                        if (!n0Var.v()) {
                            break;
                        }
                        n0Var.q();
                        break;
                    } else if (kVar.v()) {
                        kVar.q();
                    }
                }
                if (z10) {
                    return;
                }
            } else {
                kVar = kVar2;
            }
        }
    }

    private final boolean a2(k<E> kVar, int i10, long j10) {
        Object objJ = kVar.J(i10);
        if (!(objJ instanceof f3) || j10 < f92386f.get(this) || !kVar.D(i10, objJ, BufferedChannelKt.f92432i)) {
            return b2(kVar, i10, j10);
        }
        if (X1(objJ, kVar, i10)) {
            kVar.N(i10, BufferedChannelKt.f92429f);
            return true;
        }
        kVar.N(i10, BufferedChannelKt.f92435l);
        kVar.K(i10, false);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final k<E> b0(long j10, k<E> kVar) {
        Object objG;
        boolean z10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f92390j;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        do {
            objG = kotlinx.coroutines.internal.f.g(kVar, j10, function2);
            if (!o0.h(objG)) {
                n0 n0VarF = o0.f(objG);
                while (true) {
                    n0 n0Var = (n0) atomicReferenceFieldUpdater.get(this);
                    z10 = true;
                    if (n0Var.f93516d >= n0VarF.f93516d) {
                        break;
                    }
                    if (!n0VarF.C()) {
                        z10 = false;
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, n0Var, n0VarF)) {
                        if (!n0Var.v()) {
                            break;
                        }
                        n0Var.q();
                        break;
                    }
                    if (n0VarF.v()) {
                        n0VarF.q();
                    }
                }
            } else {
                break;
            }
        } while (!z10);
        if (o0.h(objG)) {
            X();
            if (kVar.f93516d * ((long) BufferedChannelKt.f92425b) >= E0()) {
                return null;
            }
            kVar.c();
            return null;
        }
        k<E> kVar2 = (k) o0.f(objG);
        if (!T0() && j10 <= g0() / ((long) BufferedChannelKt.f92425b)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f92391k;
            while (true) {
                n0 n0Var2 = (n0) atomicReferenceFieldUpdater2.get(this);
                if (n0Var2.f93516d >= kVar2.f93516d || !kVar2.C()) {
                    break;
                }
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater2, this, n0Var2, kVar2)) {
                    if (!n0Var2.v()) {
                        break;
                    }
                    n0Var2.q();
                    break;
                }
                if (kVar2.v()) {
                    kVar2.q();
                }
            }
        }
        long j11 = kVar2.f93516d;
        if (j11 <= j10) {
            return kVar2;
        }
        int i10 = BufferedChannelKt.f92425b;
        g2(j11 * ((long) i10));
        if (kVar2.f93516d * ((long) i10) >= E0()) {
            return null;
        }
        kVar2.c();
        return null;
    }

    private final boolean b2(k<E> kVar, int i10, long j10) {
        while (true) {
            Object objJ = kVar.J(i10);
            if (objJ instanceof f3) {
                if (j10 < f92386f.get(this)) {
                    if (kVar.D(i10, objJ, new t((f3) objJ))) {
                        return true;
                    }
                } else if (kVar.D(i10, objJ, BufferedChannelKt.f92432i)) {
                    if (X1(objJ, kVar, i10)) {
                        kVar.N(i10, BufferedChannelKt.f92429f);
                        return true;
                    }
                    kVar.N(i10, BufferedChannelKt.f92435l);
                    kVar.K(i10, false);
                    return false;
                }
            } else {
                if (objJ == BufferedChannelKt.f92435l) {
                    return false;
                }
                if (objJ == null) {
                    if (kVar.D(i10, objJ, BufferedChannelKt.f92430g)) {
                        return true;
                    }
                } else {
                    if (objJ == BufferedChannelKt.f92429f || objJ == BufferedChannelKt.f92433j || objJ == BufferedChannelKt.f92434k || objJ == BufferedChannelKt.f92436m || objJ == BufferedChannelKt.z()) {
                        return true;
                    }
                    if (objJ != BufferedChannelKt.f92431h) {
                        throw new IllegalStateException(("Unexpected cell state: " + objJ).toString());
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final k<E> c0(long j10, k<E> kVar) {
        Object objG;
        boolean z10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f92389i;
        Function2 function2 = (Function2) BufferedChannelKt.y();
        do {
            objG = kotlinx.coroutines.internal.f.g(kVar, j10, function2);
            if (!o0.h(objG)) {
                n0 n0VarF = o0.f(objG);
                while (true) {
                    n0 n0Var = (n0) atomicReferenceFieldUpdater.get(this);
                    z10 = true;
                    if (n0Var.f93516d >= n0VarF.f93516d) {
                        break;
                    }
                    if (!n0VarF.C()) {
                        z10 = false;
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, n0Var, n0VarF)) {
                        if (!n0Var.v()) {
                            break;
                        }
                        n0Var.q();
                        break;
                    }
                    if (n0VarF.v()) {
                        n0VarF.q();
                    }
                }
            } else {
                break;
            }
        } while (!z10);
        if (o0.h(objG)) {
            X();
            if (kVar.f93516d * ((long) BufferedChannelKt.f92425b) >= y0()) {
                return null;
            }
            kVar.c();
            return null;
        }
        k<E> kVar2 = (k) o0.f(objG);
        long j11 = kVar2.f93516d;
        if (j11 <= j10) {
            return kVar2;
        }
        int i10 = BufferedChannelKt.f92425b;
        h2(j11 * ((long) i10));
        if (kVar2.f93516d * ((long) i10) >= y0()) {
            return null;
        }
        kVar2.c();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c1(kotlinx.coroutines.n<? super j<? extends E>> nVar) {
        Result.Companion companion = Result.INSTANCE;
        nVar.resumeWith(Result.m50constructorimpl(j.b(j.f92703b.a(j0()))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object c2(k<E> kVar, int i10, long j10, Object obj) {
        Object objJ = kVar.J(i10);
        if (objJ == null) {
            if (j10 >= (f92385e.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.f92439p;
                }
                if (kVar.D(i10, objJ, obj)) {
                    Z();
                    return BufferedChannelKt.f92438o;
                }
            }
        } else if (objJ == BufferedChannelKt.f92429f && kVar.D(i10, objJ, BufferedChannelKt.f92434k)) {
            Z();
            return kVar.L(i10);
        }
        return d2(kVar, i10, j10, obj);
    }

    private final /* synthetic */ Object d0(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, ? extends Object> function1) {
        Object obj2;
        do {
            obj2 = atomicReferenceFieldUpdater.get(obj);
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, obj, obj2, function1.invoke(obj2)));
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d1(kotlinx.coroutines.n<? super E> nVar) {
        Result.Companion companion = Result.INSTANCE;
        nVar.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(t0())));
    }

    private final Object d2(k<E> kVar, int i10, long j10, Object obj) {
        while (true) {
            Object objJ = kVar.J(i10);
            if (objJ == null || objJ == BufferedChannelKt.f92430g) {
                if (j10 < (f92385e.get(this) & 1152921504606846975L)) {
                    if (kVar.D(i10, objJ, BufferedChannelKt.f92433j)) {
                        Z();
                        return BufferedChannelKt.f92440q;
                    }
                } else {
                    if (obj == null) {
                        return BufferedChannelKt.f92439p;
                    }
                    if (kVar.D(i10, objJ, obj)) {
                        Z();
                        return BufferedChannelKt.f92438o;
                    }
                }
            } else {
                if (objJ != BufferedChannelKt.f92429f) {
                    if (objJ != BufferedChannelKt.f92435l && objJ != BufferedChannelKt.f92433j) {
                        if (objJ == BufferedChannelKt.z()) {
                            Z();
                            return BufferedChannelKt.f92440q;
                        }
                        if (objJ != BufferedChannelKt.f92432i && kVar.D(i10, objJ, BufferedChannelKt.f92431h)) {
                            boolean z10 = objJ instanceof t;
                            if (z10) {
                                objJ = ((t) objJ).f92715a;
                            }
                            if (X1(objJ, kVar, i10)) {
                                kVar.N(i10, BufferedChannelKt.f92434k);
                                Z();
                                return kVar.L(i10);
                            }
                            kVar.N(i10, BufferedChannelKt.f92435l);
                            kVar.K(i10, false);
                            if (z10) {
                                Z();
                            }
                            return BufferedChannelKt.f92440q;
                        }
                    }
                    return BufferedChannelKt.f92440q;
                }
                if (kVar.D(i10, objJ, BufferedChannelKt.f92434k)) {
                    Z();
                    return kVar.L(i10);
                }
            }
        }
    }

    private final /* synthetic */ long e0() {
        return this.bufferEnd$volatile;
    }

    private final void e1(kotlinx.coroutines.selects.j<?> jVar) {
        jVar.f(BufferedChannelKt.z());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int e2(k<E> kVar, int i10, E e10, long j10, Object obj, boolean z10) {
        kVar.O(i10, e10);
        if (z10) {
            return f2(kVar, i10, e10, j10, obj, z10);
        }
        Object objJ = kVar.J(i10);
        if (objJ == null) {
            if (M(j10)) {
                if (kVar.D(i10, null, BufferedChannelKt.f92429f)) {
                    return 1;
                }
            } else {
                if (obj == null) {
                    return 3;
                }
                if (kVar.D(i10, null, obj)) {
                    return 2;
                }
            }
        } else if (objJ instanceof f3) {
            kVar.E(i10);
            if (W1(objJ, e10)) {
                kVar.N(i10, BufferedChannelKt.f92434k);
                i1();
                return 0;
            }
            if (kVar.F(i10, BufferedChannelKt.f92436m) != BufferedChannelKt.f92436m) {
                kVar.K(i10, true);
            }
            return 5;
        }
        return f2(kVar, i10, e10, j10, obj, z10);
    }

    private final void f1(E e10, kotlinx.coroutines.selects.j<?> jVar) {
        Function1<E, Unit> function1 = this.f92395c;
        if (function1 != null) {
            OnUndeliveredElementKt.b(function1, e10, jVar.getContext());
        }
        jVar.f(BufferedChannelKt.z());
    }

    private final int f2(k<E> kVar, int i10, E e10, long j10, Object obj, boolean z10) {
        while (true) {
            Object objJ = kVar.J(i10);
            if (objJ == null) {
                if (!M(j10) || z10) {
                    if (z10) {
                        if (kVar.D(i10, null, BufferedChannelKt.f92435l)) {
                            kVar.K(i10, false);
                            return 4;
                        }
                    } else {
                        if (obj == null) {
                            return 3;
                        }
                        if (kVar.D(i10, null, obj)) {
                            return 2;
                        }
                    }
                } else if (kVar.D(i10, null, BufferedChannelKt.f92429f)) {
                    return 1;
                }
            } else {
                if (objJ != BufferedChannelKt.f92430g) {
                    if (objJ == BufferedChannelKt.f92436m) {
                        kVar.E(i10);
                        return 5;
                    }
                    if (objJ == BufferedChannelKt.f92433j) {
                        kVar.E(i10);
                        return 5;
                    }
                    if (objJ == BufferedChannelKt.z()) {
                        kVar.E(i10);
                        X();
                        return 4;
                    }
                    kVar.E(i10);
                    if (objJ instanceof t) {
                        objJ = ((t) objJ).f92715a;
                    }
                    if (W1(objJ, e10)) {
                        kVar.N(i10, BufferedChannelKt.f92434k);
                        i1();
                        return 0;
                    }
                    if (kVar.F(i10, BufferedChannelKt.f92436m) != BufferedChannelKt.f92436m) {
                        kVar.K(i10, true);
                    }
                    return 5;
                }
                if (kVar.D(i10, objJ, BufferedChannelKt.f92429f)) {
                    return 1;
                }
            }
        }
    }

    private final long g0() {
        return f92387g.get(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g1(E e10, Continuation<? super Unit> continuation) {
        UndeliveredElementException undeliveredElementExceptionD;
        kotlinx.coroutines.o oVar = new kotlinx.coroutines.o(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        oVar.S();
        Function1<E, Unit> function1 = this.f92395c;
        if (function1 == null || (undeliveredElementExceptionD = OnUndeliveredElementKt.d(function1, e10, null, 2, null)) == null) {
            Throwable thZ0 = z0();
            Result.Companion companion = Result.INSTANCE;
            oVar.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(thZ0)));
        } else {
            ExceptionsKt__ExceptionsKt.addSuppressed(undeliveredElementExceptionD, z0());
            Result.Companion companion2 = Result.INSTANCE;
            oVar.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(undeliveredElementExceptionD)));
        }
        Object objZ = oVar.z();
        if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZ : Unit.INSTANCE;
    }

    private final void g2(long j10) {
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f92386f;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            if (j11 >= j10) {
                return;
            }
        } while (!f92386f.compareAndSet(this, j11, j10));
    }

    private final /* synthetic */ Object h0() {
        return this.bufferEndSegment$volatile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h1(E e10, kotlinx.coroutines.n<? super Unit> nVar) {
        Function1<E, Unit> function1 = this.f92395c;
        if (function1 != null) {
            OnUndeliveredElementKt.b(function1, e10, nVar.get$context());
        }
        Throwable thZ0 = z0();
        Result.Companion companion = Result.INSTANCE;
        nVar.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(thZ0)));
    }

    private final void h2(long j10) {
        long j11;
        long j12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f92385e;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            j12 = 1152921504606846975L & j11;
            if (j12 >= j10) {
                return;
            }
        } while (!f92385e.compareAndSet(this, j11, BufferedChannelKt.w(j12, (int) (j11 >> 60))));
    }

    private final /* synthetic */ Object k0() {
        return this.closeHandler$volatile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k1(f3 f3Var, k<E> kVar, int i10) {
        j1();
        f3Var.c(kVar, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l1(f3 f3Var, k<E> kVar, int i10) {
        f3Var.c(kVar, i10 + BufferedChannelKt.f92425b);
    }

    private final /* synthetic */ long m0() {
        return this.completedExpandBuffersAndPauseFlag$volatile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object m1(Object obj, Object obj2) throws Throwable {
        if (obj2 != BufferedChannelKt.z()) {
            return obj2;
        }
        throw t0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object n1(Object obj, Object obj2) {
        return j.b(obj2 == BufferedChannelKt.z() ? j.f92703b.a(j0()) : j.f92703b.c(obj2));
    }

    public static /* synthetic */ void o0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object o1(Object obj, Object obj2) throws Throwable {
        if (obj2 != BufferedChannelKt.z()) {
            return obj2;
        }
        if (j0() == null) {
            return null;
        }
        throw t0();
    }

    public static /* synthetic */ void p0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object p1(Object obj, Object obj2) throws Throwable {
        if (obj2 != BufferedChannelKt.z()) {
            return this;
        }
        throw z0();
    }

    public static /* synthetic */ void q0() {
    }

    static /* synthetic */ <E> Object q1(BufferedChannel<E> bufferedChannel, Continuation<? super E> continuation) throws Throwable {
        k<E> kVar;
        k<E> kVar2 = (k) v0().get(bufferedChannel);
        while (!bufferedChannel.D()) {
            long andIncrement = x0().getAndIncrement(bufferedChannel);
            int i10 = BufferedChannelKt.f92425b;
            long j10 = andIncrement / ((long) i10);
            int i11 = (int) (andIncrement % ((long) i10));
            if (kVar2.f93516d != j10) {
                k<E> kVarB0 = bufferedChannel.b0(j10, kVar2);
                if (kVarB0 == null) {
                    continue;
                } else {
                    kVar = kVarB0;
                }
            } else {
                kVar = kVar2;
            }
            Object objC2 = bufferedChannel.c2(kVar, i11, andIncrement, null);
            if (objC2 == BufferedChannelKt.f92438o) {
                throw new IllegalStateException("unexpected".toString());
            }
            if (objC2 != BufferedChannelKt.f92440q) {
                if (objC2 == BufferedChannelKt.f92439p) {
                    return bufferedChannel.w1(kVar, i11, andIncrement, continuation);
                }
                kVar.c();
                return objC2;
            }
            if (andIncrement < bufferedChannel.E0()) {
                kVar.c();
            }
            kVar2 = kVar;
        }
        throw p0.o(bufferedChannel.t0());
    }

    public static /* synthetic */ void r0() {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ <E> Object r1(BufferedChannel<E> bufferedChannel, Continuation<? super j<? extends E>> continuation) {
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$1;
        k<E> kVar;
        if (continuation instanceof BufferedChannel$receiveCatching$1) {
            bufferedChannel$receiveCatching$1 = (BufferedChannel$receiveCatching$1) continuation;
            int i10 = bufferedChannel$receiveCatching$1.f92416d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatching$1.f92416d = i10 - Integer.MIN_VALUE;
            } else {
                bufferedChannel$receiveCatching$1 = new BufferedChannel$receiveCatching$1(bufferedChannel, continuation);
            }
        } else {
            bufferedChannel$receiveCatching$1 = new BufferedChannel$receiveCatching$1(bufferedChannel, continuation);
        }
        BufferedChannel$receiveCatching$1 bufferedChannel$receiveCatching$2 = bufferedChannel$receiveCatching$1;
        Object obj = bufferedChannel$receiveCatching$2.f92414b;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = bufferedChannel$receiveCatching$2.f92416d;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return ((j) obj).o();
        }
        ResultKt.throwOnFailure(obj);
        k<E> kVar2 = (k) v0().get(bufferedChannel);
        while (!bufferedChannel.D()) {
            long andIncrement = x0().getAndIncrement(bufferedChannel);
            int i12 = BufferedChannelKt.f92425b;
            long j10 = andIncrement / ((long) i12);
            int i13 = (int) (andIncrement % ((long) i12));
            if (kVar2.f93516d != j10) {
                k<E> kVarB0 = bufferedChannel.b0(j10, kVar2);
                if (kVarB0 == null) {
                    continue;
                } else {
                    kVar = kVarB0;
                }
            } else {
                kVar = kVar2;
            }
            Object objC2 = bufferedChannel.c2(kVar, i13, andIncrement, null);
            if (objC2 == BufferedChannelKt.f92438o) {
                throw new IllegalStateException("unexpected".toString());
            }
            if (objC2 != BufferedChannelKt.f92440q) {
                if (objC2 != BufferedChannelKt.f92439p) {
                    kVar.c();
                    return j.f92703b.c(objC2);
                }
                bufferedChannel$receiveCatching$2.f92416d = 1;
                Object objS1 = bufferedChannel.s1(kVar, i13, andIncrement, bufferedChannel$receiveCatching$2);
                return objS1 == coroutine_suspended ? coroutine_suspended : objS1;
            }
            if (andIncrement < bufferedChannel.E0()) {
                kVar.c();
            }
            kVar2 = kVar;
        }
        return j.f92703b.a(bufferedChannel.j0());
    }

    private static /* synthetic */ void s0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object s1(k<E> kVar, int i10, long j10, Continuation<? super j<? extends E>> continuation) {
        BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 bufferedChannel$receiveCatchingOnNoWaiterSuspend$1;
        j jVarB;
        if (continuation instanceof BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) {
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = (BufferedChannel$receiveCatchingOnNoWaiterSuspend$1) continuation;
            int i11 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.f92423h;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.f92423h = i11 - Integer.MIN_VALUE;
            } else {
                bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = new BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(this, continuation);
            }
        } else {
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1 = new BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(this, continuation);
        }
        Object objZ = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.f92421f;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i12 = bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.f92423h;
        if (i12 == 0) {
            ResultKt.throwOnFailure(objZ);
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.f92417b = this;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.f92418c = kVar;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.f92419d = i10;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.f92420e = j10;
            bufferedChannel$receiveCatchingOnNoWaiterSuspend$1.f92423h = 1;
            kotlinx.coroutines.o oVarB = kotlinx.coroutines.q.b(IntrinsicsKt__IntrinsicsJvmKt.intercepted(bufferedChannel$receiveCatchingOnNoWaiterSuspend$1));
            try {
                Intrinsics.checkNotNull(oVarB, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel.receiveCatchingOnNoWaiterSuspend_GKJJFZk$lambda$38>>");
                r rVar = new r(oVarB);
                Object objC2 = c2(kVar, i10, j10, rVar);
                if (objC2 != BufferedChannelKt.f92438o) {
                    Function1<Throwable, Unit> function1A = null;
                    if (objC2 == BufferedChannelKt.f92440q) {
                        if (j10 < E0()) {
                            kVar.c();
                        }
                        k kVar2 = (k) v0().get(this);
                        while (true) {
                            if (D()) {
                                c1(oVarB);
                                break;
                            }
                            long andIncrement = x0().getAndIncrement(this);
                            int i13 = BufferedChannelKt.f92425b;
                            long j11 = andIncrement / ((long) i13);
                            int i14 = (int) (andIncrement % ((long) i13));
                            if (kVar2.f93516d != j11) {
                                k kVarB0 = b0(j11, kVar2);
                                if (kVarB0 != null) {
                                    kVar2 = kVarB0;
                                }
                            }
                            Object objC3 = c2(kVar2, i14, andIncrement, rVar);
                            if (objC3 == BufferedChannelKt.f92438o) {
                                k1(rVar, kVar2, i14);
                                break;
                            }
                            if (objC3 == BufferedChannelKt.f92440q) {
                                if (andIncrement < E0()) {
                                    kVar2.c();
                                }
                            } else {
                                if (objC3 == BufferedChannelKt.f92439p) {
                                    throw new IllegalStateException("unexpected".toString());
                                }
                                kVar2.c();
                                jVarB = j.b(j.f92703b.c(objC3));
                                Function1<E, Unit> function1 = this.f92395c;
                                if (function1 != null) {
                                    function1A = OnUndeliveredElementKt.a(function1, objC3, oVarB.get$context());
                                }
                            }
                        }
                    } else {
                        kVar.c();
                        jVarB = j.b(j.f92703b.c(objC2));
                        Function1<E, Unit> function2 = this.f92395c;
                        if (function2 != null) {
                            function1A = OnUndeliveredElementKt.a(function2, objC2, oVarB.get$context());
                        }
                    }
                    oVarB.p(jVarB, function1A);
                    break;
                }
                k1(rVar, kVar, i10);
                objZ = oVarB.z();
                if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(bufferedChannel$receiveCatchingOnNoWaiterSuspend$1);
                }
                if (objZ == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (Throwable th) {
                oVarB.Y();
                throw th;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objZ);
        }
        return ((j) objZ).o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Throwable t0() {
        Throwable thJ0 = j0();
        return thJ0 == null ? new ClosedReceiveChannelException(l.f92709a) : thJ0;
    }

    private final <R> R t1(Object obj, Function1<? super E, ? extends R> function1, Function3<? super k<E>, ? super Integer, ? super Long, ? extends R> function3, Function0<? extends R> function0, Function3<? super k<E>, ? super Integer, ? super Long, ? extends R> function4) {
        k kVar = (k) v0().get(this);
        while (!D()) {
            long andIncrement = x0().getAndIncrement(this);
            int i10 = BufferedChannelKt.f92425b;
            long j10 = andIncrement / ((long) i10);
            int i11 = (int) (andIncrement % ((long) i10));
            if (kVar.f93516d != j10) {
                k kVarB0 = b0(j10, kVar);
                if (kVarB0 == null) {
                    continue;
                } else {
                    kVar = kVarB0;
                }
            }
            q0 q0Var = (Object) c2(kVar, i11, andIncrement, obj);
            if (q0Var == BufferedChannelKt.f92438o) {
                f3 f3Var = obj instanceof f3 ? (f3) obj : null;
                if (f3Var != null) {
                    k1(f3Var, kVar, i11);
                }
                return function3.invoke(kVar, Integer.valueOf(i11), Long.valueOf(andIncrement));
            }
            if (q0Var != BufferedChannelKt.f92440q) {
                if (q0Var == BufferedChannelKt.f92439p) {
                    return function4.invoke(kVar, Integer.valueOf(i11), Long.valueOf(andIncrement));
                }
                kVar.c();
                return function1.invoke(q0Var);
            }
            if (andIncrement < E0()) {
                kVar.c();
            }
        }
        return function0.invoke();
    }

    private final /* synthetic */ Object u0() {
        return this.receiveSegment$volatile;
    }

    static /* synthetic */ Object u1(BufferedChannel bufferedChannel, Object obj, Function1 function1, Function3 function3, Function0 function0, Function3 function4, int i10, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: receiveImpl");
        }
        if ((i10 & 16) != 0) {
            function4 = new Function3() { // from class: kotlinx.coroutines.channels.BufferedChannel$receiveImpl$1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Object invoke(Object obj3, Object obj4, Object obj5) {
                    return invoke((k) obj3, ((Number) obj4).intValue(), ((Number) obj5).longValue());
                }

                @NotNull
                public final Void invoke(@NotNull k<E> kVar, int i11, long j10) {
                    throw new IllegalStateException("unexpected".toString());
                }
            };
        }
        k kVar = (k) v0().get(bufferedChannel);
        while (!bufferedChannel.D()) {
            long andIncrement = x0().getAndIncrement(bufferedChannel);
            int i11 = BufferedChannelKt.f92425b;
            long j10 = andIncrement / ((long) i11);
            int i12 = (int) (andIncrement % ((long) i11));
            if (kVar.f93516d != j10) {
                k kVarB0 = bufferedChannel.b0(j10, kVar);
                if (kVarB0 == null) {
                    continue;
                } else {
                    kVar = kVarB0;
                }
            }
            Object objC2 = bufferedChannel.c2(kVar, i12, andIncrement, obj);
            if (objC2 == BufferedChannelKt.f92438o) {
                f3 f3Var = obj instanceof f3 ? (f3) obj : null;
                if (f3Var != null) {
                    bufferedChannel.k1(f3Var, kVar, i12);
                }
                return function3.invoke(kVar, Integer.valueOf(i12), Long.valueOf(andIncrement));
            }
            if (objC2 != BufferedChannelKt.f92440q) {
                if (objC2 == BufferedChannelKt.f92439p) {
                    return function4.invoke(kVar, Integer.valueOf(i12), Long.valueOf(andIncrement));
                }
                kVar.c();
                return function1.invoke(objC2);
            }
            if (andIncrement < bufferedChannel.E0()) {
                kVar.c();
            }
        }
        return function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater v0() {
        return f92390j;
    }

    private final void v1(k<E> kVar, int i10, long j10, f3 f3Var, Function1<? super E, Unit> function1, Function0<Unit> function0) {
        q0 q0Var = (Object) c2(kVar, i10, j10, f3Var);
        if (q0Var == BufferedChannelKt.f92438o) {
            k1(f3Var, kVar, i10);
            return;
        }
        if (q0Var != BufferedChannelKt.f92440q) {
            kVar.c();
            function1.invoke(q0Var);
            return;
        }
        if (j10 < E0()) {
            kVar.c();
        }
        k kVar2 = (k) v0().get(this);
        while (!D()) {
            long andIncrement = x0().getAndIncrement(this);
            int i11 = BufferedChannelKt.f92425b;
            long j11 = andIncrement / ((long) i11);
            int i12 = (int) (andIncrement % ((long) i11));
            if (kVar2.f93516d != j11) {
                k kVarB0 = b0(j11, kVar2);
                if (kVarB0 == null) {
                    continue;
                } else {
                    kVar2 = kVarB0;
                }
            }
            q0 q0Var2 = (Object) c2(kVar2, i12, andIncrement, f3Var);
            if (q0Var2 == BufferedChannelKt.f92438o) {
                if (!(f3Var instanceof f3)) {
                    f3Var = null;
                }
                if (f3Var != null) {
                    k1(f3Var, kVar2, i12);
                }
                Unit unit = Unit.INSTANCE;
                return;
            }
            if (q0Var2 != BufferedChannelKt.f92440q) {
                if (q0Var2 == BufferedChannelKt.f92439p) {
                    throw new IllegalStateException("unexpected".toString());
                }
                kVar2.c();
                function1.invoke(q0Var2);
                return;
            }
            if (andIncrement < E0()) {
                kVar2.c();
            }
        }
        function0.invoke();
    }

    private final /* synthetic */ long w0() {
        return this.receivers$volatile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object w1(k<E> kVar, int i10, long j10, Continuation<? super E> continuation) {
        kotlinx.coroutines.o oVarB = kotlinx.coroutines.q.b(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        try {
            Object objC2 = c2(kVar, i10, j10, oVarB);
            if (objC2 != BufferedChannelKt.f92438o) {
                Function1<Throwable, Unit> function1A = null;
                function1A = null;
                if (objC2 == BufferedChannelKt.f92440q) {
                    if (j10 < E0()) {
                        kVar.c();
                    }
                    k kVar2 = (k) v0().get(this);
                    while (true) {
                        if (D()) {
                            d1(oVarB);
                            break;
                        }
                        long andIncrement = x0().getAndIncrement(this);
                        int i11 = BufferedChannelKt.f92425b;
                        long j11 = andIncrement / ((long) i11);
                        int i12 = (int) (andIncrement % ((long) i11));
                        if (kVar2.f93516d != j11) {
                            k kVarB0 = b0(j11, kVar2);
                            if (kVarB0 != null) {
                                kVar2 = kVarB0;
                            }
                        }
                        objC2 = c2(kVar2, i12, andIncrement, oVarB);
                        if (objC2 == BufferedChannelKt.f92438o) {
                            kotlinx.coroutines.o oVar = oVarB instanceof f3 ? oVarB : null;
                            if (oVar == null) {
                                break;
                            }
                            k1(oVar, kVar2, i12);
                            break;
                        }
                        if (objC2 == BufferedChannelKt.f92440q) {
                            if (andIncrement < E0()) {
                                kVar2.c();
                            }
                        } else {
                            if (objC2 == BufferedChannelKt.f92439p) {
                                throw new IllegalStateException("unexpected".toString());
                            }
                            kVar2.c();
                            Function1<E, Unit> function1 = this.f92395c;
                            if (function1 != null) {
                                function1A = OnUndeliveredElementKt.a(function1, objC2, oVarB.get$context());
                            }
                        }
                    }
                } else {
                    kVar.c();
                    Function1<E, Unit> function2 = this.f92395c;
                    if (function2 != null) {
                        function1A = OnUndeliveredElementKt.a(function2, objC2, oVarB.get$context());
                    }
                }
                oVarB.p(objC2, function1A);
                break;
            }
            k1(oVarB, kVar, i10);
            Object objZ = oVarB.z();
            if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return objZ;
        } catch (Throwable th) {
            oVarB.Y();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicLongFieldUpdater x0() {
        return f92386f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x1(kotlinx.coroutines.selects.j<?> jVar, Object obj) {
        k kVar = (k) v0().get(this);
        while (!D()) {
            long andIncrement = x0().getAndIncrement(this);
            int i10 = BufferedChannelKt.f92425b;
            long j10 = andIncrement / ((long) i10);
            int i11 = (int) (andIncrement % ((long) i10));
            if (kVar.f93516d != j10) {
                k kVarB0 = b0(j10, kVar);
                if (kVarB0 == null) {
                    continue;
                } else {
                    kVar = kVarB0;
                }
            }
            Object objC2 = c2(kVar, i11, andIncrement, jVar);
            if (objC2 == BufferedChannelKt.f92438o) {
                f3 f3Var = jVar instanceof f3 ? (f3) jVar : null;
                if (f3Var != null) {
                    k1(f3Var, kVar, i11);
                    return;
                }
                return;
            }
            if (objC2 != BufferedChannelKt.f92440q) {
                if (objC2 == BufferedChannelKt.f92439p) {
                    throw new IllegalStateException("unexpected".toString());
                }
                kVar.c();
                jVar.f(objC2);
                return;
            }
            if (andIncrement < E0()) {
                kVar.c();
            }
        }
        e1(jVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void z1(k<E> kVar) {
        Function1<E, Unit> function1 = this.f92395c;
        UndeliveredElementException undeliveredElementExceptionC = null;
        Object objC = kotlinx.coroutines.internal.q.c(null, 1, null);
        loop0: do {
            for (int i10 = BufferedChannelKt.f92425b - 1; -1 < i10; i10--) {
                long j10 = (kVar.f93516d * ((long) BufferedChannelKt.f92425b)) + ((long) i10);
                while (true) {
                    Object objJ = kVar.J(i10);
                    if (objJ == BufferedChannelKt.f92434k) {
                        break loop0;
                    }
                    if (objJ != BufferedChannelKt.f92429f) {
                        if (objJ != BufferedChannelKt.f92430g && objJ != null) {
                            if (!(objJ instanceof f3) && !(objJ instanceof t)) {
                                if (objJ != BufferedChannelKt.f92432i && objJ != BufferedChannelKt.f92431h) {
                                    if (objJ != BufferedChannelKt.f92432i) {
                                        break;
                                    }
                                } else {
                                    break loop0;
                                }
                            } else {
                                if (j10 < y0()) {
                                    break loop0;
                                }
                                f3 f3Var = objJ instanceof t ? ((t) objJ).f92715a : (f3) objJ;
                                if (kVar.D(i10, objJ, BufferedChannelKt.z())) {
                                    if (function1 != null) {
                                        undeliveredElementExceptionC = OnUndeliveredElementKt.c(function1, kVar.I(i10), undeliveredElementExceptionC);
                                    }
                                    objC = kotlinx.coroutines.internal.q.h(objC, f3Var);
                                    kVar.E(i10);
                                    kVar.A();
                                    break;
                                }
                            }
                        } else {
                            if (kVar.D(i10, objJ, BufferedChannelKt.z())) {
                                kVar.A();
                                break;
                            }
                        }
                    } else {
                        if (j10 < y0()) {
                            break loop0;
                        }
                        if (kVar.D(i10, objJ, BufferedChannelKt.z())) {
                            if (function1 != null) {
                                undeliveredElementExceptionC = OnUndeliveredElementKt.c(function1, kVar.I(i10), undeliveredElementExceptionC);
                            }
                            kVar.E(i10);
                            kVar.A();
                            break;
                        }
                    }
                }
            }
            kVar = (k) kVar.h();
        } while (kVar != null);
        if (objC != null) {
            if (objC instanceof ArrayList) {
                Intrinsics.checkNotNull(objC, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
                ArrayList arrayList = (ArrayList) objC;
                for (int size = arrayList.size() - 1; -1 < size; size--) {
                    B1((f3) arrayList.get(size));
                }
            } else {
                B1((f3) objC);
            }
        }
        if (undeliveredElementExceptionC != null) {
            throw undeliveredElementExceptionC;
        }
    }

    @Override // kotlinx.coroutines.channels.s
    public boolean A() {
        return Q0(f92385e.get(this));
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean D() {
        return O0(f92385e.get(this));
    }

    public final long E0() {
        return f92385e.get(this) & 1152921504606846975L;
    }

    @Nullable
    public Object E1(E e10, @NotNull Continuation<? super Boolean> continuation) {
        return F1(this, e10, continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public kotlinx.coroutines.selects.e<E> G() {
        BufferedChannel$onReceive$1 bufferedChannel$onReceive$1 = BufferedChannel$onReceive$1.f92402b;
        Intrinsics.checkNotNull(bufferedChannel$onReceive$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceive$1, 3);
        BufferedChannel$onReceive$2 bufferedChannel$onReceive$2 = BufferedChannel$onReceive$2.f92403b;
        Intrinsics.checkNotNull(bufferedChannel$onReceive$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new kotlinx.coroutines.selects.f(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceive$2, 3), this.f92396d);
    }

    public final boolean H0() {
        while (true) {
            k<E> kVarB0 = (k) f92390j.get(this);
            long jY0 = y0();
            if (E0() <= jY0) {
                return false;
            }
            int i10 = BufferedChannelKt.f92425b;
            long j10 = jY0 / ((long) i10);
            if (kVarB0.f93516d == j10 || (kVarB0 = b0(j10, kVarB0)) != null) {
                kVarB0.c();
                if (L0(kVarB0, (int) (jY0 % ((long) i10)), jY0)) {
                    return true;
                }
                f92386f.compareAndSet(this, jY0, 1 + jY0);
            } else if (((k) f92390j.get(this)).f93516d < j10) {
                return false;
            }
        }
    }

    public boolean N(@Nullable Throwable th) {
        if (th == null) {
            th = new CancellationException("Channel was cancelled");
        }
        return R(th, true);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0108  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void P() {
        boolean z10;
        if (T0()) {
            if (!(f92391k.get(this) == BufferedChannelKt.f92424a)) {
                throw new IllegalStateException(("bufferEndSegment must be NULL_SEGMENT for rendezvous and unlimited channels; they do not manipulate it.\nChannel state: " + this).toString());
            }
        } else if (!(((k) f92390j.get(this)).f93516d <= ((k) f92391k.get(this)).f93516d)) {
            throw new IllegalStateException(("bufferEndSegment should not have lower id than receiveSegment.\nChannel state: " + this).toString());
        }
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new k[]{f92390j.get(this), f92389i.get(this), f92391k.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOf) {
            if (((k) obj) != BufferedChannelKt.f92424a) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it2.next();
        if (it2.hasNext()) {
            long j10 = ((k) next).f93516d;
            do {
                Object next2 = it2.next();
                long j11 = ((k) next2).f93516d;
                if (j10 > j11) {
                    next = next2;
                    j10 = j11;
                }
            } while (it2.hasNext());
        }
        k kVar = (k) next;
        if (!(kVar.h() == 0)) {
            throw new IllegalStateException(("All processed segments should be unreachable from the data structure, but the `prev` link of the leftmost segment is non-null.\nChannel state: " + this).toString());
        }
        while (kVar.f() != 0) {
            S sF = kVar.f();
            Intrinsics.checkNotNull(sF);
            if (((k) sF).h() != 0) {
                S sF2 = kVar.f();
                Intrinsics.checkNotNull(sF2);
                if (((k) sF2).h() == kVar) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = true;
            }
            if (!z10) {
                throw new IllegalStateException(("The `segment.next.prev === segment` invariant is violated.\nChannel state: " + this).toString());
            }
            int i10 = BufferedChannelKt.f92425b;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object objJ = kVar.J(i12);
                if (!Intrinsics.areEqual(objJ, BufferedChannelKt.f92429f) && !(objJ instanceof f3)) {
                    if (Intrinsics.areEqual(objJ, BufferedChannelKt.f92436m) ? true : Intrinsics.areEqual(objJ, BufferedChannelKt.f92435l) ? true : Intrinsics.areEqual(objJ, BufferedChannelKt.z())) {
                        if (!(kVar.I(i12) == null)) {
                            throw new IllegalStateException("Check failed.".toString());
                        }
                        i11++;
                    } else {
                        if (!(Intrinsics.areEqual(objJ, BufferedChannelKt.f92433j) ? true : Intrinsics.areEqual(objJ, BufferedChannelKt.f92434k))) {
                            throw new IllegalStateException(("Unexpected segment cell state: " + objJ + ".\nChannel state: " + this).toString());
                        }
                        if (!(kVar.I(i12) == null)) {
                            throw new IllegalStateException("Check failed.".toString());
                        }
                    }
                }
            }
            if (i11 == BufferedChannelKt.f92425b) {
                if (!(kVar == f92390j.get(this) || kVar == f92389i.get(this) || kVar == f92391k.get(this))) {
                    throw new IllegalStateException(("Logically removed segment is reachable.\nChannel state: " + this).toString());
                }
            }
            S sF3 = kVar.f();
            Intrinsics.checkNotNull(sF3);
            kVar = (k) sF3;
        }
    }

    protected boolean R(@Nullable Throwable th, boolean z10) {
        if (z10) {
            X0();
        }
        boolean zA = androidx.concurrent.futures.a.a(f92392l, this, BufferedChannelKt.A, th);
        if (z10) {
            Y0();
        } else {
            Z0();
        }
        X();
        b1();
        if (zA) {
            K0();
        }
        return zA;
    }

    protected boolean R0() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    public Object T(@NotNull Continuation<? super E> continuation) {
        return q1(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.s
    public boolean U(@Nullable Throwable th) {
        return R(th, false);
    }

    public boolean U1() {
        return T1(f92385e.get(this));
    }

    @Override // kotlinx.coroutines.channels.s
    @Nullable
    public Object V(E e10, @NotNull Continuation<? super Unit> continuation) {
        return D1(this, e10, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final String V1() {
        String strValueOf;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("S=" + E0() + ",R=" + y0() + ",B=" + g0() + ",B'=" + f92388h.get(this) + ",C=" + ((int) (f92385e.get(this) >> 60)) + StringUtil.COMMA);
        int i10 = (int) (f92385e.get(this) >> 60);
        if (i10 == 1) {
            sb2.append("CANCELLATION_STARTED,");
        } else if (i10 == 2) {
            sb2.append("CLOSED,");
        } else if (i10 == 3) {
            sb2.append("CANCELLED,");
        }
        sb2.append("SEND_SEGM=" + kotlinx.coroutines.o0.b(f92389i.get(this)) + ",RCV_SEGM=" + kotlinx.coroutines.o0.b(f92390j.get(this)));
        if (!T0()) {
            sb2.append(",EB_SEGM=" + kotlinx.coroutines.o0.b(f92391k.get(this)));
        }
        sb2.append("  ");
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new k[]{f92390j.get(this), f92389i.get(this), f92391k.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOf) {
            if (((k) obj) != BufferedChannelKt.f92424a) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it2.next();
        if (it2.hasNext()) {
            long j10 = ((k) next).f93516d;
            do {
                Object next2 = it2.next();
                long j11 = ((k) next2).f93516d;
                if (j10 > j11) {
                    next = next2;
                    j10 = j11;
                }
            } while (it2.hasNext());
        }
        k kVar = (k) next;
        do {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(kotlinx.coroutines.o0.b(kVar));
            sb3.append("=[");
            sb3.append(kVar.m() ? WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD : "");
            sb3.append(kVar.f93516d);
            sb3.append(",prev=");
            k kVar2 = (k) kVar.h();
            sb3.append(kVar2 != null ? kotlinx.coroutines.o0.b(kVar2) : null);
            sb3.append(StringUtil.COMMA);
            sb2.append(sb3.toString());
            int i11 = BufferedChannelKt.f92425b;
            for (int i12 = 0; i12 < i11; i12++) {
                Object objJ = kVar.J(i12);
                Object objI = kVar.I(i12);
                if (objJ instanceof kotlinx.coroutines.n) {
                    strValueOf = "cont";
                } else if (objJ instanceof kotlinx.coroutines.selects.j) {
                    strValueOf = "select";
                } else if (objJ instanceof r) {
                    strValueOf = "receiveCatching";
                } else if (objJ instanceof b) {
                    strValueOf = "send(broadcast)";
                } else if (objJ instanceof t) {
                    strValueOf = "EB(" + objJ + ')';
                } else {
                    strValueOf = String.valueOf(objJ);
                }
                sb2.append('[' + i12 + "]=(" + strValueOf + StringUtil.COMMA + objI + "),");
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("next=");
            k kVar3 = (k) kVar.f();
            sb4.append(kVar3 != null ? kotlinx.coroutines.o0.b(kVar3) : null);
            sb4.append("]  ");
            sb2.append(sb4.toString());
            kVar = (k) kVar.f();
        } while (kVar != null);
        return sb2.toString();
    }

    protected final void Y(long j10) {
        UndeliveredElementException undeliveredElementExceptionD;
        k<E> kVar = (k) f92390j.get(this);
        while (true) {
            long j11 = f92386f.get(this);
            if (j10 < Math.max(((long) this.f92394b) + j11, g0())) {
                return;
            }
            if (f92386f.compareAndSet(this, j11, j11 + 1)) {
                int i10 = BufferedChannelKt.f92425b;
                long j12 = j11 / ((long) i10);
                int i11 = (int) (j11 % ((long) i10));
                if (kVar.f93516d != j12) {
                    k<E> kVarB0 = b0(j12, kVar);
                    if (kVarB0 == null) {
                        continue;
                    } else {
                        kVar = kVarB0;
                    }
                }
                Object objC2 = c2(kVar, i11, j11, null);
                if (objC2 != BufferedChannelKt.f92440q) {
                    kVar.c();
                    Function1<E, Unit> function1 = this.f92395c;
                    if (function1 != null && (undeliveredElementExceptionD = OnUndeliveredElementKt.d(function1, objC2, null, 2, null)) != null) {
                        throw undeliveredElementExceptionD;
                    }
                } else if (j11 < E0()) {
                    kVar.c();
                }
            }
        }
    }

    @NotNull
    protected final Object Y1(E e10) {
        k kVar;
        Object obj = BufferedChannelKt.f92429f;
        k kVar2 = (k) B0().get(this);
        while (true) {
            long andIncrement = D0().getAndIncrement(this);
            long j10 = andIncrement & 1152921504606846975L;
            boolean zQ0 = Q0(andIncrement);
            int i10 = BufferedChannelKt.f92425b;
            long j11 = j10 / ((long) i10);
            int i11 = (int) (j10 % ((long) i10));
            if (kVar2.f93516d != j11) {
                k kVarC0 = c0(j11, kVar2);
                if (kVarC0 != null) {
                    kVar = kVarC0;
                } else if (zQ0) {
                    return j.f92703b.a(z0());
                }
            } else {
                kVar = kVar2;
            }
            int iE2 = e2(kVar, i11, e10, j10, obj, zQ0);
            if (iE2 == 0) {
                kVar.c();
                return j.f92703b.c(Unit.INSTANCE);
            }
            if (iE2 == 1) {
                return j.f92703b.c(Unit.INSTANCE);
            }
            if (iE2 == 2) {
                if (zQ0) {
                    kVar.A();
                    return j.f92703b.a(z0());
                }
                f3 f3Var = obj instanceof f3 ? (f3) obj : null;
                if (f3Var != null) {
                    l1(f3Var, kVar, i11);
                }
                Y((kVar.f93516d * ((long) i10)) + ((long) i11));
                return j.f92703b.c(Unit.INSTANCE);
            }
            if (iE2 == 3) {
                throw new IllegalStateException("unexpected".toString());
            }
            if (iE2 == 4) {
                if (j10 < y0()) {
                    kVar.c();
                }
                return j.f92703b.a(z0());
            }
            if (iE2 == 5) {
                kVar.c();
            }
            kVar2 = kVar;
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final boolean a(@Nullable Throwable th) {
        return N(th);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void b(@Nullable CancellationException cancellationException) {
        N(cancellationException);
    }

    protected void b1() {
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void cancel() {
        N(null);
    }

    protected void i1() {
    }

    public final void i2(long j10) {
        long j11;
        long j12;
        if (T0()) {
            return;
        }
        while (g0() <= j10) {
        }
        int i10 = BufferedChannelKt.f92426c;
        for (int i11 = 0; i11 < i10; i11++) {
            long jG0 = g0();
            if (jG0 == (f92388h.get(this) & DurationKt.MAX_MILLIS) && jG0 == g0()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f92388h;
        do {
            j11 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j11, BufferedChannelKt.v(j11 & DurationKt.MAX_MILLIS, true)));
        while (true) {
            long jG1 = g0();
            long j13 = f92388h.get(this);
            long j14 = j13 & DurationKt.MAX_MILLIS;
            boolean z10 = (4611686018427387904L & j13) != 0;
            if (jG1 == j14 && jG1 == g0()) {
                break;
            } else if (!z10) {
                f92388h.compareAndSet(this, j13, BufferedChannelKt.v(j14, true));
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = f92388h;
        do {
            j12 = atomicLongFieldUpdater2.get(this);
        } while (!atomicLongFieldUpdater2.compareAndSet(this, j12, BufferedChannelKt.v(j12 & DurationKt.MAX_MILLIS, false)));
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        if (D() || H0()) {
            return false;
        }
        return !D();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public ChannelIterator<E> iterator() {
        return new a();
    }

    @Override // kotlinx.coroutines.channels.s
    @NotNull
    public kotlinx.coroutines.selects.g<E, BufferedChannel<E>> j() {
        BufferedChannel$onSend$1 bufferedChannel$onSend$1 = BufferedChannel$onSend$1.f92408b;
        Intrinsics.checkNotNull(bufferedChannel$onSend$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onSend$1, 3);
        BufferedChannel$onSend$2 bufferedChannel$onSend$2 = BufferedChannel$onSend$2.f92409b;
        Intrinsics.checkNotNull(bufferedChannel$onSend$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new kotlinx.coroutines.selects.h(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onSend$2, 3), null, 8, null);
    }

    @Nullable
    protected final Throwable j0() {
        return (Throwable) f92392l.get(this);
    }

    protected void j1() {
    }

    @Override // kotlinx.coroutines.channels.s
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(E e10) {
        return g.a.c(this, e10);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    public E poll() {
        return (E) g.a.d(this);
    }

    @Override // kotlinx.coroutines.channels.s
    public void r(@NotNull Function1<? super Throwable, Unit> function1) {
        if (androidx.concurrent.futures.a.a(f92393m, this, null, function1)) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f92393m;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != BufferedChannelKt.f92448y) {
                if (obj == BufferedChannelKt.f92449z) {
                    throw new IllegalStateException("Another handler was already registered and successfully invoked".toString());
                }
                throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(f92393m, this, BufferedChannelKt.f92448y, BufferedChannelKt.f92449z));
        function1.invoke(j0());
    }

    @Override // kotlinx.coroutines.channels.s
    @NotNull
    public Object s(E e10) {
        k kVar;
        if (T1(f92385e.get(this))) {
            return j.f92703b.b();
        }
        Object obj = BufferedChannelKt.f92435l;
        k kVar2 = (k) B0().get(this);
        while (true) {
            long andIncrement = D0().getAndIncrement(this);
            long j10 = andIncrement & 1152921504606846975L;
            boolean zQ0 = Q0(andIncrement);
            int i10 = BufferedChannelKt.f92425b;
            long j11 = j10 / ((long) i10);
            int i11 = (int) (j10 % ((long) i10));
            if (kVar2.f93516d != j11) {
                k kVarC0 = c0(j11, kVar2);
                if (kVarC0 != null) {
                    kVar = kVarC0;
                } else if (zQ0) {
                    break;
                }
            } else {
                kVar = kVar2;
            }
            int iE2 = e2(kVar, i11, e10, j10, obj, zQ0);
            if (iE2 == 0) {
                kVar.c();
            } else if (iE2 != 1) {
                if (iE2 == 2) {
                    if (zQ0) {
                        kVar.A();
                        break;
                    }
                    f3 f3Var = obj instanceof f3 ? (f3) obj : null;
                    if (f3Var != null) {
                        l1(f3Var, kVar, i11);
                    }
                    kVar.A();
                    return j.f92703b.b();
                }
                if (iE2 == 3) {
                    throw new IllegalStateException("unexpected".toString());
                }
                if (iE2 == 4) {
                    if (j10 >= y0()) {
                        break;
                    }
                    kVar.c();
                    break;
                }
                if (iE2 == 5) {
                    kVar.c();
                }
                kVar2 = kVar;
            }
            return j.f92703b.c(Unit.INSTANCE);
        }
        return j.f92703b.a(z0());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public String toString() {
        String string;
        StringBuilder sb2 = new StringBuilder();
        int i10 = (int) (f92385e.get(this) >> 60);
        if (i10 == 2) {
            sb2.append("closed,");
        } else if (i10 == 3) {
            sb2.append("cancelled,");
        }
        sb2.append("capacity=" + this.f92394b + StringUtil.COMMA);
        sb2.append("data=[");
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new k[]{f92390j.get(this), f92389i.get(this), f92391k.get(this)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOf) {
            if (((k) obj) != BufferedChannelKt.f92424a) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it2.next();
        if (it2.hasNext()) {
            long j10 = ((k) next).f93516d;
            do {
                Object next2 = it2.next();
                long j11 = ((k) next2).f93516d;
                if (j10 > j11) {
                    next = next2;
                    j10 = j11;
                }
            } while (it2.hasNext());
        }
        k kVar = (k) next;
        long jY0 = y0();
        long jE0 = E0();
        loop2: do {
            int i11 = BufferedChannelKt.f92425b;
            for (int i12 = 0; i12 < i11; i12++) {
                long j12 = (kVar.f93516d * ((long) BufferedChannelKt.f92425b)) + ((long) i12);
                if (j12 >= jE0 && j12 >= jY0) {
                    break loop2;
                }
                Object objJ = kVar.J(i12);
                Object objI = kVar.I(i12);
                if (objJ instanceof kotlinx.coroutines.n) {
                    string = (j12 >= jY0 || j12 < jE0) ? (j12 >= jE0 || j12 < jY0) ? "cont" : "send" : "receive";
                } else if (objJ instanceof kotlinx.coroutines.selects.j) {
                    string = (j12 >= jY0 || j12 < jE0) ? (j12 >= jE0 || j12 < jY0) ? "select" : "onSend" : "onReceive";
                } else if (objJ instanceof r) {
                    string = "receiveCatching";
                } else if (objJ instanceof b) {
                    string = "sendBroadcast";
                } else if (objJ instanceof t) {
                    string = "EB(" + objJ + ')';
                } else if (Intrinsics.areEqual(objJ, BufferedChannelKt.f92431h) ? true : Intrinsics.areEqual(objJ, BufferedChannelKt.f92432i)) {
                    string = "resuming_sender";
                } else {
                    if (!(objJ == null ? true : Intrinsics.areEqual(objJ, BufferedChannelKt.f92430g) ? true : Intrinsics.areEqual(objJ, BufferedChannelKt.f92434k) ? true : Intrinsics.areEqual(objJ, BufferedChannelKt.f92433j) ? true : Intrinsics.areEqual(objJ, BufferedChannelKt.f92436m) ? true : Intrinsics.areEqual(objJ, BufferedChannelKt.f92435l) ? true : Intrinsics.areEqual(objJ, BufferedChannelKt.z()))) {
                        string = objJ.toString();
                    }
                }
                if (objI != null) {
                    sb2.append('(' + string + StringUtil.COMMA + objI + "),");
                } else {
                    sb2.append(string + StringUtil.COMMA);
                }
            }
            kVar = (k) kVar.f();
        } while (kVar != null);
        if (StringsKt___StringsKt.last(sb2) == ',') {
            Intrinsics.checkNotNullExpressionValue(sb2.deleteCharAt(sb2.length() - 1), "deleteCharAt(...)");
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public kotlinx.coroutines.selects.e<j<E>> v() {
        BufferedChannel$onReceiveCatching$1 bufferedChannel$onReceiveCatching$1 = BufferedChannel$onReceiveCatching$1.f92404b;
        Intrinsics.checkNotNull(bufferedChannel$onReceiveCatching$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceiveCatching$1, 3);
        BufferedChannel$onReceiveCatching$2 bufferedChannel$onReceiveCatching$2 = BufferedChannel$onReceiveCatching$2.f92405b;
        Intrinsics.checkNotNull(bufferedChannel$onReceiveCatching$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new kotlinx.coroutines.selects.f(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceiveCatching$2, 3), this.f92396d);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public kotlinx.coroutines.selects.e<E> w() {
        BufferedChannel$onReceiveOrNull$1 bufferedChannel$onReceiveOrNull$1 = BufferedChannel$onReceiveOrNull$1.f92406b;
        Intrinsics.checkNotNull(bufferedChannel$onReceiveOrNull$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceiveOrNull$1, 3);
        BufferedChannel$onReceiveOrNull$2 bufferedChannel$onReceiveOrNull$2 = BufferedChannel$onReceiveOrNull$2.f92407b;
        Intrinsics.checkNotNull(bufferedChannel$onReceiveOrNull$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new kotlinx.coroutines.selects.f(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceiveOrNull$2, 3), this.f92396d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public Object x() {
        k kVar;
        long j10 = f92386f.get(this);
        long j11 = f92385e.get(this);
        if (O0(j11)) {
            return j.f92703b.a(j0());
        }
        if (j10 >= (j11 & 1152921504606846975L)) {
            return j.f92703b.b();
        }
        Object obj = BufferedChannelKt.f92436m;
        k kVar2 = (k) v0().get(this);
        while (!D()) {
            long andIncrement = x0().getAndIncrement(this);
            int i10 = BufferedChannelKt.f92425b;
            long j12 = andIncrement / ((long) i10);
            int i11 = (int) (andIncrement % ((long) i10));
            if (kVar2.f93516d != j12) {
                k kVarB0 = b0(j12, kVar2);
                if (kVarB0 == null) {
                    continue;
                } else {
                    kVar = kVarB0;
                }
            } else {
                kVar = kVar2;
            }
            Object objC2 = c2(kVar, i11, andIncrement, obj);
            if (objC2 == BufferedChannelKt.f92438o) {
                f3 f3Var = obj instanceof f3 ? (f3) obj : null;
                if (f3Var != null) {
                    k1(f3Var, kVar, i11);
                }
                i2(andIncrement);
                kVar.A();
                return j.f92703b.b();
            }
            if (objC2 != BufferedChannelKt.f92440q) {
                if (objC2 == BufferedChannelKt.f92439p) {
                    throw new IllegalStateException("unexpected".toString());
                }
                kVar.c();
                return j.f92703b.c(objC2);
            }
            if (andIncrement < E0()) {
                kVar.c();
            }
            kVar2 = kVar;
        }
        return j.f92703b.a(j0());
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @Nullable
    public Object y(@NotNull Continuation<? super E> continuation) {
        return g.a.e(this, continuation);
    }

    public final long y0() {
        return f92386f.get(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void y1(@NotNull kotlinx.coroutines.selects.j<?> jVar, @Nullable Object obj) {
        k kVar = (k) B0().get(this);
        while (true) {
            long andIncrement = D0().getAndIncrement(this);
            long j10 = 1152921504606846975L & andIncrement;
            boolean zQ0 = Q0(andIncrement);
            int i10 = BufferedChannelKt.f92425b;
            long j11 = j10 / ((long) i10);
            int i11 = (int) (j10 % ((long) i10));
            if (kVar.f93516d != j11) {
                k kVarC0 = c0(j11, kVar);
                if (kVarC0 != null) {
                    kVar = kVarC0;
                } else if (zQ0) {
                    break;
                }
            }
            int iE2 = e2(kVar, i11, obj, j10, jVar, zQ0);
            if (iE2 == 0) {
                kVar.c();
            } else if (iE2 != 1) {
                if (iE2 == 2) {
                    if (zQ0) {
                        kVar.A();
                        break;
                    }
                    f3 f3Var = jVar instanceof f3 ? (f3) jVar : null;
                    if (f3Var != null) {
                        l1(f3Var, kVar, i11);
                        return;
                    }
                    return;
                }
                if (iE2 == 3) {
                    throw new IllegalStateException("unexpected".toString());
                }
                if (iE2 == 4) {
                    if (j10 >= y0()) {
                        break;
                    }
                    kVar.c();
                    break;
                } else if (iE2 == 5) {
                    kVar.c();
                }
            }
            jVar.f(Unit.INSTANCE);
            return;
        }
        f1(obj, jVar);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @Nullable
    public Object z(@NotNull Continuation<? super j<? extends E>> continuation) {
        return r1(this, continuation);
    }

    @NotNull
    protected final Throwable z0() {
        Throwable thJ0 = j0();
        return thJ0 == null ? new ClosedSendChannelException(l.f92709a) : thJ0;
    }

    public /* synthetic */ BufferedChannel(int i10, Function1 function1, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? null : function1);
    }
}
