package com.join.kotlin.quark.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.kotlin.quark.model.bean.Page;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.model.bean.SourceTabItemBean;
import com.join.kotlin.quark.model.bean.SourceTabListBean;
import com.join.kotlin.quark.model.request.AngelCreateRequest;
import com.join.kotlin.quark.model.request.SourceTabRequest;
import com.join.kotlin.quark.model.request.SourceWantRequest;
import com.join.kotlin.quark.model.request.WishPoolRequest;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
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
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u0006J\u0016\u0010>\u001a\u00020<2\u0006\u0010,\u001a\u00020!2\u0006\u0010=\u001a\u00020\u0006J\u0016\u0010?\u001a\u00020<2\u0006\u0010@\u001a\u00020\u00122\u0006\u0010=\u001a\u00020\u0006JQ\u0010A\u001a\u00020<2\b\u0010B\u001a\u0004\u0018\u00010!2\u0006\u0010=\u001a\u00020\u00062\u001c\u0010C\u001a\u0018\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010E\u0012\u0004\u0012\u00020<0D2\u0014\b\u0002\u0010F\u001a\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020<0D¢\u0006\u0002\u0010HR(\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR*\u0010\f\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\r0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\t\"\u0004\b\u0010\u0010\u000bR!\u0010\u0011\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\r0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\tR\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\tR&\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00170\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\t\"\u0004\b\u001a\u0010\u000bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001e\u0010&\u001a\u0004\u0018\u00010!X\u0086\u000e¢\u0006\u0010\n\u0002\u0010+\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001e\u0010,\u001a\u0004\u0018\u00010!X\u0086\u000e¢\u0006\u0010\n\u0002\u0010+\u001a\u0004\b-\u0010(\"\u0004\b.\u0010*R\u0011\u0010/\u001a\u000200¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u0017\u00109\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b:\u0010\t¨\u0006I"}, d2 = {"Lcom/join/kotlin/quark/viewmodel/CreateSourceHopeViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "setTitle", "(Landroidx/lifecycle/MutableLiveData;)V", "homeData", "Lcom/join/kotlin/base/state/ResultState;", "Lcom/join/kotlin/quark/model/bean/SourceTabListBean;", "getHomeData", "setHomeData", "uploadData", "", "getUploadData", "listSizeStr", "getListSizeStr", "listData", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "getListData", "setListData", "keyword", "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "sortType", "", "getSortType", "()I", "setSortType", "(I)V", "status", "getStatus", "()Ljava/lang/Integer;", "setStatus", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "type", "getType", "setType", "page", "Lcom/join/kotlin/quark/model/bean/Page;", "getPage", "()Lcom/join/kotlin/quark/model/bean/Page;", "selectTag", "Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;", "getSelectTag", "()Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;", "setSelectTag", "(Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;)V", "descData", "getDescData", "getWebDiskHome", "", "uid", "sourceShareCreate", "getWishPoolList", "refresh", "wishPoolWant", "wishPoolId", "success", "Lkotlin/Function1;", "Lcom/join/mgps/dto/ResponseModel;", "error", "", "(Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CreateSourceHopeViewModel extends BaseViewModel {

    @Nullable
    private String keyword;

    @Nullable
    private SourceTabItemBean selectTag;

    @Nullable
    private Integer status;

    @Nullable
    private Integer type;

    @NotNull
    private MutableLiveData<String> title = new MutableLiveData<>("资源许愿");

    @NotNull
    private MutableLiveData<ResultState<SourceTabListBean>> homeData = new MutableLiveData<>();

    @NotNull
    private final MutableLiveData<ResultState<Boolean>> uploadData = new MutableLiveData<>();

    @NotNull
    private final MutableLiveData<String> listSizeStr = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<ListDataUiState<SourceListItemBean>> listData = new MutableLiveData<>();
    private int sortType = 1;

    @NotNull
    private final Page page = new Page(1, 0, 2, null);

    @NotNull
    private final MutableLiveData<String> descData = new MutableLiveData<>();

    /* JADX INFO: renamed from: com.join.kotlin.quark.viewmodel.CreateSourceHopeViewModel$getWebDiskHome$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/quark/model/bean/SourceTabListBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.quark.viewmodel.CreateSourceHopeViewModel$getWebDiskHome$1", f = "CreateSourceHopeViewModel.kt", i = {}, l = {48}, m = "invokeSuspend", n = {}, s = {})
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

    /* JADX INFO: renamed from: com.join.kotlin.quark.viewmodel.CreateSourceHopeViewModel$getWishPoolList$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u00040\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Ljava/util/ArrayList;", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "Lkotlin/collections/ArrayList;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.quark.viewmodel.CreateSourceHopeViewModel$getWishPoolList$1", f = "CreateSourceHopeViewModel.kt", i = {}, l = {69}, m = "invokeSuspend", n = {}, s = {})
    static final class C13301 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<ArrayList<SourceListItemBean>>>, Object> {
        final /* synthetic */ boolean $refresh;
        final /* synthetic */ String $uid;
        int label;
        final /* synthetic */ CreateSourceHopeViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13301(boolean z10, CreateSourceHopeViewModel createSourceHopeViewModel, String str, Continuation<? super C13301> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = createSourceHopeViewModel;
            this.$uid = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C13301(this.$refresh, this.this$0, this.$uid, continuation);
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
                WishPoolRequest wishPoolRequest = new WishPoolRequest(this.this$0.getKeyword(), Boxing.boxInt(2), Boxing.boxInt(this.this$0.getPage().getPage()), Boxing.boxInt(this.this$0.getSortType()), this.this$0.getStatus(), null, this.$uid);
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
            return ((C13301) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.quark.viewmodel.CreateSourceHopeViewModel$sourceShareCreate$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.quark.viewmodel.CreateSourceHopeViewModel$sourceShareCreate$1", f = "CreateSourceHopeViewModel.kt", i = {}, l = {57}, m = "invokeSuspend", n = {}, s = {})
    static final class C13311 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<Boolean>>, Object> {
        final /* synthetic */ int $type;
        final /* synthetic */ String $uid;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13311(int i10, String str, Continuation<? super C13311> continuation) {
            super(1, continuation);
            this.$type = i10;
            this.$uid = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return CreateSourceHopeViewModel.this.new C13311(this.$type, this.$uid, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                AngelCreateRequest angelCreateRequest = new AngelCreateRequest(null, CreateSourceHopeViewModel.this.getDescData().getValue(), Boxing.boxInt(this.$type), this.$uid);
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
            return ((C13311) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.quark.viewmodel.CreateSourceHopeViewModel$wishPoolWant$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.quark.viewmodel.CreateSourceHopeViewModel$wishPoolWant$2", f = "CreateSourceHopeViewModel.kt", i = {}, l = {108}, m = "invokeSuspend", n = {}, s = {})
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
    public static final Unit getWishPoolList$lambda$0(CreateSourceHopeViewModel createSourceHopeViewModel, boolean z10, ArrayList arrayList) {
        Page page = createSourceHopeViewModel.page;
        page.setPage(page.getPage() + 1);
        boolean zIsEmpty = (arrayList != null ? arrayList : CollectionsKt__CollectionsKt.emptyList()).isEmpty();
        Integer numValueOf = arrayList != null ? Integer.valueOf(arrayList.size()) : null;
        Intrinsics.checkNotNull(numValueOf);
        createSourceHopeViewModel.listData.setValue(new ListDataUiState<>(true, null, z10, zIsEmpty, numValueOf.intValue() > 0, z10 && zIsEmpty, arrayList, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getWishPoolList$lambda$1(boolean z10, CreateSourceHopeViewModel createSourceHopeViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        createSourceHopeViewModel.listData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), z10, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void wishPoolWant$default(CreateSourceHopeViewModel createSourceHopeViewModel, Integer num, String str, Function1 function1, Function1 function2, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            function2 = new Function1() { // from class: com.join.kotlin.quark.viewmodel.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return CreateSourceHopeViewModel.wishPoolWant$lambda$2((Throwable) obj2);
                }
            };
        }
        createSourceHopeViewModel.wishPoolWant(num, str, function1, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit wishPoolWant$lambda$2(Throwable it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        return Unit.INSTANCE;
    }

    @NotNull
    public final MutableLiveData<String> getDescData() {
        return this.descData;
    }

    @NotNull
    public final MutableLiveData<ResultState<SourceTabListBean>> getHomeData() {
        return this.homeData;
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
    public final MutableLiveData<String> getListSizeStr() {
        return this.listSizeStr;
    }

    @NotNull
    public final Page getPage() {
        return this.page;
    }

    @Nullable
    public final SourceTabItemBean getSelectTag() {
        return this.selectTag;
    }

    public final int getSortType() {
        return this.sortType;
    }

    @Nullable
    public final Integer getStatus() {
        return this.status;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    @Nullable
    public final Integer getType() {
        return this.type;
    }

    @NotNull
    public final MutableLiveData<ResultState<Boolean>> getUploadData() {
        return this.uploadData;
    }

    public final void getWebDiskHome(@NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(uid, null), this.homeData, false, null, 12, null);
    }

    public final void getWishPoolList(final boolean refresh, @NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        BaseViewModelExtKt.request$default(this, new C13301(refresh, this, uid, null), new Function1() { // from class: com.join.kotlin.quark.viewmodel.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CreateSourceHopeViewModel.getWishPoolList$lambda$0(this.f48893b, refresh, (ArrayList) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.quark.viewmodel.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CreateSourceHopeViewModel.getWishPoolList$lambda$1(refresh, this, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    public final void setHomeData(@NotNull MutableLiveData<ResultState<SourceTabListBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.homeData = mutableLiveData;
    }

    public final void setKeyword(@Nullable String str) {
        this.keyword = str;
    }

    public final void setListData(@NotNull MutableLiveData<ListDataUiState<SourceListItemBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.listData = mutableLiveData;
    }

    public final void setSelectTag(@Nullable SourceTabItemBean sourceTabItemBean) {
        this.selectTag = sourceTabItemBean;
    }

    public final void setSortType(int i10) {
        this.sortType = i10;
    }

    public final void setStatus(@Nullable Integer num) {
        this.status = num;
    }

    public final void setTitle(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.title = mutableLiveData;
    }

    public final void setType(@Nullable Integer num) {
        this.type = num;
    }

    public final void sourceShareCreate(int type, @NotNull String uid) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        BaseViewModelExtKt.request$default(this, new C13311(type, uid, null), this.uploadData, false, null, 12, null);
    }

    public final void wishPoolWant(@Nullable Integer wishPoolId, @NotNull String uid, @NotNull Function1<? super ResponseModel<Boolean>, Unit> success, @NotNull Function1<? super Throwable, Unit> error) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(success, "success");
        Intrinsics.checkNotNullParameter(error, "error");
        BaseViewModelExtKt.launch(this, new AnonymousClass2(uid, wishPoolId, null), success, error);
    }
}
