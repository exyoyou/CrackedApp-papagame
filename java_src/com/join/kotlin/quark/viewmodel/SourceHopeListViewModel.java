package com.join.kotlin.quark.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.kotlin.quark.model.bean.Page;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.model.request.SourceWantRequest;
import com.join.kotlin.quark.model.request.WishPoolRequest;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0013JQ\u0010.\u001a\u00020*2\b\u0010/\u001a\u0004\u0018\u00010\u00192\u0006\u0010-\u001a\u00020\u00132\u001c\u00100\u001a\u0018\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010,\u0018\u000102\u0012\u0004\u0012\u00020*012\u0014\b\u0002\u00103\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020*01¢\u0006\u0002\u00105R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR&\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\r0\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b \u0010\u001b\"\u0004\b!\u0010\u001dR\u001e\u0010\"\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b#\u0010\u001b\"\u0004\b$\u0010\u001dR\u0011\u0010%\u001a\u00020&¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(¨\u00066"}, d2 = {"Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "showData", "", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "getShowData", "()Ljava/util/List;", "setShowData", "(Ljava/util/List;)V", "listData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "getListData", "()Landroidx/lifecycle/MutableLiveData;", "setListData", "(Landroidx/lifecycle/MutableLiveData;)V", "keyword", "", "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "sortType", "", "getSortType", "()Ljava/lang/Integer;", "setSortType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "status", "getStatus", "setStatus", "type", "getType", "setType", "page", "Lcom/join/kotlin/quark/model/bean/Page;", "getPage", "()Lcom/join/kotlin/quark/model/bean/Page;", "getWishPoolList", "", "refresh", "", "uid", "wishPoolWant", "wishPoolId", "success", "Lkotlin/Function1;", "Lcom/join/mgps/dto/ResponseModel;", "error", "", "(Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SourceHopeListViewModel extends BaseViewModel {

    @Nullable
    private String keyword;

    @Nullable
    private Integer sortType;

    @Nullable
    private Integer status;

    @Nullable
    private Integer type;

    @NotNull
    private List<SourceListItemBean> showData = new ArrayList();

    @NotNull
    private MutableLiveData<ListDataUiState<SourceListItemBean>> listData = new MutableLiveData<>();

    @NotNull
    private final Page page = new Page(1, 0, 2, null);

    /* JADX INFO: renamed from: com.join.kotlin.quark.viewmodel.SourceHopeListViewModel$getWishPoolList$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u00040\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Ljava/util/ArrayList;", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "Lkotlin/collections/ArrayList;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.quark.viewmodel.SourceHopeListViewModel$getWishPoolList$1", f = "SourceHopeListViewModel.kt", i = {}, l = {37}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<ArrayList<SourceListItemBean>>>, Object> {
        final /* synthetic */ boolean $refresh;
        final /* synthetic */ String $uid;
        int label;
        final /* synthetic */ SourceHopeListViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, SourceHopeListViewModel sourceHopeListViewModel, String str, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = sourceHopeListViewModel;
            this.$uid = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$refresh, this.this$0, this.$uid, continuation);
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
                WishPoolRequest wishPoolRequest = new WishPoolRequest(null, Boxing.boxInt(1), Boxing.boxInt(this.this$0.getPage().getPage()), this.this$0.getSortType(), this.this$0.getStatus(), null, this.$uid);
                RequestModel requestModel = new RequestModel(MApplication.f3182z);
                requestModel.setArgs(wishPoolRequest);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<WishPoolRequest> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.wishPoolList(requestModelMakeSign, this);
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
        public final Object invoke(Continuation<? super ResponseModel<ArrayList<SourceListItemBean>>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.quark.viewmodel.SourceHopeListViewModel$wishPoolWant$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.quark.viewmodel.SourceHopeListViewModel$wishPoolWant$2", f = "SourceHopeListViewModel.kt", i = {}, l = {77}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<Boolean>>, Object> {
        final /* synthetic */ String $uid;
        final /* synthetic */ Integer $wishPoolId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, Integer num, Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
            this.$uid = str;
            this.$wishPoolId = num;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass2(this.$uid, this.$wishPoolId, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                SourceWantRequest sourceWantRequest = new SourceWantRequest(this.$uid, this.$wishPoolId);
                RequestModel requestModel = new RequestModel(MApplication.f3182z);
                requestModel.setArgs(sourceWantRequest);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<SourceWantRequest> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.wishPoolWant(requestModelMakeSign, this);
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
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super ResponseModel<Boolean>> continuation) {
            return ((AnonymousClass2) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getWishPoolList$lambda$0(SourceHopeListViewModel sourceHopeListViewModel, boolean z10, ArrayList arrayList) {
        Page page = sourceHopeListViewModel.page;
        page.setPage(page.getPage() + 1);
        boolean zIsEmpty = (arrayList != null ? arrayList : CollectionsKt__CollectionsKt.emptyList()).isEmpty();
        Integer numValueOf = arrayList != null ? Integer.valueOf(arrayList.size()) : null;
        Intrinsics.checkNotNull(numValueOf);
        sourceHopeListViewModel.listData.setValue(new ListDataUiState<>(true, null, z10, zIsEmpty, numValueOf.intValue() > 0, z10 && zIsEmpty, arrayList, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getWishPoolList$lambda$1(boolean z10, SourceHopeListViewModel sourceHopeListViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        sourceHopeListViewModel.listData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), z10, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void wishPoolWant$default(SourceHopeListViewModel sourceHopeListViewModel, Integer num, String str, Function1 function1, Function1 function2, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            function2 = new Function1() { // from class: com.join.kotlin.quark.viewmodel.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return SourceHopeListViewModel.wishPoolWant$lambda$2((Throwable) obj2);
                }
            };
        }
        sourceHopeListViewModel.wishPoolWant(num, str, function1, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit wishPoolWant$lambda$2(Throwable it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        return Unit.INSTANCE;
    }

    @Nullable
    public final String getKeyword() {
        return this.keyword;
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<SourceListItemBean>> getListData() {
        return this.listData;
    }

    @NotNull
    public final Page getPage() {
        return this.page;
    }

    @NotNull
    public final List<SourceListItemBean> getShowData() {
        return this.showData;
    }

    @Nullable
    public final Integer getSortType() {
        return this.sortType;
    }

    @Nullable
    public final Integer getStatus() {
        return this.status;
    }

    @Nullable
    public final Integer getType() {
        return this.type;
    }

    public final void getWishPoolList(final boolean refresh, @NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(refresh, this, uid, null), new Function1() { // from class: com.join.kotlin.quark.viewmodel.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SourceHopeListViewModel.getWishPoolList$lambda$0(this.f48901b, refresh, (ArrayList) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.quark.viewmodel.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SourceHopeListViewModel.getWishPoolList$lambda$1(refresh, this, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    public final void setKeyword(@Nullable String str) {
        this.keyword = str;
    }

    public final void setListData(@NotNull MutableLiveData<ListDataUiState<SourceListItemBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.listData = mutableLiveData;
    }

    public final void setShowData(@NotNull List<SourceListItemBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.showData = list;
    }

    public final void setSortType(@Nullable Integer num) {
        this.sortType = num;
    }

    public final void setStatus(@Nullable Integer num) {
        this.status = num;
    }

    public final void setType(@Nullable Integer num) {
        this.type = num;
    }

    public final void wishPoolWant(@Nullable Integer wishPoolId, @NotNull String uid, @NotNull Function1<? super ResponseModel<Boolean>, Unit> success, @NotNull Function1<? super Throwable, Unit> error) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(success, "success");
        Intrinsics.checkNotNullParameter(error, "error");
        BaseViewModelExtKt.launch(this, new AnonymousClass2(uid, wishPoolId, null), success, error);
    }
}
