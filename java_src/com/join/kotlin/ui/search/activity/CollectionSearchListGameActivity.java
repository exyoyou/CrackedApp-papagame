package com.join.kotlin.ui.search.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.h;
import com.join.android.app.mgsim.wufun.databinding.kx;
import com.join.android.app.mgsim.wufun.databinding.x;
import com.join.kotlin.base.activity.BaseVmDbActivity;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.base.impl.GInfo;
import com.join.kotlin.base.net.stateCallback.ListDataUiState;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.ui.search.adapter.CollectionSearchListGameAdapter;
import com.join.kotlin.ui.search.viewmodel.CollectionSearchListGameViewModel;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.event.r;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import java.io.Serializable;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0006\u0010&\u001a\u00020#J\b\u0010'\u001a\u00020#H\u0014J\u0010\u0010(\u001a\u00020#2\u0006\u0010)\u001a\u00020\u0012H\u0002J\u0010\u0010*\u001a\u00020#2\u0006\u0010+\u001a\u00020,H\u0016J \u0010-\u001a\u00020#2\u000e\u0010.\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010/2\u0006\u00101\u001a\u00020\u0012H\u0002J\b\u00102\u001a\u00020#H\u0002J\b\u00103\u001a\u00020#H\u0002J\u0006\u00104\u001a\u00020#J\b\u00105\u001a\u00020#H\u0016R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001bR\u001a\u0010\u001f\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0013\"\u0004\b!\u0010\u0015¨\u00066"}, d2 = {"Lcom/join/kotlin/ui/search/activity/CollectionSearchListGameActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbActivity;", "Lcom/join/kotlin/ui/search/viewmodel/CollectionSearchListGameViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityCollectionSearchListGameBinding;", "<init>", "()V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "mAdapter", "Lcom/join/kotlin/ui/search/adapter/CollectionSearchListGameAdapter;", "getMAdapter", "()Lcom/join/kotlin/ui/search/adapter/CollectionSearchListGameAdapter;", "mAdapter$delegate", "Lkotlin/Lazy;", "parentExtBean", "Lcom/join/mgps/dto/ExtBean;", "isExposure", "", "()Z", "setExposure", "(Z)V", "mFirstVisiblePosition", "", "getMFirstVisiblePosition", "()I", "setMFirstVisiblePosition", "(I)V", "mLastVisibleIndex", "getMLastVisibleIndex", "setMLastVisibleIndex", "SCROLLING", "getSCROLLING", "setSCROLLING", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "exposureItem", "onResume", "loadData", "refresh", "onDownloadStatusChanged", NotificationCompat.CATEGORY_EVENT, "Lcom/join/mgps/event/DownloadTaskEvent;", "updateDownStateList", "beanList", "", "Lcom/join/mgps/dto/CommonMultiItemBean;", "notify", "updatePartly", "updateProgressPartly", "changeDownloadNum", "createObserver", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCollectionSearchListGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionSearchListGameActivity.kt\ncom/join/kotlin/ui/search/activity/CollectionSearchListGameActivity\n+ 2 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n1#1,275:1\n167#2,2:276\n182#2,4:278\n*S KotlinDebug\n*F\n+ 1 CollectionSearchListGameActivity.kt\ncom/join/kotlin/ui/search/activity/CollectionSearchListGameActivity\n*L\n192#1:276,2\n192#1:278,4\n*E\n"})
public final class CollectionSearchListGameActivity extends BaseVmDbActivity<CollectionSearchListGameViewModel, x> {
    private boolean SCROLLING;
    private boolean isExposure;
    private com.kingja.loadsir.core.b<Object> loadSir;

