package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.BaseAppCompatActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.LoadingLayout;
import com.join.mgps.customview.SlidingTabLayoutNoViewPager;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;
import com.join.mgps.dto.ClassfyTypeBean;
import com.join.mgps.dto.ClassifyGameTagBean;
import com.join.mgps.dto.ResultMainBean;
import com.papa.sim.statistic.Where;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
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
@EActivity(R.layout.activity_classify_game)
public class ClassifyGameActivity extends BaseAppCompatActivity implements View.OnClickListener, com.join.mgps.dialog.u.a {
    private static final String TAG = "ClassifyGameActivity";

    @ViewById
    AppBarLayout appbar;
    ClassifyGameTagBean classifyGameTagBean;
    m classifyHotFragment;
    private FlowLayout classifyLayout;
    private FlowLayout classifyLayout2;
    private Button classifySortBt;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;
    List<ClassifyGameTagBean> gameTags;

    @Extra
    int gameTypeId;

    @ViewById
    LinearLayout loading_none;
    private Context mContext;
    protected LoadingLayout mLoadingLayout;
    com.join.mgps.rpc.e mRpcClient;

    @ViewById
    FrameLayout mViewpagerV4;
    private com.join.mgps.dialog.u popupWindow;

    @ViewById
    SwipeRefresh refreshx;

    @Extra
    int romTypeId;
    private LinearLayout rootLl;

    @ViewById
    TextView selectedType;

    @ViewById
    SlidingTabLayoutNoViewPager table1;

    @ViewById
    SlidingTabLayoutNoViewPager table2;

    @ViewById
    SlidingTabLayoutNoViewPager table3;

    @Extra
    String title;

    @ViewById
    ImageView title_normal_search_img;

    @ViewById
    TextView title_textview;

    @ViewById
    Toolbar toolbar;

    @Extra
    String topTitle;
    private ArrayList<Fragment> fragmentsList = new ArrayList<>();
    private List<String> stringList = new ArrayList();
    private List<String> simulatorstringList = new ArrayList();
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    private int windowWidth = 0;
    List<ClassifyGameTagBean> gameTagBeanList = new ArrayList();
    List<ClassifyGameTagBean> simulatorTagBeanList = new ArrayList();
    private int viewpageIndex = 0;
    private String sortPoint = com.join.mgps.Util.v0.f50057a;

    class a implements SwipeRefresh.j {
        a() {
        }

        @Override // com.join.mgps.customview.swiperefresh.SwipeRefresh.j
        public void onRefresh() {
            m mVar = ClassifyGameActivity.this.classifyHotFragment;
            if (mVar != null) {
                mVar.d0();
            }
        }
    }

    class b implements s4.b {
        b() {
        }

        @Override // s4.b
        public void onTabReselect(int position) {
        }

        @Override // s4.b
        public void onTabSelect(int position) {
            if (position == 1) {
                ClassifyGameActivity.this.sortPoint = "time";
            } else if (position == 2) {
                ClassifyGameActivity.this.sortPoint = "score";
            } else {
                ClassifyGameActivity.this.sortPoint = com.join.mgps.Util.v0.f50057a;
            }
            ClassifyGameActivity.this.showDataF(null);
            ClassifyGameActivity.this.showTitleName();
        }
    }

