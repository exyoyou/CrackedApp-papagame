package com.join.kotlin.autocode.dailyfind.viewmodel;

import android.graphics.Color;
import android.text.SpannableString;
import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.autocode.dailyfind.model.DailyDiscoverDataBean;
import com.join.kotlin.autocode.dailyfind.model.DailyDiscoverListItem;
import com.join.kotlin.autocode.dailyfind.model.DailyDiscoveryGameBean;
import com.join.kotlin.autocode.dailyfind.model.DailyGuessGameBean;
import com.join.kotlin.autocode.dailyfind.model.DailyRankItemBean;
import com.join.kotlin.autocode.dailyfind.model.DailyRankListDataBean;
import com.join.kotlin.autocode.dailyfind.model.DailyRankListItemBean;
import com.join.kotlin.autocode.dailyfind.model.DailyTodayGameBean;
import com.join.kotlin.autocode.dailyfind.model.DateItem;
import com.join.kotlin.autocode.dailyfind.model.args.DailyDiscoverArgs;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.impl.BaseDownloadable;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.network.api.ApiServiceFactorKt;
import com.join.kotlin.network.api.GameApiService;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.e0;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import q5.f;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010B\u001a\u00020?2\u0006\u0010C\u001a\u0002062\b\b\u0002\u0010D\u001a\u00020>2\b\u0010E\u001a\u0004\u0018\u00010\u0006J\u001a\u0010\u001b\u001a\u00020?2\b\b\u0002\u0010D\u001a\u00020>2\b\u0010F\u001a\u0004\u0018\u00010=R\u001f\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001d\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\tR.\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018j\n\u0012\u0004\u0012\u00020\u0019\u0018\u0001`\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR*\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0018j\b\u0012\u0004\u0012\u00020\u0006`\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001eR\u0017\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001a\u0010,\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010)\"\u0004\b.\u0010+R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001a\u00105\u001a\u000206X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R1\u0010;\u001a\"\u0012\u0004\u0012\u000206\u0012\u0006\u0012\u0004\u0018\u00010=\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020?0<¢\u0006\b\n\u0000\u001a\u0004\b@\u0010A¨\u0006G"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "pageExtBean", "Lcom/join/mgps/dto/ExtBean;", "getPageExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setPageExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "parentExtBean", "getParentExtBean", "setParentExtBean", "listData", "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;", "Lcom/join/mgps/dto/CommonMultiItemBean;", "getListData", "rankListData", "Ljava/util/ArrayList;", "Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListItemBean;", "Lkotlin/collections/ArrayList;", "getRankListData", "()Ljava/util/ArrayList;", "setRankListData", "(Ljava/util/ArrayList;)V", "timeLines", "getTimeLines", "setTimeLines", "allDownloadAppHomeBeans", "", "Lcom/join/kotlin/base/impl/BaseDownloadable;", "getAllDownloadAppHomeBeans", "()Ljava/util/List;", "lastDateStr", "getLastDateStr", "()Ljava/lang/String;", "setLastDateStr", "(Ljava/lang/String;)V", "startDateStr", "getStartDateStr", "setStartDateStr", "curClickDateItem", "Lcom/join/kotlin/autocode/dailyfind/model/DateItem;", "getCurClickDateItem", "()Lcom/join/kotlin/autocode/dailyfind/model/DateItem;", "setCurClickDateItem", "(Lcom/join/kotlin/autocode/dailyfind/model/DateItem;)V", "loading", "", "getLoading", "()Z", "setLoading", "(Z)V", "dailyDiscoverSuccess", "Lkotlin/Function4;", "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;", "", "", "getDailyDiscoverSuccess", "()Lkotlin/jvm/functions/Function4;", "getDailyDiscover", "refresh", "curDay", "date", "dailyData", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDailyFindViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindViewModel.kt\ncom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,324:1\n1878#2,2:325\n1869#2,2:327\n1869#2:329\n1869#2,2:330\n1870#2:332\n1869#2,2:333\n1880#2:335\n1869#2,2:336\n*S KotlinDebug\n*F\n+ 1 DailyFindViewModel.kt\ncom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel\n*L\n63#1:325,2\n115#1:327,2\n163#1:329\n166#1:330,2\n163#1:332\n215#1:333,2\n63#1:335\n312#1:336,2\n*E\n"})
public final class DailyFindViewModel extends BaseViewModel {

