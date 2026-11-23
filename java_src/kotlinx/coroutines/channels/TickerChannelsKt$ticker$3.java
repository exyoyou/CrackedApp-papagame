package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/channels/q;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.TickerChannelsKt$ticker$3", f = "TickerChannels.kt", i = {}, l = {68, 69}, m = "invokeSuspend", n = {}, s = {})
final class TickerChannelsKt$ticker$3 extends SuspendLambda implements Function2<q<? super Unit>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f92687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ Object f92688c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ TickerMode f92689d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ long f92690e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ long f92691f;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TickerMode.values().length];
            try {
                iArr[TickerMode.FIXED_PERIOD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TickerMode.FIXED_DELAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TickerChannelsKt$ticker$3(TickerMode tickerMode, long j10, long j11, Continuation<? super TickerChannelsKt$ticker$3> continuation) {
        super(2, continuation);
        this.f92689d = tickerMode;
        this.f92690e = j10;
        this.f92691f = j11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        TickerChannelsKt$ticker$3 tickerChannelsKt$ticker$3 = new TickerChannelsKt$ticker$3(this.f92689d, this.f92690e, this.f92691f, continuation);
        tickerChannelsKt$ticker$3.f92688c = obj;
        return tickerChannelsKt$ticker$3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.f92687b;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            q qVar = (q) this.f92688c;
            int i11 = a.$EnumSwitchMapping$0[this.f92689d.ordinal()];
            if (i11 == 1) {
                long j10 = this.f92690e;
                long j11 = this.f92691f;
                s channel = qVar.getChannel();
                this.f92687b = 1;
                if (TickerChannelsKt.d(j10, j11, channel, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i11 == 2) {
                long j12 = this.f92690e;
                long j13 = this.f92691f;
                s channel2 = qVar.getChannel();
                this.f92687b = 2;
                if (TickerChannelsKt.c(j12, j13, channel2, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i10 != 1 && i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull q<? super Unit> qVar, @Nullable Continuation<? super Unit> continuation) {
        return ((TickerChannelsKt$ticker$3) create(qVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
