package com.join.kotlin.discount.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.discount.model.bean.CommentDataBean;
import com.join.kotlin.discount.model.bean.CommentDetailBean;
import com.join.kotlin.discount.model.request.CommonRequest;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.kotlin.quark.model.bean.Page;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020%R\u001f\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001f\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R(\u0010\u0014\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\t\"\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0019¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R(\u0010!\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u0017R(\u0010$\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010%0%0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\t\"\u0004\b'\u0010\u0017¨\u0006+"}, d2 = {"Lcom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "listData", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/kotlin/discount/model/bean/CommentDetailBean;", "getListData", "sortType", "", "getSortType", "()I", "setSortType", "(I)V", "sortText", "getSortText", "setSortText", "(Landroidx/lifecycle/MutableLiveData;)V", "page", "Lcom/join/kotlin/quark/model/bean/Page;", "getPage", "()Lcom/join/kotlin/quark/model/bean/Page;", "gameId", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "goodRate", "getGoodRate", "setGoodRate", "showGoodRate", "", "getShowGoodRate", "setShowGoodRate", "getCommentList", "", "refresh", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailCommentListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailCommentListViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1869#2,2:66\n*S KotlinDebug\n*F\n+ 1 GameDetailCommentListViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailCommentListViewModel\n*L\n41#1:66,2\n*E\n"})
public final class GameDetailCommentListViewModel extends BaseViewModel {

    @NotNull
    private final MutableLiveData<String> title = new MutableLiveData<>("标题");

    @NotNull
    private final MutableLiveData<ListDataUiState<CommentDetailBean>> listData = new MutableLiveData<>();
    private int sortType = 2;

    @NotNull
    private MutableLiveData<String> sortText = new MutableLiveData<>("最热");

    @NotNull
    private final Page page = new Page(1, 0, 2, null);

    @Nullable
    private String gameId = "";

    @NotNull
    private MutableLiveData<String> goodRate = new MutableLiveData<>("");

    @NotNull
    private MutableLiveData<Boolean> showGoodRate = new MutableLiveData<>(Boolean.TRUE);

    /* JADX INFO: renamed from: com.join.kotlin.discount.viewmodel.GameDetailCommentListViewModel$getCommentList$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/discount/model/bean/CommentDataBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.discount.viewmodel.GameDetailCommentListViewModel$getCommentList$1", f = "GameDetailCommentListViewModel.kt", i = {}, l = {37}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<CommentDataBean>>, Object> {
        final /* synthetic */ boolean $refresh;
        int label;
        final /* synthetic */ GameDetailCommentListViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, GameDetailCommentListViewModel gameDetailCommentListViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = gameDetailCommentListViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$refresh, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.$refresh) {
                    this.this$0.getPage().setPage(1);
                }
                RequestModel requestModel = new RequestModel();
                requestModel.setArgs(new CommonRequest(this.this$0.getGameId(), this.this$0.getPage().getPage()));
                requestModel.setDefault(MApplication.f3182z);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<CommonRequest> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.getCommentList(requestModelMakeSign, this);
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
        public final Object invoke(Continuation<? super ResponseModel<CommentDataBean>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getCommentList$lambda$1(GameDetailCommentListViewModel gameDetailCommentListViewModel, boolean z10, CommentDataBean commentDataBean) {
        List<CommentDetailBean> commentList;
        Page page = gameDetailCommentListViewModel.page;
        page.setPage(page.getPage() + 1);
        ArrayList arrayList = new ArrayList();
        if (commentDataBean != null && (commentList = commentDataBean.getCommentList()) != null) {
            Iterator<T> it2 = commentList.iterator();
            while (it2.hasNext()) {
                arrayList.add((CommentDetailBean) it2.next());
            }
        }
        gameDetailCommentListViewModel.listData.setValue(new ListDataUiState<>(true, null, z10, arrayList.isEmpty(), !arrayList.isEmpty(), z10 && arrayList.isEmpty(), arrayList, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getCommentList$lambda$2(boolean z10, GameDetailCommentListViewModel gameDetailCommentListViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        gameDetailCommentListViewModel.listData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), z10, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    public final void getCommentList(final boolean refresh) {
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(refresh, this, null), new Function1() { // from class: com.join.kotlin.discount.viewmodel.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailCommentListViewModel.getCommentList$lambda$1(this.f48582b, refresh, (CommentDataBean) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.discount.viewmodel.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailCommentListViewModel.getCommentList$lambda$2(refresh, this, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    @Nullable
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    public final MutableLiveData<String> getGoodRate() {
        return this.goodRate;
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<CommentDetailBean>> getListData() {
        return this.listData;
    }

    @NotNull
    public final Page getPage() {
        return this.page;
    }

    @NotNull
    public final MutableLiveData<Boolean> getShowGoodRate() {
        return this.showGoodRate;
    }

    @NotNull
    public final MutableLiveData<String> getSortText() {
        return this.sortText;
    }

    public final int getSortType() {
        return this.sortType;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    public final void setGameId(@Nullable String str) {
        this.gameId = str;
    }

    public final void setGoodRate(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.goodRate = mutableLiveData;
    }

    public final void setShowGoodRate(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showGoodRate = mutableLiveData;
    }

    public final void setSortText(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.sortText = mutableLiveData;
    }

    public final void setSortType(int i10) {
        this.sortType = i10;
    }
}
