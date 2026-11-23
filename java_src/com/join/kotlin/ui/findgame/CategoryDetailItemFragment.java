package com.join.kotlin.ui.findgame;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.d8;
import com.join.kotlin.EverdayNewFragment;
import com.join.kotlin.presenter.CategoryPrensenter;
import com.join.kotlin.presenter.view.CategoryView;
import com.join.kotlin.ui.findgame.data.CategoryListMain;
import com.join.kotlin.ui.findgame.data.CategoryRequest;
import com.join.kotlin.ui.findgame.data.CategroyIntentItemData;
import com.join.kotlin.ui.findgame.data.GameSubTypeData;
import com.join.kotlin.ui.findgame.data.GameTypeData;
import com.join.kotlin.ui.findgame.data.TagData;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.j0;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.event.r;
import com.join.mgps.fragment.j1;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.psk.kotlin.ext.CommonExtKt;
import com.psk.kotlin.util.CommonListMainData;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u0094\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0094\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J.\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020F2\u0006\u0010i\u001a\u00020F2\u0006\u0010j\u001a\u00020F2\u0006\u0010k\u001a\u00020F2\u0006\u0010l\u001a\u00020FJ&\u0010m\u001a\u0004\u0018\u00010n2\u0006\u0010o\u001a\u00020p2\b\u0010q\u001a\u0004\u0018\u00010r2\b\u0010s\u001a\u0004\u0018\u00010tH\u0016J\b\u0010u\u001a\u00020gH\u0002J\b\u0010v\u001a\u00020gH\u0002J\u0018\u0010w\u001a\u00020g2\u0006\u0010x\u001a\u00020\u001a2\u0006\u0010y\u001a\u00020zH\u0016J\b\u0010|\u001a\u00020gH\u0002J\u0010\u0010}\u001a\u00020g2\u0006\u0010~\u001a\u00020\u007fH\u0007J\t\u0010\u0080\u0001\u001a\u00020gH\u0002J\t\u0010\u0081\u0001\u001a\u00020gH\u0002J\t\u0010\u0082\u0001\u001a\u00020gH\u0002J\t\u0010\u0083\u0001\u001a\u00020gH\u0016J\t\u0010\u0084\u0001\u001a\u00020gH\u0014J\t\u0010\u008b\u0001\u001a\u00020gH\u0016J\t\u0010\u008c\u0001\u001a\u00020gH\u0016J\u0013\u0010\u008d\u0001\u001a\u00020g2\b\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u0016J\u0014\u0010\u0090\u0001\u001a\u00020g2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010nH\u0016J\u0012\u0010\u0092\u0001\u001a\u00020g2\u0007\u0010\u0093\u0001\u001a\u00020\u001aH\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001eR\u001a\u0010\"\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001c\"\u0004\b$\u0010\u001eR\u001a\u0010%\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001c\u0010+\u001a\u0004\u0018\u00010,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u00101\u001a\u00020,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010.\"\u0004\b3\u00100R \u00104\u001a\b\u0012\u0004\u0012\u00020605X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001a\u0010;\u001a\u00020<X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R \u0010A\u001a\b\u0012\u0004\u0012\u00020B05X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bC\u00108\"\u0004\bD\u0010:R\u001a\u0010E\u001a\u00020FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u001a\u0010K\u001a\u00020LX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\u001a\u0010Q\u001a\u00020FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010H\"\u0004\bS\u0010JR\u001a\u0010T\u001a\u00020FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u0010H\"\u0004\bV\u0010JR\u001a\u0010W\u001a\u00020FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bX\u0010H\"\u0004\bY\u0010JR\u001a\u0010Z\u001a\u00020FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u0010H\"\u0004\b\\\u0010JR\u001a\u0010]\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u0010\u001c\"\u0004\b_\u0010\u001eR\u001a\u0010`\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u0010\u001c\"\u0004\bb\u0010\u001eR\u001a\u0010c\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bd\u0010(\"\u0004\be\u0010*R\u000e\u0010{\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n\u0000R \u0010\u0085\u0001\u001a\u00030\u0086\u0001X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001\"\u0006\b\u0089\u0001\u0010\u008a\u0001¨\u0006\u0095\u0001"}, d2 = {"Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;", "Lcom/join/mgps/fragment/BaseFragment;", "Lcom/join/kotlin/presenter/view/CategoryView;", "Landroid/view/View$OnClickListener;", "Lcom/join/mgps/callbacks/OnPageVisibleChanged;", "<init>", "()V", "categoryPrensenter", "Lcom/join/kotlin/presenter/CategoryPrensenter;", "getCategoryPrensenter", "()Lcom/join/kotlin/presenter/CategoryPrensenter;", "setCategoryPrensenter", "(Lcom/join/kotlin/presenter/CategoryPrensenter;)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/CategroyDetialItemFragmentBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/CategroyDetialItemFragmentBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/CategroyDetialItemFragmentBinding;)V", "requestArgs", "Lcom/join/kotlin/ui/findgame/data/CategoryRequest;", "getRequestArgs", "()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;", "setRequestArgs", "(Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V", "page", "", "getPage", "()I", "setPage", "(I)V", "from", "getFrom", "setFrom", "pageIndex", "getPageIndex", "setPageIndex", "pageVisible", "", "getPageVisible", "()Z", "setPageVisible", "(Z)V", "parentExtBean", "Lcom/join/mgps/dto/ExtBean;", "getParentExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setParentExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "pageExtBean", "getPageExtBean", "setPageExtBean", "showDatalist", "", "Lcom/psk/kotlin/util/CommonListMainData;", "getShowDatalist", "()Ljava/util/List;", "setShowDatalist", "(Ljava/util/List;)V", "adapter", "Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;", "getAdapter", "()Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;", "setAdapter", "(Lcom/join/kotlin/EverdayNewFragment$EverydayNewAdapter;)V", "gameTypeList", "Lcom/join/kotlin/ui/findgame/data/GameTypeData;", "getGameTypeList", "setGameTypeList", "featureType", "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;", "getFeatureType", "()Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;", "setFeatureType", "(Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;)V", "gameSortType", "Lcom/join/kotlin/ui/findgame/data/TagData;", "getGameSortType", "()Lcom/join/kotlin/ui/findgame/data/TagData;", "setGameSortType", "(Lcom/join/kotlin/ui/findgame/data/TagData;)V", "gameType", "getGameType", "setGameType", j1.f69849n, "getModelType", "setModelType", "playType", "getPlayType", "setPlayType", "themeType", "getThemeType", "setThemeType", "mFirstVisiblePosition", "getMFirstVisiblePosition", "setMFirstVisiblePosition", "mLastVisibleIndex", "getMLastVisibleIndex", "setMLastVisibleIndex", "SCROLLING", "getSCROLLING", "setSCROLLING", "updateDatas", "", "featureTypez", "gameTypez", "modelTypez", "playTypez", "themeTypez", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "initView", "updateRequestArgs", "onLoadDataSuccess", "pn", "result", "Lcom/join/kotlin/ui/findgame/data/CategoryListMain;", "isExposuring", "expDiscountGame", "onEventMainThread", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "updatePartly", "updateProgressPartly", "updateDownStateList", "onDestroy", "lazyLoad", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "setHandler", "(Landroid/os/Handler;)V", "showLoding", "hidLoading", "onError", "message", "", "onClick", "v", "onPageVisible", "position", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCategoryDetailItemFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryDetailItemFragment.kt\ncom/join/kotlin/ui/findgame/CategoryDetailItemFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,464:1\n774#2:465\n865#2,2:466\n774#2:468\n865#2,2:469\n1869#2:471\n774#2:472\n865#2,2:473\n1870#2:475\n1878#2,3:477\n1#3:476\n167#4,2:480\n182#4,4:482\n*S KotlinDebug\n*F\n+ 1 CategoryDetailItemFragment.kt\ncom/join/kotlin/ui/findgame/CategoryDetailItemFragment\n*L\n158#1:465\n158#1:466,2\n162#1:468\n162#1:469,2\n167#1:471\n168#1:472\n168#1:473,2\n167#1:475\n290#1:477,3\n326#1:480,2\n326#1:482,4\n*E\n"})
public final class CategoryDetailItemFragment extends com.join.mgps.fragment.e implements CategoryView, View.OnClickListener, com.join.mgps.callbacks.q {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private boolean SCROLLING;
    public EverdayNewFragment.EverydayNewAdapter adapter;
    public d8 binding;
    public CategoryPrensenter categoryPrensenter;

