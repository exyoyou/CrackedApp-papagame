package com.join.mgps.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetialIntentBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.GameDetialStrategyTag;
import com.join.mgps.dto.RecommendInfomationBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.ResultMessageBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.detial_more_imformation_layout)
public class GameDetialInformationMoreActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {

    @ViewById
    ImageView back_image;
    private com.join.mgps.adapter.d1 collectionAdapter;
    private List<RecommendInfomationBean> collectionBeanSubList;
    private Context context;

    @Extra
    DetialIntentBean detialIntentBean;
    com.join.mgps.dialog.f1 dialogLoding;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;

    @ViewById
    LinearLayout group;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @ViewById
    PtrClassicFrameLayout mPtrFrame;

    @StringRes(resName = "connect_server_excption")
    String netConnectExcption;

    @StringRes(resName = "net_excption")
    String netExcption;

    @ViewById
    XListView2 rankListView;

    @ViewById
    ImageView relodingimag;
    com.join.mgps.rpc.e rpcClient;

    @ViewById(R.id.title_normal_search_img)
    ImageView searchImg;

    @ViewById
    LinearLayout tabs;
    List<GameDetialStrategyTag> tags;

    @ViewById
    TextView title_textview;
    private int pn = 1;
    private int lastVisibleIndex = 0;
    private Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    private String collection_title = "";
    private int firstVisiblePosition = 0;
    private boolean isRequesting = false;
    private int tabNumber = 0;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (GameDetialInformationMoreActivity.this.isRequesting) {
                return;
            }
            GameDetialInformationMoreActivity.this.getListData();
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (GameDetialInformationMoreActivity.this.isRequesting) {
                return;
            }
            GameDetialInformationMoreActivity.this.pn = 1;
            GameDetialInformationMoreActivity.this.getListData();
        }
    }

    class c implements AdapterView.OnItemClickListener {
        c() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            try {
                if (i10 <= GameDetialInformationMoreActivity.this.collectionBeanSubList.size() && i10 >= 0) {
                    RecommendInfomationBean recommendInfomationBean = (RecommendInfomationBean) GameDetialInformationMoreActivity.this.collectionBeanSubList.get(i10);
                    ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                    forumPostsBean.setPid(recommendInfomationBean.getPost_id());
                    com.join.mgps.Util.r0.v0(GameDetialInformationMoreActivity.this.context, forumPostsBean);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameDetialStrategyTag f52499b;

        d(final GameDetialStrategyTag val$tabBean) {
            this.f52499b = val$tabBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            GameDetialInformationMoreActivity.this.tabNumber = this.f52499b.getTag_id();
            GameDetialInformationMoreActivity.this.pn = 1;
            GameDetialInformationMoreActivity.this.dialogLoding.b();
            GameDetialInformationMoreActivity.this.getListData();
        }
    }

    @AfterViews
    void afterViews() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.context = this;
        this.dialogLoding = com.join.mgps.Util.h0.h0(this).x(this.context);
        this.tabNumber = this.detialIntentBean.getStartegyTab();
        if (this.detialIntentBean.getIntentType() == 1 || this.detialIntentBean.getIntentType() == 5) {
            this.tabs.setVisibility(0);
            List<GameDetialStrategyTag> strategyTags = this.detialIntentBean.getStrategyTags();
            this.tags = strategyTags;
            refresh(this.group, strategyTags);
            this.title_textview.setText(GameMainActivity4.TITLE_INTRODUCTION);
        } else {
            this.tabs.setVisibility(8);
            this.title_textview.setText("最新资讯");
        }
        com.join.mgps.adapter.d1 d1Var = new com.join.mgps.adapter.d1(this.context);
        this.collectionAdapter = d1Var;
        this.collectionBeanSubList = d1Var.c();
        showLoding();
        getListData();
        this.rankListView.setPreLoadCount(10);
        this.rankListView.setPullLoadEnable(new a());
        this.rankListView.setPullRefreshEnable(new b());
        this.rankListView.setOnItemClickListener(new c());
        this.rankListView.setOnScrollListener(this);
        this.rankListView.setAdapter((ListAdapter) this.collectionAdapter);
    }

    @Click
    void back_image() {
        finish();
    }

    @UiThread
    void dismissLodingdialog() {
        com.join.mgps.dialog.f1 f1Var = this.dialogLoding;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.dialogLoding.dismiss();
    }

    @Background
    void getListData() {
        new ArrayList();
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            updateListFooter();
            showLodingFailed();
            dismissLodingdialog();
            return;
        }
        this.isRequesting = true;
        try {
            try {
                CommonRequestBean<RequestGameIdArgs> requestBean = getRequestBean(this.detialIntentBean.getGameId(), this.pn, this.tabNumber);
                ResultMessageBean<List<RecommendInfomationBean>> messages = (this.detialIntentBean.getIntentType() == 2 ? this.rpcClient.G0(requestBean) : this.rpcClient.Q0(requestBean)).getMessages();
                if (messages != null) {
                    List<RecommendInfomationBean> data = messages.getData();
                    if (data == null || data.size() <= 0) {
                        noMore();
                    } else {
                        if (data.size() == 0) {
                            noMore();
                        } else {
                            this.pn++;
                        }
                        showMain(data);
                        updateListFooter();
                    }
                } else {
                    updateListFooter();
                    showLodingFailed();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                updateListFooter();
                showLodingFailed();
            }
        } finally {
            this.isRequesting = false;
            dismissLodingdialog();
        }
    }

    public CommonRequestBean getRequestBean(String gameid, int pn, int tag_id) {
        return RequestBeanUtil.getInstance(this.context).getDetialImfMore(gameid, pn, tag_id, 0);
    }

    @Click
    void mg_loading() {
        this.pn = 1;
        getListData();
    }

    @UiThread
    void noMore() {
        this.rankListView.setNoMore();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.lastVisibleIndex = (visibleItemCount + firstVisibleItem) - 1;
        this.firstVisiblePosition = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    public void refresh(ViewGroup parent, List<GameDetialStrategyTag> tabBeanList) {
        if (parent != null) {
            parent.removeAllViews();
        }
        if (tabBeanList == null || tabBeanList.size() == 0) {
            return;
        }
        TextView[] textViewArr = null;
        for (int i10 = 0; i10 < tabBeanList.size(); i10++) {
            GameDetialStrategyTag gameDetialStrategyTag = tabBeanList.get(i10);
            int i11 = i10 % 4;
            if (i11 == 0) {
                View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.forum_theme_category_item, (ViewGroup) null);
                TextView[] textViewArr2 = {(TextView) viewInflate.findViewById(R.id.tv1), (TextView) viewInflate.findViewById(R.id.tv2), (TextView) viewInflate.findViewById(R.id.tv3), (TextView) viewInflate.findViewById(R.id.tv4)};
                parent.addView(viewInflate);
                textViewArr = textViewArr2;
            }
            String tag_name = gameDetialStrategyTag.getTag_name();
            int color = this.context.getResources().getColor(R.color.game_detail_tab_text_color);
            TextView textView = textViewArr[i11];
            textView.setVisibility(0);
            textView.setText(tag_name);
            textView.setTextColor(color);
            if (this.tabNumber == gameDetialStrategyTag.getTag_id()) {
                textView.setSelected(true);
            } else {
                textView.setSelected(false);
            }
            textView.setOnClickListener(new d(gameDetialStrategyTag));
        }
    }

    @Click
    void relodingimag() {
        this.pn = 1;
        showLoding();
        getListData();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    @UiThread
    void showLoding() {
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        List<RecommendInfomationBean> list = this.collectionBeanSubList;
        if (list == null || list.size() == 0) {
            this.loding_faile.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.mPtrFrame.setVisibility(8);
        }
    }

    @UiThread
    void showMain(List<RecommendInfomationBean> subList) {
        if (subList == null || subList.size() == 0) {
            return;
        }
        refresh(this.group, this.tags);
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.mPtrFrame.setVisibility(0);
        if (this.pn <= 2) {
            this.collectionBeanSubList.clear();
        }
        this.collectionBeanSubList.addAll(subList);
        if (this.pn != 2) {
            this.collectionAdapter.notifyDataSetChanged();
        } else {
            this.collectionBeanSubList.size();
            this.collectionAdapter.notifyDataSetChanged();
        }
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void title_normal_search_img() {
        SearchHintActivity_.intent(this.context).start();
        com.papa.sim.statistic.t.l(this.context).y2(Where.modufour, AccountUtil_.getInstance_(this.context).getUid());
    }

    @UiThread
    void updateListFooter() {
        this.rankListView.v();
        this.rankListView.u();
    }
}
