package com.join.kotlin.base.ext;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.kotlin.base.activity.BaseVmActivity;
import com.join.kotlin.base.activity.BaseVmDialogActivity;
import com.join.kotlin.base.ext.utils.LogExtKt;
import com.join.kotlin.base.fragment.BaseVmFragment;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.ExceptionHandle;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.state.ResultStateKt;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.mgps.dto.ResponseModel;
import com.sigmob.sdk.base.mta.PointCategory;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.j;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\u001ad\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00052\u0014\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0012\u0004\u0012\u00020\u00010\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00072\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b\u001ad\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\f2\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00052\u0014\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0012\u0004\u0012\u00020\u00010\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00072\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b\u001ad\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\r2\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00052\u0014\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0012\u0004\u0012\u00020\u00010\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00072\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000b\u001ag\u0010\u000e\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u0002*\u00020\u00102$\u0010\u0011\u001a \b\u0001\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00130\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0018\u00010\u00050\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u0019¢\u0006\u0002\u0010\u001a\u001aa\u0010\u001b\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u0002*\u00020\u00102\u001e\u0010\u0011\u001a\u001a\b\u0001\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u00072\u0016\u0010\u0004\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0018\u00010\u00050\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u0019¢\u0006\u0002\u0010\u001a\u001a{\u0010\u000e\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u0002*\u00020\u00102$\u0010\u0011\u001a \b\u0001\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00130\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u00072\u0014\u0010\u001c\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0012\u0004\u0012\u00020\u00010\u00072\u0014\b\u0002\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u00072\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u0019¢\u0006\u0002\u0010\u001e\u001aU\u0010\u001f\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u00132/\u0010\u001c\u001a+\b\u0001\u0012\u0004\u0012\u00020\"\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00140!¢\u0006\u0002\b#H\u0086@¢\u0006\u0002\u0010$\u001aa\u0010%\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00102\u001e\u0010\u0011\u001a\u001a\b\u0001\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u00072\u0014\u0010\u001c\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0012\u0004\u0012\u00020\u00010\u00072\u0014\b\u0002\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0002\u0010'¨\u0006("}, d2 = {"parseState", "", "T", "Lcom/join/kotlin/base/activity/BaseVmActivity;", "resultState", "Lcom/join/kotlin/base/state/ResultState;", "onSuccess", "Lkotlin/Function1;", "onError", "Lcom/join/kotlin/base/net/AppException;", "onLoading", "Lkotlin/Function0;", "Lcom/join/kotlin/base/activity/BaseVmDialogActivity;", "Lcom/join/kotlin/base/fragment/BaseVmFragment;", PointCategory.REQUEST, "Lkotlinx/coroutines/Job;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "block", "Lkotlin/coroutines/Continuation;", "Lcom/join/mgps/dto/ResponseModel;", "", "Landroidx/lifecycle/MutableLiveData;", "isShowDialog", "", "loadingMessage", "", "(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/MutableLiveData;ZLjava/lang/String;)Lkotlinx/coroutines/Job;", "requestNoCheck", "success", "error", "(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLjava/lang/String;)Lkotlinx/coroutines/Job;", "executeResponse", GrantCredentialsPermissionActivity.f89267i, "Lkotlin/Function3;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/ExtensionFunctionType;", "(Lcom/join/mgps/dto/ResponseModel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "launch", "", "(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBaseViewModelExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseViewModelExt.kt\ncom/join/kotlin/base/ext/BaseViewModelExtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,333:1\n1#2:334\n*E\n"})
public final class BaseViewModelExtKt {

