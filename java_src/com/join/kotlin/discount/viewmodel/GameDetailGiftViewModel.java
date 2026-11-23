package com.join.kotlin.discount.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.discount.model.bean.GameDetailGiftEntityBean;
import com.join.kotlin.discount.model.bean.GiftItemBean;
import com.join.kotlin.discount.model.bean.GiftItemTypeBean;
import com.join.kotlin.discount.model.request.CommonRequest;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0013\u001a\u00020\u0014R\u001f\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001d\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "gameId", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "listData", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;", "getListData", "getGiftList", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailGiftViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailGiftViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n1869#2:61\n1869#2,2:62\n1870#2:64\n*S KotlinDebug\n*F\n+ 1 GameDetailGiftViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailGiftViewModel\n*L\n33#1:61\n35#1:62,2\n33#1:64\n*E\n"})
public final class GameDetailGiftViewModel extends BaseViewModel {

    @Nullable
    private String gameId;

    @NotNull
    private final MutableLiveData<String> title = new MutableLiveData<>("标题");

    @NotNull
    private final MutableLiveData<ListDataUiState<GameDetailGiftEntityBean>> listData = new MutableLiveData<>();

    /* JADX INFO: renamed from: com.join.kotlin.discount.viewmodel.GameDetailGiftViewModel$getGiftList$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "", "Lcom/join/kotlin/discount/model/bean/GiftItemTypeBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.discount.viewmodel.GameDetailGiftViewModel$getGiftList$1", f = "GameDetailGiftViewModel.kt", i = {}, l = {30}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<List<? extends GiftItemTypeBean>>>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return GameDetailGiftViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Continuation<? super ResponseModel<List<? extends GiftItemTypeBean>>> continuation) {
            return invoke2((Continuation<? super ResponseModel<List<GiftItemTypeBean>>>) continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                CommonRequest commonRequest = new CommonRequest(GameDetailGiftViewModel.this.getGameId(), 1);
                RequestModel requestModel = new RequestModel();
                requestModel.setArgs(commonRequest);
                requestModel.setDefault(MApplication.f3182z);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<CommonRequest> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.getGameDetailGiftList(requestModelMakeSign, this);
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

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Continuation<? super ResponseModel<List<GiftItemTypeBean>>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getGiftList$lambda$2(GameDetailGiftViewModel gameDetailGiftViewModel, List list) {
        List<GiftItemTypeBean> listFilterNotNull;
        List listFilterNotNull2;
        ArrayList arrayList = new ArrayList();
        if (list != null && (listFilterNotNull = CollectionsKt___CollectionsKt.filterNotNull(list)) != null) {
            for (GiftItemTypeBean giftItemTypeBean : listFilterNotNull) {
                arrayList.add(new GameDetailGiftEntityBean(1, giftItemTypeBean.getTypeName()));
                List<GiftItemBean> gifts = giftItemTypeBean.getGifts();
                if (gifts != null && (listFilterNotNull2 = CollectionsKt___CollectionsKt.filterNotNull(gifts)) != null) {
                    Iterator it2 = listFilterNotNull2.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(new GameDetailGiftEntityBean(2, (GiftItemBean) it2.next()));
                    }
                }
            }
        }
        gameDetailGiftViewModel.listData.setValue(new ListDataUiState<>(true, null, true, arrayList.isEmpty(), false, arrayList.isEmpty(), arrayList, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getGiftList$lambda$3(GameDetailGiftViewModel gameDetailGiftViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        gameDetailGiftViewModel.listData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), true, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    @Nullable
    public final String getGameId() {
        return this.gameId;
    }

    public final void getGiftList() {
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(null), new Function1() { // from class: com.join.kotlin.discount.viewmodel.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailGiftViewModel.getGiftList$lambda$2(this.f48595b, (List) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.discount.viewmodel.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailGiftViewModel.getGiftList$lambda$3(this.f48596b, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<GameDetailGiftEntityBean>> getListData() {
        return this.listData;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    public final void setGameId(@Nullable String str) {
        this.gameId = str;
    }
}
