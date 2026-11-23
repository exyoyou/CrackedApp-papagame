package kotlinx.coroutines.flow;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.y1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/l0;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1", f = "Share.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_START_TIME}, m = "invokeSuspend", n = {}, s = {})
final class FlowKt__ShareKt$launchSharingDeferred$1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f93111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ Object f93112c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ e<T> f93113d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.w<u<T>> f93114e;

    @SourceDebugExtension({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,422:1\n1#2:423\n*E\n"})
    static final class a<T> implements f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<j<T>> f93115b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ l0 f93116c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.w<u<T>> f93117d;

        a(Ref.ObjectRef<j<T>> objectRef, l0 l0Var, kotlinx.coroutines.w<u<T>> wVar) {
            this.f93115b = objectRef;
            this.f93116c = l0Var;
            this.f93117d = wVar;
        }

        /* JADX WARN: Type inference failed for: r4v2, types: [T, kotlinx.coroutines.flow.j, kotlinx.coroutines.flow.u] */
        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
            Unit unit;
            j<T> jVar = this.f93115b.element;
            if (jVar != null) {
                jVar.setValue(t10);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                l0 l0Var = this.f93116c;
                Ref.ObjectRef<j<T>> objectRef = this.f93115b;
                kotlinx.coroutines.w<u<T>> wVar = this.f93117d;
                ?? r10 = (T) v.a(t10);
                wVar.q(new l(r10, y1.B(l0Var.getCoroutineContext())));
                objectRef.element = r10;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__ShareKt$launchSharingDeferred$1(e<? extends T> eVar, kotlinx.coroutines.w<u<T>> wVar, Continuation<? super FlowKt__ShareKt$launchSharingDeferred$1> continuation) {
        super(2, continuation);
        this.f93113d = eVar;
        this.f93114e = wVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        FlowKt__ShareKt$launchSharingDeferred$1 flowKt__ShareKt$launchSharingDeferred$1 = new FlowKt__ShareKt$launchSharingDeferred$1(this.f93113d, this.f93114e, continuation);
        flowKt__ShareKt$launchSharingDeferred$1.f93112c = obj;
        return flowKt__ShareKt$launchSharingDeferred$1;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type kotlin.coroutines.Continuation to kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1 for r6v1 'this'  kotlin.coroutines.Continuation
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.f93111b
            r2 = 1
            if (r1 == 0) goto L19
            if (r1 != r2) goto L11
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> Lf
            goto L37
        Lf:
            r7 = move-exception
            goto L3a
        L11:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L19:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.Object r7 = r6.f93112c
            kotlinx.coroutines.l0 r7 = (kotlinx.coroutines.l0) r7
            kotlin.jvm.internal.Ref$ObjectRef r1 = new kotlin.jvm.internal.Ref$ObjectRef     // Catch: java.lang.Throwable -> Lf
            r1.<init>()     // Catch: java.lang.Throwable -> Lf
            kotlinx.coroutines.flow.e<T> r3 = r6.f93113d     // Catch: java.lang.Throwable -> Lf
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1$a r4 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1$a     // Catch: java.lang.Throwable -> Lf
            kotlinx.coroutines.w<kotlinx.coroutines.flow.u<T>> r5 = r6.f93114e     // Catch: java.lang.Throwable -> Lf
            r4.<init>(r1, r7, r5)     // Catch: java.lang.Throwable -> Lf
            r6.f93111b = r2     // Catch: java.lang.Throwable -> Lf
            java.lang.Object r7 = r3.a(r4, r6)     // Catch: java.lang.Throwable -> Lf
            if (r7 != r0) goto L37
            return r0
        L37:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L3a:
            kotlinx.coroutines.w<kotlinx.coroutines.flow.u<T>> r0 = r6.f93114e
            r0.c(r7)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull l0 l0Var, @Nullable Continuation<? super Unit> continuation) {
        return ((FlowKt__ShareKt$launchSharingDeferred$1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
