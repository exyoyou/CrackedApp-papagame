package com.join.kotlin.ui.nostalgia.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.kotlin.quark.model.bean.Page;
import com.join.kotlin.ui.nostalgia.model.NostalgiaGameGroup;
import com.join.kotlin.ui.nostalgia.model.NostalgiaGameListArgs;
import com.join.kotlin.ui.nostalgia.model.NostalgiaGameListData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u001a\u001a\u00020\u001b2\u0016\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u001dj\b\u0012\u0004\u0012\u00020\u0018`\u001eJ\u0006\u0010\u001f\u001a\u00020\u001bJ\u000e\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"J\b\u0010#\u001a\u00020$H\u0002R!\u0010\u0004\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001d\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00180\u00170\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\t¨\u0006%"}, d2 = {"Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "tabMetaState", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/base/state/ResultState;", "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;", "getTabMetaState", "()Landroidx/lifecycle/MutableLiveData;", "nostalgiaTabType", "", "getNostalgiaTabType", "()Ljava/lang/String;", "setNostalgiaTabType", "(Ljava/lang/String;)V", "page", "Lcom/join/kotlin/quark/model/bean/Page;", "getPage", "()Lcom/join/kotlin/quark/model/bean/Page;", "setPage", "(Lcom/join/kotlin/quark/model/bean/Page;)V", "listData", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/mgps/dto/CommonGameInfoBean;", "getListData", "applyPreloadedFirstPage", "", "games", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "fetchTabMeta", "nostalgiaGameList", "refresh", "", "uidInt", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NostalgiaGameViewModel extends BaseViewModel {

    @NotNull
    private final MutableLiveData<ResultState<NostalgiaGameListData>> tabMetaState = new MutableLiveData<>();

    @NotNull
    private String nostalgiaTabType = "";

    @NotNull
    private Page page = new Page(1, 20);

    @NotNull
    private final MutableLiveData<ListDataUiState<CommonGameInfoBean>> listData = new MutableLiveData<>();

    /* JADX INFO: renamed from: com.join.kotlin.ui.nostalgia.viewmodel.NostalgiaGameViewModel$fetchTabMeta$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.nostalgia.viewmodel.NostalgiaGameViewModel$fetchTabMeta$1", f = "NostalgiaGameViewModel.kt", i = {}, l = {65}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<NostalgiaGameListData>>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return NostalgiaGameViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                RequestModel requestModel = new RequestModel(MApplication.f3182z);
                requestModel.setArgs(new NostalgiaGameListArgs(NostalgiaGameViewModel.this.uidInt(), 1, "NOSTALGIA_ALL"));
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<NostalgiaGameListArgs> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.nostalgiaGameTabMeta(requestModelMakeSign, this);
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
        public final Object invoke(Continuation<? super ResponseModel<NostalgiaGameListData>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.ui.nostalgia.viewmodel.NostalgiaGameViewModel$nostalgiaGameList$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.nostalgia.viewmodel.NostalgiaGameViewModel$nostalgiaGameList$1", f = "NostalgiaGameViewModel.kt", i = {0}, l = {89}, m = "invokeSuspend", n = {"reqPage"}, s = {"I$0"})
    static final class C13631 extends SuspendLambda implements Function1<Continuation<? super Pair<? extends NostalgiaGameListData, ? extends Integer>>, Object> {
        final /* synthetic */ boolean $refresh;
        int I$0;
        int label;
        final /* synthetic */ NostalgiaGameViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13631(boolean z10, NostalgiaGameViewModel nostalgiaGameViewModel, Continuation<? super C13631> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = nostalgiaGameViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C13631(this.$refresh, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Pair<? extends NostalgiaGameListData, ? extends Integer>> continuation) {
            return invoke2((Continuation<? super Pair<NostalgiaGameListData, Integer>>) continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i10;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.$refresh) {
                    this.this$0.getPage().setPage(1);
                }
                int page = this.this$0.getPage().getPage();
                RequestModel requestModel = new RequestModel(MApplication.f3182z);
                requestModel.setArgs(new NostalgiaGameListArgs(this.this$0.uidInt(), page, this.this$0.getNostalgiaTabType()));
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<NostalgiaGameListArgs> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.I$0 = page;
                this.label = 1;
                Object objNostalgiaGameList = gameApiService.nostalgiaGameList(requestModelMakeSign, this);
                if (objNostalgiaGameList == coroutine_suspended) {
                    return coroutine_suspended;
                }
                i10 = page;
                obj = objNostalgiaGameList;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i10 = this.I$0;
                ResultKt.throwOnFailure(obj);
            }
            return TuplesKt.to(((ResponseModel) obj).getData(), Boxing.boxInt(i10));
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Continuation<? super Pair<NostalgiaGameListData, Integer>> continuation) {
            return ((C13631) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x0041  */
    public static final Unit nostalgiaGameList$lambda$0(NostalgiaGameViewModel nostalgiaGameViewModel, boolean z10, Pair pair) {
        boolean z11;
        ArrayList<CommonGameInfoBean> arrayList;
        ArrayList<NostalgiaGameGroup> game_list;
        NostalgiaGameGroup nostalgiaGameGroup;
        ArrayList<NostalgiaGameGroup> game_list2;
        ArrayList<NostalgiaGameGroup> game_list3;
        ArrayList<NostalgiaGameGroup> game_list4;
        if (pair == null) {
            return Unit.INSTANCE;
        }
        NostalgiaGameListData nostalgiaGameListData = (NostalgiaGameListData) pair.getFirst();
        int iIntValue = ((Number) pair.getSecond()).intValue();
        MutableLiveData<ListDataUiState<CommonGameInfoBean>> mutableLiveData = nostalgiaGameViewModel.listData;
        boolean z12 = (nostalgiaGameListData == null || (game_list4 = nostalgiaGameListData.getGame_list()) == null || !game_list4.isEmpty()) ? false : true;
        if (z10) {
            if ((nostalgiaGameListData == null || (game_list3 = nostalgiaGameListData.getGame_list()) == null || !game_list3.isEmpty()) ? false : true) {
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            z11 = false;
        }
        boolean z13 = (nostalgiaGameListData == null || (game_list2 = nostalgiaGameListData.getGame_list()) == null || game_list2.isEmpty()) ? false : true;
        if (nostalgiaGameListData == null || (game_list = nostalgiaGameListData.getGame_list()) == null || (nostalgiaGameGroup = game_list.get(0)) == null || (arrayList = nostalgiaGameGroup.getGame_list()) == null) {
            arrayList = new ArrayList<>();
        }
        mutableLiveData.setValue(new ListDataUiState<>(true, "", z10, z12, z13, z11, arrayList));
        nostalgiaGameViewModel.page.setPage(iIntValue + 1);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit nostalgiaGameList$lambda$1(NostalgiaGameViewModel nostalgiaGameViewModel, boolean z10, Throwable e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        MutableLiveData<ListDataUiState<CommonGameInfoBean>> mutableLiveData = nostalgiaGameViewModel.listData;
        String message = e10.getMessage();
        if (message == null) {
            message = "";
        }
        mutableLiveData.setValue(new ListDataUiState<>(false, message, z10, false, false, false, new ArrayList(), 40, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int uidInt() {
        try {
            return AccountUtil_.getInstance_(MApplication.f3182z).getAccountData().getUid();
        } catch (Exception unused) {
            return 0;
        }
    }

    public final void applyPreloadedFirstPage(@NotNull ArrayList<CommonGameInfoBean> games) {
        Intrinsics.checkNotNullParameter(games, "games");
        ArrayList arrayList = new ArrayList(CollectionsKt___CollectionsKt.toList(games));
        this.listData.setValue(new ListDataUiState<>(true, "", true, arrayList.isEmpty(), true, arrayList.isEmpty(), arrayList));
        this.page.setPage(arrayList.isEmpty() ^ true ? 2 : 1);
    }

    public final void fetchTabMeta() {
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(null), this.tabMetaState, false, null, 12, null);
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<CommonGameInfoBean>> getListData() {
        return this.listData;
    }

    @NotNull
    public final String getNostalgiaTabType() {
        return this.nostalgiaTabType;
    }

    @NotNull
    public final Page getPage() {
        return this.page;
    }

    @NotNull
    public final MutableLiveData<ResultState<NostalgiaGameListData>> getTabMetaState() {
        return this.tabMetaState;
    }

    public final void nostalgiaGameList(final boolean refresh) {
        BaseViewModelExtKt.launch(this, new C13631(refresh, this, null), new Function1() { // from class: com.join.kotlin.ui.nostalgia.viewmodel.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NostalgiaGameViewModel.nostalgiaGameList$lambda$0(this.f49328b, refresh, (Pair) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.ui.nostalgia.viewmodel.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return NostalgiaGameViewModel.nostalgiaGameList$lambda$1(this.f49330b, refresh, (Throwable) obj);
            }
        });
    }

    public final void setNostalgiaTabType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.nostalgiaTabType = str;
    }

    public final void setPage(@NotNull Page page) {
        Intrinsics.checkNotNullParameter(page, "<set-?>");
        this.page = page;
    }
}
