package com.join.mgps.activity;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionModuleSevenArgs;
import com.join.mgps.dto.CollectionModuleSevenBean;
import com.join.mgps.dto.CollectionModuleSevenItemBean;
import com.join.mgps.dto.CollectionModuleSevenSubBean;
import com.join.mgps.dto.CollectionSevenListBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_collection_module_seven)
public class o0 extends com.join.mgps.fragment.e {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f57788p = "CollectionModuleSeven";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f57789c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    RecyclerView f57790d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f57791e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f57792f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    String f57793g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.join.mgps.adapter.t f57795i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.join.android.app.component.video.h f57796j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private PrefDef_ f57799m;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<CollectionSevenListBean> f57794h = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<CommonGameInfoBean> f57797k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f57798l = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f57800n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f57801o = false;

    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 0) {
                o0.this.autoPlay();
                o0.this.expDiscountGame();
            }
            o0.this.f57798l = newState != 0;
        }
    }

    private void U() {
        this.f57793g = this.f57799m.game_section_id().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Object item = this.f57794h.get(i10).getItem();
        if (item instanceof CommonGameInfoBean) {
            IntentUtil.getInstance().intentActivity(this.f57789c, ((CommonGameInfoBean) item).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit W() {
        updateDownStateList(this.f57797k);
        this.f57795i.notifyDataSetChanged();
        return null;
    }

    private boolean Y(DownloadTask task) {
        if (task == null) {
            return false;
        }
        int status = task.getStatus();
        return status == 1 || status == 2 || status == 3 || status == 10 || status == 12;
    }

    private CommonGameInfoBean Z(CommonGameInfoBean bean) {
        if (bean == null) {
            return bean;
        }
        bean.set_from(210);
        bean.set_from_type(210);
        return bean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expDiscountGame() {
        try {
            try {
                if (isAdded() && !this.f57801o) {
                    this.f57801o = true;
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.f57790d.getLayoutManager();
                    if (linearLayoutManager != null) {
                        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                        for (int i10 = 0; i10 <= iFindLastVisibleItemPosition; i10++) {
                            CollectionSevenListBean collectionSevenListBean = this.f57794h.get(i10);
                            if (!collectionSevenListBean.isHasExposure()) {
                                collectionSevenListBean.setHasExposure(true);
                                int itemType = collectionSevenListBean.getItemType();
                                if ((itemType == 2 || itemType == 3) && (collectionSevenListBean.getItem() instanceof CommonGameInfoBean)) {
                                    CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) collectionSevenListBean.getItem();
                                    if (UtilsMy.p2(commonGameInfoBean)) {
                                        try {
                                            Ext ext = new Ext();
                                            ext.setResultCode("discount_game");
                                            ext.setScenesCode(getClass().getSimpleName());
                                            Data data = new Data();
                                            data.setGameId(commonGameInfoBean.getG_info().getId());
                                            com.papa.sim.statistic.t.l(this.f57789c).Y(Event.expGameAdPage, ext, data);
                                        } catch (Exception e10) {
                                            e10.printStackTrace();
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        } finally {
            this.f57801o = false;
        }
    }

    private void updateDownStateList(List<CommonGameInfoBean> itemList) {
        Iterator<CommonGameInfoBean> it2 = itemList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    private void updateProgressPartly() {
        LinearLayoutManager linearLayoutManager;
        DownloadNormalView downloadNormalView;
        RecyclerView recyclerView;
        View viewFindViewByPosition;
        DownloadNormalView downloadNormalView2;
        RecyclerView recyclerView2 = this.f57790d;
        if (recyclerView2 == null || this.f57795i == null || (linearLayoutManager = (LinearLayoutManager) recyclerView2.getLayoutManager()) == null) {
            return;
        }
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        if (iFindFirstVisibleItemPosition == -1) {
            return;
        }
        while (iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition) {
            CollectionSevenListBean item = this.f57795i.getItem(iFindFirstVisibleItemPosition);
            if (item != null) {
                try {
                    int itemType = item.getItemType();
                    if (itemType == 2 || itemType == 3) {
                        if (item.getItem() instanceof CommonGameInfoBean) {
                            DownloadTask task = DlTaskManager.INSTANCE.getTask((CommonGameInfoBean) item.getItem());
                            if (Y(task)) {
                                RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.f57790d.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                                if ((viewHolderFindViewHolderForAdapterPosition instanceof v2.c) && (downloadNormalView = (DownloadNormalView) ((v2.c) viewHolderFindViewHolderForAdapterPosition).b(R.id.dv_view)) != null) {
                                    downloadNormalView.d(task);
                                }
                            }
                        }
                    } else if (itemType == 4 && (item.getItem() instanceof List)) {
                        List list = (List) item.getItem();
                        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = this.f57790d.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                        if ((viewHolderFindViewHolderForAdapterPosition2 instanceof v2.c) && (recyclerView = (RecyclerView) ((v2.c) viewHolderFindViewHolderForAdapterPosition2).b(R.id.recyclerView)) != null && recyclerView.getLayoutManager() != null) {
                            for (int i10 = 0; i10 < list.size(); i10++) {
                                DownloadTask task2 = DlTaskManager.INSTANCE.getTask((CommonGameInfoBean) list.get(i10));
                                if (Y(task2) && (viewFindViewByPosition = recyclerView.getLayoutManager().findViewByPosition(i10)) != null && (downloadNormalView2 = (DownloadNormalView) viewFindViewByPosition.findViewById(R.id.dv_view)) != null) {
                                    downloadNormalView2.d(task2);
                                }
                            }
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            iFindFirstVisibleItemPosition++;
        }
    }

    @Background(delay = 800)
    void S() {
        if (!com.join.android.app.common.utils.m.j(this.f57789c)) {
            showMessage("当前网络不可用");
            showLodingFailed();
            return;
        }
        try {
            U();
            if (TextUtils.isEmpty(this.f57793g)) {
                if (this.f57800n < 3) {
                    U();
                    return;
                } else {
                    showLodingFailed();
                    this.f57800n++;
                }
            }
            if (TextUtils.isEmpty(this.f57793g)) {
                showMessage("专区id不存在");
                showLodingFailed();
                return;
            }
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f57789c);
            CollectionModuleSevenArgs collectionModuleSevenArgs = new CollectionModuleSevenArgs();
            collectionModuleSevenArgs.setTemplateId(this.f57793g);
            requestModel.setArgs(collectionModuleSevenArgs);
            ResponseModel<CollectionModuleSevenBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().N(requestModel.makeSign()).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 200 || responseModelBody.getData() == null) {
                showLodingFailed();
            } else {
                updateData(responseModelBody.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    void X(String templateId) {
        this.f57793g = templateId;
    }

    @AfterViews
    void afterviews() {
        this.f57789c = getContext();
        com.join.mgps.Util.j0.a().d(this);
        this.f57799m = new PrefDef_(this.f57789c);
        this.f57796j = new com.join.android.app.component.video.h(this.f57790d, "PapaMainV3Fragment");
        this.f57790d.setLayoutManager(new LinearLayoutManager(this.f57789c));
        com.join.mgps.adapter.t tVar = new com.join.mgps.adapter.t(this.f57794h, this.f57796j);
        this.f57795i = tVar;
        this.f57790d.setAdapter(tVar);
        this.f57795i.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.mgps.activity.m0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f57477a.V(baseQuickAdapter, view, i10);
            }
        });
        this.f57790d.addOnScrollListener(new a());
    }

    @UiThread(delay = 500)
    void autoPlay() {
        com.join.android.app.component.video.h hVar = this.f57796j;
        if (hVar != null) {
            hVar.i(1);
        }
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
        com.join.android.app.component.video.h hVar = this.f57796j;
        if (hVar != null) {
            hVar.x();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        if (downloadTaskEvent.c() == 8 && !this.f57798l) {
            updateProgressPartly();
        }
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.n0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57771b.W();
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.join.android.app.component.video.h hVar = this.f57796j;
        if (hVar != null) {
            hVar.y();
        }
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f57794h.isEmpty()) {
            this.f57800n = 0;
            showLoding();
            S();
        }
        com.join.android.app.component.video.h hVar = this.f57796j;
        if (hVar != null) {
            hVar.E();
        }
    }

    @Click
    void relodingimag() {
        showLoding();
        S();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f57789c);
    }

    @UiThread
    void showLoding() {
        try {
            LinearLayout linearLayout = this.f57791e;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f57792f;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f57792f;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f57791e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    @UiThread
    void showMain() {
        LinearLayout linearLayout = this.f57792f;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f57791e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.f57789c).d(message);
    }

    @UiThread
    void updateData(CollectionModuleSevenBean data) {
        showMain();
        if (data == null || data.getTemplate_items() == null) {
            showLodingFailed();
            return;
        }
        for (CollectionModuleSevenSubBean collectionModuleSevenSubBean : data.getTemplate_items()) {
            if (collectionModuleSevenSubBean != null && collectionModuleSevenSubBean.getModel_val() != null) {
                int model_type = collectionModuleSevenSubBean.getModel_type();
                CollectionModuleSevenItemBean model_val = collectionModuleSevenSubBean.getModel_val();
                if (model_val != null && !TextUtils.isEmpty(model_val.getTitle())) {
                    CollectionSevenListBean collectionSevenListBean = new CollectionSevenListBean();
                    collectionSevenListBean.setType(1);
                    if (collectionModuleSevenSubBean.getModel_val() != null) {
                        collectionSevenListBean.setTitle(collectionModuleSevenSubBean.getModel_val().getTitle());
                        collectionSevenListBean.setSubTitle(collectionModuleSevenSubBean.getModel_val().getSub_title());
                        collectionSevenListBean.setCollection_id(collectionModuleSevenSubBean.getModel_val().getCollection_id());
                        collectionSevenListBean.setTpl_type(collectionModuleSevenSubBean.getModel_val().getTpl_type());
                    } else {
                        collectionSevenListBean.setTitle(collectionModuleSevenSubBean.getTitle());
                    }
                    this.f57794h.add(collectionSevenListBean);
                }
                if (model_type == 1) {
                    if (model_val != null && model_val.getGame_info() != null) {
                        CommonGameInfoBean game_info = model_val.getGame_info();
                        if (!TextUtils.isEmpty(model_val.getCover_url())) {
                            game_info.setBig_pic(model_val.getCover_url());
                        }
                        if (!TextUtils.isEmpty(model_val.getVideo_url())) {
                            game_info.setV_url(model_val.getVideo_url());
                        }
                        this.f57794h.add(new CollectionSevenListBean(2, Z(game_info)));
                        this.f57797k.add(model_val.getGame_info());
                    }
                } else if (model_type == 2) {
                    if (model_val != null && model_val.getCollection_list() != null) {
                        List<CommonGameInfoBean> collection_list = model_val.getCollection_list();
                        Iterator<CommonGameInfoBean> it2 = collection_list.iterator();
                        while (it2.hasNext()) {
                            Z(it2.next());
                        }
                        this.f57794h.add(new CollectionSevenListBean(4, collection_list));
                        this.f57797k.addAll(model_val.getCollection_list());
                    }
                    if (model_val != null && model_val.getGame_list() != null) {
                        for (CommonGameInfoBean commonGameInfoBean : model_val.getGame_list()) {
                            this.f57794h.add(new CollectionSevenListBean(3, Z(commonGameInfoBean)));
                            this.f57797k.add(commonGameInfoBean);
                        }
                    }
                } else if (model_type == 3) {
                    if (model_val != null && model_val.getGame_big() != null) {
                        CommonGameInfoBean game_big = model_val.getGame_big();
                        if (!TextUtils.isEmpty(model_val.getCover_url())) {
                            game_big.setBig_pic(model_val.getCover_url());
                        }
                        if (!TextUtils.isEmpty(model_val.getVideo_url())) {
                            game_big.setV_url(model_val.getVideo_url());
                        }
                        this.f57794h.add(new CollectionSevenListBean(2, Z(game_big)));
                        this.f57797k.add(model_val.getGame_big());
                    }
                    if (model_val != null && model_val.getGame_list() != null) {
                        for (CommonGameInfoBean commonGameInfoBean2 : model_val.getGame_list()) {
                            this.f57794h.add(new CollectionSevenListBean(3, Z(commonGameInfoBean2)));
                            this.f57797k.add(commonGameInfoBean2);
                        }
                    }
                } else if (model_type == 4) {
                    if (model_val != null && model_val.getGame_big_list() != null) {
                        for (CommonGameInfoBean commonGameInfoBean3 : model_val.getGame_big_list()) {
                            this.f57794h.add(new CollectionSevenListBean(2, Z(commonGameInfoBean3)));
                            this.f57797k.add(commonGameInfoBean3);
                        }
                    }
                } else if (model_type == 5) {
                    if (model_val != null && model_val.getGame_list() != null) {
                        for (CommonGameInfoBean commonGameInfoBean4 : model_val.getGame_list()) {
                            this.f57794h.add(new CollectionSevenListBean(3, Z(commonGameInfoBean4)));
                            this.f57797k.add(commonGameInfoBean4);
                        }
                    }
                } else if (model_type == 6) {
                    if (model_val != null && model_val.getCollection_list() != null) {
                        List<CommonGameInfoBean> collection_list2 = model_val.getCollection_list();
                        Iterator<CommonGameInfoBean> it3 = collection_list2.iterator();
                        while (it3.hasNext()) {
                            Z(it3.next());
                        }
                        this.f57794h.add(new CollectionSevenListBean(4, collection_list2));
                        this.f57797k.addAll(model_val.getCollection_list());
                    }
                } else if (model_type == 7 && model_val != null && model_val.getAdvert_list() != null) {
                    this.f57794h.add(new CollectionSevenListBean(5, model_val.getAdvert_list()));
                }
            }
        }
        com.join.mgps.adapter.t tVar = this.f57795i;
        if (tVar != null) {
            tVar.C(this.f57794h);
        }
        updateDownStateList(this.f57797k);
        autoPlay();
        expDiscountGame();
    }
}