    /* JADX INFO: renamed from: com.join.kotlin.base.ext.BaseViewModelExtKt$executeResponse$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.base.ext.BaseViewModelExtKt$executeResponse$2", f = "BaseViewModelExt.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ ResponseModel<T> $response;
        final /* synthetic */ Function3<l0, T, Continuation<? super Unit>, Object> $success;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(ResponseModel<T> responseModel, Function3<? super l0, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$response = responseModel;
            this.$success = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$response, this.$success, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to com.join.kotlin.base.ext.BaseViewModelExtKt$executeResponse$2 for r7v1 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.label
                r2 = 1
                if (r1 == 0) goto L17
                if (r1 != r2) goto Lf
                kotlin.ResultKt.throwOnFailure(r8)
                goto L37
            Lf:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L17:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.L$0
                kotlinx.coroutines.l0 r8 = (kotlinx.coroutines.l0) r8
                com.join.mgps.dto.ResponseModel<T> r1 = r7.$response
                boolean r1 = r1.isSuccess()
                if (r1 == 0) goto L3a
                kotlin.jvm.functions.Function3<kotlinx.coroutines.l0, T, kotlin.coroutines.Continuation<? super kotlin.Unit>, java.lang.Object> r1 = r7.$success
                com.join.mgps.dto.ResponseModel<T> r3 = r7.$response
                java.lang.Object r3 = r3.getResponseData()
                r7.label = r2
                java.lang.Object r8 = r1.invoke(r8, r3, r7)
                if (r8 != r0) goto L37
                return r0
            L37:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            L3a:
                com.join.kotlin.base.net.AppException r8 = new com.join.kotlin.base.net.AppException
                com.join.mgps.dto.ResponseModel<T> r0 = r7.$response
                int r1 = r0.getResponseCode()
                com.join.mgps.dto.ResponseModel<T> r0 = r7.$response
                java.lang.String r2 = r0.getResponseMsg()
                com.join.mgps.dto.ResponseModel<T> r0 = r7.$response
                java.lang.String r3 = r0.getResponseMsg()
                r4 = 0
                r5 = 8
                r6 = 0
                r0 = r8
                r0.<init>(r1, r2, r3, r4, r5, r6)
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.base.ext.BaseViewModelExtKt.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.base.ext.BaseViewModelExtKt$launch$2, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.base.ext.BaseViewModelExtKt$launch$2", f = "BaseViewModelExt.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL}, m = "invokeSuspend", n = {}, s = {})
    static final class C12982 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Continuation<? super T>, Object> $block;
        final /* synthetic */ Function1<Throwable, Unit> $error;
        final /* synthetic */ Function1<T, Unit> $success;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C12982(Function1<? super Continuation<? super T>, ? extends Object> function1, Function1<? super T, Unit> function2, Function1<? super Throwable, Unit> function3, Continuation<? super C12982> continuation) {
            super(2, continuation);
            this.$block = function1;
            this.$success = function2;
            this.$error = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C12982(this.$block, this.$success, this.$error, continuation);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM50constructorimpl;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            try {
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Function1<Continuation<? super T>, Object> function1 = this.$block;
                    Result.Companion companion = Result.INSTANCE;
                    CoroutineDispatcher coroutineDispatcherC = z0.c();
                    BaseViewModelExtKt$launch$2$1$1 baseViewModelExtKt$launch$2$1$1 = new BaseViewModelExtKt$launch$2$1$1(function1, null);
                    this.label = 1;
                    obj = kotlinx.coroutines.h.h(coroutineDispatcherC, baseViewModelExtKt$launch$2$1$1, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                objM50constructorimpl = Result.m50constructorimpl(obj);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
            }
            Function1<T, Unit> function2 = this.$success;
            if (Result.m57isSuccessimpl(objM50constructorimpl)) {
                function2.invoke((T) objM50constructorimpl);
            }
            Function1<Throwable, Unit> function3 = this.$error;
            Throwable thM53exceptionOrNullimpl = Result.m53exceptionOrNullimpl(objM50constructorimpl);
            if (thM53exceptionOrNullimpl != null) {
                function3.invoke(thM53exceptionOrNullimpl);
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C12982) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.base.ext.BaseViewModelExtKt$request$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.base.ext.BaseViewModelExtKt$request$1", f = "BaseViewModelExt.kt", i = {}, l = {154}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Continuation<? super ResponseModel<T>>, Object> $block;
        final /* synthetic */ boolean $isShowDialog;
        final /* synthetic */ String $loadingMessage;
        final /* synthetic */ MutableLiveData<ResultState<T>> $resultState;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(boolean z10, MutableLiveData<ResultState<T>> mutableLiveData, String str, Function1<? super Continuation<? super ResponseModel<T>>, ? extends Object> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$isShowDialog = z10;
            this.$resultState = mutableLiveData;
            this.$loadingMessage = str;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$isShowDialog, this.$resultState, this.$loadingMessage, this.$block, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM50constructorimpl;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            try {
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    boolean z10 = this.$isShowDialog;
                    MutableLiveData<ResultState<T>> mutableLiveData = this.$resultState;
                    String str = this.$loadingMessage;
                    Function1<Continuation<? super ResponseModel<T>>, Object> function1 = this.$block;
                    Result.Companion companion = Result.INSTANCE;
                    if (z10) {
                        mutableLiveData.setValue((ResultState<T>) ResultState.INSTANCE.onRequestLoading(str));
                    }
                    CoroutineDispatcher coroutineDispatcherC = z0.c();
                    BaseViewModelExtKt$request$1$1$1 baseViewModelExtKt$request$1$1$1 = new BaseViewModelExtKt$request$1$1$1(function1, null);
                    this.label = 1;
                    obj = kotlinx.coroutines.h.h(coroutineDispatcherC, baseViewModelExtKt$request$1$1$1, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                objM50constructorimpl = Result.m50constructorimpl((ResponseModel) obj);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
            }
            MutableLiveData<ResultState<T>> mutableLiveData2 = this.$resultState;
            if (Result.m57isSuccessimpl(objM50constructorimpl)) {
                ResultStateKt.paresResult((MutableLiveData) mutableLiveData2, (ResponseModel) objM50constructorimpl);
            }
            MutableLiveData<ResultState<T>> mutableLiveData3 = this.$resultState;
            Throwable thM53exceptionOrNullimpl = Result.m53exceptionOrNullimpl(objM50constructorimpl);
            if (thM53exceptionOrNullimpl != null) {
                String message = thM53exceptionOrNullimpl.getMessage();
                if (message != null) {
                    LogExtKt.loge$default(message, null, 1, null);
                }
                thM53exceptionOrNullimpl.printStackTrace();
                ResultStateKt.paresException(mutableLiveData3, thM53exceptionOrNullimpl);
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.base.ext.BaseViewModelExtKt$request$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.base.ext.BaseViewModelExtKt$request$3", f = "BaseViewModelExt.kt", i = {0}, l = {217, 225}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Continuation<? super ResponseModel<T>>, Object> $block;
        final /* synthetic */ Function1<AppException, Unit> $error;
        final /* synthetic */ Function1<T, Unit> $success;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(Function1<? super Continuation<? super ResponseModel<T>>, ? extends Object> function1, Function1<? super T, Unit> function2, Function1<? super AppException, Unit> function3, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$block = function1;
            this.$success = function2;
            this.$error = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$block, this.$success, this.$error, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        /* JADX WARN: Code duplicated, block: B:38:0x0098  */
        /* JADX WARN: Code duplicated, block: B:40:0x009e  */
        /* JADX WARN: Code duplicated, block: B:44:0x00b5  */
        /* JADX WARN: Code duplicated, block: B:46:0x00bb  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM50constructorimpl;
            Object obj2;
            Function1<AppException, Unit> function1;
            Object objM50constructorimpl2;
            Function1<AppException, Unit> function2;
            Throwable thM53exceptionOrNullimpl;
            String message;
            Throwable thM53exceptionOrNullimpl2;
            String message2;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            try {
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    l0 l0Var = (l0) this.L$0;
                    Function1<Continuation<? super ResponseModel<T>>, Object> function3 = this.$block;
                    Result.Companion companion = Result.INSTANCE;
                    CoroutineDispatcher coroutineDispatcherC = z0.c();
                    BaseViewModelExtKt$request$3$1$1 baseViewModelExtKt$request$3$1$1 = new BaseViewModelExtKt$request$3$1$1(function3, null);
                    this.L$0 = l0Var;
                    this.label = 1;
                    obj = kotlinx.coroutines.h.h(coroutineDispatcherC, baseViewModelExtKt$request$3$1$1, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        function1 = (Function1) this.L$1;
                        obj2 = this.L$0;
                        try {
                            ResultKt.throwOnFailure(obj);
                            objM50constructorimpl2 = Result.m50constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th) {
                            th = th;
                            Result.Companion companion2 = Result.INSTANCE;
                            objM50constructorimpl2 = Result.m50constructorimpl(ResultKt.createFailure(th));
                        }
                        thM53exceptionOrNullimpl2 = Result.m53exceptionOrNullimpl(objM50constructorimpl2);
                        if (thM53exceptionOrNullimpl2 != null) {
                            message2 = thM53exceptionOrNullimpl2.getMessage();
                            if (message2 != null) {
                                LogExtKt.loge$default(message2, null, 1, null);
                            }
                            thM53exceptionOrNullimpl2.printStackTrace();
                            function1.invoke(ExceptionHandle.INSTANCE.handleException(thM53exceptionOrNullimpl2));
                        }
                        function2 = this.$error;
                        thM53exceptionOrNullimpl = Result.m53exceptionOrNullimpl(obj2);
                        if (thM53exceptionOrNullimpl != null) {
                            message = thM53exceptionOrNullimpl.getMessage();
                            if (message != null) {
                                LogExtKt.loge$default(message, null, 1, null);
                            }
                            thM53exceptionOrNullimpl.printStackTrace();
                            function2.invoke(ExceptionHandle.INSTANCE.handleException(thM53exceptionOrNullimpl));
                        }
                        return Unit.INSTANCE;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                objM50constructorimpl = Result.m50constructorimpl((ResponseModel) obj);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th2));
            }
            obj2 = objM50constructorimpl;
            Function1<T, Unit> function4 = this.$success;
            Function1<AppException, Unit> function5 = this.$error;
            if (Result.m57isSuccessimpl(obj2)) {
                ResponseModel responseModel = (ResponseModel) obj2;
                try {
                    Result.Companion companion4 = Result.INSTANCE;
                    BaseViewModelExtKt$request$3$2$1$1 baseViewModelExtKt$request$3$2$1$1 = new BaseViewModelExtKt$request$3$2$1$1(function4, null);
                    this.L$0 = obj2;
                    this.L$1 = function5;
                    this.label = 2;
                    if (BaseViewModelExtKt.executeResponse(responseModel, baseViewModelExtKt$request$3$2$1$1, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    function1 = function5;
                    objM50constructorimpl2 = Result.m50constructorimpl(Unit.INSTANCE);
                    thM53exceptionOrNullimpl2 = Result.m53exceptionOrNullimpl(objM50constructorimpl2);
                    if (thM53exceptionOrNullimpl2 != null) {
                        message2 = thM53exceptionOrNullimpl2.getMessage();
                        if (message2 != null) {
                            LogExtKt.loge$default(message2, null, 1, null);
                        }
                        thM53exceptionOrNullimpl2.printStackTrace();
                        function1.invoke(ExceptionHandle.INSTANCE.handleException(thM53exceptionOrNullimpl2));
                    }
                } catch (Throwable th3) {
                    th = th3;
                    function1 = function5;
                    Result.Companion companion5 = Result.INSTANCE;
                    objM50constructorimpl2 = Result.m50constructorimpl(ResultKt.createFailure(th));
                }
            }
            function2 = this.$error;
            thM53exceptionOrNullimpl = Result.m53exceptionOrNullimpl(obj2);
            if (thM53exceptionOrNullimpl != null) {
                message = thM53exceptionOrNullimpl.getMessage();
                if (message != null) {
                    LogExtKt.loge$default(message, null, 1, null);
                }
                thM53exceptionOrNullimpl.printStackTrace();
                function2.invoke(ExceptionHandle.INSTANCE.handleException(thM53exceptionOrNullimpl));
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.base.ext.BaseViewModelExtKt$requestNoCheck$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.base.ext.BaseViewModelExtKt$requestNoCheck$1", f = "BaseViewModelExt.kt", i = {}, l = {184}, m = "invokeSuspend", n = {}, s = {})
    static final class C12991 extends SuspendLambda implements Function2<l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Continuation<? super T>, Object> $block;
        final /* synthetic */ boolean $isShowDialog;
        final /* synthetic */ String $loadingMessage;
        final /* synthetic */ MutableLiveData<ResultState<T>> $resultState;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C12991(boolean z10, MutableLiveData<ResultState<T>> mutableLiveData, String str, Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super C12991> continuation) {
            super(2, continuation);
            this.$isShowDialog = z10;
            this.$resultState = mutableLiveData;
            this.$loadingMessage = str;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C12991 c12991 = new C12991(this.$isShowDialog, this.$resultState, this.$loadingMessage, this.$block, continuation);
            c12991.L$0 = obj;
            return c12991;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM50constructorimpl;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            try {
                if (i10 == 0) {
                    ResultKt.throwOnFailure(obj);
                    boolean z10 = this.$isShowDialog;
                    MutableLiveData<ResultState<T>> mutableLiveData = this.$resultState;
                    String str = this.$loadingMessage;
                    Function1<Continuation<? super T>, Object> function1 = this.$block;
                    Result.Companion companion = Result.INSTANCE;
                    if (z10) {
                        mutableLiveData.setValue((ResultState<T>) ResultState.INSTANCE.onRequestLoading(str));
                    }
                    CoroutineDispatcher coroutineDispatcherC = z0.c();
                    BaseViewModelExtKt$requestNoCheck$1$1$1 baseViewModelExtKt$requestNoCheck$1$1$1 = new BaseViewModelExtKt$requestNoCheck$1$1$1(function1, null);
                    this.label = 1;
                    obj = kotlinx.coroutines.h.h(coroutineDispatcherC, baseViewModelExtKt$requestNoCheck$1$1$1, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                objM50constructorimpl = Result.m50constructorimpl(obj);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
            }
            MutableLiveData<ResultState<T>> mutableLiveData2 = this.$resultState;
            if (Result.m57isSuccessimpl(objM50constructorimpl)) {
                ResultStateKt.paresResult(mutableLiveData2, objM50constructorimpl);
            }
            MutableLiveData<ResultState<T>> mutableLiveData3 = this.$resultState;
            Throwable thM53exceptionOrNullimpl = Result.m53exceptionOrNullimpl(objM50constructorimpl);
            if (thM53exceptionOrNullimpl != null) {
                String message = thM53exceptionOrNullimpl.getMessage();
                if (message != null) {
                    LogExtKt.loge$default(message, null, 1, null);
                }
                thM53exceptionOrNullimpl.printStackTrace();
                ResultStateKt.paresException(mutableLiveData3, thM53exceptionOrNullimpl);
            }
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C12991) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    @Nullable
    public static final <T> Object executeResponse(@NotNull ResponseModel<T> responseModel, @NotNull Function3<? super l0, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, @NotNull Continuation<? super Unit> continuation) {
        Object objG = m0.g(new AnonymousClass2(responseModel, function3, null), continuation);
        return objG == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objG : Unit.INSTANCE;
    }

    public static final <T> void launch(@NotNull BaseViewModel baseViewModel, @NotNull Function1<? super Continuation<? super T>, ? extends Object> block, @NotNull Function1<? super T, Unit> success, @NotNull Function1<? super Throwable, Unit> error) {
        Intrinsics.checkNotNullParameter(baseViewModel, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Intrinsics.checkNotNullParameter(success, "success");
        Intrinsics.checkNotNullParameter(error, "error");
        j.f(ViewModelKt.getViewModelScope(baseViewModel), null, null, new C12982(block, success, error, null), 3, null);
    }

    public static /* synthetic */ void launch$default(BaseViewModel baseViewModel, Function1 function1, Function1 function2, Function1 function3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function3 = new Function1() { // from class: com.join.kotlin.base.ext.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return BaseViewModelExtKt.launch$lambda$7((Throwable) obj2);
                }
            };
        }
        launch(baseViewModel, function1, function2, function3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit launch$lambda$7(Throwable it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        return Unit.INSTANCE;
    }

    public static final <T> void parseState(@NotNull BaseVmActivity<?> baseVmActivity, @NotNull ResultState<? extends T> resultState, @NotNull Function1<? super T, Unit> onSuccess, @Nullable Function1<? super AppException, Unit> function1, @Nullable Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(baseVmActivity, "<this>");
        Intrinsics.checkNotNullParameter(resultState, "resultState");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        if (resultState instanceof ResultState.Loading) {
            baseVmActivity.showLoading(((ResultState.Loading) resultState).getLoadingMessage());
            return;
        }
        if (resultState instanceof ResultState.Success) {
            baseVmActivity.dismissLoading();
            onSuccess.invoke((Object) ((ResultState.Success) resultState).getData());
        } else {
            if (!(resultState instanceof ResultState.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            baseVmActivity.dismissLoading();
            if (function1 != null) {
                function1.invoke(((ResultState.Error) resultState).getError());
            }
        }
    }

    public static /* synthetic */ void parseState$default(BaseVmActivity baseVmActivity, ResultState resultState, Function1 function1, Function1 function2, Function0 function0, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function2 = null;
        }
        if ((i10 & 8) != 0) {
            function0 = null;
        }
        parseState((BaseVmActivity<?>) baseVmActivity, resultState, function1, (Function1<? super AppException, Unit>) function2, (Function0<Unit>) function0);
    }

    @NotNull
    public static final <T> v1 request(@NotNull BaseViewModel baseViewModel, @NotNull Function1<? super Continuation<? super ResponseModel<T>>, ? extends Object> block, @NotNull MutableLiveData<ResultState<T>> resultState, boolean z10, @NotNull String loadingMessage) {
        Intrinsics.checkNotNullParameter(baseViewModel, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Intrinsics.checkNotNullParameter(resultState, "resultState");
        Intrinsics.checkNotNullParameter(loadingMessage, "loadingMessage");
        return j.f(ViewModelKt.getViewModelScope(baseViewModel), null, null, new AnonymousClass1(z10, resultState, loadingMessage, block, null), 3, null);
    }

    public static /* synthetic */ v1 request$default(BaseViewModel baseViewModel, Function1 function1, MutableLiveData mutableLiveData, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        if ((i10 & 8) != 0) {
            str = "请求网络中...";
        }
        return request(baseViewModel, function1, mutableLiveData, z10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit request$lambda$6(AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        return Unit.INSTANCE;
    }

    @NotNull
    public static final <T> v1 requestNoCheck(@NotNull BaseViewModel baseViewModel, @NotNull Function1<? super Continuation<? super T>, ? extends Object> block, @NotNull MutableLiveData<ResultState<T>> resultState, boolean z10, @NotNull String loadingMessage) {
        Intrinsics.checkNotNullParameter(baseViewModel, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Intrinsics.checkNotNullParameter(resultState, "resultState");
        Intrinsics.checkNotNullParameter(loadingMessage, "loadingMessage");
        return j.f(ViewModelKt.getViewModelScope(baseViewModel), null, null, new C12991(z10, resultState, loadingMessage, block, null), 3, null);
    }

    public static /* synthetic */ v1 requestNoCheck$default(BaseViewModel baseViewModel, Function1 function1, MutableLiveData mutableLiveData, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        if ((i10 & 8) != 0) {
            str = "请求网络中...";
        }
        return requestNoCheck(baseViewModel, function1, mutableLiveData, z10, str);
    }

    public static /* synthetic */ void parseState$default(BaseVmDialogActivity baseVmDialogActivity, ResultState resultState, Function1 function1, Function1 function2, Function0 function0, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function2 = null;
        }
        if ((i10 & 8) != 0) {
            function0 = null;
        }
        parseState((BaseVmDialogActivity<?>) baseVmDialogActivity, resultState, function1, (Function1<? super AppException, Unit>) function2, (Function0<Unit>) function0);
    }

    @NotNull
    public static final <T> v1 request(@NotNull BaseViewModel baseViewModel, @NotNull Function1<? super Continuation<? super ResponseModel<T>>, ? extends Object> block, @NotNull Function1<? super T, Unit> success, @NotNull Function1<? super AppException, Unit> error, boolean z10, @NotNull String loadingMessage) {
        Intrinsics.checkNotNullParameter(baseViewModel, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Intrinsics.checkNotNullParameter(success, "success");
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(loadingMessage, "loadingMessage");
        return j.f(ViewModelKt.getViewModelScope(baseViewModel), null, null, new AnonymousClass3(block, success, error, null), 3, null);
    }

    public static /* synthetic */ v1 request$default(BaseViewModel baseViewModel, Function1 function1, Function1 function2, Function1 function3, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function3 = new Function1() { // from class: com.join.kotlin.base.ext.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return BaseViewModelExtKt.request$lambda$6((AppException) obj2);
                }
            };
        }
        Function1 function4 = function3;
        boolean z11 = (i10 & 8) != 0 ? false : z10;
        if ((i10 & 16) != 0) {
            str = "请求网络中...";
        }
        return request(baseViewModel, function1, function2, function4, z11, str);
    }

    public static /* synthetic */ void parseState$default(BaseVmFragment baseVmFragment, ResultState resultState, Function1 function1, Function1 function2, Function0 function0, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function2 = null;
        }
        if ((i10 & 8) != 0) {
            function0 = null;
        }
        parseState((BaseVmFragment<?>) baseVmFragment, resultState, function1, (Function1<? super AppException, Unit>) function2, (Function0<Unit>) function0);
    }

    public static final <T> void parseState(@NotNull BaseVmDialogActivity<?> baseVmDialogActivity, @NotNull ResultState<? extends T> resultState, @NotNull Function1<? super T, Unit> onSuccess, @Nullable Function1<? super AppException, Unit> function1, @Nullable Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(baseVmDialogActivity, "<this>");
        Intrinsics.checkNotNullParameter(resultState, "resultState");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        if (resultState instanceof ResultState.Loading) {
            baseVmDialogActivity.showLoading(((ResultState.Loading) resultState).getLoadingMessage());
            return;
        }
        if (resultState instanceof ResultState.Success) {
            baseVmDialogActivity.dismissLoading();
            onSuccess.invoke((Object) ((ResultState.Success) resultState).getData());
        } else {
            if (resultState instanceof ResultState.Error) {
                baseVmDialogActivity.dismissLoading();
                if (function1 != null) {
                    function1.invoke(((ResultState.Error) resultState).getError());
                    return;
                }
                return;
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    public static final <T> void parseState(@NotNull BaseVmFragment<?> baseVmFragment, @NotNull ResultState<? extends T> resultState, @NotNull Function1<? super T, Unit> onSuccess, @Nullable Function1<? super AppException, Unit> function1, @Nullable Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(baseVmFragment, "<this>");
        Intrinsics.checkNotNullParameter(resultState, "resultState");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        if (resultState instanceof ResultState.Loading) {
            return;
        }
        if (resultState instanceof ResultState.Success) {
            onSuccess.invoke((Object) ((ResultState.Success) resultState).getData());
        } else {
            if (!(resultState instanceof ResultState.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            if (function1 != null) {
                function1.invoke(((ResultState.Error) resultState).getError());
            }
        }
    }
}