    class c implements AppBarLayout.OnOffsetChangedListener {
        c() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int verticalOffset) {
            ClassifyGameActivity.this.toolbar.setAlpha(Math.abs(verticalOffset * 1.0f) / appBarLayout.getTotalScrollRange());
            if (Math.abs(verticalOffset) > ClassifyGameActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp75)) {
                ClassifyGameActivity.this.toolbar.setVisibility(0);
            } else {
                ClassifyGameActivity.this.toolbar.setVisibility(8);
            }
        }
    }

    class d implements s4.b {
        d() {
        }

        @Override // s4.b
        public void onTabReselect(int position) {
        }

        @Override // s4.b
        public void onTabSelect(int position) {
            ClassifyGameActivity.this.showTitleName();
            if (ClassifyGameActivity.this.gameTagBeanList.size() >= position) {
                ClassifyGameActivity classifyGameActivity = ClassifyGameActivity.this;
                classifyGameActivity.romTypeId = classifyGameActivity.gameTagBeanList.get(position).getId();
            }
            ClassifyGameActivity.this.showDataF(null);
            ClassifyGameActivity classifyGameActivity2 = ClassifyGameActivity.this;
            classifyGameActivity2.title_textview.setText((CharSequence) classifyGameActivity2.stringList.get(position));
        }
    }

    class e implements s4.b {
        e() {
        }

        @Override // s4.b
        public void onTabReselect(int position) {
        }

        @Override // s4.b
        public void onTabSelect(int position) {
            ClassifyGameActivity.this.showTitleName();
            if (ClassifyGameActivity.this.simulatorTagBeanList.size() >= position) {
                ClassifyGameActivity classifyGameActivity = ClassifyGameActivity.this;
                classifyGameActivity.gameTypeId = classifyGameActivity.simulatorTagBeanList.get(position).getId();
            }
            ClassifyGameActivity.this.showDataF(null);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = ClassifyGameActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.g();
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = ClassifyGameActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.h();
            }
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = ClassifyGameActivity.this.mLoadingLayout;
            if (loadingLayout != null) {
                loadingLayout.d();
            }
        }
    }

    private void hidePopupWindow() {
        this.popupWindow.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    @AfterViews
    void afterViews() {
        this.mRpcClient = com.join.mgps.rpc.impl.d.O1();
        this.mContext = this;
        this.mLoadingLayout = (LoadingLayout) findViewById(R.id.mLoadingLayout);
        getDownloadTaskInfo();
        org.greenrobot.eventbus.c.f().v(this);
        this.downloadView.setVisibility(0);
        this.title_normal_search_img.setVisibility(0);
        this.title_textview.setText(this.title);
        this.windowWidth = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getWidth();
        loadData();
        this.refreshx.setOnRefreshListener(new a());
        ArrayList arrayList = new ArrayList();
        List<ClassifyGameTagBean> list = this.gameTags;
        if (list != null) {
            Iterator<ClassifyGameTagBean> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getName());
            }
        } else {
            this.gameTags = new ArrayList();
        }
        this.table1.setmTitles(new String[]{"综合", "最新", "评分"});
        this.table1.setOnTabSelectListener(new b());
        this.appbar.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new c());
    }

    @Click
    void back_image() {
        finish();
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                this.downloadedMap.put(crc_link_type_val, task);
            }
            if (!this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.put(crc_link_type_val, task);
            }
        } else if (from != 3) {
            if (from != 5) {
                if (from != 6) {
                    if (from == 7) {
                        if (this.downloadedMap.containsKey(crc_link_type_val)) {
                            this.downloadedMap.remove(crc_link_type_val);
                        }
                        if (this.downloadingMap.containsKey(crc_link_type_val)) {
                            this.downloadingMap.remove(crc_link_type_val);
                        }
                    } else if (from == 10) {
                        if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                            this.downloadedMap.put(crc_link_type_val, task);
                        }
                        if (!this.downloadingMap.containsKey(crc_link_type_val)) {
                            this.downloadingMap.put(crc_link_type_val, task);
                        }
                    } else if (from == 11) {
                    }
                } else if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                }
            } else if (this.downloadedMap.containsKey(crc_link_type_val)) {
                this.downloadedMap.remove(crc_link_type_val);
            }
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.remove(crc_link_type_val);
            }
        } else if (this.downloadingMap.containsKey(crc_link_type_val)) {
            this.downloadingMap.remove(crc_link_type_val);
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void changeViewPageByTitle() {
        String str = this.topTitle;
        if (str == null || str.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.stringList.size() && !this.topTitle.equals(this.stringList.get(i10)); i10++) {
        }
    }

    @Override // com.join.mgps.dialog.u.a
    public void cloesCallBack() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> listR = q5.f.M().r();
        List<DownloadTask> listQ = q5.f.M().q();
        if (listQ != null && listQ.size() > 0) {
            for (DownloadTask downloadTask : listQ) {
                this.downloadedMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.downloadingMap.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    public String getSortPoint() {
        return this.sortPoint;
    }

    protected void hideLoadingLayout() {
        new Handler(Looper.getMainLooper()).post(new h());
    }

    @Background
    public void loadData() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showFailLayout();
            return;
        }
        try {
            com.join.mgps.rpc.e eVar = this.mRpcClient;
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this);
            int i10 = this.gameTypeId;
            int i11 = i10 == 0 ? 1 : 2;
            int i12 = this.romTypeId;
            if (i12 != 0) {
                i10 = i12;
            }
            ResultMainBean<ClassfyTypeBean> resultMainBeanH1 = eVar.h1(requestBeanUtil.getClassifyGameBean(i11, i10));
            if (resultMainBeanH1 == null || resultMainBeanH1.getFlag() != 1 || resultMainBeanH1.getMessages() == null) {
                showFailLayout();
                return;
            }
            ClassfyTypeBean data = resultMainBeanH1.getMessages().getData();
            if (data == null) {
                showFailLayout();
                return;
            }
            ClassifyGameTagBean classifyGameTagBean = new ClassifyGameTagBean();
            classifyGameTagBean.setId(0);
            classifyGameTagBean.setTitle(LocalGameActivity.ALL);
            this.gameTagBeanList.addAll(data.getGame_type());
            this.simulatorTagBeanList.add(classifyGameTagBean);
            this.simulatorTagBeanList.addAll(data.getSimulator_type());
            Iterator<ClassifyGameTagBean> it2 = this.gameTagBeanList.iterator();
            while (it2.hasNext()) {
                this.stringList.add(it2.next().getTitle());
            }
            Iterator<ClassifyGameTagBean> it3 = this.simulatorTagBeanList.iterator();
            while (it3.hasNext()) {
                this.simulatorstringList.add(it3.next().getTitle());
            }
            if (this.stringList.size() <= 0) {
                showNoData();
                return;
            }
            showDataF(null);
            notifyDataSetChanged();
            changeViewPageByTitle();
        } catch (Exception e10) {
            e10.printStackTrace();
            showFailLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyDataSetChanged() {
        this.loading_none.setVisibility(8);
        this.mViewpagerV4.setVisibility(0);
        hideLoadingLayout();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        v10.getId();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.dialog.u uVar = this.popupWindow;
        if (uVar != null) {
            uVar.dismiss();
        }
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57218b.lambda$onEventMainThread$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        updateDownloadView();
    }

    @Click
    void selectedType() {
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) this.appbar.getLayoutParams()).getBehavior();
        if (behavior instanceof AppBarLayout.Behavior) {
            AppBarLayout.Behavior behavior2 = (AppBarLayout.Behavior) behavior;
            if (behavior2.getTopAndBottomOffset() == (-this.appbar.getTotalScrollRange())) {
                behavior2.setTopAndBottomOffset(0);
                this.toolbar.setVisibility(8);
            }
        }
    }

    @Click
    void setAll() {
        finish();
    }

    public void setShowRefresh(boolean show) {
        if (show) {
            this.refreshx.setRefreshing(true);
        } else {
            this.refreshx.setRefreshing(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDataF(ClassifyGameTagBean classifyGameTagBean) {
        try {
            FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
            this.classifyGameTagBean = classifyGameTagBean;
            m mVar = this.classifyHotFragment;
            String str = "10001";
            if (mVar == null) {
                if (classifyGameTagBean == null) {
                    SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager = this.table2;
                    List<String> list = this.stringList;
                    slidingTabLayoutNoViewPager.setmTitles((String[]) list.toArray(new String[list.size()]));
                    for (int i10 = 0; i10 < this.gameTagBeanList.size(); i10++) {
                        if (this.gameTagBeanList.get(i10).getId() == this.romTypeId) {
                            updateTable(this.table2, i10);
                        }
                    }
                    this.table2.setOnTabSelectListener(new d());
                    SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager2 = this.table3;
                    List<String> list2 = this.simulatorstringList;
                    slidingTabLayoutNoViewPager2.setmTitles((String[]) list2.toArray(new String[list2.size()]));
                    for (int i11 = 0; i11 < this.simulatorTagBeanList.size(); i11++) {
                        if (this.simulatorTagBeanList.get(i11).getId() == this.gameTypeId) {
                            updateTable(this.table3, i11);
                        }
                    }
                    this.table3.setOnTabSelectListener(new e());
                    String str2 = this.gameTypeId == 0 ? "" : this.gameTypeId + "";
                    if (this.romTypeId != 0) {
                        str = this.romTypeId + "";
                    }
                    this.classifyHotFragment = m.W(str2, str);
                } else {
                    String str3 = this.gameTypeId == 0 ? "" : this.gameTypeId + "";
                    if (this.romTypeId != 0) {
                        str = this.romTypeId + "";
                    }
                    this.classifyHotFragment = m.W(str3, str);
                }
                fragmentTransactionBeginTransaction.add(R.id.mViewpagerV4, this.classifyHotFragment);
                fragmentTransactionBeginTransaction.commit();
            } else if (classifyGameTagBean == null) {
                String str4 = this.gameTypeId == 0 ? "" : this.gameTypeId + "";
                if (this.romTypeId != 0) {
                    str = this.romTypeId + "";
                }
                mVar.h0(str4, str);
            } else {
                String str5 = this.gameTypeId == 0 ? "" : this.gameTypeId + "";
                if (this.romTypeId != 0) {
                    str = this.romTypeId + "";
                }
                mVar.h0(str5, str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        showTitleName();
    }

    protected void showFailLayout() {
        new Handler(Looper.getMainLooper()).post(new f());
    }

    protected void showLoadingLayout() {
        new Handler(Looper.getMainLooper()).post(new g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showNoData() {
        this.loading_none.setVisibility(0);
        this.mViewpagerV4.setVisibility(8);
        hideLoadingLayout();
    }

    public void showTitleName() {
        this.selectedType.setText(this.table1.getSelectTabName() + " · " + this.table2.getSelectTabName() + " · " + this.table3.getSelectTabName());
        TextView textView = this.title_textview;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.table2.getSelectTabName());
        sb2.append(com.join.mgps.Util.o0.f49827a);
        sb2.append(this.table3.getSelectTabName());
        textView.setText(sb2.toString());
    }

    @Click
    void title_normal_download_cdv() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void title_normal_search_img() {
        SearchHintActivity_.intent(this.mContext).start();
        com.papa.sim.statistic.t.l(this.mContext).y2(Where.classGame, AccountUtil_.getInstance_(this.mContext).getUid());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        this.downloadView.setDownloadGameNum();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void updateTable(SlidingTabLayoutNoViewPager table, int postion) {
        table.setItemSelected(postion);
    }
}
