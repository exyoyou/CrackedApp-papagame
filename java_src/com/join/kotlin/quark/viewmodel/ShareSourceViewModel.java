package com.join.kotlin.quark.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.model.request.AngelRequest;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0006R\u001f\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR!\u0010\n\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u000b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\tR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001f\u0010\u0016\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\f0\f0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\t¨\u0006\u001b"}, d2 = {"Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "resultData", "Lcom/join/kotlin/base/state/ResultState;", "", "getResultData", "diskUrl", "getDiskUrl", "wishPoolItem", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "getWishPoolItem", "()Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "setWishPoolItem", "(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V", "submitEnable", "getSubmitEnable", "sourceAngel", "", "uid", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ShareSourceViewModel extends BaseViewModel {

    @Nullable
    private SourceListItemBean wishPoolItem;

    @NotNull
    private final MutableLiveData<String> title = new MutableLiveData<>("资源共享");

    @NotNull
    private final MutableLiveData<ResultState<Boolean>> resultData = new MutableLiveData<>();

    @NotNull
    private final MutableLiveData<String> diskUrl = new MutableLiveData<>();

    @NotNull
    private final MutableLiveData<Boolean> submitEnable = new MutableLiveData<>(Boolean.FALSE);

    /* JADX INFO: renamed from: com.join.kotlin.quark.viewmodel.ShareSourceViewModel$sourceAngel$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.quark.viewmodel.ShareSourceViewModel$sourceAngel$1", f = "ShareSourceViewModel.kt", i = {}, l = {26}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<Boolean>>, Object> {
        final /* synthetic */ String $uid;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$uid = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return ShareSourceViewModel.this.new AnonymousClass1(this.$uid, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                String value = ShareSourceViewModel.this.getDiskUrl().getValue();
                String str = this.$uid;
                SourceListItemBean wishPoolItem = ShareSourceViewModel.this.getWishPoolItem();
                AngelRequest angelRequest = new AngelRequest(value, str, wishPoolItem != null ? wishPoolItem.getId() : null);
                RequestModel requestModel = new RequestModel(MApplication.f3182z);
                requestModel.setArgs(angelRequest);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<AngelRequest> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.sourceAngel(requestModelMakeSign, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super ResponseModel<Boolean>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    @NotNull
    public final MutableLiveData<String> getDiskUrl() {
        return this.diskUrl;
    }

    @NotNull
    public final MutableLiveData<ResultState<Boolean>> getResultData() {
        return this.resultData;
    }

    @NotNull
    public final MutableLiveData<Boolean> getSubmitEnable() {
        return this.submitEnable;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    @Nullable
    public final SourceListItemBean getWishPoolItem() {
        return this.wishPoolItem;
    }

    public final void setWishPoolItem(@Nullable SourceListItemBean sourceListItemBean) {
        this.wishPoolItem = sourceListItemBean;
    }

    public final void sourceAngel(@NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(uid, null), this.resultData, false, null, 12, null);
    }
}