    /* JADX INFO: renamed from: mAdapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mAdapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.search.activity.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CollectionSearchListGameActivity.mAdapter_delegate$lambda$0();
        }
    });
    private int mFirstVisiblePosition;
    private int mLastVisibleIndex;

    @Nullable
    private ExtBean parentExtBean;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit createObserver$lambda$12$lambda$11(final CollectionSearchListGameActivity collectionSearchListGameActivity, ListDataUiState listDataUiState) {
        Intrinsics.checkNotNull(listDataUiState);
        CollectionSearchListGameAdapter mAdapter = collectionSearchListGameActivity.getMAdapter();
        com.kingja.loadsir.core.b<Object> bVar = collectionSearchListGameActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        XQuickRecyclerView xrvList = collectionSearchListGameActivity.getMDatabind().f47021c;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        CustomViewExtKt.loadListData$default(listDataUiState, mAdapter, bVar, xrvList, null, 16, null);
        collectionSearchListGameActivity.updateDownStateList(((CollectionSearchListGameViewModel) collectionSearchListGameActivity.getMViewModel()).getAllDownloadBeans(), false);
        collectionSearchListGameActivity.mHandler.postDelayed(new Runnable() { // from class: com.join.kotlin.ui.search.activity.b
            @Override // java.lang.Runnable
            public final void run() {
                CollectionSearchListGameActivity.createObserver$lambda$12$lambda$11$lambda$10(this.f49335b);
            }
        }, 300L);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createObserver$lambda$12$lambda$11$lambda$10(CollectionSearchListGameActivity collectionSearchListGameActivity) {
        collectionSearchListGameActivity.mFirstVisiblePosition = h.o(collectionSearchListGameActivity.getMDatabind().f47021c);
        collectionSearchListGameActivity.mLastVisibleIndex = h.q(collectionSearchListGameActivity.getMDatabind().f47021c);
        collectionSearchListGameActivity.exposureItem();
    }

    private final CollectionSearchListGameAdapter getMAdapter() {
        return (CollectionSearchListGameAdapter) this.mAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$3(CollectionSearchListGameActivity collectionSearchListGameActivity) {
        com.kingja.loadsir.core.b<Object> bVar = collectionSearchListGameActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        collectionSearchListGameActivity.loadData(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$4(CollectionSearchListGameActivity collectionSearchListGameActivity, View view) {
        IntentUtil.getInstance().goMyGameManagerActivity(collectionSearchListGameActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$7(ExtBean extBean, CollectionSearchListGameActivity collectionSearchListGameActivity, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        CommonMultiItemBean commonMultiItemBean = (CommonMultiItemBean) adapter.getItem(i10);
        if (commonMultiItemBean == null || !commonMultiItemBean.isGame()) {
            return;
        }
        ExtBean chatId = extBean.setChatId("collect");
        GInfo gInfo = commonMultiItemBean.getGInfo();
        ExtBean resourceId = chatId.setResourceId(gInfo != null ? gInfo.getGameId() : null);
        ExtBean extBean2 = collectionSearchListGameActivity.parentExtBean;
        ExtBean sopNo = resourceId.setParent(extBean2 != null ? extBean2.cloneScene() : null).setCollectId(((CollectionSearchListGameViewModel) collectionSearchListGameActivity.getMViewModel()).getKeyword()).setSopNo(((CollectionSearchListGameViewModel) collectionSearchListGameActivity.getMViewModel()).getTitle().getValue());
        GInfo gInfo2 = commonMultiItemBean.getGInfo();
        sopNo.setResultCode(gInfo2 != null ? gInfo2.getIcon() : null).buildScene();
        IntentUtil.getInstance().intentActivity(collectionSearchListGameActivity, commonMultiItemBean.getInfo().getIntentDataBean());
        t.l(collectionSearchListGameActivity).R1(Event.commonClick, extBean.toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void loadData(boolean refresh) {
        ((CollectionSearchListGameViewModel) getMViewModel()).gameSearchList(refresh);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CollectionSearchListGameAdapter mAdapter_delegate$lambda$0() {
        return new CollectionSearchListGameAdapter();
    }

    private final void updateDownStateList(List<? extends CommonMultiItemBean> beanList, boolean notify) {
        List<? extends CommonMultiItemBean> list = beanList;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (CommonMultiItemBean commonMultiItemBean : beanList) {
            DlTaskManager.INSTANCE.updateDownloadTask(commonMultiItemBean);
            commonMultiItemBean.update(notify);
        }
    }

    private final void updatePartly() {
        if (getMAdapter().getItems().isEmpty()) {
            return;
        }
        try {
            int i10 = this.mFirstVisiblePosition;
            int i11 = this.mLastVisibleIndex;
            if (i10 <= i11) {
                while (i10 < getMAdapter().getItems().size()) {
                    if (i10 >= 0) {
                        CommonMultiItemBean commonMultiItemBean = getMAdapter().getItems().get(i10);
                        commonMultiItemBean.update(true);
                        View childAt = getMDatabind().f47021c.getChildAt(i10 - this.mFirstVisiblePosition);
                        if (childAt != null) {
                            RecyclerView.ViewHolder childViewHolder = getMDatabind().f47021c.getChildViewHolder(childAt);
                            v2.a<kx> aVar = childViewHolder instanceof v2.a ? (v2.a) childViewHolder : null;
                            if (aVar != null) {
                                getMAdapter().updateGameUI(aVar, commonMultiItemBean);
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
        CommonMultiItemBean commonMultiItemBean;
        DownloadTask downloadTask;
        if (getMAdapter().getItems().isEmpty()) {
            return;
        }
        try {
            int i10 = this.mFirstVisiblePosition;
            int i11 = this.mLastVisibleIndex;
            if (i10 <= i11) {
                while (i10 < getMAdapter().getItems().size()) {
                    if (i10 >= 0 && (downloadTask = (commonMultiItemBean = getMAdapter().getItems().get(i10)).getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                        commonMultiItemBean.update(true);
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

    public final void changeDownloadNum() {
        getMDatabind().f47020b.f39531i.setDownloadGameNum();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
        ((CollectionSearchListGameViewModel) getMViewModel()).getListData().observe(this, new CollectionSearchListGameActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.search.activity.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CollectionSearchListGameActivity.createObserver$lambda$12$lambda$11(this.f49334b, (ListDataUiState) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void exposureItem() {
        ExtBean chatId;
        ExtBean sopNo;
        ExtBean collectId;
        ExtBean extBeanBuildScene;
        try {
            if (!this.isExposure) {
                this.isExposure = true;
                int i10 = this.mLastVisibleIndex;
                if (i10 >= 0) {
                    int i11 = 0;
                    while (true) {
                        CommonMultiItemBean item = getMAdapter().getItem(i11);
                        if (item != null && !item.getExposure()) {
                            t tVarL = t.l(this);
                            Event event = Event.expGameAdPage;
                            ExtBean extBean = item.getExtBean();
                            Ext ext = null;
                            if (extBean != null) {
                                ExtBean extBean2 = this.parentExtBean;
                                ExtBean parent = extBean.setParent(extBean2 != null ? extBean2.cloneScene() : null);
                                if (parent != null && (chatId = parent.setChatId("collect")) != null && (sopNo = chatId.setSopNo(((CollectionSearchListGameViewModel) getMViewModel()).getTitle().getValue())) != null) {
                                    GInfo gInfo = item.getGInfo();
                                    ExtBean resourceId = sopNo.setResourceId(String.valueOf(gInfo != null ? gInfo.getGameId() : null));
                                    if (resourceId != null && (collectId = resourceId.setCollectId(((CollectionSearchListGameViewModel) getMViewModel()).getKeyword())) != null) {
                                        GInfo gInfo2 = item.getGInfo();
                                        ExtBean resultCode = collectId.setResultCode(String.valueOf(gInfo2 != null ? gInfo2.getIcon() : null));
                                        if (resultCode != null && (extBeanBuildScene = resultCode.buildScene()) != null) {
                                            ext = extBeanBuildScene.toExt();
                                        }
                                    }
                                }
                            }
                            tVarL.R1(event, ext);
                            item.setExposure(true);
                        }
                        if (i11 == i10) {
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
            }
        } catch (Exception unused) {
        } finally {
            this.isExposure = false;
        }
    }

    public final int getMFirstVisiblePosition() {
        return this.mFirstVisiblePosition;
    }

    public final int getMLastVisibleIndex() {
        return this.mLastVisibleIndex;
    }

    public final boolean getSCROLLING() {
        return this.SCROLLING;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().n((CollectionSearchListGameViewModel) getMViewModel());
        Intent intent = getIntent();
        com.kingja.loadsir.core.b<Object> bVar = null;
        if (intent != null) {
            ((CollectionSearchListGameViewModel) getMViewModel()).getTitle().setValue(intent.getStringExtra("_title"));
            ((CollectionSearchListGameViewModel) getMViewModel()).setSearchType(String.valueOf(intent.getStringExtra("_search_type")));
            ((CollectionSearchListGameViewModel) getMViewModel()).setKeyword(String.valueOf(intent.getStringExtra("_keyword")));
            Serializable serializableExtra = intent.getSerializableExtra("extBean");
            this.parentExtBean = serializableExtra instanceof ExtBean ? (ExtBean) serializableExtra : null;
            ((CollectionSearchListGameViewModel) getMViewModel()).setApiType(intent.getIntExtra("_api_type", 0));
            ((CollectionSearchListGameViewModel) getMViewModel()).setSearch_status(intent.getIntExtra("search_status", 0));
            ((CollectionSearchListGameViewModel) getMViewModel()).setPlugin_num(intent.getIntExtra("plugin_num", 0));
            ((CollectionSearchListGameViewModel) getMViewModel()).setLang_id(intent.getIntExtra("lang_id", 0));
            getMDatabind().f47020b.f39533k.setText(String.valueOf(((CollectionSearchListGameViewModel) getMViewModel()).getTitle().getValue()));
            getMDatabind().f47020b.f39531i.setVisibility(0);
        }
        getMDatabind().f47020b.f39525c.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.search.activity.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f49336b.finish();
            }
        });
        ExtBean chatId = new ExtBean().setChatId("collect");
        ExtBean extBean = this.parentExtBean;
        final ExtBean extBeanBuildScene = chatId.setParent(extBean != null ? extBean.cloneScene() : null).setSopNo(((CollectionSearchListGameViewModel) getMViewModel()).getTitle().getValue()).setCollectId(((CollectionSearchListGameViewModel) getMViewModel()).getKeyword()).setResultCode("commonGameList").setTypeCode("page").buildScene();
        t.l(this).R1(Event.commonExp, extBeanBuildScene.toExt());
        XQuickRecyclerView xrvList = getMDatabind().f47021c;
        Intrinsics.checkNotNullExpressionValue(xrvList, "xrvList");
        this.loadSir = CustomViewExtKt.loadServiceInit(xrvList, new Function0() { // from class: com.join.kotlin.ui.search.activity.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CollectionSearchListGameActivity.initView$lambda$3(this.f49337b);
            }
        });
        getMDatabind().f47020b.f39531i.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.search.activity.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CollectionSearchListGameActivity.initView$lambda$4(this.f49338b, view);
            }
        });
        final XQuickRecyclerView xQuickRecyclerView = getMDatabind().f47021c;
        xQuickRecyclerView.setAdapter(getMAdapter());
        xQuickRecyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        xQuickRecyclerView.setPullRefreshEnabled(false);
        xQuickRecyclerView.setLoadingListener(new XQuickRecyclerView.LoadingListener() { // from class: com.join.kotlin.ui.search.activity.CollectionSearchListGameActivity$initView$5$1
            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onLoadMore() {
                this.this$0.loadData(false);
            }

            @Override // com.join.kotlin.base.widget.recycleview.XQuickRecyclerView.LoadingListener
            public void onRefresh() {
                this.this$0.loadData(true);
            }
        });
        xQuickRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.kotlin.ui.search.activity.CollectionSearchListGameActivity$initView$5$2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 0) {
                    this.this$0.setMFirstVisiblePosition(h.o(recyclerView));
                    this.this$0.setMLastVisibleIndex(h.q(recyclerView));
                    this.this$0.exposureItem();
                }
                this.this$0.setSCROLLING(xQuickRecyclerView.getScrollState() != 0);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, dx, dy);
            }
        });
        getMAdapter().setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.kotlin.ui.search.activity.f
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                CollectionSearchListGameActivity.initView$lambda$7(extBeanBuildScene, this, baseQuickAdapter, view, i10);
            }
        });
        com.kingja.loadsir.core.b<Object> bVar2 = this.loadSir;
        if (bVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
        } else {
            bVar = bVar2;
        }
        CustomViewExtKt.showLoading(bVar);
        loadData(true);
    }

    /* JADX INFO: renamed from: isExposure, reason: from getter */
    public final boolean getIsExposure() {
        return this.isExposure;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0029  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseDownloadActivity
    public void onDownloadStatusChanged(@NotNull r event) {
        Intrinsics.checkNotNullParameter(event, "event");
        super.onDownloadStatusChanged(event);
        DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
        int iC = event.c();
        if (iC != 2 && iC != 3 && iC != 5 && iC != 6 && iC != 7 && iC != 42 && iC != 48) {
            switch (iC) {
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                    updateDownStateList(((CollectionSearchListGameViewModel) getMViewModel()).getAllDownloadBeans(), true);
                    updatePartly();
                    changeDownloadNum();
                    break;
            }
        } else {
            updateDownStateList(((CollectionSearchListGameViewModel) getMViewModel()).getAllDownloadBeans(), true);
            updatePartly();
            changeDownloadNum();
        }
        if (event.c() != 8 || this.SCROLLING) {
            return;
        }
        updateProgressPartly();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UtilsMy.N4(this);
    }

    public final void setExposure(boolean z10) {
        this.isExposure = z10;
    }

    public final void setMFirstVisiblePosition(int i10) {
        this.mFirstVisiblePosition = i10;
    }

    public final void setMLastVisibleIndex(int i10) {
        this.mLastVisibleIndex = i10;
    }

    public final void setSCROLLING(boolean z10) {
        this.SCROLLING = z10;
    }
}
