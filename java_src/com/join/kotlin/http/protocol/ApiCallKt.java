package com.join.kotlin.http.protocol;

import com.join.mgps.dto.ResponseModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.h;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aK\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022/\b\u0004\u0010\u0003\u001a)\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0086H¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"apiCall", "Lcom/join/mgps/dto/ResponseModel;", "T", "call", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ApiCallKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.join.kotlin.http.protocol.ApiCallKt$apiCall$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 176)
    @DebugMetadata(c = "com.join.kotlin.http.protocol.ApiCallKt$apiCall$2", f = "ApiCall.kt", i = {}, l = {15}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass2<T> extends SuspendLambda implements Function2<l0, Continuation<? super ResponseModel<T>>, Object> {
        final /* synthetic */ Function2<l0, Continuation<? super ResponseModel<T>>, Object> $call;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Function2<? super l0, ? super Continuation<? super ResponseModel<T>>, ? extends Object> function2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$call = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$call, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            try {
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    l0 l0Var = (l0) this.L$0;
                    Function2<l0, Continuation<? super ResponseModel<T>>, Object> function2 = this.$call;
                    this.label = 1;
                    obj = function2.invoke(l0Var, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return (ResponseModel) obj;
            } catch (Throwable th) {
                return ApiException.INSTANCE.build(th).toResponse();
            }
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            try {
                return (ResponseModel) this.$call.invoke((l0) this.L$0, this);
            } catch (Throwable th) {
                return ApiException.INSTANCE.build(th).toResponse();
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super ResponseModel<T>> continuation) {
            return ((AnonymousClass2) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    @Nullable
    public static final <T> Object apiCall(@NotNull Function2<? super l0, ? super Continuation<? super ResponseModel<T>>, ? extends Object> function2, @NotNull Continuation<? super ResponseModel<T>> continuation) {
        return h.h(z0.c(), new AnonymousClass2(function2, null), continuation);
    }

    private static final <T> Object apiCall$$forInline(Function2<? super l0, ? super Continuation<? super ResponseModel<T>>, ? extends Object> function2, Continuation<? super ResponseModel<T>> continuation) throws Throwable {
        CoroutineDispatcher coroutineDispatcherC = z0.c();
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(function2, null);
        InlineMarker.mark(0);
        Object objH = h.h(coroutineDispatcherC, anonymousClass2, continuation);
        InlineMarker.mark(1);
        return objH;
    }
}
