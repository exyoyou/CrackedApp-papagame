package kotlinx.coroutines.flow;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.selects.SelectImplementation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/l0;", "Lkotlinx/coroutines/flow/f;", "downstream", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", f = "Delay.kt", i = {0, 0, 0, 0}, l = {TTAdConstant.VIDEO_COVER_URL_CODE}, m = "invokeSuspend", n = {"downstream", HmDataChannelManager.BEHAVIOR_VALUE, "lastValue", "ticker"}, s = {"L$0", "L$1", "L$2", "L$3"})
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,407:1\n51#2,8:408\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n*L\n278#1:408,8\n*E\n"})
final class FlowKt__DelayKt$sample$2<T> extends SuspendLambda implements Function3<l0, f<? super T>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92899c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f92900d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private /* synthetic */ Object f92901e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    /* synthetic */ Object f92902f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ long f92903g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final /* synthetic */ e<T> f92904h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__DelayKt$sample$2(long j10, e<? extends T> eVar, Continuation<? super FlowKt__DelayKt$sample$2> continuation) {
        super(3, continuation);
        this.f92903g = j10;
        this.f92904h = eVar;
    }

    @Override // kotlin.jvm.functions.Function3
    @Nullable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull l0 l0Var, @NotNull f<? super T> fVar, @Nullable Continuation<? super Unit> continuation) {
        FlowKt__DelayKt$sample$2 flowKt__DelayKt$sample$2 = new FlowKt__DelayKt$sample$2(this.f92903g, this.f92904h, continuation);
        flowKt__DelayKt$sample$2.f92901e = l0Var;
        flowKt__DelayKt$sample$2.f92902f = fVar;
        return flowKt__DelayKt$sample$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        f fVar;
        ReceiveChannel<Unit> receiveChannelY0;
        ReceiveChannel receiveChannel;
        Ref.ObjectRef objectRef;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.f92900d;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            l0 l0Var = (l0) this.f92901e;
            f fVar2 = (f) this.f92902f;
            ReceiveChannel receiveChannelF = ProduceKt.f(l0Var, null, -1, new FlowKt__DelayKt$sample$2$values$1(this.f92904h, null), 1, null);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            fVar = fVar2;
            receiveChannelY0 = g.y0(l0Var, this.f92903g);
            receiveChannel = receiveChannelF;
            objectRef = objectRef2;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            receiveChannelY0 = (ReceiveChannel) this.f92899c;
            objectRef = (Ref.ObjectRef) this.f92898b;
            receiveChannel = (ReceiveChannel) this.f92902f;
            fVar = (f) this.f92901e;
            ResultKt.throwOnFailure(obj);
        }
        while (objectRef.element != kotlinx.coroutines.flow.internal.l.f93398c) {
            SelectImplementation selectImplementation = new SelectImplementation(get$context());
            selectImplementation.j(receiveChannel.v(), new FlowKt__DelayKt$sample$2$1$1(objectRef, receiveChannelY0, null));
            selectImplementation.j(receiveChannelY0.G(), new FlowKt__DelayKt$sample$2$1$2(objectRef, fVar, null));
            this.f92901e = fVar;
            this.f92902f = receiveChannel;
            this.f92898b = objectRef;
            this.f92899c = receiveChannelY0;
            this.f92900d = 1;
            if (selectImplementation.w(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
