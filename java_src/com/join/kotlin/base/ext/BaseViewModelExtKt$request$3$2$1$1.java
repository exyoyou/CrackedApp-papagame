package com.join.kotlin.base.ext;

import com.umeng.analytics.pro.bm;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.l0;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u0001H\u0002H\n"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;", bm.aM}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.join.kotlin.base.ext.BaseViewModelExtKt$request$3$2$1$1", f = "BaseViewModelExt.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class BaseViewModelExtKt$request$3$2$1$1<T> extends SuspendLambda implements Function3<l0, T, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<T, Unit> $success;
    /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BaseViewModelExtKt$request$3$2$1$1(Function1<? super T, Unit> function1, Continuation<? super BaseViewModelExtKt$request$3$2$1$1> continuation) {
        super(3, continuation);
        this.$success = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        this.$success.invoke((T) this.L$0);
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(l0 l0Var, T t10, Continuation<? super Unit> continuation) {
        BaseViewModelExtKt$request$3$2$1$1 baseViewModelExtKt$request$3$2$1$1 = new BaseViewModelExtKt$request$3$2$1$1(this.$success, continuation);
        baseViewModelExtKt$request$3$2$1$1.L$0 = t10;
        return baseViewModelExtKt$request$3$2$1$1.invokeSuspend(Unit.INSTANCE);
    }
}