    @NotNull
    private GameSubTypeData featureType;
    private int from;

    @NotNull
    private TagData gameSortType;

    @NotNull
    private GameSubTypeData gameType;
    public List<GameTypeData> gameTypeList;

    @NotNull
    private Handler handler;
    private boolean isExposuring;
    private int mFirstVisiblePosition;
    private int mLastVisibleIndex;

    @NotNull
    private GameSubTypeData modelType;

    @NotNull
    private ExtBean pageExtBean;
    private int pageIndex;
    private boolean pageVisible;

    @Nullable
    private ExtBean parentExtBean;

    @NotNull
    private GameSubTypeData playType;
    public List<CommonListMainData> showDatalist;

    @NotNull
    private GameSubTypeData themeType;

    @NotNull
    private CategoryRequest requestArgs = new CategoryRequest();
    private int page = 1;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\r¨\u0006\u000e"}, d2 = {"Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;", "type", "", "data", "Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;", "from", "pageIndex", "parentExtBean", "Lcom/join/mgps/dto/ExtBean;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CategoryDetailItemFragment newInstance(int type, @NotNull CategroyIntentItemData data, int from, int pageIndex, @Nullable ExtBean parentExtBean) {
            Intrinsics.checkNotNullParameter(data, "data");
            CategoryDetailItemFragment categoryDetailItemFragment = new CategoryDetailItemFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("type", type);
            bundle.putSerializable("data", data);
            bundle.putInt("from", from);
            bundle.putInt("pageIndex", pageIndex);
            bundle.putSerializable("parentExtBean", parentExtBean);
            categoryDetailItemFragment.setArguments(bundle);
            return categoryDetailItemFragment;
        }

