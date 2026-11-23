package com.join.kotlin.discount;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.photoviewer.ImagePagerActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.az;
import com.join.android.app.mgsim.wufun.databinding.ll;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.fragment.BaseVmDbFragment;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.discount.adapter.GameDetailBannerAdapter;
import com.join.kotlin.discount.adapter.GameDetailCommentAdapter;
import com.join.kotlin.discount.adapter.GameDetailInfoAdapter;
import com.join.kotlin.discount.adapter.GameDetailReleaseWelfareAdapter;
import com.join.kotlin.discount.adapter.GameDetailSimilarGameAdapter;
import com.join.kotlin.discount.model.bean.CommentDetailBean;
import com.join.kotlin.discount.model.bean.CommentStatisticDataBean;
import com.join.kotlin.discount.model.bean.CommonComponentBean;
import com.join.kotlin.discount.model.bean.GameDetailBannerEntityBean;
import com.join.kotlin.discount.model.bean.GameDetailBasicInfoBean;
import com.join.kotlin.discount.model.bean.GameDetailBean;
import com.join.kotlin.discount.model.bean.GameDetailBookingInfoBean;
import com.join.kotlin.discount.model.bean.GameDetailDataBean;
import com.join.kotlin.discount.model.bean.GameDetailDialogInfoBean;
import com.join.kotlin.discount.model.bean.GameDetailInfoItemBean;
import com.join.kotlin.discount.model.bean.GameDetailNoticeBean;
import com.join.kotlin.discount.model.bean.GameDetailPicAndVideoInfoBean;
import com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy;
import com.join.kotlin.discount.proxy.ItemGameDetailCommentListClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailFragmentViewModel;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.v0;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.ext.ToastManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u00105\u001a\u0002062\b\u00107\u001a\u0004\u0018\u000108H\u0016J\b\u00109\u001a\u000206H\u0016J\u0006\u0010<\u001a\u000206J\b\u0010=\u001a\u000206H\u0016J\b\u0010>\u001a\u000206H\u0016J\b\u0010?\u001a\u000206H\u0016J\b\u0010@\u001a\u000206H\u0016J\u0006\u0010A\u001a\u000206J\u000e\u0010B\u001a\u0002062\u0006\u0010C\u001a\u00020(J\u000e\u0010D\u001a\u0002062\u0006\u0010C\u001a\u00020(J\b\u0010E\u001a\u000206H\u0016J\b\u0010F\u001a\u000206H\u0016J\b\u0010G\u001a\u000206H\u0016J\b\u0010H\u001a\u000206H\u0016J\b\u0010I\u001a\u000206H\u0016J\b\u0010J\u001a\u000206H\u0002J\b\u0010K\u001a\u000206H\u0016J\b\u0010L\u001a\u000206H\u0002J\u0012\u0010M\u001a\u0002062\b\u0010N\u001a\u0004\u0018\u00010.H\u0002J\u0012\u0010O\u001a\u0002062\b\u0010P\u001a\u0004\u0018\u00010.H\u0016J\b\u0010Q\u001a\u000206H\u0016J\b\u0010R\u001a\u000206H\u0016J\b\u0010S\u001a\u000206H\u0016J\b\u0010T\u001a\u000206H\u0016J\u0010\u0010U\u001a\u0002062\u0006\u0010V\u001a\u00020*H\u0016J\b\u0010W\u001a\u000206H\u0016J\b\u0010X\u001a\u000206H\u0016J\b\u0010Y\u001a\u000206H\u0016J\b\u0010Z\u001a\u000206H\u0016J\b\u0010[\u001a\u000206H\u0016J\b\u0010\\\u001a\u000206H\u0016J\b\u0010]\u001a\u000206H\u0016J\u0012\u0010^\u001a\u0002062\b\u0010P\u001a\u0004\u0018\u00010.H\u0016J\u0010\u0010_\u001a\u0002062\u0006\u0010`\u001a\u00020aH\u0007J\b\u0010b\u001a\u0004\u0018\u00010cJ\u0012\u0010d\u001a\u0002062\b\u0010e\u001a\u0004\u0018\u00010fH\u0016J\u0006\u0010g\u001a\u00020.J\u0006\u0010h\u001a\u00020*J\u0006\u0010i\u001a\u00020*J\b\u0010j\u001a\u000206H\u0002J\u0012\u0010k\u001a\u0004\u0018\u00010.2\b\u0010l\u001a\u0004\u0018\u00010.R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0010\u001a\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u0010\u001a\u0004\b\u001d\u0010\u001eR\u001b\u0010 \u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u0010\u001a\u0004\b\"\u0010#R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020(X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020*X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020*X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020(X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020(X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020(X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u000203X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010:\u001a\u0004\u0018\u00010;X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006m"}, d2 = {"Lcom/join/kotlin/discount/GameDetailFragment;", "Lcom/join/kotlin/base/fragment/BaseVmDbFragment;", "Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/FragmentDiscountGameDetailV2Binding;", "Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;", "Lcom/join/kotlin/discount/proxy/ItemGameDetailCommentListClickProxy;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "bannerAdapter", "Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;", "getBannerAdapter", "()Lcom/join/kotlin/discount/adapter/GameDetailBannerAdapter;", "bannerAdapter$delegate", "Lkotlin/Lazy;", "infoAdapter", "Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;", "getInfoAdapter", "()Lcom/join/kotlin/discount/adapter/GameDetailInfoAdapter;", "infoAdapter$delegate", "releaseWelfareAdapter", "Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;", "getReleaseWelfareAdapter", "()Lcom/join/kotlin/discount/adapter/GameDetailReleaseWelfareAdapter;", "releaseWelfareAdapter$delegate", "commentAdapter", "Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;", "getCommentAdapter", "()Lcom/join/kotlin/discount/adapter/GameDetailCommentAdapter;", "commentAdapter$delegate", "similarAdapter", "Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;", "getSimilarAdapter", "()Lcom/join/kotlin/discount/adapter/GameDetailSimilarGameAdapter;", "similarAdapter$delegate", "videoHelper", "Lcom/join/android/app/component/video/RvListVideoHelper;", "isReleaseWelfareExpand", "", "lastRvRelaseWelfareHeight", "", "currentIndicatorPosition", "firstCompletelyVisibleWhenIndicatorShowLast", "topBgColor", "", "isPause", "hasDestroyed", "showNewServer", "parentExtBean", "Lcom/join/mgps/dto/ExtBean;", "pageExtBean", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "handler", "Landroid/os/Handler;", "playVideo", "onPause", "onDestroy", "createObserver", "lazyLoadData", "loadDbData", "loadData", "refresh", "loadSimilarGame", "goGift", "goCoupon", "goEvent", "goServer", "bookGame", "applyDetailBottomDownloadExt", "downBtnClick", "showDownDialog", "volcanoCheck", "gameId", "horizontalPicClick", "url", "toMoreSubAccount", "expandReleaseWelfare", IAdInterListener.AdCommandType.AD_CLICK, "goComment", "showCommentStatistic", v0.f50057a, "goTrade", "clickGameInfoTitle", "clickGoodRate", "supportBigR", "admireBigR", "showBigRRule", "toRefundDetail", "verticalPicClick", "onEventMainThread", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "supportGameInfo", "Lcom/join/kotlin/discount/model/bean/GameDetailBean;", "like", "bean", "Lcom/join/kotlin/discount/model/bean/CommentDetailBean;", "getGoodRate", "getCanSellAcountCount", "getCanRecycleAccountCount", "setTopMask", "getNotLightColor", TypedValues.Custom.S_COLOR, "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailFragment.kt\ncom/join/kotlin/discount/GameDetailFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1087:1\n1#2:1088\n774#3:1089\n865#3,2:1090\n1563#3:1092\n1634#3,3:1093\n774#3:1100\n865#3,2:1101\n1869#3:1103\n808#3,11:1104\n1869#3,2:1115\n1870#3:1117\n1869#3,2:1122\n1869#3,2:1124\n37#4:1096\n36#4,3:1097\n37#4:1118\n36#4,3:1119\n*S KotlinDebug\n*F\n+ 1 GameDetailFragment.kt\ncom/join/kotlin/discount/GameDetailFragment\n*L\n875#1:1089\n875#1:1090,2\n877#1:1092\n877#1:1093,3\n984#1:1100\n984#1:1101,2\n986#1:1103\n988#1:1104,11\n988#1:1115,2\n986#1:1117\n484#1:1122,2\n494#1:1124,2\n883#1:1096\n883#1:1097,3\n996#1:1118\n996#1:1119,3\n*E\n"})
public final class GameDetailFragment extends BaseVmDbFragment<GameDetailFragmentViewModel, ll> implements GameDetailFragmentClickProxy, ItemGameDetailCommentListClickProxy {
    private int currentIndicatorPosition;
    private boolean hasDestroyed;
    private boolean isPause;
    private boolean isReleaseWelfareExpand;
    private int lastRvRelaseWelfareHeight;
    private com.kingja.loadsir.core.b<Object> loadSir;

    @Nullable
    private ExtBean parentExtBean;
    private boolean showNewServer;

    @Nullable
    private com.join.android.app.component.video.h videoHelper;

    /* JADX INFO: renamed from: bannerAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy bannerAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.discount.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailFragment.bannerAdapter_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: infoAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy infoAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.discount.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailFragment.infoAdapter_delegate$lambda$1();
        }
    });

    /* JADX INFO: renamed from: releaseWelfareAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy releaseWelfareAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.discount.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailFragment.releaseWelfareAdapter_delegate$lambda$2();
        }
    });

    /* JADX INFO: renamed from: commentAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy commentAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.discount.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailFragment.commentAdapter_delegate$lambda$3();
        }
    });

    /* JADX INFO: renamed from: similarAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy similarAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.discount.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailFragment.similarAdapter_delegate$lambda$4();
        }
    });
    private int firstCompletelyVisibleWhenIndicatorShowLast = -1;

    @NotNull
    private String topBgColor = "#503835";

    @NotNull
    private ExtBean pageExtBean = new ExtBean();

    @Nullable
    private final Handler handler = new Handler();

    /* JADX WARN: Multi-variable type inference failed */
    private final void applyDetailBottomDownloadExt() {
        String json = JsonMapper.getInstance().toJson(this.pageExtBean.copy().setGameId(((GameDetailFragmentViewModel) getMViewModel()).getGameId()).setResourceId(((GameDetailFragmentViewModel) getMViewModel()).getGameId()));
        GameDetailBean value = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
        if (value != null) {
            value.setExt(json);
        }
        DownloadTask value2 = ((GameDetailFragmentViewModel) getMViewModel()).getDownloadTask().getValue();
        if (value2 != null) {
            value2.setExt(json);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameDetailBannerAdapter bannerAdapter_delegate$lambda$0() {
        return new GameDetailBannerAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameDetailCommentAdapter commentAdapter_delegate$lambda$3() {
        return new GameDetailCommentAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$29$lambda$25(final GameDetailFragment gameDetailFragment, ResultState resultState) {
        if (resultState == null) {
            com.kingja.loadsir.core.b<Object> bVar = gameDetailFragment.loadSir;
            if (bVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                bVar = null;
            }
            CustomViewExtKt.showError$default(bVar, null, 1, null);
            gameDetailFragment.getMDatabind().f41375n.setVisibility(8);
            a3.b(gameDetailFragment.requireContext()).d("游戏已下架");
            FragmentActivity activity = gameDetailFragment.getActivity();
            if (activity != null) {
                activity.finish();
            }
        } else {
            gameDetailFragment.getMDatabind().f41369h.setVisibility(0);
            BaseViewModelExtKt.parseState$default(gameDetailFragment, resultState, new Function1() { // from class: com.join.kotlin.discount.z
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return GameDetailFragment.createObserver$lambda$29$lambda$25$lambda$23(this.f48602b, (GameDetailDataBean) obj);
                }
            }, new Function1() { // from class: com.join.kotlin.discount.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return GameDetailFragment.createObserver$lambda$29$lambda$25$lambda$24(this.f48570b, (AppException) obj);
                }
            }, (Function0) null, 8, (Object) null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:76:0x015e  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit createObserver$lambda$29$lambda$25$lambda$23(GameDetailFragment gameDetailFragment, GameDetailDataBean gameDetailDataBean) {
        GameDetailBean discount_data;
        Long app_size;
        Integer game_status;
        List<String> pics;
        Integer on_off;
        GameDetailBasicInfoBean basic_info;
        if (gameDetailDataBean != null && (discount_data = gameDetailDataBean.getDiscount_data()) != null) {
            com.kingja.loadsir.core.b<Object> bVar = gameDetailFragment.loadSir;
            if (bVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                bVar = null;
            }
            bVar.h();
            String defaultBtnImage = ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getDefaultBtnImage();
            if (!(defaultBtnImage == null || defaultBtnImage.length() == 0) && (basic_info = discount_data.getBasic_info()) != null) {
                basic_info.setDownload_btn_pic(((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getDefaultBtnImage());
            }
            String top_bg_color = discount_data.getTop_bg_color();
            if (top_bg_color == null) {
                top_bg_color = "#503835";
            }
            gameDetailFragment.topBgColor = top_bg_color;
            gameDetailFragment.setTopMask();
            gameDetailFragment.getMDatabind().f41375n.setVisibility(0);
            ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getGameInfo().setValue(discount_data);
            GameDetailBasicInfoBean basic_info2 = discount_data.getBasic_info();
            if ((basic_info2 == null || (on_off = basic_info2.getOn_off()) == null || on_off.intValue() != 0) ? false : true) {
                ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getProgress().setValue(0);
                ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getBtnText().setValue("已下架");
            } else {
                GameDetailBookingInfoBean booking_info = discount_data.getBooking_info();
                if ((booking_info == null || (game_status = booking_info.getGame_status()) == null || game_status.intValue() != 2) ? false : true) {
                    ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getProgress().setValue(0);
                    ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getBtnText().setValue("即将上线");
                } else {
                    GameDetailBasicInfoBean basic_info3 = discount_data.getBasic_info();
                    if (((basic_info3 == null || (app_size = basic_info3.getApp_size()) == null) ? 0L : app_size.longValue()) > 0) {
                        if (((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getDownloadTask().getValue() == null) {
                            ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getProgress().setValue(100);
                            ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getBtnText().setValue("下载");
                        } else {
                            DownloadTask value = ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getDownloadTask().getValue();
                            if (value != null && value.getStatus() == 0) {
                                ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getProgress().setValue(100);
                                ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getBtnText().setValue("下载");
                            } else {
                                DownloadTask value2 = ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getDownloadTask().getValue();
                                if (value2 != null && value2.getStatus() == 7) {
                                    ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getProgress().setValue(100);
                                    ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getBtnText().setValue("下载");
                                } else {
                                    DownloadTask value3 = ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getDownloadTask().getValue();
                                    if (value3 != null && value3.getStatus() == 6) {
                                        ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getProgress().setValue(100);
                                        ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getBtnText().setValue("下载");
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            GameDetailPicAndVideoInfoBean pic_video_info = discount_data.getPic_video_info();
            if (pic_video_info != null) {
                if (pic_video_info.getVideo_url() != null) {
                    arrayList.add(new GameDetailBannerEntityBean(1, pic_video_info));
                }
                Integer pic_position = pic_video_info.getPic_position();
                if (pic_position != null && pic_position.intValue() == 0) {
                    List<String> pics2 = pic_video_info.getPics();
                    if (pics2 != null) {
                        Iterator<T> it2 = pics2.iterator();
                        while (it2.hasNext()) {
                            arrayList.add(new GameDetailBannerEntityBean(2, (String) it2.next()));
                        }
                    }
                } else {
                    Integer pic_position2 = pic_video_info.getPic_position();
                    if (pic_position2 != null && pic_position2.intValue() == 1 && (pics = pic_video_info.getPics()) != null) {
                        Iterator<T> it3 = pics.iterator();
                        while (it3.hasNext()) {
                            arrayList.add(new GameDetailBannerEntityBean(4, (String) it3.next()));
                        }
                    }
                }
            }
            arrayList.add(new GameDetailBannerEntityBean(5, null));
            gameDetailFragment.getBannerAdapter().setClick(gameDetailFragment);
            gameDetailFragment.getBannerAdapter().submitList(arrayList);
            gameDetailFragment.getMDatabind().f41385x.removeAllViews();
            int iMax = Math.max(arrayList.size() - 1, 1);
            if (1 <= iMax) {
                int i10 = 1;
                while (true) {
                    ViewDataBinding viewDataBindingInflate = DataBindingUtil.inflate(LayoutInflater.from(gameDetailFragment.requireContext()), R.layout.item_detail_banner_indicator, null, false);
                    Intrinsics.checkNotNullExpressionValue(viewDataBindingInflate, "inflate(...)");
                    az azVar = (az) viewDataBindingInflate;
                    azVar.n(Boolean.valueOf(i10 == 1));
                    gameDetailFragment.getMDatabind().f41385x.addView(azVar.getRoot());
                    if (i10 == iMax) {
                        break;
                    }
                    i10++;
                }
            }
            gameDetailFragment.playVideo();
            ArrayList arrayList2 = new ArrayList();
            GameDetailBasicInfoBean basic_info4 = discount_data.getBasic_info();
            if (basic_info4 != null) {
                Integer numValueOf = Integer.valueOf(R.drawable.ic_discount_game_info_age);
                String fit_age = basic_info4.getFit_age();
                Boolean bool = Boolean.TRUE;
                arrayList2.add(new GameDetailInfoItemBean(numValueOf, "适合年龄", fit_age, bool));
                Integer numValueOf2 = Integer.valueOf(R.drawable.ic_discount_game_info_producer);
                String company_name = basic_info4.getCompany_name();
                Boolean bool2 = Boolean.FALSE;
                arrayList2.add(new GameDetailInfoItemBean(numValueOf2, "厂商信息", company_name, bool2));
                arrayList2.add(new GameDetailInfoItemBean(Integer.valueOf(R.drawable.ic_discount_game_info_version), "软件版本", basic_info4.getVer_name(), bool2));
                arrayList2.add(new GameDetailInfoItemBean(Integer.valueOf(R.drawable.ic_discount_game_info_perimission), "权限信息", "查看", bool));
                arrayList2.add(new GameDetailInfoItemBean(Integer.valueOf(R.drawable.ic_discount_game_info_privacy), "隐私政策", "查看", bool));
            }
            gameDetailFragment.getInfoAdapter().submitList(arrayList2);
            List<String> benefits = discount_data.getBenefits();
            if (benefits != null) {
                gameDetailFragment.getReleaseWelfareAdapter().submitList(benefits);
            }
        }
        if (((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getAutoDownload()) {
            gameDetailFragment.downBtnClick();
        }
        if (gameDetailFragment.showNewServer) {
            gameDetailFragment.goServer();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$29$lambda$25$lambda$24(GameDetailFragment gameDetailFragment, AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        ToastManager.show(it2.getErrorMsg());
        com.kingja.loadsir.core.b<Object> bVar = gameDetailFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showError$default(bVar, null, 1, null);
        gameDetailFragment.getMDatabind().f41375n.setVisibility(8);
        gameDetailFragment.setTopMask();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit createObserver$lambda$29$lambda$26(GameDetailFragment gameDetailFragment, ListDataUiState listDataUiState) {
        if (listDataUiState == null || !(!listDataUiState.getListData().isEmpty())) {
            ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getShowComment().setValue(Boolean.FALSE);
        } else {
            ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getShowComment().setValue(Boolean.TRUE);
            gameDetailFragment.getCommentAdapter().submitList(listDataUiState.getListData());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit createObserver$lambda$29$lambda$27(GameDetailFragment gameDetailFragment, CommentStatisticDataBean commentStatisticDataBean) {
        String good_rate;
        MutableLiveData<Boolean> showAvgDuration = ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getShowAvgDuration();
        String avg_duration = commentStatisticDataBean != null ? commentStatisticDataBean.getAvg_duration() : null;
        showAvgDuration.setValue(Boolean.valueOf(!(avg_duration == null || avg_duration.length() == 0)));
        MutableLiveData<String> goodRate = ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getGoodRate();
        if (commentStatisticDataBean == null || (good_rate = commentStatisticDataBean.getGood_rate()) == null) {
            good_rate = "100%";
        }
        goodRate.setValue(good_rate);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$29$lambda$28(GameDetailFragment gameDetailFragment, ListDataUiState listDataUiState) {
        if (listDataUiState.isRefresh()) {
            gameDetailFragment.getSimilarAdapter().submitList(listDataUiState.getListData());
        } else {
            gameDetailFragment.getSimilarAdapter().addAll(listDataUiState.getListData());
        }
        gameDetailFragment.getMDatabind().D.loadMoreComplete();
        ArrayList listData = listDataUiState.getListData();
        if (listData == null || listData.isEmpty()) {
            gameDetailFragment.getMDatabind().D.setNoMore();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GameDetailBannerAdapter getBannerAdapter() {
        return (GameDetailBannerAdapter) this.bannerAdapter.getValue();
    }

    private final GameDetailCommentAdapter getCommentAdapter() {
        return (GameDetailCommentAdapter) this.commentAdapter.getValue();
    }

    private final GameDetailInfoAdapter getInfoAdapter() {
        return (GameDetailInfoAdapter) this.infoAdapter.getValue();
    }

    private final GameDetailReleaseWelfareAdapter getReleaseWelfareAdapter() {
        return (GameDetailReleaseWelfareAdapter) this.releaseWelfareAdapter.getValue();
    }

    private final GameDetailSimilarGameAdapter getSimilarAdapter() {
        return (GameDetailSimilarGameAdapter) this.similarAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameDetailInfoAdapter infoAdapter_delegate$lambda$1() {
        return new GameDetailInfoAdapter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$10(GameDetailFragment gameDetailFragment) {
        if (gameDetailFragment.lastRvRelaseWelfareHeight == gameDetailFragment.getMDatabind().C.getHeight() || gameDetailFragment.isReleaseWelfareExpand) {
            return;
        }
        gameDetailFragment.lastRvRelaseWelfareHeight = gameDetailFragment.getMDatabind().C.getHeight();
        if (gameDetailFragment.getMDatabind().C.getHeight() <= gameDetailFragment.getResources().getDimension(R.dimen.wdp440)) {
            gameDetailFragment.getMDatabind().f41384w.setVisibility(8);
            FrameLayout frameLayout = gameDetailFragment.getMDatabind().f41368g;
            ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
            layoutParams.height = -2;
            frameLayout.setLayoutParams(layoutParams);
            return;
        }
        gameDetailFragment.getMDatabind().f41384w.setVisibility(0);
        FrameLayout frameLayout2 = gameDetailFragment.getMDatabind().f41368g;
        ViewGroup.LayoutParams layoutParams2 = frameLayout2.getLayoutParams();
        layoutParams2.height = (int) frameLayout2.getResources().getDimension(R.dimen.wdp478);
        frameLayout2.setLayoutParams(layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$11(GameDetailFragment gameDetailFragment, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<unused var>");
        Intrinsics.checkNotNullParameter(view, "<unused var>");
        IntentUtil intentUtil = IntentUtil.getInstance();
        Context contextRequireContext = gameDetailFragment.requireContext();
        CollectionBeanSub collectionBeanSub = gameDetailFragment.getSimilarAdapter().getItems().get(i10);
        intentUtil.goGameDetialActivity(contextRequireContext, collectionBeanSub != null ? collectionBeanSub.getGame_id() : null, 217);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$6(GameDetailFragment gameDetailFragment) {
        com.kingja.loadsir.core.b<Object> bVar = gameDetailFragment.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        gameDetailFragment.loadData(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$7(GameDetailFragment gameDetailFragment, BaseQuickAdapter adapter, View view, int i10) {
        GameDetailBasicInfoBean basic_info;
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<unused var>");
        String title = ((GameDetailInfoItemBean) adapter.getItems().get(i10)).getTitle();
        if (title != null) {
            int iHashCode = title.hashCode();
            if (iHashCode == 825162971) {
                if (title.equals("权限信息")) {
                    GameDetailBean value = ((GameDetailFragmentViewModel) gameDetailFragment.getMViewModel()).getGameInfo().getValue();
                    List<GameDetailDialogInfoBean> permissions = (value == null || (basic_info = value.getBasic_info()) == null) ? null : basic_info.getPermissions();
                    Intent intent = new Intent(gameDetailFragment.requireContext(), (Class<?>) GameDetailInfoBottomDialogActivity.class);
                    intent.putExtra("title", "权限信息");
                    intent.putExtra("content", JsonMapper.getInstance().toJson(permissions));
                    intent.putExtra("btnText", "我知道了");
                    gameDetailFragment.startActivity(intent);
                    return;
                }
                return;
            }
            if (iHashCode != 1119738454) {
                if (iHashCode == 1179052776 && title.equals("隐私政策")) {
                    Intent intent2 = new Intent(gameDetailFragment.requireContext(), (Class<?>) CommonBottomDialogActivity.class);
                    intent2.putExtra("title", "隐私政策");
                    intent2.putExtra("content", "请进入游戏中自行查看");
                    intent2.putExtra("btnText", "我知道了");
                    gameDetailFragment.startActivity(intent2);
                    return;
                }
                return;
            }
            if (title.equals("适合年龄")) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new GameDetailDialogInfoBean("8岁以上", "适合8周岁以上的未成年人使用的游戏，玩法简单、单局耗时短、如简单的休闲益智类、解密类、模拟养成/经营类、音乐舞蹈类和塔防类游戏等。"));
                arrayList.add(new GameDetailDialogInfoBean("12岁以上", "适合12周岁以上的未成年人使用的游戏。玩法相对复杂，需投入一定的时间精力。如跑酷竞速类、角色扮演类、沙盒类、音乐舞蹈类、体育类、策略类和动作冒险类游戏。"));
                arrayList.add(new GameDetailDialogInfoBean("16岁以上", "适合16周岁以上的未成年人使用的游戏。玩法复杂，投入精力较多，游戏流程耗时较长。如内容操作复杂的角色扮演类、动作冒险类、射击竞技类和体育竞技类等游戏。"));
                arrayList.add(new GameDetailDialogInfoBean("18岁以上", "适合18周岁以上的成年人使用的游戏。为维护未成年人健康上网环境，18+类型游戏暂不支持实名认证18岁以下的用户登录体验。"));
                Intent intent3 = new Intent(gameDetailFragment.requireContext(), (Class<?>) GameDetailInfoBottomDialogActivity.class);
                intent3.putExtra("title", "年龄分级");
                intent3.putExtra("content", JsonMapper.getInstance().toJson(arrayList));
                intent3.putExtra("btnText", "我知道了");
                gameDetailFragment.startActivity(intent3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void playVideo$lambda$14(GameDetailFragment gameDetailFragment) {
        com.join.android.app.component.video.h hVar;
        if (gameDetailFragment.hasDestroyed || !(com.join.android.app.common.utils.q.x() instanceof GamedetailVideoMainActivity) || (hVar = gameDetailFragment.videoHelper) == null) {
            return;
        }
        hVar.i(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameDetailReleaseWelfareAdapter releaseWelfareAdapter_delegate$lambda$2() {
        return new GameDetailReleaseWelfareAdapter();
    }

    private final void setTopMask() {
        try {
            String notLightColor = getNotLightColor(this.topBgColor);
            this.topBgColor = notLightColor == null ? "#503835" : notLightColor;
            ViewGroup.LayoutParams layoutParams = getMDatabind().L.getLayoutParams();
            FragmentActivity activity = getActivity();
            GamedetailVideoMainActivity gamedetailVideoMainActivity = activity instanceof GamedetailVideoMainActivity ? (GamedetailVideoMainActivity) activity : null;
            layoutParams.height = gamedetailVideoMainActivity != null ? gamedetailVideoMainActivity.getTabBottom() : 0;
            getMDatabind().L.setLayoutParams(layoutParams);
            getMDatabind().L.setBackgroundColor(Color.parseColor(notLightColor));
            getMDatabind().f41366e.setBackgroundColor(Color.parseColor(notLightColor));
            getMDatabind().f41363b.setBackgroundColor(Color.parseColor(notLightColor));
            String strReplace$default = notLightColor != null ? StringsKt__StringsJVMKt.replace$default(notLightColor, "#", "", false, 4, (Object) null) : null;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
            gradientDrawable.setColors(new int[]{Color.parseColor("#FF" + strReplace$default), Color.parseColor("#00" + strReplace$default)});
            gradientDrawable.setGradientType(0);
            getMDatabind().f41383v.setBackground(gradientDrawable);
            getMDatabind().f41382u.setBackground(gradientDrawable);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private final void showDownDialog() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameDetailSimilarGameAdapter similarAdapter_delegate$lambda$4() {
        return new GameDetailSimilarGameAdapter();
    }

    private final void volcanoCheck(String gameId) {
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void admireBigR() {
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void bookGame() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void clickGameInfoTitle() {
        if (Intrinsics.areEqual(((GameDetailFragmentViewModel) getMViewModel()).getShowGameInfo().getValue(), Boolean.FALSE)) {
            ((GameDetailFragmentViewModel) getMViewModel()).getShowGameInfo().setValue(Boolean.valueOf(!Intrinsics.areEqual(((GameDetailFragmentViewModel) getMViewModel()).getShowGameInfo().getValue(), Boolean.TRUE)));
        }
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void clickGoodRate() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void createObserver() {
        GameDetailFragmentViewModel gameDetailFragmentViewModel = (GameDetailFragmentViewModel) getMViewModel();
        gameDetailFragmentViewModel.getGameResult().observe(this, new GameDetailFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.discount.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailFragment.createObserver$lambda$29$lambda$25(this.f48569b, (ResultState) obj);
            }
        }));
        gameDetailFragmentViewModel.getCommentListData().observe(this, new GameDetailFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.discount.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailFragment.createObserver$lambda$29$lambda$26(this.f48577b, (ListDataUiState) obj);
            }
        }));
        gameDetailFragmentViewModel.getCommentStatistic().observe(this, new GameDetailFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.discount.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailFragment.createObserver$lambda$29$lambda$27(this.f48578b, (CommentStatisticDataBean) obj);
            }
        }));
        gameDetailFragmentViewModel.getSimilarListData().observe(this, new GameDetailFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.discount.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailFragment.createObserver$lambda$29$lambda$28(this.f48579b, (ListDataUiState) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void downBtnClick() {
        String gameId;
        GameDetailBookingInfoBean booking_info;
        Integer game_status;
        GameDetailBasicInfoBean basic_info;
        Integer on_off;
        GameDetailBean value = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
        if ((value == null || (basic_info = value.getBasic_info()) == null || (on_off = basic_info.getOn_off()) == null || on_off.intValue() != 0) ? false : true) {
            return;
        }
        GameDetailBean value2 = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
        if (((value2 == null || (booking_info = value2.getBooking_info()) == null || (game_status = booking_info.getGame_status()) == null || game_status.intValue() != 2) ? false : true) || (gameId = ((GameDetailFragmentViewModel) getMViewModel()).getGameId()) == null) {
            return;
        }
        DownloadTask value3 = ((GameDetailFragmentViewModel) getMViewModel()).getDownloadTask().getValue();
        if (value3 == null) {
            applyDetailBottomDownloadExt();
            UtilsMy.Y0(requireContext(), ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue());
            ((GameDetailFragmentViewModel) getMViewModel()).getBtnText().setValue("0%");
            ((GameDetailFragmentViewModel) getMViewModel()).getProgress().setValue(0);
            showDownDialog();
            volcanoCheck(gameId);
            return;
        }
        int status = value3.getStatus();
        if (status != 0) {
            if (status != 42) {
                if (status != 2) {
                    if (status == 3) {
                        applyDetailBottomDownloadExt();
                        com.php25.PDownload.d.c(value3, requireContext());
                        return;
                    } else if (status == 5) {
                        UtilsMy.k4(requireContext(), value3);
                        return;
                    } else if (status != 6 && status != 7) {
                        switch (status) {
                            case 11:
                                UtilsMy.w4(value3, requireContext());
                                break;
                        }
                        return;
                    }
                }
                com.php25.PDownload.d.i(value3);
                return;
            }
            UtilsMy.Y0(requireContext(), ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue());
            return;
        }
        applyDetailBottomDownloadExt();
        UtilsMy.Y0(requireContext(), ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue());
        showDownDialog();
        volcanoCheck(gameId);
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void expandReleaseWelfare() {
        this.isReleaseWelfareExpand = true;
        getMDatabind().f41384w.setVisibility(8);
        FrameLayout frameLayout = getMDatabind().f41368g;
        ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
        layoutParams.height = -2;
        frameLayout.setLayoutParams(layoutParams);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int getCanRecycleAccountCount() {
        Integer recycle_number;
        GameDetailBean value = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
        if (value == null || (recycle_number = value.getRecycle_number()) == null) {
            return 0;
        }
        return recycle_number.intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int getCanSellAcountCount() {
        Integer sell_number;
        GameDetailBean value = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
        if (value == null || (sell_number = value.getSell_number()) == null) {
            return 0;
        }
        return sell_number.intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final String getGoodRate() {
        String value = ((GameDetailFragmentViewModel) getMViewModel()).getGoodRate().getValue();
        return value == null ? "100%" : value;
    }

    @Nullable
    public final String getNotLightColor(@Nullable String color) {
        try {
            if (TextUtils.isEmpty(color)) {
                return "#503835";
            }
            int color2 = Color.parseColor(color);
            if ((((double) Color.red(color2)) * 0.299d) + (((double) Color.green(color2)) * 0.587d) + (((double) Color.blue(color2)) * 0.114d) >= 192.0d) {
                color = "#503835";
            }
            return color;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "#503835";
        }
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void goComment() {
        FragmentActivity activity = getActivity();
        GamedetailVideoMainActivity gamedetailVideoMainActivity = activity instanceof GamedetailVideoMainActivity ? (GamedetailVideoMainActivity) activity : null;
        if (gamedetailVideoMainActivity != null) {
            gamedetailVideoMainActivity.selectTab(1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void goCoupon() {
        GameDetailBasicInfoBean basic_info;
        CommonComponentBean coupon_info;
        Integer show;
        GameDetailBean value = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
        boolean z10 = false;
        if (value != null && (coupon_info = value.getCoupon_info()) != null && (show = coupon_info.getShow()) != null && show.intValue() == 0) {
            z10 = true;
        }
        if (z10) {
            a3.b(requireContext()).d("暂无代金券信息");
            return;
        }
        Intent intent = new Intent(getActivity(), (Class<?>) GameDetailCouponActivity.class);
        intent.putExtra("gameId", ((GameDetailFragmentViewModel) getMViewModel()).getGameId());
        GameDetailBean value2 = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
        intent.putExtra("gamePkg", (value2 == null || (basic_info = value2.getBasic_info()) == null) ? null : basic_info.getPackage_name());
        startActivity(intent);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void goEvent() {
        boolean z10;
        GameDetailNoticeBean game_notice_info;
        GameDetailBean value = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
        if (value != null) {
            z10 = value.showEvent();
        }
        if (!z10) {
            a3.b(requireContext()).d("暂无返利信息");
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        GameDetailBean value2 = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
        intentDateBean.setLink_type_val((value2 == null || (game_notice_info = value2.getGame_notice_info()) == null) ? null : game_notice_info.getJumpListUrl());
        ShareWebActivity_.intent(getContext()).b(intentDateBean).d(false).start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void goGift() {
        CommonComponentBean gift_info;
        Integer show;
        GameDetailBean value = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
        boolean z10 = false;
        if (value != null && (gift_info = value.getGift_info()) != null && (show = gift_info.getShow()) != null && show.intValue() == 0) {
            z10 = true;
        }
        if (z10) {
            a3.b(requireContext()).d("暂无礼包信息");
            return;
        }
        Intent intent = new Intent(getActivity(), (Class<?>) GameDetailGiftActivity.class);
        intent.putExtra("gameId", ((GameDetailFragmentViewModel) getMViewModel()).getGameId());
        startActivity(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void goServer() {
        Intent intent = new Intent(getActivity(), (Class<?>) GameDetailServerBookDialogActivity.class);
        intent.putExtra("gameId", ((GameDetailFragmentViewModel) getMViewModel()).getGameId());
        startActivity(intent);
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void goTrade() {
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void horizontalPicClick(@Nullable String url) {
        try {
            ArrayList arrayList = new ArrayList();
            List<GameDetailBannerEntityBean> items = getBannerAdapter().getItems();
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it2 = items.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                GameDetailBannerEntityBean gameDetailBannerEntityBean = (GameDetailBannerEntityBean) next;
                if (gameDetailBannerEntityBean.getViewType() == 2 || gameDetailBannerEntityBean.getViewType() == 4) {
                    arrayList2.add(next);
                }
            }
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10));
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                Object data = ((GameDetailBannerEntityBean) it3.next()).getData();
                Intrinsics.checkNotNull(data, "null cannot be cast to non-null type kotlin.String");
                arrayList3.add((String) data);
            }
            arrayList.addAll(arrayList3);
            Intent intent = new Intent(requireContext(), (Class<?>) ImagePagerActivity.class);
            intent.putExtra("image_urls", (String[]) arrayList.toArray(new String[0]));
            intent.putExtra("image_index", CollectionsKt___CollectionsKt.indexOf((List<? extends String>) ((List<? extends Object>) arrayList), url));
            startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void initView(@Nullable Bundle savedInstanceState) {
        com.join.mgps.Util.j0 j0VarA = com.join.mgps.Util.j0.a();
        if (!j0VarA.b(this)) {
            j0VarA.d(this);
        }
        getMDatabind().u((GameDetailFragmentViewModel) getMViewModel());
        getMDatabind().t(this);
        NestedScrollView nes = getMDatabind().f41386y;
        Intrinsics.checkNotNullExpressionValue(nes, "nes");
        this.loadSir = CustomViewExtKt.loadServiceInit(nes, new Function0() { // from class: com.join.kotlin.discount.u
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return GameDetailFragment.initView$lambda$6(this.f48580b);
            }
        });
        GameDetailFragmentViewModel gameDetailFragmentViewModel = (GameDetailFragmentViewModel) getMViewModel();
        Bundle arguments = getArguments();
        com.kingja.loadsir.core.b<Object> bVar = null;
        gameDetailFragmentViewModel.setGameId(arguments != null ? arguments.getString("gameId") : null);
        GameDetailFragmentViewModel gameDetailFragmentViewModel2 = (GameDetailFragmentViewModel) getMViewModel();
        Bundle arguments2 = getArguments();
        gameDetailFragmentViewModel2.setDefaultBtnImage(arguments2 != null ? arguments2.getString("defaultBtnImage") : null);
        GameDetailFragmentViewModel gameDetailFragmentViewModel3 = (GameDetailFragmentViewModel) getMViewModel();
        Bundle arguments3 = getArguments();
        gameDetailFragmentViewModel3.setAutoDownload(arguments3 != null ? arguments3.getBoolean("autoDownload", false) : false);
        Bundle arguments4 = getArguments();
        this.showNewServer = arguments4 != null ? arguments4.getBoolean("showNewServer", false) : false;
        JsonMapper jsonMapper = JsonMapper.getInstance();
        Bundle arguments5 = getArguments();
        ExtBean extBean = (ExtBean) jsonMapper.fromJson(arguments5 != null ? arguments5.getString("parentExtBean") : null, ExtBean.class);
        this.parentExtBean = extBean;
        this.pageExtBean.setParent(extBean);
        ViewGroup.LayoutParams layoutParams = getMDatabind().L.getLayoutParams();
        layoutParams.height = com.join.android.app.common.utils.q.v(requireContext()) + ((int) getResources().getDimension(R.dimen.wdp97));
        getMDatabind().L.setLayoutParams(layoutParams);
        this.videoHelper = new com.join.android.app.component.video.h(getMDatabind().f41363b, "detailBanner");
        getMDatabind().f41363b.setLayoutManager(new LinearLayoutManager(requireContext(), 0, false));
        getMDatabind().f41363b.setAdapter(getBannerAdapter());
        new LinearSnapHelper().attachToRecyclerView(getMDatabind().f41363b);
        getMDatabind().f41363b.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.discount.GameDetailFragment.initView.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                int childCount;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 0) {
                    GameDetailFragment.this.playVideo();
                    try {
                        RecyclerView.LayoutManager layoutManager = GameDetailFragment.this.getMDatabind().f41363b.getLayoutManager();
                        Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
                        int iFindFirstCompletelyVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
                        RecyclerView.LayoutManager layoutManager2 = GameDetailFragment.this.getMDatabind().f41363b.getLayoutManager();
                        Intrinsics.checkNotNull(layoutManager2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
                        int iFindFirstVisibleItemPosition = ((LinearLayoutManager) layoutManager2).findFirstVisibleItemPosition();
                        RecyclerView.LayoutManager layoutManager3 = GameDetailFragment.this.getMDatabind().f41363b.getLayoutManager();
                        Intrinsics.checkNotNull(layoutManager3, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
                        int iFindLastCompletelyVisibleItemPosition = ((LinearLayoutManager) layoutManager3).findLastCompletelyVisibleItemPosition();
                        if (iFindFirstCompletelyVisibleItemPosition >= 0) {
                            if (iFindFirstCompletelyVisibleItemPosition != GameDetailFragment.this.currentIndicatorPosition || iFindLastCompletelyVisibleItemPosition == GameDetailFragment.this.getBannerAdapter().getItemCount() - 1) {
                                if (GameDetailFragment.this.currentIndicatorPosition == GameDetailFragment.this.getMDatabind().f41385x.getChildCount() - 1 && iFindFirstCompletelyVisibleItemPosition == GameDetailFragment.this.firstCompletelyVisibleWhenIndicatorShowLast) {
                                    return;
                                }
                                int childCount2 = GameDetailFragment.this.getMDatabind().f41385x.getChildCount();
                                int i10 = 0;
                                while (i10 < childCount2) {
                                    az azVar = (az) DataBindingUtil.getBinding(GameDetailFragment.this.getMDatabind().f41385x.getChildAt(i10));
                                    if (azVar != null) {
                                        if (iFindLastCompletelyVisibleItemPosition == GameDetailFragment.this.getBannerAdapter().getItemCount() - 1) {
                                            childCount = GameDetailFragment.this.getMDatabind().f41385x.getChildCount() - 1;
                                        } else if (iFindFirstCompletelyVisibleItemPosition == 0 && iFindFirstVisibleItemPosition == 0) {
                                            childCount = 0;
                                        } else {
                                            childCount = (iFindFirstCompletelyVisibleItemPosition == 1 && iFindFirstVisibleItemPosition == 0) ? 1 : iFindFirstCompletelyVisibleItemPosition;
                                        }
                                        azVar.n(Boolean.valueOf(i10 == childCount));
                                    }
                                    if (azVar != null ? Intrinsics.areEqual(azVar.d(), Boolean.TRUE) : false) {
                                        GameDetailFragment.this.currentIndicatorPosition = i10;
                                        if (iFindLastCompletelyVisibleItemPosition == GameDetailFragment.this.getBannerAdapter().getItemCount() - 1) {
                                            GameDetailFragment.this.firstCompletelyVisibleWhenIndicatorShowLast = iFindFirstCompletelyVisibleItemPosition;
                                        } else {
                                            GameDetailFragment.this.firstCompletelyVisibleWhenIndicatorShowLast = -1;
                                        }
                                    }
                                    i10++;
                                }
                            }
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        });
        getMDatabind().B.setLayoutManager(new LinearLayoutManager(getActivity()) { // from class: com.join.kotlin.discount.GameDetailFragment.initView.4
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean canScrollVertically() {
                return false;
            }
        });
        getMDatabind().B.setAdapter(getInfoAdapter());
        getInfoAdapter().setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.discount.v
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                GameDetailFragment.initView$lambda$7(this.f48581a, baseQuickAdapter, view, i10);
            }
        });
        getMDatabind().C.setLayoutManager(new LinearLayoutManager(requireContext()) { // from class: com.join.kotlin.discount.GameDetailFragment.initView.6
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean canScrollVertically() {
                return false;
            }
        });
        getMDatabind().C.setAdapter(getReleaseWelfareAdapter());
        getMDatabind().C.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.discount.GameDetailFragment.initView.7
            @Override // com.join.mgps.base.decoration.b
            public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int i10) {
                com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
                aVar.f64116f = 0;
                if (i10 == 0) {
                    aVar.f64119c = 0;
                } else {
                    aVar.f64119c = (int) GameDetailFragment.this.getResources().getDimension(R.dimen.wdp15);
                }
                return aVar;
            }
        });
        ViewTreeObserver viewTreeObserver = getMDatabind().C.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.join.kotlin.discount.w
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    GameDetailFragment.initView$lambda$10(this.f48599b);
                }
            });
        }
        getMDatabind().A.setLayoutManager(new LinearLayoutManager(requireContext()) { // from class: com.join.kotlin.discount.GameDetailFragment.initView.9
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean canScrollVertically() {
                return false;
            }
        });
        getCommentAdapter().setClick(this);
        getMDatabind().A.setAdapter(getCommentAdapter());
        RecyclerView.ItemAnimator itemAnimator = getMDatabind().A.getItemAnimator();
        Intrinsics.checkNotNull(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
        getMDatabind().D.setLayoutManager(new GridLayoutManager(requireContext()) { // from class: com.join.kotlin.discount.GameDetailFragment.initView.10
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean canScrollVertically() {
                return false;
            }
        });
        getSimilarAdapter().setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.discount.x
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                GameDetailFragment.initView$lambda$11(this.f48600a, baseQuickAdapter, view, i10);
            }
        });
        getMDatabind().D.setAdapter(getSimilarAdapter());
        getMDatabind().f41386y.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() { // from class: com.join.kotlin.discount.GameDetailFragment.initView.12
            @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
            public void onScrollChange(NestedScrollView v10, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
                GamedetailVideoMainActivity gamedetailVideoMainActivity;
                Intrinsics.checkNotNullParameter(v10, "v");
                int[] iArr = {0, 0};
                GameDetailFragment.this.getMDatabind().f41364c.getLocationInWindow(iArr);
                if (iArr[1] < 0) {
                    if (!GameDetailFragment.this.isPause) {
                        com.join.android.app.component.video.h hVar = GameDetailFragment.this.videoHelper;
                        if (hVar != null) {
                            hVar.y();
                        }
                        FragmentActivity activity = GameDetailFragment.this.getActivity();
                        gamedetailVideoMainActivity = activity instanceof GamedetailVideoMainActivity ? (GamedetailVideoMainActivity) activity : null;
                        if (gamedetailVideoMainActivity != null) {
                            gamedetailVideoMainActivity.setTabIsDarkColor(true);
                        }
                        GameDetailFragment.this.getMDatabind().L.setBackgroundColor(Color.parseColor("#ffffff"));
                        GameDetailFragment.this.isPause = true;
                    }
                } else if (GameDetailFragment.this.isPause) {
                    GameDetailFragment.this.playVideo();
                    FragmentActivity activity2 = GameDetailFragment.this.getActivity();
                    gamedetailVideoMainActivity = activity2 instanceof GamedetailVideoMainActivity ? (GamedetailVideoMainActivity) activity2 : null;
                    if (gamedetailVideoMainActivity != null) {
                        gamedetailVideoMainActivity.setTabIsDarkColor(false);
                    }
                    GameDetailFragment.this.getMDatabind().L.setBackgroundColor(Color.parseColor(GameDetailFragment.this.topBgColor));
                    GameDetailFragment.this.isPause = false;
                }
                if (scrollY != v10.getChildAt(0).getMeasuredHeight() - v10.getMeasuredHeight() || GameDetailFragment.this.getMDatabind().D.getIsNoMore()) {
                    return;
                }
                GameDetailFragment.this.loadSimilarGame(false);
            }
        });
        try {
            Ext ext = new Ext();
            ext.setResultCode("discount_game");
            ext.setScenesCode(GameDetailFragment.class.getSimpleName());
            Data data = new Data();
            data.setGameId(((GameDetailFragmentViewModel) getMViewModel()).getGameId());
            com.papa.sim.statistic.t.l(getContext()).Y(Event.expGameAdPage, ext, data);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        com.papa.sim.statistic.t.l(getContext()).R1(Event.commonExp, this.pageExtBean.buildScene().toExt());
        com.kingja.loadsir.core.b<Object> bVar2 = this.loadSir;
        if (bVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
        } else {
            bVar = bVar2;
        }
        CustomViewExtKt.showLoading(bVar);
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public void lazyLoadData() {
        com.kingja.loadsir.core.b<Object> bVar = this.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        loadDbData();
    }

    @Override // com.join.kotlin.discount.proxy.ItemGameDetailCommentListClickProxy
    public void like(@Nullable CommentDetailBean bean) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadData(boolean refresh) {
        ((GameDetailFragmentViewModel) getMViewModel()).getGameDetail();
        if (refresh) {
            ((GameDetailFragmentViewModel) getMViewModel()).getCommentList();
            ((GameDetailFragmentViewModel) getMViewModel()).getCommentStatisticData();
            loadSimilarGame(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadDbData() {
        loadData(true);
        ((GameDetailFragmentViewModel) getMViewModel()).getCommentList();
        ((GameDetailFragmentViewModel) getMViewModel()).getCommentStatisticData();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadSimilarGame(boolean refresh) {
        ((GameDetailFragmentViewModel) getMViewModel()).getSimilarGames(refresh);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void onAdClick() {
        List<CommonGameInfoBean> ad2;
        GameDetailBean value = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
        if (value == null || (ad2 = value.getAd()) == null || !(!ad2.isEmpty())) {
            return;
        }
        IntentUtil intentUtil = IntentUtil.getInstance();
        Context contextRequireContext = requireContext();
        CommonGameInfoBean commonGameInfoBean = ad2.get(0);
        intentUtil.intentActivity(contextRequireContext, commonGameInfoBean != null ? commonGameInfoBean.getIntentDataBean() : null);
    }

    @Override // com.join.kotlin.base.fragment.BaseVmDbFragment, com.join.kotlin.base.fragment.BaseVmFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        this.hasDestroyed = true;
        com.join.mgps.Util.j0 j0VarA = com.join.mgps.Util.j0.a();
        if (j0VarA.b(this)) {
            j0VarA.e(this);
        }
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.x();
        }
        this.videoHelper = null;
        super.onDestroy();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0099  */
    /* JADX WARN: Multi-variable type inference failed */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull com.join.mgps.event.r downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        DownloadTask downloadTaskG = q5.f.M().G(((GameDetailFragmentViewModel) getMViewModel()).getGameId());
        if (downloadTaskG != null) {
            ((GameDetailFragmentViewModel) getMViewModel()).getDownloadTask().setValue(downloadTaskG);
            ((GameDetailFragmentViewModel) getMViewModel()).getProgress().setValue(Integer.valueOf((int) downloadTaskG.getProgress()));
            DownloadTask value = ((GameDetailFragmentViewModel) getMViewModel()).getDownloadTask().getValue();
            if (value != null && value.getStatus() == 5) {
                ((GameDetailFragmentViewModel) getMViewModel()).getProgress().setValue(100);
            } else {
                DownloadTask value2 = ((GameDetailFragmentViewModel) getMViewModel()).getDownloadTask().getValue();
                if (value2 != null && value2.getStatus() == 11) {
                    ((GameDetailFragmentViewModel) getMViewModel()).getProgress().setValue(100);
                } else {
                    DownloadTask value3 = ((GameDetailFragmentViewModel) getMViewModel()).getDownloadTask().getValue();
                    if (value3 != null && value3.getStatus() == 48) {
                        ((GameDetailFragmentViewModel) getMViewModel()).getProgress().setValue(100);
                    }
                }
            }
            ((GameDetailFragmentViewModel) getMViewModel()).getBtnText().setValue(UtilsMy.O1(downloadTaskG));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.y();
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x013b  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.fragment.BaseVmFragment, androidx.fragment.app.Fragment
    public void onResume() {
        String strO1;
        GameDetailBookingInfoBean booking_info;
        Integer game_status;
        GameDetailBasicInfoBean basic_info;
        Integer on_off;
        super.onResume();
        q5.f fVarM = q5.f.M();
        DownloadTask downloadTaskG = fVarM != null ? fVarM.G(((GameDetailFragmentViewModel) getMViewModel()).getGameId()) : null;
        ((GameDetailFragmentViewModel) getMViewModel()).getDownloadTask().setValue(downloadTaskG);
        GameDetailBean value = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
        if ((value == null || (basic_info = value.getBasic_info()) == null || (on_off = basic_info.getOn_off()) == null || on_off.intValue() != 0) ? false : true) {
            ((GameDetailFragmentViewModel) getMViewModel()).getProgress().setValue(0);
            ((GameDetailFragmentViewModel) getMViewModel()).getBtnText().setValue("已下架");
        } else {
            GameDetailBean value2 = ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
            if ((value2 == null || (booking_info = value2.getBooking_info()) == null || (game_status = booking_info.getGame_status()) == null || game_status.intValue() != 2) ? false : true) {
                ((GameDetailFragmentViewModel) getMViewModel()).getProgress().setValue(0);
                ((GameDetailFragmentViewModel) getMViewModel()).getBtnText().setValue("即将上线");
            } else {
                ((GameDetailFragmentViewModel) getMViewModel()).getProgress().setValue(downloadTaskG != null ? Integer.valueOf((int) downloadTaskG.getProgress()) : 100);
                DownloadTask value3 = ((GameDetailFragmentViewModel) getMViewModel()).getDownloadTask().getValue();
                if (value3 != null && value3.getStatus() == 5) {
                    ((GameDetailFragmentViewModel) getMViewModel()).getProgress().setValue(100);
                } else {
                    DownloadTask value4 = ((GameDetailFragmentViewModel) getMViewModel()).getDownloadTask().getValue();
                    if (value4 != null && value4.getStatus() == 11) {
                        ((GameDetailFragmentViewModel) getMViewModel()).getProgress().setValue(100);
                    } else {
                        DownloadTask value5 = ((GameDetailFragmentViewModel) getMViewModel()).getDownloadTask().getValue();
                        if (value5 != null && value5.getStatus() == 48) {
                            ((GameDetailFragmentViewModel) getMViewModel()).getProgress().setValue(100);
                        }
                    }
                }
                MutableLiveData<String> btnText = ((GameDetailFragmentViewModel) getMViewModel()).getBtnText();
                if (downloadTaskG == null || (strO1 = UtilsMy.O1(downloadTaskG)) == null) {
                    strO1 = "下载";
                }
                btnText.setValue(strO1);
            }
        }
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.E();
        }
    }

    public final void playVideo() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.postDelayed(new Runnable() { // from class: com.join.kotlin.discount.y
                @Override // java.lang.Runnable
                public final void run() {
                    GameDetailFragment.playVideo$lambda$14(this.f48601b);
                }
            }, 200L);
        }
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void showBigRRule() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void showCommentStatistic(int i10) {
        Intent intent = new Intent(requireContext(), (Class<?>) GameDetailCommentDataActivity.class);
        intent.putExtra("commentData", JsonMapper.getInstance().toJson(((GameDetailFragmentViewModel) getMViewModel()).getCommentStatistic().getValue()));
        intent.putExtra("defaultIndex", i10);
        startActivity(intent);
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void supportBigR() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final GameDetailBean supportGameInfo() {
        return ((GameDetailFragmentViewModel) getMViewModel()).getGameInfo().getValue();
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void toMoreSubAccount() {
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void toRefundDetail() {
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy
    public void verticalPicClick(@Nullable String url) {
        try {
            ArrayList arrayList = new ArrayList();
            List<GameDetailBannerEntityBean> items = getBannerAdapter().getItems();
            ArrayList<GameDetailBannerEntityBean> arrayList2 = new ArrayList();
            Iterator<T> it2 = items.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (((GameDetailBannerEntityBean) next).getViewType() == 3) {
                    arrayList2.add(next);
                }
            }
            for (GameDetailBannerEntityBean gameDetailBannerEntityBean : arrayList2) {
                if (gameDetailBannerEntityBean.getData() instanceof List) {
                    Object data = gameDetailBannerEntityBean.getData();
                    Intrinsics.checkNotNull(data, "null cannot be cast to non-null type kotlin.collections.List<*>");
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj : (List) data) {
                        if (obj instanceof String) {
                            arrayList3.add(obj);
                        }
                    }
                    Iterator it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        arrayList.add((String) it3.next());
                    }
                }
            }
            Intent intent = new Intent(requireContext(), (Class<?>) ImagePagerActivity.class);
            intent.putExtra("image_urls", (String[]) arrayList.toArray(new String[0]));
            intent.putExtra("image_index", CollectionsKt___CollectionsKt.indexOf((List<? extends String>) ((List<? extends Object>) arrayList), url));
            startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
