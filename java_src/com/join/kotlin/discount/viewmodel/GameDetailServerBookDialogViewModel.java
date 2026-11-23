package com.join.kotlin.discount.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.discount.model.bean.GameServerInfoBean;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.mgps.dto.RequestGameIdArgs;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0015\u001a\u00020\u0016R\u001f\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001d\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\f0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "listData", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;", "getListData", "gameId", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "subscribeResultBean", "getSubscribeResultBean", "getServerList", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailServerBookDialogViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailServerBookDialogViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1869#2,2:56\n*S KotlinDebug\n*F\n+ 1 GameDetailServerBookDialogViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel\n*L\n30#1:56,2\n*E\n"})
public final class GameDetailServerBookDialogViewModel extends BaseViewModel {

    @Nullable
    private String gameId;

    @NotNull
    private final MutableLiveData<String> title = new MutableLiveData<>("标题");

    @NotNull
    private final MutableLiveData<ListDataUiState<GameServerInfoBean>> listData = new MutableLiveData<>();

    @NotNull
    private final MutableLiveData<GameServerInfoBean> subscribeResultBean = new MutableLiveData<>();

    /* JADX INFO: renamed from: com.join.kotlin.discount.viewmodel.GameDetailServerBookDialogViewModel$getServerList$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "", "Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.discount.viewmodel.GameDetailServerBookDialogViewModel$getServerList$1", f = "GameDetailServerBookDialogViewModel.kt", i = {}, l = {27}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<List<? extends GameServerInfoBean>>>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return GameDetailServerBookDialogViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Continuation<? super ResponseModel<List<? extends GameServerInfoBean>>> continuation) {
            return invoke2((Continuation<? super ResponseModel<List<GameServerInfoBean>>>) continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                RequestModel<RequestGameIdArgs> requestModel = new RequestModel<>();
                RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
                requestGameIdArgs.setGameId(GameDetailServerBookDialogViewModel.this.getGameId());
                requestModel.setArgs(requestGameIdArgs);
                requestModel.setDefault(MApplication.f3182z);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                this.label = 1;
                obj = gameApiService.getGameServerList(requestModel, this);
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
        public final Object invoke2(Continuation<? super ResponseModel<List<GameServerInfoBean>>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getServerList$lambda$1(GameDetailServerBookDialogViewModel gameDetailServerBookDialogViewModel, List list) {
        List listFilterNotNull;
        ArrayList arrayList = new ArrayList();
        if (list != null && (listFilterNotNull = CollectionsKt___CollectionsKt.filterNotNull(list)) != null) {
            Iterator it2 = listFilterNotNull.iterator();
            while (it2.hasNext()) {
                arrayList.add((GameServerInfoBean) it2.next());
            }
        }
        gameDetailServerBookDialogViewModel.listData.setValue(new ListDataUiState<>(true, null, true, arrayList.isEmpty(), false, arrayList.isEmpty(), arrayList, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getServerList$lambda$2(GameDetailServerBookDialogViewModel gameDetailServerBookDialogViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        gameDetailServerBookDialogViewModel.listData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), true, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    @Nullable
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<GameServerInfoBean>> getListData() {
        return this.listData;
    }

    public final void getServerList() {
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(null), new Function1() { // from class: com.join.kotlin.discount.viewmodel.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailServerBookDialogViewModel.getServerList$lambda$1(this.f48597b, (List) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.discount.viewmodel.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailServerBookDialogViewModel.getServerList$lambda$2(this.f48598b, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    @NotNull
    public final MutableLiveData<GameServerInfoBean> getSubscribeResultBean() {
        return this.subscribeResultBean;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    public final void setGameId(@Nullable String str) {
        this.gameId = str;
    }
}
