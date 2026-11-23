package com.join.kotlin.quark.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.kotlin.quark.model.bean.SourceTabItemBean;
import com.join.kotlin.quark.model.bean.SourceTabListBean;
import com.join.kotlin.quark.model.request.AngelCreateRequest;
import com.join.kotlin.quark.model.request.SourceTabRequest;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0006J\u0016\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#2\u0006\u0010 \u001a\u00020\u0006R(\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR*\u0010\f\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\r0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\t\"\u0004\b\u0010\u0010\u000bR!\u0010\u0011\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\r0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\tR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\tR\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\t¨\u0006$"}, d2 = {"Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "setTitle", "(Landroidx/lifecycle/MutableLiveData;)V", "homeData", "Lcom/join/kotlin/base/state/ResultState;", "Lcom/join/kotlin/quark/model/bean/SourceTabListBean;", "getHomeData", "setHomeData", "uploadData", "", "getUploadData", "selectTag", "Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;", "getSelectTag", "()Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;", "setSelectTag", "(Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;)V", "descData", "getDescData", "linkData", "getLinkData", "getWebDiskHome", "", "uid", "sourceShareCreate", "type", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UploadSourceHopeViewModel extends BaseViewModel {

    @Nullable
    private SourceTabItemBean selectTag;

    @NotNull
    private MutableLiveData<String> title = new MutableLiveData<>("分享资源");

    @NotNull
    private MutableLiveData<ResultState<SourceTabListBean>> homeData = new MutableLiveData<>();

    @NotNull
    private final MutableLiveData<ResultState<Boolean>> uploadData = new MutableLiveData<>();

    @NotNull
    private final MutableLiveData<String> descData = new MutableLiveData<>();

    @NotNull
    private final MutableLiveData<String> linkData = new MutableLiveData<>();

    /* JADX INFO: renamed from: com.join.kotlin.quark.viewmodel.UploadSourceHopeViewModel$getWebDiskHome$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/quark/model/bean/SourceTabListBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.quark.viewmodel.UploadSourceHopeViewModel$getWebDiskHome$1", f = "UploadSourceHopeViewModel.kt", i = {}, l = {44}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<SourceTabListBean>>, Object> {
        final /* synthetic */ String $uid;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$uid = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$uid, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                SourceTabRequest sourceTabRequest = new SourceTabRequest(this.$uid);
                RequestModel requestModel = new RequestModel(MApplication.f3182z);
                requestModel.setArgs(sourceTabRequest);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<SourceTabRequest> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.webDiskHome(requestModelMakeSign, this);
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
        public final Object invoke(Continuation<? super ResponseModel<SourceTabListBean>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.quark.viewmodel.UploadSourceHopeViewModel$sourceShareCreate$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.quark.viewmodel.UploadSourceHopeViewModel$sourceShareCreate$1", f = "UploadSourceHopeViewModel.kt", i = {}, l = {53}, m = "invokeSuspend", n = {}, s = {})
    static final class C13321 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<Boolean>>, Object> {
        final /* synthetic */ int $type;
        final /* synthetic */ String $uid;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13321(int i10, String str, Continuation<? super C13321> continuation) {
            super(1, continuation);
            this.$type = i10;
            this.$uid = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return UploadSourceHopeViewModel.this.new C13321(this.$type, this.$uid, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                AngelCreateRequest angelCreateRequest = new AngelCreateRequest(UploadSourceHopeViewModel.this.getLinkData().getValue(), UploadSourceHopeViewModel.this.getDescData().getValue(), Boxing.boxInt(this.$type), this.$uid);
                RequestModel requestModel = new RequestModel(MApplication.f3182z);
                requestModel.setArgs(angelCreateRequest);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<AngelCreateRequest> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.sourceShareCreate(requestModelMakeSign, this);
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
            return ((C13321) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    @NotNull
    public final MutableLiveData<String> getDescData() {
        return this.descData;
    }

    @NotNull
    public final MutableLiveData<ResultState<SourceTabListBean>> getHomeData() {
        return this.homeData;
    }

    @NotNull
    public final MutableLiveData<String> getLinkData() {
        return this.linkData;
    }

    @Nullable
    public final SourceTabItemBean getSelectTag() {
        return this.selectTag;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    @NotNull
    public final MutableLiveData<ResultState<Boolean>> getUploadData() {
        return this.uploadData;
    }

    public final void getWebDiskHome(@NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(uid, null), this.homeData, false, null, 12, null);
    }

    public final void setHomeData(@NotNull MutableLiveData<ResultState<SourceTabListBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.homeData = mutableLiveData;
    }

    public final void setSelectTag(@Nullable SourceTabItemBean sourceTabItemBean) {
        this.selectTag = sourceTabItemBean;
    }

    public final void setTitle(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.title = mutableLiveData;
    }

    public final void sourceShareCreate(int type, @NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        BaseViewModelExtKt.request$default(this, new C13321(type, uid, null), this.uploadData, false, null, 12, null);
    }
}