        private Companion() {
        }
    }

    public CategoryDetailItemFragment() {
        ExtBean chatId = new ExtBean().setChatId("classifyGameList");
        Intrinsics.checkNotNullExpressionValue(chatId, "setChatId(...)");
        this.pageExtBean = chatId;
        this.featureType = new GameSubTypeData();
        this.gameSortType = new TagData(1, 1, "综合");
        this.gameType = new GameSubTypeData();
        this.modelType = new GameSubTypeData();
        this.playType = new GameSubTypeData();
        this.themeType = new GameSubTypeData();
        this.handler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.join.kotlin.ui.findgame.f
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return CategoryDetailItemFragment.handler$lambda$17(this.f49105b, message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void expDiscountGame() {
        try {
            try {
                if (isAdded() && !this.isExposuring) {
                    this.isExposuring = true;
                    int lastVisiblePosition = getBinding().f37323f.getLastVisiblePosition();
                    int i10 = 0;
                    for (Object obj : getShowDatalist()) {
                        int i11 = i10 + 1;
                        if (i10 < 0) {
                            CollectionsKt__CollectionsKt.throwIndexOverflow();
                        }
                        CommonListMainData commonListMainData = (CommonListMainData) obj;
                        if (i10 <= lastVisiblePosition && !commonListMainData.getHasExposured()) {
                            commonListMainData.setHasExposured(true);
                            if (commonListMainData.getType() == 2) {
                                Object any = commonListMainData.getAny();
                                Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub");
                                CollectionBeanSub collectionBeanSub = (CollectionBeanSub) any;
                                if (UtilsMy.o2(collectionBeanSub)) {
                                    try {
                                        Ext ext = new Ext();
                                        ext.setResultCode("discount_game");
                                        ext.setScenesCode(CategoryDetailItemFragment.class.getSimpleName());
                                        Data data = new Data();
                                        data.setGameId(collectionBeanSub.getGame_id());
                                        t.l(getContext()).Y(Event.expGameAdPage, ext, data);
                                    } catch (Exception e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                t.l(requireContext()).R1(Event.expGameAdPage, collectionBeanSub.getExtBean().buildScene().toExt());
                            }
                        }
                        i10 = i11;
                    }
                }
            } catch (Exception unused) {
            }
        } finally {
            this.isExposuring = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean handler$lambda$17(CategoryDetailItemFragment categoryDetailItemFragment, Message it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        if (categoryDetailItemFragment.getContext() == null) {
            return false;
        }
        CategoryPrensenter categoryPrensenter = categoryDetailItemFragment.getCategoryPrensenter();
        Context contextRequireContext = categoryDetailItemFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        categoryPrensenter.loadCategoryData(contextRequireContext, categoryDetailItemFragment.requestArgs);
        return false;
    }

    private final void initView() {
        TextView setAll = getBinding().f37322e.f47340g;
        Intrinsics.checkNotNullExpressionValue(setAll, "setAll");
        CommonExtKt.onClick(setAll, new Function0() { // from class: com.join.kotlin.ui.findgame.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CategoryDetailItemFragment.initView$lambda$6(this.f49073b);
            }
        });
        getBinding().f37323f.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.findgame.CategoryDetailItemFragment.initView.2
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                CategoryDetailItemFragment.this.getRequestArgs().setPage(CategoryDetailItemFragment.this.getPage());
                Context context = CategoryDetailItemFragment.this.getContext();
                if (context != null) {
                    CategoryDetailItemFragment categoryDetailItemFragment = CategoryDetailItemFragment.this;
                    categoryDetailItemFragment.getCategoryPrensenter().loadCategoryData(context, categoryDetailItemFragment.getRequestArgs());
                }
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
            }
        });
        getBinding().f37323f.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.findgame.CategoryDetailItemFragment.initView.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 0) {
                    CategoryDetailItemFragment categoryDetailItemFragment = CategoryDetailItemFragment.this;
                    categoryDetailItemFragment.setMFirstVisiblePosition(com.join.android.app.component.video.h.o(categoryDetailItemFragment.getBinding().f37323f));
                    CategoryDetailItemFragment categoryDetailItemFragment2 = CategoryDetailItemFragment.this;
                    categoryDetailItemFragment2.setMLastVisibleIndex(com.join.android.app.component.video.h.q(categoryDetailItemFragment2.getBinding().f37323f));
                    CategoryDetailItemFragment.this.expDiscountGame();
                }
                CategoryDetailItemFragment.this.setSCROLLING(newState != 0);
            }
        });
        if (getContext() != null) {
            setAdapter(new EverdayNewFragment.EverydayNewAdapter());
        }
        getBinding().f37323f.setAdapter(getAdapter());
        this.requestArgs.setUid(AccountUtil_.getInstance_(getContext()).getAccountData().getUid());
        LinearLayout lodingFaile = getBinding().f37320c.f41919e;
        Intrinsics.checkNotNullExpressionValue(lodingFaile, "lodingFaile");
        CommonExtKt.onClick(lodingFaile, new Function0() { // from class: com.join.kotlin.ui.findgame.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CategoryDetailItemFragment.initView$lambda$9(this.f49098b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$6(CategoryDetailItemFragment categoryDetailItemFragment) {
        if (categoryDetailItemFragment.getActivity() instanceof CategoryDetailListActivity) {
            FragmentActivity activity = categoryDetailItemFragment.getActivity();
            Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.CategoryDetailListActivity");
            ((CategoryDetailListActivity) activity).reLoadDatas();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$9(CategoryDetailItemFragment categoryDetailItemFragment) {
        Context context = categoryDetailItemFragment.getContext();
        if (context != null) {
            categoryDetailItemFragment.getCategoryPrensenter().loadCategoryData(context, categoryDetailItemFragment.requestArgs);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$0(CategoryDetailItemFragment categoryDetailItemFragment) {
        UtilsMy.N3(categoryDetailItemFragment.getContext());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$1(CategoryDetailItemFragment categoryDetailItemFragment) {
        CategoryPrensenter categoryPrensenter = categoryDetailItemFragment.getCategoryPrensenter();
        Context contextRequireContext = categoryDetailItemFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        categoryPrensenter.loadCategoryData(contextRequireContext, categoryDetailItemFragment.requestArgs);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onLoadDataSuccess$lambda$10(CategoryDetailItemFragment categoryDetailItemFragment) {
        categoryDetailItemFragment.mFirstVisiblePosition = com.join.android.app.component.video.h.o(categoryDetailItemFragment.getBinding().f37323f);
        categoryDetailItemFragment.mLastVisibleIndex = com.join.android.app.component.video.h.q(categoryDetailItemFragment.getBinding().f37323f);
        if (categoryDetailItemFragment.pageVisible) {
            categoryDetailItemFragment.expDiscountGame();
        }
        categoryDetailItemFragment.updateDownStateList();
    }

    private final void updateDownStateList() {
        try {
            for (CommonListMainData commonListMainData : getShowDatalist()) {
                if (commonListMainData.getType() == 2) {
                    DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
                    Object any = commonListMainData.getAny();
                    Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub");
                    dlTaskManager.updateDownloadTask((CollectionBeanSub) any);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private final void updatePartly() {
        if (getAdapter().getItems().isEmpty()) {
            return;
        }
        try {
            int i10 = this.mFirstVisiblePosition;
            int i11 = this.mLastVisibleIndex;
            if (i10 <= i11) {
                while (i10 < getAdapter().getItems().size()) {
                    if (i10 >= 0) {
                        CommonListMainData commonListMainData = getAdapter().getItems().get(i10);
                        commonListMainData.update(true);
                        if (commonListMainData.getType() == 2) {
                            RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition = getBinding().f37323f.findViewHolderForLayoutPosition(i10);
                            if (viewHolderFindViewHolderForLayoutPosition instanceof v2.c) {
                                getAdapter().updateGameUI((v2.c) viewHolderFindViewHolderForLayoutPosition, (CollectionBeanSub) commonListMainData.getAny());
                            }
                        }
                    }
                    if (i10 == i11) {
                        return;
                    } else {
                        i10++;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private final void updateProgressPartly() {
        if (getShowDatalist().isEmpty()) {
            return;
        }
        try {
            int i10 = this.mFirstVisiblePosition;
            int i11 = this.mLastVisibleIndex;
            if (i10 <= i11) {
                while (i10 < getShowDatalist().size()) {
                    if (i10 >= 0) {
                        CommonListMainData commonListMainData = getShowDatalist().get(i10);
                        if (commonListMainData.getType() == 2) {
                            Object any = commonListMainData.getAny();
                            Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub");
                            DownloadTask downloadTask = ((CollectionBeanSub) any).getDownloadTask();
                            if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                                RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition = getBinding().f37323f.findViewHolderForLayoutPosition(i10);
                                if (viewHolderFindViewHolderForLayoutPosition instanceof v2.c) {
                                    ((DownloadNormalView) ((v2.c) viewHolderFindViewHolderForLayoutPosition).getView(R.id.dv_view)).s(downloadTask.getProgress());
                                }
                            }
                        }
                    }
                    if (i10 == i11) {
                        return;
                    } else {
                        i10++;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private final void updateRequestArgs() {
        this.page = 1;
        this.requestArgs.setPage(1);
        this.requestArgs.resetData();
        this.requestArgs.setUid(AccountUtil_.getInstance_(getContext()).getAccountData().getUid());
        this.requestArgs.setModelType(this.modelType.getId());
        this.requestArgs.setGameType(this.gameType.getId());
        this.requestArgs.setThemeType(this.themeType.getId());
        this.requestArgs.setPlayType(this.playType.getId());
        this.requestArgs.setFeatureType(this.featureType.getId());
        this.requestArgs.setGameSortType(this.gameSortType.getId());
    }

    @NotNull
    public final EverdayNewFragment.EverydayNewAdapter getAdapter() {
        EverdayNewFragment.EverydayNewAdapter everydayNewAdapter = this.adapter;
        if (everydayNewAdapter != null) {
            return everydayNewAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        return null;
    }

    @NotNull
    public final d8 getBinding() {
        d8 d8Var = this.binding;
        if (d8Var != null) {
            return d8Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @NotNull
    public final CategoryPrensenter getCategoryPrensenter() {
        CategoryPrensenter categoryPrensenter = this.categoryPrensenter;
        if (categoryPrensenter != null) {
            return categoryPrensenter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("categoryPrensenter");
        return null;
    }

    @NotNull
    public final GameSubTypeData getFeatureType() {
        return this.featureType;
    }

    public final int getFrom() {
        return this.from;
    }

    @NotNull
    public final TagData getGameSortType() {
        return this.gameSortType;
    }

    @NotNull
    public final GameSubTypeData getGameType() {
        return this.gameType;
    }

    @NotNull
    public final List<GameTypeData> getGameTypeList() {
        List<GameTypeData> list = this.gameTypeList;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
        return null;
    }

    @NotNull
    public final Handler getHandler() {
        return this.handler;
    }

    public final int getMFirstVisiblePosition() {
        return this.mFirstVisiblePosition;
    }

    public final int getMLastVisibleIndex() {
        return this.mLastVisibleIndex;
    }

    @NotNull
    public final GameSubTypeData getModelType() {
        return this.modelType;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final ExtBean getPageExtBean() {
        return this.pageExtBean;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    public final boolean getPageVisible() {
        return this.pageVisible;
    }

    @Nullable
    public final ExtBean getParentExtBean() {
        return this.parentExtBean;
    }

    @NotNull
    public final GameSubTypeData getPlayType() {
        return this.playType;
    }

    @NotNull
    public final CategoryRequest getRequestArgs() {
        return this.requestArgs;
    }

    public final boolean getSCROLLING() {
        return this.SCROLLING;
    }

    @NotNull
    public final List<CommonListMainData> getShowDatalist() {
        List<CommonListMainData> list = this.showDatalist;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("showDatalist");
        return null;
    }

    @NotNull
    public final GameSubTypeData getThemeType() {
        return this.themeType;
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void hidLoading() {
        getBinding().f37321d.f40741d.setVisibility(8);
        getBinding().f37322e.f47336c.setVisibility(8);
        getBinding().f37320c.f41919e.setVisibility(8);
        getBinding().f37323f.setVisibility(0);
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            getCategoryPrensenter().loadCategoryData(activity, this.requestArgs);
        } else {
            this.handler.sendEmptyMessageDelayed(1, 500L);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        String str;
        String strD;
        Exception e10;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(d8.inflate(inflater, container, false));
        getBinding().f37323f.setLayoutManager(new LinearLayoutManager(getContext()));
        setCategoryPrensenter(new CategoryPrensenter(this));
        setShowDatalist(new ArrayList());
        Bundle arguments = getArguments();
        Integer numValueOf = arguments != null ? Integer.valueOf(arguments.getInt("type")) : null;
        Bundle arguments2 = getArguments();
        Integer numValueOf2 = arguments2 != null ? Integer.valueOf(arguments2.getInt("from")) : null;
        Intrinsics.checkNotNull(numValueOf2, "null cannot be cast to non-null type kotlin.Int");
        this.from = numValueOf2.intValue();
        Bundle arguments3 = getArguments();
        Integer numValueOf3 = arguments3 != null ? Integer.valueOf(arguments3.getInt("pageIndex")) : null;
        Intrinsics.checkNotNull(numValueOf3, "null cannot be cast to non-null type kotlin.Int");
        this.pageIndex = numValueOf3.intValue();
        Bundle arguments4 = getArguments();
        Serializable serializable = arguments4 != null ? arguments4.getSerializable("parentExtBean") : null;
        ExtBean extBean = serializable instanceof ExtBean ? (ExtBean) serializable : null;
        this.parentExtBean = extBean;
        ExtBean parent = this.pageExtBean.setParent(extBean);
        if (numValueOf != null && numValueOf.intValue() == 1) {
            str = "综合";
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            str = "最新";
        } else {
            str = (numValueOf != null && numValueOf.intValue() == 3) ? "评分" : "";
        }
        parent.setFromTabId(str);
        Bundle arguments5 = getArguments();
        Serializable serializable2 = arguments5 != null ? arguments5.getSerializable("data") : null;
        Intrinsics.checkNotNull(serializable2, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.CategroyIntentItemData");
        CategroyIntentItemData categroyIntentItemData = (CategroyIntentItemData) serializable2;
        this.featureType = categroyIntentItemData.getFeatureType();
        this.gameType = categroyIntentItemData.getGameType();
        this.modelType = categroyIntentItemData.getModelType();
        this.playType = categroyIntentItemData.getPlayType();
        this.themeType = categroyIntentItemData.getThemeType();
        Button setNetwork = getBinding().f37320c.f41921g;
        Intrinsics.checkNotNullExpressionValue(setNetwork, "setNetwork");
        CommonExtKt.onClick(setNetwork, new Function0() { // from class: com.join.kotlin.ui.findgame.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CategoryDetailItemFragment.onCreateView$lambda$0(this.f49099b);
            }
        });
        try {
            strD = new PrefDef_(requireContext()).gameTypeList().d();
            try {
                ImageView relodingimag = getBinding().f37320c.f41920f;
                Intrinsics.checkNotNullExpressionValue(relodingimag, "relodingimag");
                CommonExtKt.onClick(relodingimag, new Function0() { // from class: com.join.kotlin.ui.findgame.d
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CategoryDetailItemFragment.onCreateView$lambda$1(this.f49100b);
                    }
                });
            } catch (Exception e11) {
                e10 = e11;
                e10.printStackTrace();
            }
        } catch (Exception e12) {
            strD = null;
            e10 = e12;
        }
        TagData tagData = this.gameSortType;
        Intrinsics.checkNotNull(numValueOf, "null cannot be cast to non-null type kotlin.Int");
        tagData.setId(numValueOf.intValue());
        this.gameSortType.setType(numValueOf.intValue());
        if (strD == null || strD.length() == 0) {
            strD = "[{\"id\":1,\"title\":\"模拟器\",\"type\":1,\"sub_game_type\":[{\"id\":31,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/fba_icon.png\",\"title\":\"街机\"},{\"id\":33,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/gba_icon.png\",\"title\":\"GBA\"},{\"id\":34,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/psp_icon.png\",\"title\":\"PSP\"},{\"id\":35,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/fc_icon.png\",\"title\":\"FC\"},{\"id\":43,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/sfc_icon.png\",\"title\":\"SFC\"},{\"id\":53,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/ps_icon.png\",\"title\":\"PS\"},{\"id\":51,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/md_icon.png\",\"title\":\"MD\"},{\"id\":54,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/wsc_icon.png\",\"title\":\"WSC\"},{\"id\":57,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/n64_icon.png\",\"title\":\"N64\"},{\"id\":58,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/on_icon.png\",\"title\":\"ONS\"},{\"id\":32,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/nd_icon.png\",\"title\":\"NDS\"},{\"id\":56,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/gbc_icon.png\",\"title\":\"GBC\"},{\"id\":60,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/dc_icon.png\",\"title\":\"DC\"},{\"id\":102,\"pic\":\"\",\"title\":\"H5\"}]},{\"id\":2,\"title\":\"安卓\",\"type\":2,\"sub_game_type\":[{\"id\":10001,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/onlin_icon.png\",\"title\":\"网游\"},{\"id\":10002,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/single_icon.png\",\"title\":\"单机\"},{\"id\":10003,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/game_tag_type_icon/single_icon.png\",\"title\":\"mod\"}]},{\"id\":3,\"title\":\"分类\",\"type\":3,\"sub_game_type\":[{\"id\":24,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/f3/ae/f3ae58e30ae7e432d7571a5ab08e31a2.png\",\"title\":\"动作冒险\"},{\"id\":23,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/2d/31/2d31f269379aee69d2e283478a1b9aa5.png\",\"title\":\"休闲益智\"},{\"id\":20,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/e3/62/e36255c965b63e80d901f7ea04ae5aa1.png\",\"title\":\"角色扮演\"},{\"id\":25,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/f4/44/f4444b37064a2cb88401db74dc5e3f75.png\",\"title\":\"射击飞行\"},{\"id\":19,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/e1/d1/e1d1edd8076f1d92425cef93feef1cf2.png\",\"title\":\"策略战棋\"},{\"id\":17,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/3f/c8/3fc873bf10d151215d5b977178c4afe6.png\",\"title\":\"模拟游戏\"},{\"id\":22,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/3c/05/3c054708b2a888461eb338d34412a3f0.png\",\"title\":\"体育游戏\"},{\"id\":39,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/8e/de/8ede16897f71fdba1389d625b1c9ccfa.png\",\"title\":\"竞速游戏\"},{\"id\":18,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/fc/9c/fc9c346e32b8f48fe6348b8b72e970ce.png\",\"title\":\"格斗竞技\"},{\"id\":38,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/ef/8d/ef8d5060aa6c85a58bff921302bcc73a.png\",\"title\":\"经营游戏\"},{\"id\":13,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/c9/49/c949ce67d0ccf31a5dbe6cde1d6c213e.png\",\"title\":\"AVG恋爱\"},{\"id\":15,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/db/0f/db0f26037fee0b193fa9d77094238d9a.png\",\"title\":\"生存游戏\"},{\"id\":16,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/88/ff/88ff59f4c24e0d14aed861500a9b85e9.png\",\"title\":\"恐怖游戏\"},{\"id\":12,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/eb/be/ebbe18e8be70b2ff811e32f5bdd8eee3.png\",\"title\":\"塔防游戏\"},{\"id\":41,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/fb/5f/fb5f0f3569e9d40babd7d8c10da7195e.png\",\"title\":\"音乐节奏\"},{\"id\":21,\"pic\":\"http://ctimg2018.myyx618.com/upload/images/a4/4c/a44c5c9440c9433dd8c90065790a72ab.png\",\"title\":\"放置挂机\"}]},{\"id\":4,\"title\":\"题材\",\"type\":4,\"sub_game_type\":[{\"id\":248,\"pic\":\"\",\"title\":\"二次元\"},{\"id\":249,\"pic\":\"\",\"title\":\"拟人\"},{\"id\":250,\"pic\":\"\",\"title\":\"枪战\"},{\"id\":251,\"pic\":\"\",\"title\":\"山海经\"},{\"id\":252,\"pic\":\"\",\"title\":\"动漫IP\"},{\"id\":253,\"pic\":\"\",\"title\":\"冒险\"},{\"id\":254,\"pic\":\"\",\"title\":\"地牢迷宫\"},{\"id\":255,\"pic\":\"\",\"title\":\"魔幻\"},{\"id\":256,\"pic\":\"\",\"title\":\"科幻\"},{\"id\":257,\"pic\":\"\",\"title\":\"末日\"},{\"id\":258,\"pic\":\"\",\"title\":\"火影忍者\"},{\"id\":259,\"pic\":\"\",\"title\":\"日漫\"},{\"id\":260,\"pic\":\"\",\"title\":\"海战\"},{\"id\":261,\"pic\":\"\",\"title\":\"武侠\"},{\"id\":262,\"pic\":\"\",\"title\":\"童话\"},{\"id\":263,\"pic\":\"\",\"title\":\"史莱姆\"},{\"id\":264,\"pic\":\"\",\"title\":\"美食\"},{\"id\":265,\"pic\":\"\",\"title\":\"忍者\"},{\"id\":266,\"pic\":\"\",\"title\":\"火柴人\"},{\"id\":267,\"pic\":\"\",\"title\":\"枪娘\"},{\"id\":268,\"pic\":\"\",\"title\":\"魔物娘\"},{\"id\":269,\"pic\":\"\",\"title\":\"机甲\"},{\"id\":270,\"pic\":\"\",\"title\":\"恋爱\"},{\"id\":271,\"pic\":\"\",\"title\":\"三国\"},{\"id\":272,\"pic\":\"\",\"title\":\"战争\"},{\"id\":273,\"pic\":\"\",\"title\":\"狩猎\"},{\"id\":274,\"pic\":\"\",\"title\":\"修仙\"},{\"id\":275,\"pic\":\"\",\"title\":\"初音未来\"},{\"id\":276,\"pic\":\"\",\"title\":\"人生\"},{\"id\":277,\"pic\":\"\",\"title\":\"坦克\"},{\"id\":278,\"pic\":\"\",\"title\":\"二战\"},{\"id\":279,\"pic\":\"\",\"title\":\"战舰\"},{\"id\":280,\"pic\":\"\",\"title\":\"神话\"},{\"id\":281,\"pic\":\"\",\"title\":\"僵尸\"},{\"id\":282,\"pic\":\"\",\"title\":\"植物\"},{\"id\":283,\"pic\":\"\",\"title\":\"恐怖\"},{\"id\":284,\"pic\":\"\",\"title\":\"动物\"},{\"id\":285,\"pic\":\"\",\"title\":\"盗墓\"},{\"id\":286,\"pic\":\"\",\"title\":\"舰娘\"},{\"id\":287,\"pic\":\"\",\"title\":\"狼人杀\"},{\"id\":288,\"pic\":\"\",\"title\":\"2048\"},{\"id\":289,\"pic\":\"\",\"title\":\"仙侠\"},{\"id\":290,\"pic\":\"\",\"title\":\"西游\"},{\"id\":291,\"pic\":\"\",\"title\":\"农场\"},{\"id\":292,\"pic\":\"\",\"title\":\"电竞\"},{\"id\":293,\"pic\":\"\",\"title\":\"赛车\"},{\"id\":294,\"pic\":\"\",\"title\":\"开罗\"},{\"id\":295,\"pic\":\"\",\"title\":\"足球\"},{\"id\":296,\"pic\":\"\",\"title\":\"篮球\"},{\"id\":297,\"pic\":\"\",\"title\":\"妖怪\"},{\"id\":298,\"pic\":\"\",\"title\":\"太空\"},{\"id\":299,\"pic\":\"\",\"title\":\"SLG\"},{\"id\":300,\"pic\":\"\",\"title\":\"航海\"},{\"id\":301,\"pic\":\"\",\"title\":\"烹饪\"},{\"id\":302,\"pic\":\"\",\"title\":\"漫威\"},{\"id\":303,\"pic\":\"\",\"title\":\"超级英雄\"},{\"id\":304,\"pic\":\"\",\"title\":\"美漫\"},{\"id\":305,\"pic\":\"\",\"title\":\"暗黑\"},{\"id\":306,\"pic\":\"\",\"title\":\"国创\"},{\"id\":307,\"pic\":\"\",\"title\":\"偶像\"},{\"id\":308,\"pic\":\"\",\"title\":\"手机\"},{\"id\":309,\"pic\":\"\",\"title\":\"克苏鲁\"},{\"id\":310,\"pic\":\"\",\"title\":\"侦探\"},{\"id\":311,\"pic\":\"\",\"title\":\"高达\"},{\"id\":312,\"pic\":\"\",\"title\":\"乐高\"},{\"id\":313,\"pic\":\"\",\"title\":\"数独\"},{\"id\":314,\"pic\":\"\",\"title\":\"钢琴\"},{\"id\":315,\"pic\":\"\",\"title\":\"数学\"},{\"id\":316,\"pic\":\"\",\"title\":\"脱出\"},{\"id\":317,\"pic\":\"\",\"title\":\"大富翁\"},{\"id\":318,\"pic\":\"\",\"title\":\"口袋妖怪\"},{\"id\":319,\"pic\":\"\",\"title\":\"拳皇\"},{\"id\":320,\"pic\":\"\",\"title\":\"奥特曼\"},{\"id\":321,\"pic\":\"\",\"title\":\"死神\"},{\"id\":322,\"pic\":\"\",\"title\":\"侠盗猎车手\"},{\"id\":323,\"pic\":\"\",\"title\":\"死神vs火影\"},{\"id\":324,\"pic\":\"\",\"title\":\"三国战纪\"},{\"id\":325,\"pic\":\"\",\"title\":\"蜘蛛侠\"},{\"id\":326,\"pic\":\"\",\"title\":\"游戏王\"},{\"id\":327,\"pic\":\"\",\"title\":\"刺客信条\"},{\"id\":328,\"pic\":\"\",\"title\":\"坦克大战\"},{\"id\":329,\"pic\":\"\",\"title\":\"“热血”系列游戏\"},{\"id\":330,\"pic\":\"\",\"title\":\"捕鱼\"},{\"id\":331,\"pic\":\"\",\"title\":\"梦幻模拟战\"},{\"id\":332,\"pic\":\"\",\"title\":\"三国无双\"},{\"id\":333,\"pic\":\"\",\"title\":\"植物大战僵尸\"},{\"id\":334,\"pic\":\"\",\"title\":\"龙珠\"},{\"id\":335,\"pic\":\"\",\"title\":\"饥荒\"},{\"id\":336,\"pic\":\"\",\"title\":\"模拟山羊\"},{\"id\":337,\"pic\":\"\",\"title\":\"英雄联盟\"},{\"id\":338,\"pic\":\"\",\"title\":\"仙剑奇侠传\"},{\"id\":339,\"pic\":\"\",\"title\":\"传奇\"},{\"id\":340,\"pic\":\"\",\"title\":\"水浒传\"},{\"id\":341,\"pic\":\"\",\"title\":\"奇迹MU\"},{\"id\":342,\"pic\":\"\",\"title\":\"实况足球\"},{\"id\":343,\"pic\":\"\",\"title\":\"最终幻想\"},{\"id\":344,\"pic\":\"\",\"title\":\"数码宝贝\"},{\"id\":345,\"pic\":\"\",\"title\":\"恐龙\"},{\"id\":346,\"pic\":\"\",\"title\":\"战国\"},{\"id\":347,\"pic\":\"\",\"title\":\"校园\"}]},{\"id\":5,\"title\":\"玩法\",\"type\":5,\"sub_game_type\":[{\"id\":385,\"pic\":\"\",\"title\":\"MOBA\"},{\"id\":386,\"pic\":\"\",\"title\":\"自走棋\"},{\"id\":387,\"pic\":\"\",\"title\":\"塔防\"},{\"id\":388,\"pic\":\"\",\"title\":\"养成\"},{\"id\":389,\"pic\":\"\",\"title\":\"策略\"},{\"id\":390,\"pic\":\"\",\"title\":\"射击\"},{\"id\":391,\"pic\":\"\",\"title\":\"卡牌\"},{\"id\":392,\"pic\":\"\",\"title\":\"回合制RPG\"},{\"id\":393,\"pic\":\"\",\"title\":\"动作\"},{\"id\":394,\"pic\":\"\",\"title\":\"挂机放置\"},{\"id\":395,\"pic\":\"\",\"title\":\"动作RPG\"},{\"id\":396,\"pic\":\"\",\"title\":\"格斗\"},{\"id\":397,\"pic\":\"\",\"title\":\"吃鸡\"},{\"id\":398,\"pic\":\"\",\"title\":\"策略RPG\"},{\"id\":399,\"pic\":\"\",\"title\":\"MMORPG\"},{\"id\":400,\"pic\":\"\",\"title\":\"建造\"},{\"id\":401,\"pic\":\"\",\"title\":\"模拟\"},{\"id\":402,\"pic\":\"\",\"title\":\"消除\"},{\"id\":403,\"pic\":\"\",\"title\":\"战棋\"},{\"id\":404,\"pic\":\"\",\"title\":\"竞速\"},{\"id\":405,\"pic\":\"\",\"title\":\"跑酷\"},{\"id\":406,\"pic\":\"\",\"title\":\"经营\"},{\"id\":407,\"pic\":\"\",\"title\":\"即时战略\"},{\"id\":408,\"pic\":\"\",\"title\":\"文字冒险\"},{\"id\":409,\"pic\":\"\",\"title\":\"音乐节奏\"},{\"id\":410,\"pic\":\"\",\"title\":\"棋牌\"},{\"id\":411,\"pic\":\"\",\"title\":\"桌游\"},{\"id\":412,\"pic\":\"\",\"title\":\"io\"},{\"id\":413,\"pic\":\"\",\"title\":\"换装\"},{\"id\":414,\"pic\":\"\",\"title\":\"闯关\"},{\"id\":415,\"pic\":\"\",\"title\":\"互动小说\"},{\"id\":416,\"pic\":\"\",\"title\":\"解谜\"},{\"id\":417,\"pic\":\"\",\"title\":\"点击\"},{\"id\":418,\"pic\":\"\",\"title\":\"益智\"},{\"id\":419,\"pic\":\"\",\"title\":\"弹射\"},{\"id\":420,\"pic\":\"\",\"title\":\"体育\"},{\"id\":421,\"pic\":\"\",\"title\":\"互动电影\"},{\"id\":422,\"pic\":\"\",\"title\":\"随行游戏\"},{\"id\":423,\"pic\":\"\",\"title\":\"视觉小说\"},{\"id\":424,\"pic\":\"\",\"title\":\"MUD\"},{\"id\":425,\"pic\":\"\",\"title\":\"飞行\"},{\"id\":426,\"pic\":\"\",\"title\":\"驾驶\"},{\"id\":427,\"pic\":\"\",\"title\":\"生存\"}]},{\"id\":6,\"title\":\"特色\",\"type\":6,\"sub_game_type\":[{\"id\":428,\"pic\":\"\",\"title\":\"联机\"},{\"id\":429,\"pic\":\"\",\"title\":\"5v5\"},{\"id\":430,\"pic\":\"\",\"title\":\"多人\"},{\"id\":431,\"pic\":\"\",\"title\":\"推塔\"},{\"id\":432,\"pic\":\"\",\"title\":\"美女\"},{\"id\":433,\"pic\":\"\",\"title\":\"硬核\"},{\"id\":434,\"pic\":\"\",\"title\":\"收集要素\"},{\"id\":435,\"pic\":\"\",\"title\":\"国产\"},{\"id\":436,\"pic\":\"\",\"title\":\"FPS\"},{\"id\":437,\"pic\":\"\",\"title\":\"PVP\"},{\"id\":438,\"pic\":\"\",\"title\":\"竞技\"},{\"id\":439,\"pic\":\"\",\"title\":\"TPS\"},{\"id\":440,\"pic\":\"\",\"title\":\"3D\"},{\"id\":441,\"pic\":\"\",\"title\":\"合作\"},{\"id\":442,\"pic\":\"\",\"title\":\"TPP\"},{\"id\":443,\"pic\":\"\",\"title\":\"剧情\"},{\"id\":444,\"pic\":\"\",\"title\":\"对战\"},{\"id\":445,\"pic\":\"\",\"title\":\"Roguelike\"},{\"id\":446,\"pic\":\"\",\"title\":\"Steam移植\"},{\"id\":447,\"pic\":\"\",\"title\":\"独立游戏\"},{\"id\":450,\"pic\":\"\",\"title\":\"休闲\"},{\"id\":451,\"pic\":\"\",\"title\":\"高画质\"},{\"id\":452,\"pic\":\"\",\"title\":\"高难度\"},{\"id\":453,\"pic\":\"\",\"title\":\"横版\"},{\"id\":454,\"pic\":\"\",\"title\":\"和风\"},{\"id\":455,\"pic\":\"\",\"title\":\"Live2D\"},{\"id\":456,\"pic\":\"\",\"title\":\"卡通\"},{\"id\":457,\"pic\":\"\",\"title\":\"组队\"},{\"id\":458,\"pic\":\"\",\"title\":\"CCG\"},{\"id\":459,\"pic\":\"\",\"title\":\"1v1\"},{\"id\":460,\"pic\":\"\",\"title\":\"可爱\"},{\"id\":461,\"pic\":\"\",\"title\":\"局域网联机\"},{\"id\":462,\"pic\":\"\",\"title\":\"像素\"},{\"id\":463,\"pic\":\"\",\"title\":\"弹幕\"},{\"id\":464,\"pic\":\"\",\"title\":\"中国风\"},{\"id\":465,\"pic\":\"\",\"title\":\"高自由度\"},{\"id\":466,\"pic\":\"\",\"title\":\"古风\"},{\"id\":467,\"pic\":\"\",\"title\":\"可捏脸\"},{\"id\":468,\"pic\":\"\",\"title\":\"开放世界\"},{\"id\":469,\"pic\":\"\",\"title\":\"社交\"},{\"id\":470,\"pic\":\"\",\"title\":\"DIY\"},{\"id\":471,\"pic\":\"\",\"title\":\"经典\"},{\"id\":472,\"pic\":\"\",\"title\":\"多结局\"},{\"id\":473,\"pic\":\"\",\"title\":\"手绘风格\"},{\"id\":474,\"pic\":\"\",\"title\":\"装修\"},{\"id\":475,\"pic\":\"\",\"title\":\"设计\"},{\"id\":476,\"pic\":\"\",\"title\":\"女性向\"},{\"id\":477,\"pic\":\"\",\"title\":\"声控\"},{\"id\":478,\"pic\":\"\",\"title\":\"漂移\"},{\"id\":479,\"pic\":\"\",\"title\":\"水墨风\"},{\"id\":480,\"pic\":\"\",\"title\":\"2D\"},{\"id\":481,\"pic\":\"\",\"title\":\"打击感\"},{\"id\":482,\"pic\":\"\",\"title\":\"手速\"},{\"id\":483,\"pic\":\"\",\"title\":\"声优配音\"},{\"id\":484,\"pic\":\"\",\"title\":\"致郁\"},{\"id\":485,\"pic\":\"\",\"title\":\"DBG\"},{\"id\":486,\"pic\":\"\",\"title\":\"逃生\"},{\"id\":487,\"pic\":\"\",\"title\":\"移植\"},{\"id\":488,\"pic\":\"\",\"title\":\"搞笑\"},{\"id\":489,\"pic\":\"\",\"title\":\"合成\"},{\"id\":490,\"pic\":\"\",\"title\":\"动人音乐\"},{\"id\":491,\"pic\":\"\",\"title\":\"电音\"},{\"id\":492,\"pic\":\"\",\"title\":\"竖版\"},{\"id\":493,\"pic\":\"\",\"title\":\"童年\"},{\"id\":494,\"pic\":\"\",\"title\":\"Q版\"},{\"id\":495,\"pic\":\"\",\"title\":\"有毒\"},{\"id\":496,\"pic\":\"\",\"title\":\"乙女\"},{\"id\":497,\"pic\":\"\",\"title\":\"TCG\"},{\"id\":498,\"pic\":\"\",\"title\":\"悬疑\"},{\"id\":499,\"pic\":\"\",\"title\":\"治愈\"},{\"id\":500,\"pic\":\"\",\"title\":\"组装\"},{\"id\":501,\"pic\":\"\",\"title\":\"推理\"},{\"id\":502,\"pic\":\"\",\"title\":\"解压\"},{\"id\":503,\"pic\":\"\",\"title\":\"meta\"},{\"id\":504,\"pic\":\"\",\"title\":\"汉化\"},{\"id\":505,\"pic\":\"\",\"title\":\"欧美画风\"},{\"id\":506,\"pic\":\"\",\"title\":\"3v3\"},{\"id\":507,\"pic\":\"\",\"title\":\"魔性\"},{\"id\":508,\"pic\":\"\",\"title\":\"平台跳跃\"},{\"id\":509,\"pic\":\"\",\"title\":\"自制关卡\"},{\"id\":510,\"pic\":\"\",\"title\":\"轻改\"},{\"id\":511,\"pic\":\"\",\"title\":\"简约画风\"},{\"id\":512,\"pic\":\"\",\"title\":\"街机风格\"},{\"id\":513,\"pic\":\"\",\"title\":\"AR\"},{\"id\":514,\"pic\":\"\",\"title\":\"户外\"},{\"id\":515,\"pic\":\"\",\"title\":\"日系风格\"},{\"id\":516,\"pic\":\"\",\"title\":\"VR\"},{\"id\":517,\"pic\":\"\",\"title\":\"佛系\"},{\"id\":518,\"pic\":\"\",\"title\":\"低模\"},{\"id\":519,\"pic\":\"\",\"title\":\"小清新\"},{\"id\":520,\"pic\":\"\",\"title\":\"俯视视角\"},{\"id\":521,\"pic\":\"\",\"title\":\"PC移植\"},{\"id\":522,\"pic\":\"\",\"title\":\"买断制\"},{\"id\":523,\"pic\":\"\",\"title\":\"进化\"},{\"id\":524,\"pic\":\"\",\"title\":\"剪纸风\"},{\"id\":525,\"pic\":\"\",\"title\":\"剪影风\"},{\"id\":526,\"pic\":\"\",\"title\":\"催泪\"},{\"id\":527,\"pic\":\"\",\"title\":\"下落式\"},{\"id\":528,\"pic\":\"\",\"title\":\"手残\"},{\"id\":529,\"pic\":\"\",\"title\":\"反应力\"}]}]";
        }
        setGameTypeList((List) new ObjectMapper().readValue(strD, JsonMapper.getInstance().createCollectionType(List.class, GameTypeData.class)));
        List<GameTypeData> gameTypeList = getGameTypeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : gameTypeList) {
            if (((GameTypeData) obj).getType() == 0) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            getGameTypeList().remove(arrayList.get(0));
        }
        List<GameTypeData> gameTypeList2 = getGameTypeList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : gameTypeList2) {
            if (((GameTypeData) obj2).getType() == 2) {
                arrayList2.add(obj2);
            }
        }
        if (!arrayList2.isEmpty()) {
            getGameTypeList().remove(arrayList2.get(0));
            List<GameSubTypeData> sub_game_type = ((GameTypeData) arrayList2.get(0)).getSub_game_type();
            Intrinsics.checkNotNull(sub_game_type);
            for (GameSubTypeData gameSubTypeData : CollectionsKt___CollectionsKt.reversed(sub_game_type)) {
                List<GameTypeData> gameTypeList3 = getGameTypeList();
                ArrayList arrayList3 = new ArrayList();
                for (Object obj3 : gameTypeList3) {
                    if (((GameTypeData) obj3).getType() == 1) {
                        arrayList3.add(obj3);
                    }
                }
                List<GameSubTypeData> sub_game_type2 = ((GameTypeData) CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList3).get(0)).getSub_game_type();
                Intrinsics.checkNotNull(sub_game_type2);
                sub_game_type2.add(0, gameSubTypeData);
            }
        }
        j0.a().d(this);
        initView();
        updateRequestArgs();
        return getBinding().getRoot();
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        j0.a().e(this);
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void onError(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        List<CommonListMainData> showDatalist = getShowDatalist();
        if ((showDatalist == null || showDatalist.isEmpty()) || getShowDatalist().size() <= 0) {
            getBinding().f37321d.f40741d.setVisibility(8);
            getBinding().f37322e.f47336c.setVisibility(8);
            getBinding().f37320c.f41919e.setVisibility(0);
            getBinding().f37323f.setVisibility(8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0026  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull r downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
        int iC = downloadTaskEvent.c();
        if (iC != 2 && iC != 3 && iC != 5 && iC != 6 && iC != 7 && iC != 42 && iC != 48) {
            switch (iC) {
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                    updateDownStateList();
                    updatePartly();
                    break;
            }
        } else {
            updateDownStateList();
            updatePartly();
        }
        if (downloadTaskEvent.c() == 8) {
            updateProgressPartly();
        }
    }

    @Override // com.join.kotlin.presenter.view.CategoryView
    public void onLoadDataSuccess(int pn, @NotNull CategoryListMain result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (pn != this.page) {
            return;
        }
        if (pn == 1) {
            this.page = 1;
            getBinding().f37322e.f47336c.setVisibility(8);
            getBinding().f37323f.setVisibility(0);
            if (getShowDatalist().size() > 0) {
                getBinding().f37323f.scrollToPosition(0);
            }
            getShowDatalist().clear();
        }
        if (result.getGame_list() != null && result.getGame_list().size() > 0) {
            ArrayList arrayList = new ArrayList();
            for (CollectionBeanSub collectionBeanSub : result.getGame_list()) {
                int i10 = this.from;
                if (i10 == 0) {
                    i10 = 118;
                }
                collectionBeanSub.set_from_type(i10);
                int i11 = this.from;
                if (i11 == 0) {
                    i11 = 108;
                }
                collectionBeanSub.set_from(i11);
                collectionBeanSub.getExtBean().setParent(this.pageExtBean);
                DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
                Intrinsics.checkNotNull(collectionBeanSub);
                dlTaskManager.updateDownloadTask(collectionBeanSub);
                CommonListMainData commonListMainData = new CommonListMainData(2, collectionBeanSub, null, null, 12, null);
                arrayList.add(commonListMainData);
                getShowDatalist().add(commonListMainData);
            }
            if (this.page == 1) {
                getAdapter().submitList(arrayList);
            } else {
                getAdapter().addAll(arrayList);
            }
            getBinding().f37323f.loadMoreComplete();
            this.page++;
        } else if (this.page == 1) {
            getBinding().f37322e.f47336c.setVisibility(0);
            getBinding().f37323f.setVisibility(8);
        } else {
            getBinding().f37323f.setNoMore();
        }
        if (pn == 1) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.join.kotlin.ui.findgame.e
                @Override // java.lang.Runnable
                public final void run() {
                    CategoryDetailItemFragment.onLoadDataSuccess$lambda$10(this.f49104b);
                }
            }, 300L);
        }
    }

    @Override // com.join.mgps.callbacks.q
    public void onPageVisible(int position) {
        Context context;
        boolean z10 = position == this.pageIndex;
        this.pageVisible = z10;
        if (!z10 || this.pageExtBean.hasExplore() || !isAdded() || (context = getContext()) == null) {
            return;
        }
        t.l(context).R1(Event.commonExp, this.pageExtBean.copy().setTypeCode("page").buildScene().toExt());
        expDiscountGame();
        this.pageExtBean.setHasExplore(true);
    }

    public final void setAdapter(@NotNull EverdayNewFragment.EverydayNewAdapter everydayNewAdapter) {
        Intrinsics.checkNotNullParameter(everydayNewAdapter, "<set-?>");
        this.adapter = everydayNewAdapter;
    }

    public final void setBinding(@NotNull d8 d8Var) {
        Intrinsics.checkNotNullParameter(d8Var, "<set-?>");
        this.binding = d8Var;
    }

    public final void setCategoryPrensenter(@NotNull CategoryPrensenter categoryPrensenter) {
        Intrinsics.checkNotNullParameter(categoryPrensenter, "<set-?>");
        this.categoryPrensenter = categoryPrensenter;
    }

    public final void setFeatureType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.featureType = gameSubTypeData;
    }

    public final void setFrom(int i10) {
        this.from = i10;
    }

    public final void setGameSortType(@NotNull TagData tagData) {
        Intrinsics.checkNotNullParameter(tagData, "<set-?>");
        this.gameSortType = tagData;
    }

    public final void setGameType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.gameType = gameSubTypeData;
    }

    public final void setGameTypeList(@NotNull List<GameTypeData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.gameTypeList = list;
    }

    public final void setHandler(@NotNull Handler handler) {
        Intrinsics.checkNotNullParameter(handler, "<set-?>");
        this.handler = handler;
    }

    public final void setMFirstVisiblePosition(int i10) {
        this.mFirstVisiblePosition = i10;
    }

    public final void setMLastVisibleIndex(int i10) {
        this.mLastVisibleIndex = i10;
    }

    public final void setModelType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.modelType = gameSubTypeData;
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    public final void setPageExtBean(@NotNull ExtBean extBean) {
        Intrinsics.checkNotNullParameter(extBean, "<set-?>");
        this.pageExtBean = extBean;
    }

    public final void setPageIndex(int i10) {
        this.pageIndex = i10;
    }

    public final void setPageVisible(boolean z10) {
        this.pageVisible = z10;
    }

    public final void setParentExtBean(@Nullable ExtBean extBean) {
        this.parentExtBean = extBean;
    }

    public final void setPlayType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.playType = gameSubTypeData;
    }

    public final void setRequestArgs(@NotNull CategoryRequest categoryRequest) {
        Intrinsics.checkNotNullParameter(categoryRequest, "<set-?>");
        this.requestArgs = categoryRequest;
    }

    public final void setSCROLLING(boolean z10) {
        this.SCROLLING = z10;
    }

    public final void setShowDatalist(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.showDatalist = list;
    }

    public final void setThemeType(@NotNull GameSubTypeData gameSubTypeData) {
        Intrinsics.checkNotNullParameter(gameSubTypeData, "<set-?>");
        this.themeType = gameSubTypeData;
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void showLoding() {
        getBinding().f37321d.f40741d.setVisibility(0);
        getBinding().f37322e.f47336c.setVisibility(8);
        getBinding().f37320c.f41919e.setVisibility(8);
        getBinding().f37323f.setVisibility(8);
    }

    public final void updateDatas(@NotNull GameSubTypeData featureTypez, @NotNull GameSubTypeData gameTypez, @NotNull GameSubTypeData modelTypez, @NotNull GameSubTypeData playTypez, @NotNull GameSubTypeData themeTypez) {
        Intrinsics.checkNotNullParameter(featureTypez, "featureTypez");
        Intrinsics.checkNotNullParameter(gameTypez, "gameTypez");
        Intrinsics.checkNotNullParameter(modelTypez, "modelTypez");
        Intrinsics.checkNotNullParameter(playTypez, "playTypez");
        Intrinsics.checkNotNullParameter(themeTypez, "themeTypez");
        this.featureType = featureTypez;
        this.gameType = gameTypez;
        this.modelType = modelTypez;
        this.playType = playTypez;
        this.themeType = themeTypez;
        updateRequestArgs();
        lazyLoad();
    }
}
