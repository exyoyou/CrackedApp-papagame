package com.join.mgps.activity;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
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
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_collection_module_seven)
public class CollectionModuleSevenActivity extends BaseAppCompatActivity {
    private static final String TAG = "CollectionModuleSeven";

    @ViewById
    ImageView back_image;

    @ViewById
    RecyclerView breakListView;
    private Context context;
    private int firstVisiblePosition;
    private int lastVisibleIndex;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @Extra
    ExtBean parentExtBean;

    @ViewById
    ImageView relodingimag;
    private com.join.mgps.adapter.t sevenAdapter;

    @Extra
    String templateId;

    @ViewById
    TextView title_textview;
    private com.join.android.app.component.video.h videoHelper;
    private List<CollectionSevenListBean> datas = new ArrayList();
    private List<CommonGameInfoBean> allDownloadAppHomeBeans = new ArrayList();
    private boolean SCROLLING = false;
    ExtBean pageExtBean = new ExtBean().setTypeCode(EventP.TypeCode.page.name()).setFrom(Constants.COUNTYLY_CLOUD_PLAY_IS_RUN);
    private boolean isExposuring = false;

    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 0) {
                CollectionModuleSevenActivity.this.autoPlay();
                CollectionModuleSevenActivity.this.expDiscountGame();
            }
            CollectionModuleSevenActivity.this.SCROLLING = newState != 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (linearLayoutManager != null) {
                CollectionModuleSevenActivity.this.lastVisibleIndex = linearLayoutManager.findLastVisibleItemPosition();
                CollectionModuleSevenActivity.this.firstVisiblePosition = linearLayoutManager.findFirstVisibleItemPosition();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expDiscountGame() {
        try {
            try {
                if (!this.isExposuring) {
                    this.isExposuring = true;
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.breakListView.getLayoutManager();
                    if (linearLayoutManager != null) {
                        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
                        for (int i10 = 0; i10 <= iFindLastVisibleItemPosition; i10++) {
                            CollectionSevenListBean collectionSevenListBean = this.datas.get(i10);
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
                                            com.papa.sim.statistic.t.l(this.context).Y(Event.expGameAdPage, ext, data);
                                        } catch (Exception e10) {
                                            e10.printStackTrace();
                                        }
                                    }
                                    com.papa.sim.statistic.t.l(this).R1(Event.expGameAdPage, commonGameInfoBean.getExtBean().buildScene().toExt());
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        } finally {
            this.isExposuring = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterviews$0(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Object item = this.datas.get(i10).getItem();
        if (item instanceof CommonGameInfoBean) {
            IntentUtil.getInstance().intentActivity(this, ((CommonGameInfoBean) item).getIntentDataBean());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateData$1() {
        autoPlay();
        expDiscountGame();
    }

    private void notifyDataSetChanged() {
        this.sevenAdapter.notifyDataSetChanged();
    }

    private void receiveDelete(DownloadTask downloadTask) {
        updateDownStateList();
        notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        updateDownStateList();
        notifyDataSetChanged();
    }

    private void receiveStart(DownloadTask downloadTask) {
        updateDownStateList();
        notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        updateDownStateList();
        notifyDataSetChanged();
    }

    private boolean shouldApplyDownloadProgress(DownloadTask task) {
        if (task == null) {
            return false;
        }
        int status = task.getStatus();
        return status == 1 || status == 2 || status == 3 || status == 10 || status == 12;
    }

    private void updateDownStateList() {
        Iterator<CommonGameInfoBean> it2 = this.allDownloadAppHomeBeans.iterator();
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
        RecyclerView recyclerView2 = this.breakListView;
        if (recyclerView2 == null || this.sevenAdapter == null || (linearLayoutManager = (LinearLayoutManager) recyclerView2.getLayoutManager()) == null) {
            return;
        }
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        if (iFindFirstVisibleItemPosition == -1) {
            return;
        }
        while (iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition) {
            CollectionSevenListBean item = this.sevenAdapter.getItem(iFindFirstVisibleItemPosition);
            if (item != null) {
                try {
                    int itemType = item.getItemType();
                    if (itemType == 2 || itemType == 3) {
                        if (item.getItem() instanceof CommonGameInfoBean) {
                            DownloadTask task = DlTaskManager.INSTANCE.getTask((CommonGameInfoBean) item.getItem());
                            if (shouldApplyDownloadProgress(task)) {
                                RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = this.breakListView.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                                if ((viewHolderFindViewHolderForAdapterPosition instanceof v2.c) && (downloadNormalView = (DownloadNormalView) ((v2.c) viewHolderFindViewHolderForAdapterPosition).b(R.id.dv_view)) != null) {
                                    downloadNormalView.d(task);
                                }
                            }
                        }
                    } else if (itemType == 4 && (item.getItem() instanceof List)) {
                        List list = (List) item.getItem();
                        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition2 = this.breakListView.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                        if ((viewHolderFindViewHolderForAdapterPosition2 instanceof v2.c) && (recyclerView = (RecyclerView) ((v2.c) viewHolderFindViewHolderForAdapterPosition2).b(R.id.recyclerView)) != null && recyclerView.getLayoutManager() != null) {
                            for (int i10 = 0; i10 < list.size(); i10++) {
                                DownloadTask task2 = DlTaskManager.INSTANCE.getTask((CommonGameInfoBean) list.get(i10));
                                if (shouldApplyDownloadProgress(task2) && (viewFindViewByPosition = recyclerView.getLayoutManager().findViewByPosition(i10)) != null && (downloadNormalView2 = (DownloadNormalView) viewFindViewByPosition.findViewById(R.id.dv_view)) != null) {
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

    @AfterViews
    void afterviews() {
        this.context = this;
        if (TextUtils.isEmpty(this.templateId)) {
            showMessage("专区id不存在");
            finish();
        }
        com.join.mgps.Util.j0.a().d(this);
        this.videoHelper = new com.join.android.app.component.video.h(this.breakListView, "PapaMainV3Fragment");
        this.breakListView.setLayoutManager(new LinearLayoutManager(this.context));
        com.join.mgps.adapter.t tVar = new com.join.mgps.adapter.t(this.datas, this.videoHelper);
        this.sevenAdapter = tVar;
        this.breakListView.setAdapter(tVar);
        this.sevenAdapter.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.mgps.activity.k0
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f57378a.lambda$afterviews$0(baseQuickAdapter, view, i10);
            }
        });
        this.breakListView.addOnScrollListener(new a());
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void autoPlay() {
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.i(1);
        }
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showMessage("当前网络不可用");
            showLodingFailed();
            return;
        }
        try {
            showLoding();
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.context);
            CollectionModuleSevenArgs collectionModuleSevenArgs = new CollectionModuleSevenArgs();
            collectionModuleSevenArgs.setTemplateId(this.templateId);
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

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.x();
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0041  */
    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
        } else if (iC == 3) {
            updateUI(downloadTaskA, 2);
        } else if (iC == 5) {
            updateUI(downloadTaskA, 5);
        } else if (iC == 6) {
            updateUI(downloadTaskA, 6);
        } else if (iC == 7) {
            updateUI(downloadTaskA, 3);
        } else if (iC != 8) {
            if (iC != 48) {
                switch (iC) {
                    case 10:
                        updateUI(downloadTaskA, 7);
                        break;
                    case 11:
                        updateUI(downloadTaskA, 5);
                        break;
                    case 12:
                        updateUI(downloadTaskA, 8);
                        break;
                    case 13:
                        updateUI(downloadTaskA, 9);
                        break;
                }
            } else {
                updateUI(downloadTaskA, 5);
            }
        } else if (!this.SCROLLING) {
            updateProgressPartly();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("receiveStart: ");
        sb2.append(downloadTaskEvent.c());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.y();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.h hVar = this.videoHelper;
        if (hVar != null) {
            hVar.E();
        }
    }

    @Click
    void relodingimag() {
        getData();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.loding_layout;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.loding_faile;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain() {
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateData(CollectionModuleSevenBean data) {
        showMain();
        if (data == null || data.getTemplate_items() == null) {
            showLodingFailed();
            return;
        }
        this.title_textview.setText(data.getTitle());
        if (data.getTemplate_type() == 1) {
            this.pageExtBean.setChatId(EventP.ChatId.cloudGameZone.name()).setParent(this.parentExtBean).setKeyword(this.templateId).setSopName(data.getTitle());
            if (!this.pageExtBean.hasExplore()) {
                com.papa.sim.statistic.t.l(this).R1(Event.commonExp, this.pageExtBean.copy().buildScene().toExt());
                this.pageExtBean.setHasExplore(true);
            }
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
                    this.datas.add(collectionSevenListBean);
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
                        game_info.getExtBean().itemWithParent(this.pageExtBean);
                        this.datas.add(new CollectionSevenListBean(2, game_info));
                        this.allDownloadAppHomeBeans.add(model_val.getGame_info());
                    }
                } else if (model_type == 2) {
                    if (model_val != null && model_val.getCollection_list() != null) {
                        List<CommonGameInfoBean> collection_list = model_val.getCollection_list();
                        Iterator<CommonGameInfoBean> it2 = collection_list.iterator();
                        while (it2.hasNext()) {
                            it2.next().getExtBean().itemWithParent(this.pageExtBean);
                        }
                        this.datas.add(new CollectionSevenListBean(4, collection_list));
                        this.allDownloadAppHomeBeans.addAll(model_val.getCollection_list());
                    }
                    if (model_val != null && model_val.getGame_list() != null) {
                        for (CommonGameInfoBean commonGameInfoBean : model_val.getGame_list()) {
                            commonGameInfoBean.getExtBean().itemWithParent(this.pageExtBean);
                            this.datas.add(new CollectionSevenListBean(3, commonGameInfoBean));
                            this.allDownloadAppHomeBeans.add(commonGameInfoBean);
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
                        game_big.getExtBean().itemWithParent(this.pageExtBean);
                        this.datas.add(new CollectionSevenListBean(2, game_big));
                        this.allDownloadAppHomeBeans.add(model_val.getGame_big());
                    }
                    if (model_val != null && model_val.getGame_list() != null) {
                        for (CommonGameInfoBean commonGameInfoBean2 : model_val.getGame_list()) {
                            commonGameInfoBean2.getExtBean().itemWithParent(this.pageExtBean);
                            this.datas.add(new CollectionSevenListBean(3, commonGameInfoBean2));
                            this.allDownloadAppHomeBeans.add(commonGameInfoBean2);
                        }
                    }
                } else if (model_type == 4) {
                    if (model_val != null && model_val.getGame_big_list() != null) {
                        for (CommonGameInfoBean commonGameInfoBean3 : model_val.getGame_big_list()) {
                            commonGameInfoBean3.getExtBean().itemWithParent(this.pageExtBean);
                            this.datas.add(new CollectionSevenListBean(2, commonGameInfoBean3));
                            this.allDownloadAppHomeBeans.add(commonGameInfoBean3);
                        }
                    }
                } else if (model_type == 5) {
                    if (model_val != null && model_val.getGame_list() != null) {
                        for (CommonGameInfoBean commonGameInfoBean4 : model_val.getGame_list()) {
                            commonGameInfoBean4.getExtBean().itemWithParent(this.pageExtBean);
                            this.datas.add(new CollectionSevenListBean(3, commonGameInfoBean4));
                            this.allDownloadAppHomeBeans.add(commonGameInfoBean4);
                        }
                    }
                } else if (model_type == 6) {
                    if (model_val != null && model_val.getCollection_list() != null) {
                        List<CommonGameInfoBean> collection_list2 = model_val.getCollection_list();
                        Iterator<CommonGameInfoBean> it3 = collection_list2.iterator();
                        while (it3.hasNext()) {
                            it3.next().getExtBean().itemWithParent(this.pageExtBean);
                        }
                        this.datas.add(new CollectionSevenListBean(4, collection_list2));
                        this.allDownloadAppHomeBeans.addAll(model_val.getCollection_list());
                    }
                } else if (model_type == 7) {
                    if (model_val != null && model_val.getAdvert_list() != null) {
                        this.datas.add(new CollectionSevenListBean(5, model_val.getAdvert_list()));
                    }
                } else if (model_type == 14 && model_val != null && model_val.getGame_list() != null) {
                    for (CommonGameInfoBean commonGameInfoBean5 : model_val.getGame_list()) {
                        commonGameInfoBean5.getExtBean().itemWithParent(this.pageExtBean);
                        this.datas.add(new CollectionSevenListBean(3, commonGameInfoBean5));
                        this.allDownloadAppHomeBeans.add(commonGameInfoBean5);
                    }
                }
            }
        }
        for (CommonGameInfoBean commonGameInfoBean6 : this.allDownloadAppHomeBeans) {
            commonGameInfoBean6.set_from(168);
            commonGameInfoBean6.set_from_type(168);
            DlTaskManager.INSTANCE.updateDownloadTask(commonGameInfoBean6);
        }
        com.join.mgps.adapter.t tVar = this.sevenAdapter;
        if (tVar != null) {
            tVar.C(this.datas);
        }
        this.breakListView.postDelayed(new Runnable() { // from class: com.join.mgps.activity.l0
            @Override // java.lang.Runnable
            public final void run() {
                this.f57391b.lambda$updateData$1();
            }
        }, 500L);
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            switch (from) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    break;
                case 3:
                    receiveDelete(downloadTask);
                    break;
                case 5:
                    receiveSuccess(downloadTask);
                    break;
                case 6:
                    receiveError(downloadTask);
                    break;
            }
        }
    }
}
