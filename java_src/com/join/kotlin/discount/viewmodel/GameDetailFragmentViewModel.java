package com.join.kotlin.discount.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.discount.model.bean.CommentDataBean;
import com.join.kotlin.discount.model.bean.CommentDetailBean;
import com.join.kotlin.discount.model.bean.CommentStatisticDataBean;
import com.join.kotlin.discount.model.bean.GameDetailBean;
import com.join.kotlin.discount.model.bean.GameDetailDataBean;
import com.join.kotlin.discount.model.request.CommonRequest;
import com.join.kotlin.discount.model.request.GameDetailRequest;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.kotlin.quark.model.bean.Page;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.RequestGameIdArgs;
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
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010G\u001a\u00020HJ\u0006\u0010I\u001a\u00020HJ\u0006\u0010J\u001a\u00020HJ\u0010\u0010K\u001a\u00020H2\b\u0010L\u001a\u0004\u0018\u00010&J\u000e\u0010M\u001a\u00020H2\u0006\u0010N\u001a\u00020,R\u001f\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR*\u0010\n\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u000b0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\t\"\u0004\b\u0018\u0010\u000fR\"\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\t\"\u0004\b\u001c\u0010\u000fR(\u0010\u001d\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u001e0\u001e0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\t\"\u0004\b \u0010\u000fR(\u0010!\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u000fR\u001f\u0010$\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010&0%0\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\tR\u0019\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0\u0005¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\tR\u001f\u0010+\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010,0,0\u0005¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\tR\u001f\u0010.\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010,0,0\u0005¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\tR\u001f\u00100\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010,0,0\u0005¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\tR\u001f\u00102\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010,0,0\u0005¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\tR\u001f\u00104\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b5\u0010\tR\u001c\u00106\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u0012\"\u0004\b8\u0010\u0014R\u001a\u00109\u001a\u00020,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001a\u0010>\u001a\u00020?X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u001f\u0010D\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010E0%0\u0005¢\u0006\b\n\u0000\u001a\u0004\bF\u0010\t¨\u0006O"}, d2 = {"Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "gameResult", "Lcom/join/kotlin/base/state/ResultState;", "Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;", "getGameResult", "setGameResult", "(Landroidx/lifecycle/MutableLiveData;)V", "gameId", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "gameInfo", "Lcom/join/kotlin/discount/model/bean/GameDetailBean;", "getGameInfo", "setGameInfo", "downloadTask", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "getDownloadTask", "setDownloadTask", "progress", "", "getProgress", "setProgress", "btnText", "getBtnText", "setBtnText", "commentListData", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/kotlin/discount/model/bean/CommentDetailBean;", "getCommentListData", "commentStatistic", "Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;", "getCommentStatistic", "showComment", "", "getShowComment", "showGameInfo", "getShowGameInfo", "showAvgScore", "getShowAvgScore", "showAvgDuration", "getShowAvgDuration", "goodRate", "getGoodRate", "defaultBtnImage", "getDefaultBtnImage", "setDefaultBtnImage", "autoDownload", "getAutoDownload", "()Z", "setAutoDownload", "(Z)V", "similarListPage", "Lcom/join/kotlin/quark/model/bean/Page;", "getSimilarListPage", "()Lcom/join/kotlin/quark/model/bean/Page;", "setSimilarListPage", "(Lcom/join/kotlin/quark/model/bean/Page;)V", "similarListData", "Lcom/join/mgps/dto/CollectionBeanSub;", "getSimilarListData", "getGameDetail", "", "getCommentList", "getCommentStatisticData", "likeComment", "bean", "getSimilarGames", "refresh", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailFragmentViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailFragmentViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1878#2,3:153\n1878#2,3:156\n*S KotlinDebug\n*F\n+ 1 GameDetailFragmentViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel\n*L\n72#1:153,3\n128#1:156,3\n*E\n"})
public final class GameDetailFragmentViewModel extends BaseViewModel {
    private boolean autoDownload;

    @Nullable
    private String defaultBtnImage;

    @Nullable
    private String gameId;

    @NotNull
    private final MutableLiveData<String> goodRate;

    @NotNull
    private final MutableLiveData<Boolean> showAvgDuration;

    @NotNull
    private final MutableLiveData<Boolean> showAvgScore;

    @NotNull
    private final MutableLiveData<Boolean> showComment;

    @NotNull
    private final MutableLiveData<Boolean> showGameInfo;

    @NotNull
    private final MutableLiveData<ListDataUiState<CollectionBeanSub>> similarListData;

    @NotNull
    private Page similarListPage;

    @NotNull
    private final MutableLiveData<String> title = new MutableLiveData<>("标题");

    @NotNull
    private MutableLiveData<ResultState<GameDetailDataBean>> gameResult = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<GameDetailBean> gameInfo = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<DownloadTask> downloadTask = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> progress = new MutableLiveData<>(0);

    @NotNull
    private MutableLiveData<String> btnText = new MutableLiveData<>("下载");

    @NotNull
    private final MutableLiveData<ListDataUiState<CommentDetailBean>> commentListData = new MutableLiveData<>();

    @NotNull
    private final MutableLiveData<CommentStatisticDataBean> commentStatistic = new MutableLiveData<>();

    /* JADX INFO: renamed from: com.join.kotlin.discount.viewmodel.GameDetailFragmentViewModel$getCommentList$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/discount/model/bean/CommentDataBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.discount.viewmodel.GameDetailFragmentViewModel$getCommentList$1", f = "GameDetailFragmentViewModel.kt", i = {}, l = {69}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<CommentDataBean>>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return GameDetailFragmentViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                RequestModel requestModel = new RequestModel();
                requestModel.setArgs(new CommonRequest(GameDetailFragmentViewModel.this.getGameId(), 1));
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

    /* JADX INFO: renamed from: com.join.kotlin.discount.viewmodel.GameDetailFragmentViewModel$getGameDetail$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/discount/model/bean/GameDetailDataBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.discount.viewmodel.GameDetailFragmentViewModel$getGameDetail$1", f = "GameDetailFragmentViewModel.kt", i = {}, l = {56}, m = "invokeSuspend", n = {}, s = {})
    static final class C13031 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<GameDetailDataBean>>, Object> {
        int label;

        C13031(Continuation<? super C13031> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return GameDetailFragmentViewModel.this.new C13031(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                GameDetailRequest gameDetailRequest = new GameDetailRequest(GameDetailFragmentViewModel.this.getGameId(), AccountUtil_.getInstance_(MApplication.f3182z).getUid(), q5.f.M().B());
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(MApplication.f3182z);
                requestModel.setArgs(gameDetailRequest);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<GameDetailRequest> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.getGameDetail(requestModelMakeSign, this);
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
        public final Object invoke(Continuation<? super ResponseModel<GameDetailDataBean>> continuation) {
            return ((C13031) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.discount.viewmodel.GameDetailFragmentViewModel$getSimilarGames$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "", "Lcom/join/mgps/dto/CollectionBeanSub;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.discount.viewmodel.GameDetailFragmentViewModel$getSimilarGames$1", f = "GameDetailFragmentViewModel.kt", i = {}, l = {124}, m = "invokeSuspend", n = {}, s = {})
    static final class C13041 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<List<? extends CollectionBeanSub>>>, Object> {
        final /* synthetic */ boolean $refresh;
        int label;
        final /* synthetic */ GameDetailFragmentViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13041(boolean z10, GameDetailFragmentViewModel gameDetailFragmentViewModel, Continuation<? super C13041> continuation) {
            super(1, continuation);
            this.$refresh = z10;
            this.this$0 = gameDetailFragmentViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C13041(this.$refresh, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Continuation<? super ResponseModel<List<? extends CollectionBeanSub>>> continuation) {
            return invoke2((Continuation<? super ResponseModel<List<CollectionBeanSub>>>) continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.$refresh) {
                    this.this$0.getSimilarListPage().setPage(1);
                }
                RequestModel requestModel = new RequestModel();
                RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs(this.this$0.getGameId(), this.this$0.getSimilarListPage().getPage(), AccountUtil_.getInstance_(MApplication.f3182z).getAccountData().getUid());
                requestGameIdArgs.setDownloadedGameIdList(q5.f.M().B());
                requestModel.setArgs(requestGameIdArgs);
                requestModel.setDefault(MApplication.f3182z);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                RequestModel<RequestGameIdArgs> requestModelMakeSign = requestModel.makeSign();
                Intrinsics.checkNotNullExpressionValue(requestModelMakeSign, "makeSign(...)");
                this.label = 1;
                obj = gameApiService.similarRecList(requestModelMakeSign, this);
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
        public final Object invoke2(Continuation<? super ResponseModel<List<CollectionBeanSub>>> continuation) {
            return ((C13041) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    public GameDetailFragmentViewModel() {
        Boolean bool = Boolean.FALSE;
        this.showComment = new MutableLiveData<>(bool);
        this.showGameInfo = new MutableLiveData<>(bool);
        this.showAvgScore = new MutableLiveData<>(bool);
        this.showAvgDuration = new MutableLiveData<>(bool);
        this.goodRate = new MutableLiveData<>("100%");
        this.similarListPage = new Page(1, 0, 2, null);
        this.similarListData = new MutableLiveData<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getCommentList$lambda$2(GameDetailFragmentViewModel gameDetailFragmentViewModel, CommentDataBean commentDataBean) {
        CommentStatisticDataBean commentScores;
        List<CommentDetailBean> commentList;
        ArrayList arrayList = new ArrayList();
        if (commentDataBean != null && (commentList = commentDataBean.getCommentList()) != null) {
            int i10 = 0;
            for (Object obj : commentList) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                CommentDetailBean commentDetailBean = (CommentDetailBean) obj;
                if (i10 <= 1) {
                    arrayList.add(commentDetailBean);
                }
                i10 = i11;
            }
        }
        if (commentDataBean != null && (commentScores = commentDataBean.getCommentScores()) != null) {
            gameDetailFragmentViewModel.commentStatistic.setValue(commentScores);
        }
        gameDetailFragmentViewModel.commentListData.setValue(new ListDataUiState<>(true, null, true, arrayList.isEmpty(), !arrayList.isEmpty(), arrayList.isEmpty(), arrayList, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getCommentList$lambda$3(GameDetailFragmentViewModel gameDetailFragmentViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        gameDetailFragmentViewModel.commentListData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), true, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getSimilarGames$lambda$5(GameDetailFragmentViewModel gameDetailFragmentViewModel, boolean z10, List list) {
        Page page = gameDetailFragmentViewModel.similarListPage;
        page.setPage(page.getPage() + 1);
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            int i10 = 0;
            for (Object obj : list) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                arrayList.add((CollectionBeanSub) obj);
                i10 = i11;
            }
        }
        gameDetailFragmentViewModel.similarListData.setValue(new ListDataUiState<>(true, null, z10, arrayList.isEmpty(), !arrayList.isEmpty(), arrayList.isEmpty(), arrayList, 2, null));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getSimilarGames$lambda$6(GameDetailFragmentViewModel gameDetailFragmentViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        gameDetailFragmentViewModel.similarListData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), true, false, false, false, new ArrayList(), 56, null));
        return Unit.INSTANCE;
    }

    public final boolean getAutoDownload() {
        return this.autoDownload;
    }

    @NotNull
    public final MutableLiveData<String> getBtnText() {
        return this.btnText;
    }

    public final void getCommentList() {
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(null), new Function1() { // from class: com.join.kotlin.discount.viewmodel.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailFragmentViewModel.getCommentList$lambda$2(this.f48593b, (CommentDataBean) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.discount.viewmodel.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailFragmentViewModel.getCommentList$lambda$3(this.f48594b, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<CommentDetailBean>> getCommentListData() {
        return this.commentListData;
    }

    @NotNull
    public final MutableLiveData<CommentStatisticDataBean> getCommentStatistic() {
        return this.commentStatistic;
    }

    public final void getCommentStatisticData() {
    }

    @Nullable
    public final String getDefaultBtnImage() {
        return this.defaultBtnImage;
    }

    @NotNull
    public final MutableLiveData<DownloadTask> getDownloadTask() {
        return this.downloadTask;
    }

    public final void getGameDetail() {
        String str = this.gameId;
        if (str == null || str.length() == 0) {
            return;
        }
        BaseViewModelExtKt.request$default(this, new C13031(null), this.gameResult, false, null, 12, null);
    }

    @Nullable
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    public final MutableLiveData<GameDetailBean> getGameInfo() {
        return this.gameInfo;
    }

    @NotNull
    public final MutableLiveData<ResultState<GameDetailDataBean>> getGameResult() {
        return this.gameResult;
    }

    @NotNull
    public final MutableLiveData<String> getGoodRate() {
        return this.goodRate;
    }

    @NotNull
    public final MutableLiveData<Integer> getProgress() {
        return this.progress;
    }

    @NotNull
    public final MutableLiveData<Boolean> getShowAvgDuration() {
        return this.showAvgDuration;
    }

    @NotNull
    public final MutableLiveData<Boolean> getShowAvgScore() {
        return this.showAvgScore;
    }

    @NotNull
    public final MutableLiveData<Boolean> getShowComment() {
        return this.showComment;
    }

    @NotNull
    public final MutableLiveData<Boolean> getShowGameInfo() {
        return this.showGameInfo;
    }

    public final void getSimilarGames(final boolean refresh) {
        BaseViewModelExtKt.request$default(this, new C13041(refresh, this, null), new Function1() { // from class: com.join.kotlin.discount.viewmodel.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailFragmentViewModel.getSimilarGames$lambda$5(this.f48590b, refresh, (List) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.discount.viewmodel.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailFragmentViewModel.getSimilarGames$lambda$6(this.f48592b, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<CollectionBeanSub>> getSimilarListData() {
        return this.similarListData;
    }

    @NotNull
    public final Page getSimilarListPage() {
        return this.similarListPage;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    public final void likeComment(@Nullable CommentDetailBean bean) {
    }

    public final void setAutoDownload(boolean z10) {
        this.autoDownload = z10;
    }

    public final void setBtnText(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.btnText = mutableLiveData;
    }

    public final void setDefaultBtnImage(@Nullable String str) {
        this.defaultBtnImage = str;
    }

    public final void setDownloadTask(@NotNull MutableLiveData<DownloadTask> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.downloadTask = mutableLiveData;
    }

    public final void setGameId(@Nullable String str) {
        this.gameId = str;
    }

    public final void setGameInfo(@NotNull MutableLiveData<GameDetailBean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.gameInfo = mutableLiveData;
    }

    public final void setGameResult(@NotNull MutableLiveData<ResultState<GameDetailDataBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.gameResult = mutableLiveData;
    }

    public final void setProgress(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.progress = mutableLiveData;
    }

    public final void setSimilarListPage(@NotNull Page page) {
        Intrinsics.checkNotNullParameter(page, "<set-?>");
        this.similarListPage = page;
    }
}
