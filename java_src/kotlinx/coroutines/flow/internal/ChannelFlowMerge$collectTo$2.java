package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.q;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.y1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class ChannelFlowMerge$collectTo$2<T> implements kotlinx.coroutines.flow.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ v1 f93268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ kotlinx.coroutines.sync.b f93269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ q<T> f93270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ m<T> f93271e;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/l0;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1", f = "Merge.kt", i = {}, l = {65}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f93272b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.e<T> f93273c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ m<T> f93274d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.sync.b f93275e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(kotlinx.coroutines.flow.e<? extends T> eVar, m<T> mVar, kotlinx.coroutines.sync.b bVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.f93273c = eVar;
            this.f93274d = mVar;
            this.f93275e = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass1(this.f93273c, this.f93274d, this.f93275e, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.f93272b;
            try {
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    kotlinx.coroutines.flow.e<T> eVar = this.f93273c;
                    m<T> mVar = this.f93274d;
                    this.f93272b = 1;
                    if (eVar.a(mVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.f93275e.release();
                return Unit.INSTANCE;
            } catch (Throwable th) {
                this.f93275e.release();
                throw th;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull l0 l0Var, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    ChannelFlowMerge$collectTo$2(v1 v1Var, kotlinx.coroutines.sync.b bVar, q<? super T> qVar, m<T> mVar) {
        this.f93268b = v1Var;
        this.f93269c = bVar;
        this.f93270d = qVar;
        this.f93271e = mVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.f
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object emit(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, @NotNull Continuation<? super Unit> continuation) {
        ChannelFlowMerge$collectTo$2$emit$1 channelFlowMerge$collectTo$2$emit$1;
        ChannelFlowMerge$collectTo$2<T> channelFlowMerge$collectTo$2;
        if (continuation instanceof ChannelFlowMerge$collectTo$2$emit$1) {
            channelFlowMerge$collectTo$2$emit$1 = (ChannelFlowMerge$collectTo$2$emit$1) continuation;
            int i10 = channelFlowMerge$collectTo$2$emit$1.f93280f;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                channelFlowMerge$collectTo$2$emit$1.f93280f = i10 - Integer.MIN_VALUE;
            } else {
                channelFlowMerge$collectTo$2$emit$1 = new ChannelFlowMerge$collectTo$2$emit$1(this, continuation);
            }
        } else {
            channelFlowMerge$collectTo$2$emit$1 = new ChannelFlowMerge$collectTo$2$emit$1(this, continuation);
        }
        Object obj = channelFlowMerge$collectTo$2$emit$1.f93278d;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = channelFlowMerge$collectTo$2$emit$1.f93280f;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            v1 v1Var = this.f93268b;
            if (v1Var != null) {
                y1.A(v1Var);
            }
            kotlinx.coroutines.sync.b bVar = this.f93269c;
            channelFlowMerge$collectTo$2$emit$1.f93276b = this;
            channelFlowMerge$collectTo$2$emit$1.f93277c = eVar;
            channelFlowMerge$collectTo$2$emit$1.f93280f = 1;
            if (bVar.g(channelFlowMerge$collectTo$2$emit$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            channelFlowMerge$collectTo$2 = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eVar = (kotlinx.coroutines.flow.e) channelFlowMerge$collectTo$2$emit$1.f93277c;
            channelFlowMerge$collectTo$2 = (ChannelFlowMerge$collectTo$2) channelFlowMerge$collectTo$2$emit$1.f93276b;
            ResultKt.throwOnFailure(obj);
        }
        kotlinx.coroutines.j.f(channelFlowMerge$collectTo$2.f93270d, null, null, new AnonymousClass1(eVar, channelFlowMerge$collectTo$2.f93271e, channelFlowMerge$collectTo$2.f93269c, null), 3, null);
        return Unit.INSTANCE;
    }
}