    @NotNull
    private final List<BaseDownloadable> allDownloadAppHomeBeans;

    @Nullable
    private DateItem curClickDateItem;

    @NotNull
    private final Function4<Boolean, DailyDiscoverDataBean, Integer, Integer, Unit> dailyDiscoverSuccess;

    @NotNull
    private String lastDateStr;

    @NotNull
    private final MutableLiveData<ListDataUiState<CommonMultiItemBean>> listData;
    private boolean loading;

    @NotNull
    private ExtBean pageExtBean;

    @Nullable
    private ExtBean parentExtBean;

    @Nullable
    private ArrayList<DailyRankListItemBean> rankListData;

    @NotNull
    private String startDateStr;

    @NotNull
    private ArrayList<String> timeLines;

    @NotNull
    private final MutableLiveData<String> title = new MutableLiveData<>("每日推荐");

    /* JADX INFO: renamed from: com.join.kotlin.autocode.dailyfind.viewmodel.DailyFindViewModel$getDailyDiscover$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.autocode.dailyfind.viewmodel.DailyFindViewModel$getDailyDiscover$1", f = "DailyFindViewModel.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<DailyDiscoverDataBean>>, Object> {
        final /* synthetic */ int $curDay;
        final /* synthetic */ String $date;
        final /* synthetic */ boolean $refresh;
        int label;
        final /* synthetic */ DailyFindViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10, boolean z10, String str, DailyFindViewModel dailyFindViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$curDay = i10;
            this.$refresh = z10;
            this.$date = str;
            this.this$0 = dailyFindViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$curDay, this.$refresh, this.$date, this.this$0, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                RequestModel<DailyDiscoverArgs> requestModel = new RequestModel<>();
                DailyDiscoverArgs dailyDiscoverArgs = new DailyDiscoverArgs(Boxing.boxInt(this.$curDay), null, null, null, null, 30, null);
                dailyDiscoverArgs.setUid(AccountUtil_.getInstance_(MApplication.n()).getUid());
                dailyDiscoverArgs.setUserToken(AccountUtil_.getInstance_(MApplication.n()).getToken());
                if (this.$refresh) {
                    dailyDiscoverArgs.setDate(this.$date);
                    this.this$0.setLastDateStr(String.valueOf(this.$date));
                    dailyDiscoverArgs.setDownloadedGameIdList(f.M().B());
                } else {
                    dailyDiscoverArgs.setDate(this.this$0.getLastDateStr());
                }
                requestModel.setArgs(dailyDiscoverArgs);
                requestModel.setDefault(MApplication.f3182z);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                this.label = 1;
                obj = gameApiService.getDailyDiscover(requestModel, this);
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
        public final Object invoke(Continuation<? super ResponseModel<DailyDiscoverDataBean>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.autocode.dailyfind.viewmodel.DailyFindViewModel$getRankListData$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"}, d2 = {"<anonymous>", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/autocode/dailyfind/model/DailyRankListDataBean;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.autocode.dailyfind.viewmodel.DailyFindViewModel$getRankListData$1", f = "DailyFindViewModel.kt", i = {}, l = {308}, m = "invokeSuspend", n = {}, s = {})
    static final class C12971 extends SuspendLambda implements Function1<Continuation<? super ResponseModel<DailyRankListDataBean>>, Object> {
        int label;

