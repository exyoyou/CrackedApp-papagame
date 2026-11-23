package com.join.kotlin.ui.gameexpress.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.android.app.common.utils.m;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.ui.gameexpress.model.GameExpressMapper;
import com.join.kotlin.ui.gameexpress.model.GameExpressMultiItem;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressHotCommentBean;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressHotTopicBean;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressPageData;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressResultData;
import com.join.kotlin.ui.gameexpress.model.request.GameExpressRequest;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rR!\u0010\u0004\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "pageData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/base/state/ResultState;", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressPageData;", "getPageData", "()Landroidx/lifecycle/MutableLiveData;", "loadData", "", "pageBean", "Lcom/join/mgps/dto/ExtBean;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameExpressViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressViewModel.kt\ncom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1#2:56\n*E\n"})
public final class GameExpressViewModel extends BaseViewModel {

    @NotNull
    private final MutableLiveData<ResultState<GameExpressPageData>> pageData = new MutableLiveData<>();

    /* JADX INFO: renamed from: com.join.kotlin.ui.gameexpress.viewmodel.GameExpressViewModel$loadData$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.gameexpress.viewmodel.GameExpressViewModel$loadData$1", f = "GameExpressViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nGameExpressViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressViewModel.kt\ncom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel$loadData$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1#2:56\n*E\n"})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<GameExpressResultData>>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
            RequestModel requestModel = new RequestModel(MApplication.f3182z);
            requestModel.setUid(accountData != null ? Boxing.boxLong(accountData.getUid()) : Boxing.boxLong(0L));
            requestModel.setUserToken(accountData != null ? accountData.getToken() : null);
            Long uid = requestModel.getUid();
            requestModel.setArgs(new GameExpressRequest(uid != null ? uid.longValue() : 0L, requestModel.getUserToken()));
            ResponseModel<GameExpressResultData> responseModelV0 = i.P0().v0(requestModel.makeSign());
            if (responseModelV0 != null) {
                return responseModelV0;
            }
            ResponseModel responseModel = new ResponseModel();
            responseModel.setCode(401);
            return responseModel;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super ResponseModel<GameExpressResultData>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadData$lambda$1(GameExpressViewModel gameExpressViewModel, ExtBean extBean, GameExpressResultData gameExpressResultData) {
        GameExpressMapper.ParsedResult parsedResult = gameExpressResultData != null ? GameExpressMapper.INSTANCE.parse(gameExpressResultData, extBean) : null;
        MutableLiveData<ResultState<GameExpressPageData>> mutableLiveData = gameExpressViewModel.pageData;
        List<GameExpressHotTopicBean> hotTopics = parsedResult != null ? parsedResult.getHotTopics() : null;
        if (hotTopics == null) {
            hotTopics = CollectionsKt__CollectionsKt.emptyList();
        }
        List<GameExpressHotCommentBean> qualityComments = parsedResult != null ? parsedResult.getQualityComments() : null;
        if (qualityComments == null) {
            qualityComments = CollectionsKt__CollectionsKt.emptyList();
        }
        List<GameExpressMultiItem> listItems = parsedResult != null ? parsedResult.getListItems() : null;
        if (listItems == null) {
            listItems = CollectionsKt__CollectionsKt.emptyList();
        }
        mutableLiveData.setValue(new ResultState.Success(new GameExpressPageData(hotTopics, qualityComments, listItems)));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit loadData$lambda$2(GameExpressViewModel gameExpressViewModel, AppException error) {
        Intrinsics.checkNotNullParameter(error, "error");
        gameExpressViewModel.pageData.setValue(new ResultState.Error(error));
        return Unit.INSTANCE;
    }

    @NotNull
    public final MutableLiveData<ResultState<GameExpressPageData>> getPageData() {
        return this.pageData;
    }

    public final void loadData(@NotNull final ExtBean pageBean) {
        Intrinsics.checkNotNullParameter(pageBean, "pageBean");
        if (!m.j(MApplication.f3182z)) {
            this.pageData.setValue(new ResultState.Error(new AppException(-1, "网络未连接，请检查网络设置", null, null, 12, null)));
        } else {
            this.pageData.setValue(ResultState.INSTANCE.onRequestLoading(""));
            BaseViewModelExtKt.request$default(this, new AnonymousClass1(null), new Function1() { // from class: com.join.kotlin.ui.gameexpress.viewmodel.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return GameExpressViewModel.loadData$lambda$1(this.f49152b, pageBean, (GameExpressResultData) obj);
                }
            }, new Function1() { // from class: com.join.kotlin.ui.gameexpress.viewmodel.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return GameExpressViewModel.loadData$lambda$2(this.f49154b, (AppException) obj);
                }
            }, false, null, 24, null);
        }
    }
}
