package kotlinx.coroutines.channels;

import com.sdk.base.module.manager.SDKManager;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {SDKManager.ALGO_E_SM4_SM3_SM2, "Lkotlinx/coroutines/l0;", "Lkotlinx/coroutines/channels/j;", "", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__ChannelsKt$trySendBlocking$2", f = "Channels.kt", i = {}, l = {39}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt$trySendBlocking$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"})
final class ChannelsKt__ChannelsKt$trySendBlocking$2 extends SuspendLambda implements Function2<l0, Continuation<? super j<? extends Unit>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f92457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ Object f92458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ s<E> f92459d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ E f92460e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ChannelsKt__ChannelsKt$trySendBlocking$2(s<? super E> sVar, E e10, Continuation<? super ChannelsKt__ChannelsKt$trySendBlocking$2> continuation) {
        super(2, continuation);
        this.f92459d = sVar;
        this.f92460e = e10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ChannelsKt__ChannelsKt$trySendBlocking$2 channelsKt__ChannelsKt$trySendBlocking$2 = new ChannelsKt__ChannelsKt$trySendBlocking$2(this.f92459d, this.f92460e, continuation);
        channelsKt__ChannelsKt$trySendBlocking$2.f92458c = obj;
        return channelsKt__ChannelsKt$trySendBlocking$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(l0 l0Var, Continuation<? super j<? extends Unit>> continuation) {
        return invoke2(l0Var, (Continuation<? super j<Unit>>) continuation);
    }

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
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objM50constructorimpl;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.f92457b;
        try {
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                s<E> sVar = this.f92459d;
                E e10 = this.f92460e;
                Result.Companion companion = Result.INSTANCE;
                this.f92457b = 1;
                if (sVar.V(e10, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            objM50constructorimpl = Result.m50constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
        }
        return j.b(Result.m57isSuccessimpl(objM50constructorimpl) ? j.f92703b.c(Unit.INSTANCE) : j.f92703b.a(Result.m53exceptionOrNullimpl(objM50constructorimpl)));
    }

    @Nullable
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull l0 l0Var, @Nullable Continuation<? super j<Unit>> continuation) {
        return ((ChannelsKt__ChannelsKt$trySendBlocking$2) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