        C12971(Continuation<? super C12971> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C12971(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.throwOnFailure(obj);
                RequestModel<LuckHistoryrequest> requestModel = new RequestModel<>(MApplication.n());
                LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
                luckHistoryrequest.setUid(AccountUtil_.getInstance_(MApplication.n()).getAccountData().getUid());
                requestModel.setDefault(MApplication.f3182z);
                requestModel.setArgs(luckHistoryrequest);
                GameApiService gameApiService = ApiServiceFactorKt.getGameApiService();
                this.label = 1;
                obj = gameApiService.getDailyRankGame(requestModel, this);
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
        public final Object invoke(Continuation<? super ResponseModel<DailyRankListDataBean>> continuation) {
            return ((C12971) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    public DailyFindViewModel() {
        ExtBean chatId = new ExtBean().setChatId("dailyRecommend");
        Intrinsics.checkNotNullExpressionValue(chatId, "setChatId(...)");
        this.pageExtBean = chatId;
        this.listData = new MutableLiveData<>();
        this.timeLines = new ArrayList<>();
        this.allDownloadAppHomeBeans = new ArrayList();
        this.lastDateStr = "";
        this.startDateStr = "";
        this.dailyDiscoverSuccess = new Function4() { // from class: com.join.kotlin.autocode.dailyfind.viewmodel.e
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return DailyFindViewModel.dailyDiscoverSuccess$lambda$11(this.f48543b, ((Boolean) obj).booleanValue(), (DailyDiscoverDataBean) obj2, ((Integer) obj3).intValue(), ((Integer) obj4).intValue());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:41:0x01a4  */
    public static final Unit dailyDiscoverSuccess$lambda$11(DailyFindViewModel dailyFindViewModel, boolean z10, DailyDiscoverDataBean dailyDiscoverDataBean, int i10, int i11) {
        List<DailyDiscoverListItem> daily_discover_list;
        DailyDiscoverListItem dailyDiscoverListItem;
        List<DailyDiscoverListItem> daily_discover_list2;
        List listFilterNotNull;
        DailyRankListItemBean dailyRankListItemBean;
        String title;
        ArrayList arrayList = new ArrayList();
        if (z10) {
            dailyFindViewModel.timeLines.clear();
        }
        int i12 = 1000;
        int i13 = 1;
        if (dailyDiscoverDataBean != null && (daily_discover_list2 = dailyDiscoverDataBean.getDaily_discover_list()) != null && (listFilterNotNull = CollectionsKt___CollectionsKt.filterNotNull(daily_discover_list2)) != null) {
            Iterator it2 = listFilterNotNull.iterator();
            int i14 = 0;
            while (it2.hasNext()) {
                Object next = it2.next();
                int i15 = i14 + 1;
                if (i14 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                DailyDiscoverListItem dailyDiscoverListItem2 = (DailyDiscoverListItem) next;
                Long add_time = dailyDiscoverListItem2.getAdd_time();
                String strD = e0.D(add_time != null ? add_time.longValue() * ((long) i12) : 0L, "yyyy.MM.dd");
                if (!z10 || i14 != 0) {
                    dailyFindViewModel.timeLines.add(strD);
                    arrayList.add(new CommonMultiItemBean(6, Float.valueOf(MApplication.n().getResources().getDimension(R.dimen.wdp40))));
                    dailyFindViewModel.timeLines.add(strD);
                    arrayList.add(new CommonMultiItemBean(5, dailyDiscoverListItem2.getAdd_time()));
                    dailyFindViewModel.timeLines.add(strD);
                    arrayList.add(new CommonMultiItemBean(6, Float.valueOf(MApplication.n().getResources().getDimension(R.dimen.wdp30))));
                }
                GamedetialModleFourBean game_list = dailyDiscoverListItem2.getGame_list();
                if (game_list != null) {
                    dailyFindViewModel.timeLines.add(strD);
                    game_list.getExtBean().itemWithParent(dailyFindViewModel.pageExtBean).setSopName("悟饭首推").setSopNo(strD);
                    Unit unit = Unit.INSTANCE;
                    arrayList.add(new CommonMultiItemBean(i13, new DailyDiscoveryGameBean(game_list, false, null, 6, null)));
                    dailyFindViewModel.timeLines.add(strD);
                    arrayList.add(new CommonMultiItemBean(6, Float.valueOf(MApplication.n().getResources().getDimension(R.dimen.wdp35))));
                    dailyFindViewModel.allDownloadAppHomeBeans.add(game_list);
                }
                ArrayList<CommonGameInfoBean> thenew_game_list = dailyDiscoverListItem2.getThenew_game_list();
                if (thenew_game_list == null || !(!thenew_game_list.isEmpty())) {
                    it2 = it2;
                } else {
                    dailyFindViewModel.timeLines.add(strD);
                    Iterator<T> it3 = thenew_game_list.iterator();
                    while (it3.hasNext()) {
                        ((CommonGameInfoBean) it3.next()).getExtBean().itemWithParent(dailyFindViewModel.pageExtBean).setSopName("今日首发").setSopNo(strD);
                    }
                    ExtBean sopNo = new ExtBean().itemWithParent(dailyFindViewModel.pageExtBean).setSopName("今日首发").setSopNo(strD);
                    Intrinsics.checkNotNullExpressionValue(sopNo, "setSopNo(...)");
                    DailyTodayGameBean dailyTodayGameBean = new DailyTodayGameBean(thenew_game_list, null, 0, sopNo, 6, null);
                    if (dailyTodayGameBean.getSpannableText() == null) {
                        dailyTodayGameBean.setSpannableText(new SpannableString("查看更多首发游戏 > "));
                        SpannableString spannableText = dailyTodayGameBean.getSpannableText();
                        if (spannableText != null) {
                            spannableText.setSpan(new com.join.mgps.widget.textview.a(Color.parseColor("#666666"), 3.0f, 0.0f, 4, null), 0, 10, 33);
                        }
                    }
                    dailyTodayGameBean.setItemHeight((int) (MApplication.n().getResources().getDimension(R.dimen.wdp160) + (MApplication.n().getResources().getDimension(R.dimen.wdp120) * thenew_game_list.size())));
                    arrayList.add(new CommonMultiItemBean(2, dailyTodayGameBean));
                    dailyFindViewModel.allDownloadAppHomeBeans.addAll(thenew_game_list);
                }
                if (z10 && dailyFindViewModel.rankListData != null && i14 == 0 && i10 == 0) {
                    dailyFindViewModel.timeLines.add(strD);
                    arrayList.add(new CommonMultiItemBean(6, Float.valueOf(MApplication.n().getResources().getDimension(R.dimen.wdp40))));
                    dailyFindViewModel.timeLines.add(strD);
                    ArrayList<DailyRankListItemBean> arrayList2 = dailyFindViewModel.rankListData;
                    if (arrayList2 != null) {
                        for (DailyRankListItemBean dailyRankListItemBean2 : arrayList2) {
                            dailyRankListItemBean2.setExtBean(new ExtBean().itemWithParent(dailyFindViewModel.pageExtBean).setSopName(dailyRankListItemBean2.getTitle()).setSopNo(strD));
                            ArrayList<CollectionBeanSub> game_list2 = dailyRankListItemBean2.getGame_list();
                            if (game_list2 != null) {
                                Iterator<T> it4 = game_list2.iterator();
                                while (it4.hasNext()) {
                                    ((CollectionBeanSub) it4.next()).getExtBean().itemWithParent(dailyFindViewModel.pageExtBean).setSopName(dailyRankListItemBean2.getTitle()).setSopNo(strD);
                                }
                            }
                        }
                    }
                    ArrayList<DailyRankListItemBean> arrayList3 = dailyFindViewModel.rankListData;
                    ExtBean sopNo2 = new ExtBean().itemWithParent(dailyFindViewModel.pageExtBean).setSopNo(strD);
                    Intrinsics.checkNotNullExpressionValue(sopNo2, "setSopNo(...)");
                    DailyRankItemBean dailyRankItemBean = new DailyRankItemBean(i11, arrayList3, null, null, sopNo2, 12, null);
                    if (dailyRankItemBean.getSpannableText() == null) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("查看更多");
                        ArrayList<DailyRankListItemBean> rankListData = dailyRankItemBean.getRankListData();
                        sb2.append((rankListData == null || (dailyRankListItemBean = rankListData.get(dailyRankItemBean.getSelectedIndex())) == null || (title = dailyRankListItemBean.getTitle()) == null) ? null : StringsKt__StringsJVMKt.replace$default(title, "榜", "", false, 4, (Object) null));
                        sb2.append("游戏 > ");
                        String string = sb2.toString();
                        dailyRankItemBean.setSpannableText(new SpannableString(string));
                        SpannableString spannableText2 = dailyRankItemBean.getSpannableText();
                        if (spannableText2 != null) {
                            spannableText2.setSpan(new com.join.mgps.widget.textview.a(Color.parseColor("#666666"), 3.0f, 0.0f, 4, null), 0, string.length() - 1, 33);
                        }
                    }
                    arrayList.add(new CommonMultiItemBean(3, dailyRankItemBean));
                }
                ArrayList<CollectionBeanSub> recommend_game_list = dailyDiscoverListItem2.getRecommend_game_list();
                if (recommend_game_list != null && (!recommend_game_list.isEmpty())) {
                    dailyFindViewModel.timeLines.add(strD);
                    arrayList.add(new CommonMultiItemBean(6, Float.valueOf(MApplication.n().getResources().getDimension(R.dimen.wdp40))));
                    Iterator<T> it5 = recommend_game_list.iterator();
                    while (it5.hasNext()) {
                        ((CollectionBeanSub) it5.next()).getExtBean().itemWithParent(dailyFindViewModel.pageExtBean).setSopName("猜你喜欢").setSopNo(strD);
                    }
                    ExtBean sopNo3 = new ExtBean().itemWithParent(dailyFindViewModel.pageExtBean).setSopName("猜你喜欢").setSopNo(strD);
                    Intrinsics.checkNotNullExpressionValue(sopNo3, "setSopNo(...)");
                    DailyGuessGameBean dailyGuessGameBean = new DailyGuessGameBean(null, recommend_game_list, sopNo3);
                    dailyGuessGameBean.setCurItems(DailyGuessGameBean.firstBatch$default(dailyGuessGameBean, 0, 1, null));
                    dailyFindViewModel.timeLines.add(strD);
                    arrayList.add(new CommonMultiItemBean(4, dailyGuessGameBean));
                    dailyFindViewModel.allDownloadAppHomeBeans.addAll(recommend_game_list);
                }
                i14 = i15;
                it2 = it2;
                i12 = 1000;
                i13 = 1;
            }
        }
        Long add_time2 = (dailyDiscoverDataBean == null || (daily_discover_list = dailyDiscoverDataBean.getDaily_discover_list()) == null || (dailyDiscoverListItem = (DailyDiscoverListItem) CollectionsKt___CollectionsKt.lastOrNull((List) daily_discover_list)) == null) ? null : dailyDiscoverListItem.getAdd_time();
        if (add_time2 != null) {
            dailyFindViewModel.lastDateStr = e0.D((add_time2.longValue() * ((long) 1000)) - ((long) 86400), "yyyy-MM-dd");
        }
        dailyFindViewModel.listData.setValue(new ListDataUiState<>(true, null, z10, arrayList.isEmpty(), (arrayList.isEmpty() ^ true) && i10 != 1, arrayList.isEmpty() && z10, arrayList, 2, null));
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void getDailyDiscover$default(DailyFindViewModel dailyFindViewModel, boolean z10, int i10, String str, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        dailyFindViewModel.getDailyDiscover(z10, i10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getDailyDiscover$lambda$12(DailyFindViewModel dailyFindViewModel, boolean z10, int i10, DailyDiscoverDataBean dailyDiscoverDataBean) {
        if (dailyFindViewModel.rankListData == null || (z10 && i10 == 0)) {
            dailyFindViewModel.getRankListData(i10, dailyDiscoverDataBean);
        } else {
            dailyFindViewModel.dailyDiscoverSuccess.invoke(Boolean.valueOf(z10), dailyDiscoverDataBean, Integer.valueOf(i10), 0);
        }
        dailyFindViewModel.loading = false;
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getDailyDiscover$lambda$13(DailyFindViewModel dailyFindViewModel, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        dailyFindViewModel.listData.setValue(new ListDataUiState<>(false, it2.getErrorMsg(), true, false, false, false, new ArrayList(), 56, null));
        dailyFindViewModel.loading = false;
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void getRankListData$default(DailyFindViewModel dailyFindViewModel, int i10, DailyDiscoverDataBean dailyDiscoverDataBean, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        dailyFindViewModel.getRankListData(i10, dailyDiscoverDataBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getRankListData$lambda$17(DailyFindViewModel dailyFindViewModel, DailyDiscoverDataBean dailyDiscoverDataBean, int i10, DailyRankListDataBean dailyRankListDataBean) {
        ArrayList<DailyRankListItemBean> list;
        dailyFindViewModel.rankListData = dailyRankListDataBean != null ? dailyRankListDataBean.getList() : null;
        if (dailyRankListDataBean != null && (list = dailyRankListDataBean.getList()) != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                ArrayList<CollectionBeanSub> game_list = ((DailyRankListItemBean) it2.next()).getGame_list();
                if (game_list != null) {
                    dailyFindViewModel.allDownloadAppHomeBeans.addAll(game_list);
                }
            }
        }
        dailyFindViewModel.dailyDiscoverSuccess.invoke(Boolean.TRUE, dailyDiscoverDataBean, Integer.valueOf(i10), 0);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit getRankListData$lambda$18(DailyFindViewModel dailyFindViewModel, DailyDiscoverDataBean dailyDiscoverDataBean, int i10, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        dailyFindViewModel.dailyDiscoverSuccess.invoke(Boolean.TRUE, dailyDiscoverDataBean, Integer.valueOf(i10), 0);
        return Unit.INSTANCE;
    }

    @NotNull
    public final List<BaseDownloadable> getAllDownloadAppHomeBeans() {
        return this.allDownloadAppHomeBeans;
    }

    @Nullable
    public final DateItem getCurClickDateItem() {
        return this.curClickDateItem;
    }

    public final void getDailyDiscover(final boolean refresh, final int curDay, @Nullable String date) {
        if (this.loading) {
            return;
        }
        this.loading = true;
        this.startDateStr = String.valueOf(date);
        BaseViewModelExtKt.request$default(this, new AnonymousClass1(curDay, refresh, date, this, null), new Function1() { // from class: com.join.kotlin.autocode.dailyfind.viewmodel.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DailyFindViewModel.getDailyDiscover$lambda$12(this.f48533b, refresh, curDay, (DailyDiscoverDataBean) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.autocode.dailyfind.viewmodel.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DailyFindViewModel.getDailyDiscover$lambda$13(this.f48536b, (AppException) obj);
            }
        }, false, null, 24, null);
    }

    @NotNull
    public final Function4<Boolean, DailyDiscoverDataBean, Integer, Integer, Unit> getDailyDiscoverSuccess() {
        return this.dailyDiscoverSuccess;
    }

    @NotNull
    public final String getLastDateStr() {
        return this.lastDateStr;
    }

    @NotNull
    public final MutableLiveData<ListDataUiState<CommonMultiItemBean>> getListData() {
        return this.listData;
    }

    public final boolean getLoading() {
        return this.loading;
    }

    @NotNull
    public final ExtBean getPageExtBean() {
        return this.pageExtBean;
    }

    @Nullable
    public final ExtBean getParentExtBean() {
        return this.parentExtBean;
    }

    @Nullable
    public final ArrayList<DailyRankListItemBean> getRankListData() {
        return this.rankListData;
    }

    @NotNull
    public final String getStartDateStr() {
        return this.startDateStr;
    }

    @NotNull
    public final ArrayList<String> getTimeLines() {
        return this.timeLines;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    public final void setCurClickDateItem(@Nullable DateItem dateItem) {
        this.curClickDateItem = dateItem;
    }

    public final void setLastDateStr(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lastDateStr = str;
    }

    public final void setLoading(boolean z10) {
        this.loading = z10;
    }

    public final void setPageExtBean(@NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "<set-?>");
        this.pageExtBean = extBean;
    }

    public final void setParentExtBean(@Nullable ExtBean extBean) {
        this.parentExtBean = extBean;
    }

    public final void setRankListData(@Nullable ArrayList<DailyRankListItemBean> arrayList) {
        this.rankListData = arrayList;
    }

    public final void setStartDateStr(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.startDateStr = str;
    }

    public final void setTimeLines(@NotNull ArrayList<String> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.timeLines = arrayList;
    }

    public final void getRankListData(final int curDay, @Nullable final DailyDiscoverDataBean dailyData) {
        BaseViewModelExtKt.request$default(this, new C12971(null), new Function1() { // from class: com.join.kotlin.autocode.dailyfind.viewmodel.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DailyFindViewModel.getRankListData$lambda$17(this.f48537b, dailyData, curDay, (DailyRankListDataBean) obj);
            }
        }, new Function1() { // from class: com.join.kotlin.autocode.dailyfind.viewmodel.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DailyFindViewModel.getRankListData$lambda$18(this.f48540b, dailyData, curDay, (AppException) obj);
            }
        }, false, null, 24, null);
    }
}
