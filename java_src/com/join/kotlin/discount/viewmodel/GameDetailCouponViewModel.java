package com.join.kotlin.discount.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.discount.model.bean.CouponItemBean;
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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aR\u001f\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\t¨\u0006\u001b"}, d2 = {"Lcom/join/kotlin/discount/viewmodel/GameDetailCouponViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "gameId", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "page", "Lcom/join/kotlin/quark/model/bean/Page;", "getPage", "()Lcom/join/kotlin/quark/model/bean/Page;", "listData", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/kotlin/discount/model/bean/CouponItemBean;", "getListData", "getCouponList", "", "refresh", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailCouponViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailCouponViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailCouponViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n1869#2,2:63\n*S KotlinDebug\n*F\n+ 1 GameDetailCouponViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailCouponViewModel\n*L\n37#1:63,2\n*E\n"})
public final class GameDetailCouponViewModel extends BaseViewModel {

    @Nullable
    private String gameId;

    @NotNull
    private final MutableLiveData<String> title = new MutableLiveData<>("标题");

    @NotNull
    private final Page page = new Page(1, 20);

    @NotNull
    private final MutableLiveData<ListDataUiState<CouponItemBean>> listData = new MutableLiveData<>();

    /* JADX INFO: renamed from: com.join.kotlin.discount.viewmodel.GameDetailCouponViewModel$getCouponList$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "", "Lcom/join/kotlin/discount/model/bean/CouponItemBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.discount.viewmodel.GameDetailCouponViewModel$getCouponList$1", f = "GameDetailCouponViewModel.kt", i = {}, l = {33}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<List<? extends CouponItemBean>>>, Object> {
        final /* synthetic */ boolean $refresh;
        int label;
        final /* synthetic */ GameDetailCouponViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z10, GameDetailCouponViewModel gameDetailCouponViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = gameDetailCouponViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$refresh, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Continuation<? super ResponseModel<List<? extends CouponItemBean>>> continuation) {
            return invoke2((Continuation<? super ResponseModel<List<CouponItemBean>>>) continuation);
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
                CommonRequest commonRequest = new CommonRequest(this.this$0.getGameId(), this.this$0.getPage().getPage());
                RequestModel requestModel = new RequestModel();
                requestModel.setArgs(commonRequest);
                requestModel.setDefault(MApplication.f3182z);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<CommonRequest> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.getGameDetailCouponList(requestModelMakeSign, this);
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
        public final Object invoke2(Continuation<? super ResponseModel<List<CouponItemBean>>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getCouponList$lambda$1(GameDetailCouponViewModel gameDetailCouponViewModel, boolean z10, List list) {
        List listFilterNotNull;
        Page page = gameDetailCouponViewModel.page;
        page.setPage(page.getPage() + 1);
        ArrayList arrayList = new ArrayList();
        if (list != null && (listFilterNotNull = CollectionsKt___CollectionsKt.filterNotNull(list)) != null) {
            Iterator it2 = listFilterNotNull.iterator();
            while (it2.hasNext()) {
                arrayList.add((CouponItemBean) it2.next());
            }
        }
        gameDetailCouponViewModel.listData.setValue(new ListDataUiState<>(true, null, z10, arrayList.isEmpty(), !arrayList.isEmpty(), z10 && arrayList.isEmpty(), arrayList, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getCouponList$lambda$2(boolean z10, GameDetailCouponViewModel gameDetailCouponViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        gameDetailCouponViewModel.listData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), z10, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    public final void getCouponList(final boolean refresh) {
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(refresh, this, null), new Function1() { // from class: com.join.kotlin.discount.viewmodel.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailCouponViewModel.getCouponList$lambda$1(this.f48586b, refresh, (List) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.discount.viewmodel.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailCouponViewModel.getCouponList$lambda$2(refresh, this, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    @Nullable
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<CouponItemBean>> getListData() {
        return this.listData;
    }

    @NotNull
    public final Page getPage() {
        return this.page;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    public final void setGameId(@Nullable String str) {
        this.gameId = str;
    }
}
