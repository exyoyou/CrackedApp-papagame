package kotlinx.coroutines.channels;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sdk.base.module.manager.SDKManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {SDKManager.ALGO_E_SM4_SM3_SM2, "Lkotlinx/coroutines/l0;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.BroadcastChannelImpl$registerSelectForSend$2", f = "BroadcastChannel.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,411:1\n11#2:412\n1#3:413\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2\n*L\n301#1:412\n*E\n"})
final class BroadcastChannelImpl$registerSelectForSend$2 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f92370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ BroadcastChannelImpl<E> f92371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ Object f92372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.selects.j<?> f92373e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BroadcastChannelImpl$registerSelectForSend$2(BroadcastChannelImpl<E> broadcastChannelImpl, Object obj, kotlinx.coroutines.selects.j<?> jVar, Continuation<? super BroadcastChannelImpl$registerSelectForSend$2> continuation) {
        super(2, continuation);
        this.f92371c = broadcastChannelImpl;
        this.f92372d = obj;
        this.f92373e = jVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new BroadcastChannelImpl$registerSelectForSend$2(this.f92371c, this.f92372d, this.f92373e, continuation);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.Continuation to kotlinx.coroutines.channels.BroadcastChannelImpl$registerSelectForSend$2 for r5v1 'this'  kotlin.coroutines.Continuation
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.f92370b
            r2 = 1
            if (r1 == 0) goto L19
            if (r1 != r2) goto L11
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> Lf
            goto L3e
        Lf:
            r6 = move-exception
            goto L29
        L11:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L19:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.channels.BroadcastChannelImpl<E> r6 = r5.f92371c     // Catch: java.lang.Throwable -> Lf
            java.lang.Object r1 = r5.f92372d     // Catch: java.lang.Throwable -> Lf
            r5.f92370b = r2     // Catch: java.lang.Throwable -> Lf
            java.lang.Object r6 = r6.V(r1, r5)     // Catch: java.lang.Throwable -> Lf
            if (r6 != r0) goto L3e
            return r0
        L29:
            kotlinx.coroutines.channels.BroadcastChannelImpl<E> r0 = r5.f92371c
            boolean r0 = r0.A()
            if (r0 == 0) goto L80
            boolean r0 = r6 instanceof kotlinx.coroutines.channels.ClosedSendChannelException
            if (r0 != 0) goto L3d
            kotlinx.coroutines.channels.BroadcastChannelImpl<E> r0 = r5.f92371c
            java.lang.Throwable r0 = r0.z0()
            if (r0 != r6) goto L80
        L3d:
            r2 = 0
        L3e:
            kotlinx.coroutines.channels.BroadcastChannelImpl<E> r6 = r5.f92371c
            java.util.concurrent.locks.ReentrantLock r6 = kotlinx.coroutines.channels.BroadcastChannelImpl.j2(r6)
            kotlinx.coroutines.channels.BroadcastChannelImpl<E> r0 = r5.f92371c
            kotlinx.coroutines.selects.j<?> r1 = r5.f92373e
            r6.lock()
            java.util.HashMap r3 = kotlinx.coroutines.channels.BroadcastChannelImpl.k2(r0)     // Catch: java.lang.Throwable -> L7b
            if (r2 == 0) goto L54
            kotlin.Unit r2 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7b
            goto L58
        L54:
            kotlinx.coroutines.internal.q0 r2 = kotlinx.coroutines.channels.BufferedChannelKt.z()     // Catch: java.lang.Throwable -> L7b
        L58:
            r3.put(r1, r2)     // Catch: java.lang.Throwable -> L7b
            java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r2)     // Catch: java.lang.Throwable -> L7b
            r2 = r1
            kotlinx.coroutines.selects.SelectImplementation r2 = (kotlinx.coroutines.selects.SelectImplementation) r2     // Catch: java.lang.Throwable -> L7b
            r2 = r1
            kotlinx.coroutines.selects.SelectImplementation r2 = (kotlinx.coroutines.selects.SelectImplementation) r2     // Catch: java.lang.Throwable -> L7b
            kotlin.Unit r3 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L7b
            kotlinx.coroutines.selects.TrySelectDetailedResult r2 = r2.L(r0, r3)     // Catch: java.lang.Throwable -> L7b
            kotlinx.coroutines.selects.TrySelectDetailedResult r4 = kotlinx.coroutines.selects.TrySelectDetailedResult.REREGISTER     // Catch: java.lang.Throwable -> L7b
            if (r2 == r4) goto L77
            java.util.HashMap r0 = kotlinx.coroutines.channels.BroadcastChannelImpl.k2(r0)     // Catch: java.lang.Throwable -> L7b
            r0.remove(r1)     // Catch: java.lang.Throwable -> L7b
        L77:
            r6.unlock()
            return r3
        L7b:
            r0 = move-exception
            r6.unlock()
            throw r0
        L80:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BroadcastChannelImpl$registerSelectForSend$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull l0 l0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((BroadcastChannelImpl$registerSelectForSend$2) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
