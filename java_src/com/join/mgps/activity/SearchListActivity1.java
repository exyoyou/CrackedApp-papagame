package com.join.mgps.activity;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.ui.search.fragment.SearchListGameFragment;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.search.SearchAutoAdData;
import com.join.mgps.activity.search.SearchAutoDataV1;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.db.tables.SearchRecordTable;
import com.join.mgps.dto.ClassfyTypeBean;
import com.join.mgps.dto.ClassifyGameTagBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RequestKeywordArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestSearchGameArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SearchAutoDataBean;
import com.join.mgps.dto.SearchGameListBean;
import com.join.mgps.dto.SearchGameListSpecialZoneBean;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.JsonMapper;
import com.wufan.user.service.protobuf.UserInfo;
import com.zhy.view.flowlayout.TagFlowLayout3;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
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
@EActivity(R.layout.search_list_activity1)
public class SearchListActivity1 extends BaseAppCompatActivity {
    com.join.mgps.customview.e0 adapter;

    @ViewById
    ListView autoListView;

    @ViewById
    ImageView back;

    @ViewById
    TagFlowLayout3 classifies;

    @ViewById
    View clear;
    private Context context;

    @Extra
    int currentTab;

    @Extra
    int from;

    @Extra
    String game_id;

    @ViewById
    EditText input;

    @Extra
    boolean isNeedRecommend;

    @ViewById
    ImageView iv_filter;
    int lang_id;

    @ViewById
    TagFlowLayout3 languages;

    @ViewById
    LinearLayout ll_filter;
    int plugin_num;
    com.join.mgps.rpc.e rpcClient;
    com.join.mgps.rpc.k rpcGameClient;
    private ResponseModel<SearchAutoDataV1> searchAutoBean;
    k searchSimpleAdapter;
    private SearchGameListSpecialZoneBean special_zone_info;

    @ViewById
    TabLayout tabLayout;

    @ViewById
    View tagBackground;

    @ViewById
    ViewPager viewPager;

    @Extra
    String keyword = "";
    List<ClassifyGameTagBean> gameTagBeanList = new ArrayList();
    List<String> classifiesData = new ArrayList();
    private ArrayList<Fragment> fragmentsList = new ArrayList<>();
    private List<String> stringList = new ArrayList();
    private String[] str = {LocalGameActivity.ALL, "游戏", "游戏单", "帖子", ""};
    private int pn = 1;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f55686pc = 50;
    boolean showAuto = true;
    private int lastVisibleIndex = 0;
    private int firstVisiblePosition = 0;
    private boolean SCROLLING = false;
    List<CommonGameInfoBean> gameDownLists = new ArrayList();
    private List<Object> searchAutoDataBeanList = new ArrayList();

    class a implements Function0<Unit> {
        a() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unit invoke() {
            SearchListActivity1 searchListActivity1 = SearchListActivity1.this;
            searchListActivity1.updateDowStateList(searchListActivity1.gameDownLists);
            SearchListActivity1.this.searchSimpleAdapter.notifyDataSetChanged();
            return null;
        }
    }

    class b implements View.OnKeyListener {
        b() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int keyCode, KeyEvent keyEvent) {
            if (keyCode != 66) {
                return false;
            }
            SearchListActivity1.this.search();
            return false;
        }
    }

    class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            if (charSequence.length() <= 0) {
                SearchListActivity1.this.clear.setVisibility(8);
                SearchListActivity1.this.autoListView.setVisibility(8);
                return;
            }
            SearchListActivity1 searchListActivity1 = SearchListActivity1.this;
            if (searchListActivity1.showAuto) {
                searchListActivity1.getSearchAutoData(searchListActivity1.input.getText().toString());
            } else {
                searchListActivity1.showAuto = true;
            }
            SearchListActivity1.this.clear.setVisibility(0);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SearchListActivity1.this.hideTags(false);
        }
    }

    class e implements AdapterView.OnItemClickListener {
        e() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            CommonGameInfoBean commonGameInfoBean;
            Object obj = SearchListActivity1.this.searchAutoDataBeanList.get(i10);
            SearchListActivity1.this.autoListView.setVisibility(8);
            if (obj instanceof SearchAutoDataBean) {
                SearchListActivity1.this.showAuto = false;
                SearchAutoDataBean searchAutoDataBean = (SearchAutoDataBean) obj;
                String string = searchAutoDataBean.getGame_name().toString();
                SearchListActivity1.this.game_id = searchAutoDataBean.getGame_id();
                SearchListActivity1.this.saveRecordBean(string);
                SearchListActivity1.this.input.setText(string);
                SearchListActivity1.this.input.setSelection(string.length());
                SearchListActivity1.this.loading();
                r7.a.b(SearchListActivity1.this.input);
                return;
            }
            boolean z10 = obj instanceof CommonGameInfoBean;
            if (z10) {
                CommonGameInfoBean commonGameInfoBean2 = (CommonGameInfoBean) obj;
                IntentUtil.getInstance().intentActivity(SearchListActivity1.this.context, commonGameInfoBean2.getIntentDataBean());
                Ext ext = new Ext();
                ext.setPosition("searchSuggest");
                ext.setGameId(commonGameInfoBean2.getGameId());
                com.papa.sim.statistic.t.l(SearchListActivity1.this.context).R1(Event.clickDetailFromSearchResult, ext);
                return;
            }
            if (!z10 || (commonGameInfoBean = (CommonGameInfoBean) obj) == null) {
                return;
            }
            if (commonGameInfoBean.isAdInfo()) {
                IntentUtil.getInstance().intentActivity(SearchListActivity1.this.context, commonGameInfoBean.getIntentDataBean());
                SearchListActivity1.this.sendAutoListPoint(Event.searchThinkAdWordClick, "2", commonGameInfoBean.getIntentDataBean().getLink_type_val(), commonGameInfoBean.getTitle());
                return;
            }
            String string2 = SearchListActivity1.this.input.getText().toString();
            if (commonGameInfoBean.getG_info() != null) {
                SearchListActivity1.this.game_id = commonGameInfoBean.getG_info().getId();
            }
            SearchListActivity1.this.saveRecordBean(string2);
            SearchListActivity1.this.loading();
            r7.a.b(SearchListActivity1.this.input);
            SearchListActivity1.this.sendAutoListPoint(Event.searchThinkAdWordClick, "1", commonGameInfoBean.getIntentDataBean().getLink_type_val(), commonGameInfoBean.getTitle());
        }
    }

    class f implements View.OnFocusChangeListener {
        f() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View v10, boolean hasFocus) {
        }
    }

    class g implements TabLayout.d {
        g() {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g tab) {
            SearchListActivity1.this.setStatus(tab);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabSelected(TabLayout.g tab) {
            if ("游戏".equals(SearchListActivity1.this.stringList.get(tab.k()))) {
                SearchListActivity1.this.iv_filter.setVisibility(0);
                if (tab.k() > 0) {
                    Ext ext = new Ext();
                    Data data = new Data();
                    data.setWhere(SearchListActivity1.this.keyword);
                    com.papa.sim.statistic.t.l(SearchListActivity1.this.context).W1(Event.clickChangeH5TabGame, ext, data);
                }
            } else {
                SearchListActivity1.this.iv_filter.setVisibility(8);
                if (SearchListActivity1.this.ll_filter.getVisibility() == 0) {
                    SearchListActivity1.this.hideTags(false);
                }
            }
            SearchListActivity1.this.setStatus(tab);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g tab) {
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchListActivity1.this.showTags(0);
        }
    }

    class i implements Animator.AnimatorListener {
        i() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
            SearchListActivity1.this.tagBackground.setVisibility(0);
            SearchListActivity1.this.ll_filter.setVisibility(0);
        }
    }

    class j implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f55696b;

        j(final boolean val$fresh) {
            this.f55696b = val$fresh;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            SearchListActivity1.this.tagBackground.setVisibility(8);
            SearchListActivity1.this.ll_filter.setVisibility(8);
            if (this.f55696b) {
                int selectedPosition = SearchListActivity1.this.classifies.getSelectedPosition();
                int id2 = selectedPosition < SearchListActivity1.this.gameTagBeanList.size() ? SearchListActivity1.this.gameTagBeanList.get(selectedPosition).getId() : 0;
                int i10 = SearchListActivity1.this.languages.getSelectedPosition() != 0 ? 1 : 0;
                SearchListActivity1 searchListActivity1 = SearchListActivity1.this;
                if (id2 == searchListActivity1.plugin_num && i10 == searchListActivity1.lang_id) {
                    return;
                }
                searchListActivity1.loadingRefresh();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
        }
    }

    private void getView() {
        if (this.tabLayout.getTabCount() == 0) {
            return;
        }
        int i10 = 0;
        while (i10 < this.tabLayout.getTabCount()) {
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.search_tab_item_layout_v2, (ViewGroup) null);
            ((TextView) viewInflate.findViewById(R.id.f35487tv)).setText(this.stringList.get(i10));
            viewInflate.findViewById(R.id.redTags).setVisibility((i10 == 0 || !"游戏".equals(this.stringList.get(i10))) ? 4 : 0);
            this.tabLayout.D(i10).v(viewInflate);
            i10++;
        }
        TextView textView = (TextView) this.tabLayout.D(0).g().findViewById(R.id.f35487tv);
        textView.setTextColor(-16777216);
        textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
        textView.setTypeface(textView.getTypeface(), 1);
        this.tabLayout.D(0).g().findViewById(R.id.iv).setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$initTags$0(View view, int i10, ViewGroup viewGroup) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$initTags$1(View view, int i10, ViewGroup viewGroup) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveRecordBean(String name) {
        List<SearchRecordTable> listD = t6.h0.n().d();
        if (listD == null && listD.size() == 0) {
            SearchRecordTable searchRecordTable = new SearchRecordTable();
            searchRecordTable.setName(name);
            searchRecordTable.setCreate_time(System.currentTimeMillis());
            t6.h0.n().m(searchRecordTable);
            return;
        }
        if (listD.size() > 100) {
            t6.h0.n().delete((Collection) t6.h0.n().i(10L, listD.size(), "create_time", false));
            return;
        }
        for (SearchRecordTable searchRecordTable2 : listD) {
            if (searchRecordTable2.getName().equals(name)) {
                t6.h0.n().delete(searchRecordTable2);
            }
        }
        SearchRecordTable searchRecordTable3 = new SearchRecordTable();
        searchRecordTable3.setName(name);
        searchRecordTable3.setCreate_time(System.currentTimeMillis());
        t6.h0.n().m(searchRecordTable3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAutoListPoint(Event event, String isJoin, String where, String remarks) {
        Ext ext = new Ext();
        ext.setIsJoin(isJoin);
        ext.setReMarks(remarks);
        Data data = new Data();
        data.setWhere(where);
        com.papa.sim.statistic.t.l(this.context).W1(event, ext, data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStatus(TabLayout.g tab) {
        if (this.tabLayout.getTabCount() == 0) {
            return;
        }
        for (int i10 = 0; i10 < this.tabLayout.getTabCount(); i10++) {
            View viewG = this.tabLayout.D(i10).g();
            if (viewG != null) {
                if (i10 == tab.k()) {
                    viewG.findViewById(R.id.redTags).setVisibility(4);
                    viewG.findViewById(R.id.iv).setVisibility(0);
                    TextView textView = (TextView) viewG.findViewById(R.id.f35487tv);
                    textView.setTextColor(-16777216);
                    textView.setTypeface(null, 1);
                    textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
                } else {
                    viewG.findViewById(R.id.iv).setVisibility(4);
                    TextView textView2 = (TextView) viewG.findViewById(R.id.f35487tv);
                    textView2.setTextColor(-16777216);
                    textView2.setTypeface(null, 0);
                    textView2.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp28));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDowStateList(List<CommonGameInfoBean> SearchDataBeanList) {
        Iterator<CommonGameInfoBean> it2 = SearchDataBeanList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i10 = 0; i10 <= 2 && !(this.autoListView.getItemAtPosition(i10) instanceof SearchAutoDataBean); i10++) {
            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) this.autoListView.getItemAtPosition(i10);
            if (commonGameInfoBean != null && (downloadTask = commonGameInfoBean.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.autoListView.getChildAt(i10 - this.firstVisiblePosition);
                if (childAt.getTag() instanceof SearchHintActivity.s) {
                    SearchHintActivity.s sVar = (SearchHintActivity.s) childAt.getTag();
                    try {
                        DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                        if (downloadTaskG == null) {
                            return;
                        }
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            sVar.f55599i.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            sVar.f55599i.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        if (downloadTask.getStatus() == 12) {
                            sVar.f55603m.setProgress((int) downloadTaskG.getProgress());
                        } else {
                            sVar.f55602l.setProgress((int) downloadTaskG.getProgress());
                        }
                        if (downloadTask.getStatus() == 2) {
                            sVar.f55601k.setText(downloadTaskG.getSpeed() + "/S");
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else {
                    continue;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    @AfterViews
    void afterViews() {
        this.context = this;
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        com.join.mgps.Util.j0.a().d(this);
        initTags();
        getSpecialZoneInfo(1, false);
        this.input.setText(this.keyword);
        if (!TextUtils.isEmpty(this.keyword)) {
            this.input.setSelection(this.keyword.length());
        }
        this.input.setOnKeyListener(new b());
        this.input.addTextChangedListener(new c());
        this.tagBackground.setOnClickListener(new d());
        k kVar = new k(this.context, this.searchAutoDataBeanList);
        this.searchSimpleAdapter = kVar;
        this.autoListView.setAdapter((ListAdapter) kVar);
        this.autoListView.setOnItemClickListener(new e());
        this.back.setOnFocusChangeListener(new f());
        this.back.requestFocus();
    }

    @Click
    void back() {
        finish();
    }

    @Click
    void clear() {
        this.input.setText("");
    }

    public CommonRequestBean getAutoRequestBean(String KEYWORD) {
        return RequestBeanUtil.getInstance(this.context).getSearchAutoRequestBean("searchAuto", KEYWORD, 1, 20, 0, 0);
    }

    public int getCurrentLangId() {
        if (this.currentTab != 0) {
            return 0;
        }
        if (this.languages.getSelectedPosition() == 0) {
            this.lang_id = 0;
        } else {
            this.lang_id = 1;
        }
        return this.lang_id;
    }

    public int getCurrentPluginNum() {
        if (this.currentTab != 0) {
            return 0;
        }
        int selectedPosition = this.classifies.getSelectedPosition();
        if (selectedPosition < this.gameTagBeanList.size()) {
            this.plugin_num = this.gameTagBeanList.get(selectedPosition).getId();
        }
        return this.plugin_num;
    }

    public String getGameId() {
        return this.game_id;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getSearchAutoData(String key) {
        List<SearchAutoDataBean> arrayList = new ArrayList<>();
        if (com.join.android.app.common.utils.m.j(this.context)) {
            try {
                try {
                    RequestModel requestModel = new RequestModel();
                    requestModel.setDefault(this.context);
                    requestModel.setArgs(new RequestKeywordArgs(keyword(), this.pn, this.f55686pc, 0, 0));
                    ResponseModel<SearchAutoDataV1> responseModelBody = com.join.mgps.rpc.impl.i.Q0().N0().Z0(requestModel.makeSign()).execute().body();
                    this.searchAutoBean = responseModelBody;
                    if (responseModelBody != null && responseModelBody.getData() != null) {
                        arrayList = this.searchAutoBean.getData().getSearch_list();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } finally {
                updateUI(arrayList, key);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getSpecialZoneInfo(int pn, boolean recommend) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            initViewpagerAndTab();
            Context context = this.context;
            if (context != null) {
                T(context.getResources().getString(R.string.net_connect_failed));
                return;
            }
            return;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        try {
            try {
                RequestSearchGameArgs requestSearchGameArgs = new RequestSearchGameArgs();
                requestSearchGameArgs.setGameId(this.game_id);
                requestSearchGameArgs.setLangId(Integer.valueOf(this.lang_id));
                requestSearchGameArgs.setPc(20);
                requestSearchGameArgs.setPn(Integer.valueOf(pn));
                requestSearchGameArgs.setKeyword(keyword());
                if (accountData != null) {
                    requestSearchGameArgs.setUid(Integer.valueOf(accountData.getUid()));
                } else {
                    requestSearchGameArgs.setUid(0);
                }
                requestSearchGameArgs.setPluginNum(Integer.valueOf(this.plugin_num));
                if (recommend) {
                    requestSearchGameArgs.setRec_pn(1);
                } else {
                    requestSearchGameArgs.setRec_pn(0);
                }
                requestSearchGameArgs.setIsRecommend(Integer.valueOf(recommend ? 1 : 0));
                RequestModel requestModel = new RequestModel(this.context);
                requestModel.setArgs(requestSearchGameArgs);
                requestModel.makeSign();
                try {
                    ResponseModel<SearchGameListBean> responseModelP0 = com.join.mgps.rpc.impl.i.Q0().p0(requestModel.makeSign());
                    if (responseModelP0 != null && responseModelP0.getData() != null) {
                        updateSpecialZoneInfo(responseModelP0.getData());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } finally {
            initViewpagerAndTab();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideTags(boolean fresh) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.ll_filter, "scaleY", 1.0f, 0.0f);
        this.ll_filter.setPivotY(0.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.ll_filter, "alpha", 1.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.tagBackground, "alpha", 1.0f, 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(200L);
        animatorSet.addListener(new j(fresh));
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        animatorSet.start();
    }

    void initTags() {
        this.classifies.setListener(new TagFlowLayout3.b() { // from class: com.join.mgps.activity.b9
            @Override // com.zhy.view.flowlayout.TagFlowLayout3.b
            public final void a(View view, int i10, ViewGroup viewGroup) {
                SearchListActivity1.lambda$initTags$0(view, i10, viewGroup);
            }
        });
        ArrayList arrayList = new ArrayList();
        arrayList.add(LocalGameActivity.ALL);
        arrayList.add("中文");
        this.languages.setData(arrayList);
        this.languages.setListener(new TagFlowLayout3.b() { // from class: com.join.mgps.activity.c9
            @Override // com.zhy.view.flowlayout.TagFlowLayout3.b
            public final void a(View view, int i10, ViewGroup viewGroup) {
                SearchListActivity1.lambda$initTags$1(view, i10, viewGroup);
            }
        });
        loadingTags();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void initViewpagerAndTab() {
        SearchGameListSpecialZoneBean searchGameListSpecialZoneBean;
        String str;
        this.fragmentsList = new ArrayList<>();
        this.stringList = new ArrayList();
        this.adapter = new com.join.mgps.customview.e0(getSupportFragmentManager(), this.fragmentsList, this.stringList);
        this.viewPager.setOffscreenPageLimit(4);
        this.viewPager.setAdapter(this.adapter);
        String[] strArr = this.str;
        if (strArr.length >= 5 && !TextUtils.isEmpty(strArr[4]) && (searchGameListSpecialZoneBean = this.special_zone_info) != null && searchGameListSpecialZoneBean.getUrl() != null) {
            com.join.mgps.fragment.a0 a0Var = new com.join.mgps.fragment.a0();
            Bundle bundle = new Bundle();
            String url = this.special_zone_info.getUrl();
            if (url.contains("?")) {
                str = url + x.a.f97576d;
            } else {
                str = url + "?";
            }
            bundle.putString("url", str + "where=" + this.keyword + "&from=" + this.from);
            a0Var.setArguments(bundle);
            this.fragmentsList.add(a0Var);
            this.stringList.add(this.str[4]);
        }
        SearchListGameFragment searchListGameFragment = new SearchListGameFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putString("keyword", this.keyword);
        bundle2.putString("game_id", this.game_id);
        searchListGameFragment.setArguments(bundle2);
        this.fragmentsList.add(searchListGameFragment);
        this.stringList.add(this.str[1]);
        this.fragmentsList.add(com.join.mgps.fragment.h5.t0().b(2).c(this.game_id).d(this.keyword).build());
        this.stringList.add(this.str[2]);
        this.fragmentsList.add(com.join.mgps.fragment.h5.t0().b(3).c(this.game_id).d(this.keyword).build());
        this.stringList.add(this.str[3]);
        this.adapter.d(this.fragmentsList, this.stringList);
        this.adapter.notifyDataSetChanged();
        this.tabLayout.setupWithViewPager(this.viewPager);
        getView();
        this.tabLayout.h(new g());
        TabLayout tabLayout = this.tabLayout;
        tabLayout.R(tabLayout.D(0));
        if (!"游戏".equals(this.stringList.get(this.currentTab))) {
            this.iv_filter.setVisibility(8);
        }
        setTab(this.currentTab);
    }

    public boolean isNeedLoad(String keyword) {
        String str = this.keyword;
        return (str == null || keyword == null || str.equals(keyword)) ? false : true;
    }

    public String keyword() {
        EditText editText = this.input;
        if (editText != null) {
            this.keyword = editText.getText().toString();
        }
        return this.keyword;
    }

    void loading() {
        this.keyword = keyword();
        getSpecialZoneInfo(1, false);
    }

    void loadingRefresh() {
        this.keyword = keyword();
        com.join.mgps.customview.e0 e0Var = this.adapter;
        if (e0Var == null || !(e0Var.getItem(this.viewPager.getCurrentItem()) instanceof com.join.mgps.callbacks.n)) {
            return;
        }
        ((com.join.mgps.callbacks.n) this.adapter.getItem(this.viewPager.getCurrentItem())).loading();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadingTags() {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                ResultMainBean<ClassfyTypeBean> resultMainBeanH1 = this.rpcClient.h1(RequestBeanUtil.getInstance(this).getClassifyGameBean(1, 1));
                if (resultMainBeanH1 == null || resultMainBeanH1.getFlag() != 1 || resultMainBeanH1.getMessages() == null) {
                    return;
                }
                setClassifiesData(resultMainBeanH1.getMessages().getData());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.ll_filter.getVisibility() == 0) {
            hideTags(true);
        } else {
            super.onBackPressed();
        }
    }

    @Click({R.id.iv_filter})
    void onClickFilter() {
        if (this.ll_filter.getVisibility() == 0) {
            hideTags(true);
        } else {
            this.ll_filter.postDelayed(new h(), 200L);
        }
    }

    @Click({R.id.tv_filter_close})
    void onClickFilterClose() {
        hideTags(false);
    }

    @Click({R.id.tv_filter_confirm})
    void onClickFilterConfirm() {
        hideTags(true);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setSoftInputMode(2);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        downloadTaskEvent.a();
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new a());
        if (downloadTaskEvent.c() == 8 && !this.SCROLLING) {
            updateProgressPartly();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        Bundle extras = intent.getExtras();
        if (extras != null) {
            String string = extras.getString("keyword");
            if (com.join.mgps.Util.t2.i(string)) {
                this.showAuto = false;
                this.input.setText(string);
                loading();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UtilsMy.N4(this);
    }

    @Click
    void search() {
        this.autoListView.setVisibility(8);
        this.game_id = "";
        try {
            if (this.input.getText().toString().length() > 0) {
                saveRecordBean(this.input.getText().toString());
                loading();
            }
            this.input.clearFocus();
            r7.a.b(this.input);
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setClassifiesData(ClassfyTypeBean data) {
        if (data == null) {
            return;
        }
        this.gameTagBeanList.clear();
        this.classifiesData.clear();
        ClassifyGameTagBean classifyGameTagBean = new ClassifyGameTagBean();
        classifyGameTagBean.setId(0);
        classifyGameTagBean.setTitle(LocalGameActivity.ALL);
        this.gameTagBeanList.add(0, classifyGameTagBean);
        this.gameTagBeanList.addAll(data.getGame_type());
        Iterator<ClassifyGameTagBean> it2 = this.gameTagBeanList.iterator();
        while (it2.hasNext()) {
            this.classifiesData.add(it2.next().getTitle());
        }
        this.classifies.setData(this.classifiesData);
    }

    public void setTab(int position) {
        ViewPager viewPager = this.viewPager;
        if (viewPager != null) {
            viewPager.setCurrentItem(position);
        }
    }

    public void setTabIndicator(int position) {
        this.currentTab = position;
        if (position == 0) {
            if (this.tagBackground.getVisibility() == 0) {
                hideTags(true);
            }
            this.iv_filter.setVisibility(0);
        } else {
            if (this.tagBackground.getVisibility() == 0) {
                hideTags(true);
            }
            this.iv_filter.setVisibility(8);
        }
    }

    public void showAutoList() {
        ListView listView = this.autoListView;
        if (listView != null) {
            listView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showTags(final int type) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.ll_filter, "scaleY", 0.0f, 1.0f);
        this.ll_filter.setPivotY(0.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.ll_filter, "alpha", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.tagBackground, "alpha", 0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(200L);
        animatorSet.addListener(new i());
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateSpecialZoneInfo(SearchGameListBean listBean) {
        if (listBean.getSpecial_zone_info() == null) {
            this.special_zone_info = null;
            this.str[4] = "";
        } else {
            SearchGameListSpecialZoneBean special_zone_info = listBean.getSpecial_zone_info();
            this.special_zone_info = special_zone_info;
            this.str[4] = special_zone_info.getName();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUI(List<SearchAutoDataBean> searchAutoDataBeans, String KEY) {
        this.searchAutoDataBeanList.clear();
        ResponseModel<SearchAutoDataV1> responseModel = this.searchAutoBean;
        boolean z10 = true;
        if (responseModel != null && responseModel.getData() != null && this.searchAutoBean.getData().getGame_list() != null) {
            this.gameDownLists.clear();
            for (CommonGameInfoBean commonGameInfoBean : this.searchAutoBean.getData().getGame_list()) {
                commonGameInfoBean.set_from(103);
                commonGameInfoBean.set_from_type(112);
                commonGameInfoBean.setReMarks("0");
                this.searchAutoDataBeanList.add(commonGameInfoBean);
                this.gameDownLists.add(commonGameInfoBean);
            }
            updateDowStateList(this.gameDownLists);
            SearchAutoAdData ad_info = this.searchAutoBean.getData().getAd_info();
            if (ad_info != null) {
                if (ad_info.getFirstAd() != null) {
                    CommonGameInfoBean firstAd = ad_info.getFirstAd();
                    firstAd.setAdInfo(false);
                    this.searchAutoDataBeanList.add(firstAd);
                    sendAutoListPoint(Event.searchThinkAdWordExp, "1", firstAd.getIntentDataBean().getLink_type_val(), firstAd.getTitle());
                }
                if (ad_info.getSecondAd() != null) {
                    CommonGameInfoBean secondAd = ad_info.getSecondAd();
                    secondAd.setAdInfo(true);
                    this.searchAutoDataBeanList.add(secondAd);
                    sendAutoListPoint(Event.searchThinkAdWordExp, "2", secondAd.getIntentDataBean().getLink_type_val(), secondAd.getTitle());
                }
            }
        }
        if (searchAutoDataBeans != null && searchAutoDataBeans.size() > 0) {
            this.searchAutoDataBeanList.addAll(searchAutoDataBeans);
        }
        List<Object> list = this.searchAutoDataBeanList;
        if (list != null && list.size() > 0) {
            z10 = false;
        }
        this.isNeedRecommend = z10;
        this.autoListView.setVisibility(0);
        this.searchSimpleAdapter.notifyDataSetChanged();
    }

    public class k extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Context f55698b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private LayoutInflater f55699c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<Object> f55700d;

        class a extends m6.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CommonGameInfoBean f55702a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55703b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context ctx, Downloadable info, final CommonGameInfoBean val$item, final String val$searchKeyword) {
                super(ctx, info);
                this.f55702a = val$item;
                this.f55703b = val$searchKeyword;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // m6.c
            public void onButtonClicked(DownloadNormalView downView) {
                if (this.f55702a.getG_info().getBespeak_switch() == 1 && this.f55702a.getG_info().getDown_state().intValue() == 6) {
                    String modGameId = this.f55702a.isModGameVm() ? this.f55702a.getModGameId() : this.f55702a.getGameId();
                    if (this.f55702a.getG_info().getGame_book() == 0) {
                        ((CommonService_.n0) CommonService_.P2(k.this.f55698b).extra("onClickGamebeSpeakGameId", modGameId)).a();
                        return;
                    } else if (this.f55702a.getG_info().getGame_book() == 1) {
                        ((CommonService_.n0) CommonService_.P2(k.this.f55698b).extra("onClickUnGamebeSpeakGameId", modGameId)).a();
                        return;
                    }
                }
                this.f55702a.setWhere(this.f55703b);
                ExtBean extBean = new ExtBean();
                extBean.setGameId(this.f55702a.getGameId());
                extBean.setReMarks(this.f55702a.getReMarks());
                extBean.set_from_type(112);
                extBean.setFrom("103");
                extBean.setWhere(this.f55703b);
                extBean.setKeyword(this.f55703b);
                this.f55702a.setExt(JsonMapper.toJsonString(extBean.buildScene().toExt()));
                super.onButtonClicked(downView);
                k.this.c(this.f55702a.getDownloadTask(), this.f55703b);
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ SearchAutoDataBean f55705b;

            b(final SearchAutoDataBean val$searchAutoDataBean) {
                this.f55705b = val$searchAutoDataBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                k.this.f55700d.remove(this.f55705b);
                k.this.notifyDataSetChanged();
            }
        }

        public class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public TextView f55707a;

            public c() {
            }
        }

        private class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public ImageView f55709a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public ImageView f55710b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public View f55711c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public TextView f55712d;

            private d() {
            }

            /* synthetic */ d(k kVar, b bVar) {
                this();
            }
        }

        public k(Context context) {
            this.f55698b = context;
        }

        void c(DownloadTask downloadTask, String searchKeyword) {
            if (downloadTask == null) {
                return;
            }
            ExtBean extBean = new ExtBean();
            extBean.setGameId(downloadTask.getCrc_link_type_val());
            extBean.setFrom("103");
            extBean.setLocation(searchKeyword);
            downloadTask.setExt(com.join.android.app.common.utils.JsonMapper.toJsonString(extBean));
        }

        public View d(int i10, View convertView, ViewGroup viewGroup) {
            c cVar;
            if (convertView == null) {
                convertView = this.f55699c.inflate(R.layout.simple_listview_item2, (ViewGroup) null);
                cVar = new c();
                cVar.f55707a = (TextView) convertView.findViewById(R.id.lv_tv_title);
                convertView.setTag(cVar);
            } else {
                cVar = (c) convertView.getTag();
            }
            cVar.f55707a.setText(((CommonGameInfoBean) this.f55700d.get(i10)).getTitle());
            return convertView;
        }

        public View e(int i10, View convertView, ViewGroup viewGroup) {
            d dVar;
            if (convertView == null) {
                convertView = this.f55699c.inflate(R.layout.simple_listview_item1, (ViewGroup) null);
                dVar = new d(this, null);
                dVar.f55712d = (TextView) convertView.findViewById(R.id.lv_tv_title);
                dVar.f55710b = (ImageView) convertView.findViewById(R.id.dotHistory);
                dVar.f55711c = convertView.findViewById(R.id.rlClearHistory);
                convertView.setTag(dVar);
            } else {
                dVar = (d) convertView.getTag();
            }
            SearchAutoDataBean searchAutoDataBean = (SearchAutoDataBean) this.f55700d.get(i10);
            dVar.f55712d.setText(searchAutoDataBean.getGame_name());
            if (searchAutoDataBean.getIsHistory()) {
                if (dVar.f55710b.getVisibility() != 0) {
                    dVar.f55710b.setVisibility(0);
                }
                if (dVar.f55711c.getVisibility() != 0) {
                    dVar.f55711c.setVisibility(0);
                }
                dVar.f55711c.setOnClickListener(new b(searchAutoDataBean));
            } else {
                if (dVar.f55710b.getVisibility() != 8) {
                    dVar.f55710b.setVisibility(8);
                }
                if (dVar.f55711c.getVisibility() != 8) {
                    dVar.f55711c.setVisibility(8);
                }
            }
            return convertView;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:49:0x027a  */
        /* JADX WARN: Code duplicated, block: B:50:0x0281  */
        /* JADX WARN: Code duplicated, block: B:53:0x028e A[Catch: Exception -> 0x02e0, TryCatch #0 {Exception -> 0x02e0, blocks: (B:51:0x0286, B:53:0x028e, B:55:0x02d5, B:54:0x02b2), top: B:68:0x0286 }] */
        /* JADX WARN: Code duplicated, block: B:54:0x02b2 A[Catch: Exception -> 0x02e0, TryCatch #0 {Exception -> 0x02e0, blocks: (B:51:0x0286, B:53:0x028e, B:55:0x02d5, B:54:0x02b2), top: B:68:0x0286 }] */
        /* JADX WARN: Code duplicated, block: B:66:0x0371 A[ADDED_TO_REGION, REMOVE] */
        /* JADX WARN: Instruction removed from duplicated block: B:53:0x028e, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:54:0x02b2, please report this as an issue */
        public View f(final int i10, View convertView, ViewGroup viewGroup) {
            SearchHintActivity.s sVar;
            if (convertView == null) {
                convertView = this.f55699c.inflate(R.layout.searchauto_app_listview_item, (ViewGroup) null);
                sVar = new SearchHintActivity.s();
                sVar.f55591a = (SimpleDraweeView) convertView.findViewById(R.id.mgListviewItemIcon);
                sVar.f55592b = (ImageView) convertView.findViewById(R.id.giftPackageSwich);
                sVar.f55593c = (TextView) convertView.findViewById(R.id.mgListviewItemAppname);
                sVar.f55594d = (DownloadNormalView) convertView.findViewById(R.id.dv_view);
                sVar.f55596f = (TextView) convertView.findViewById(R.id.mgListviewItemDescribe);
                sVar.f55597g = (LinearLayout) convertView.findViewById(R.id.linearLayout2);
                sVar.f55598h = (LinearLayout) convertView.findViewById(R.id.tipsLayout);
                sVar.f55599i = (TextView) convertView.findViewById(R.id.appSize);
                sVar.f55601k = (TextView) convertView.findViewById(R.id.loding_info);
                sVar.f55602l = (ProgressBar) convertView.findViewById(R.id.progressBar);
                sVar.f55603m = (ProgressBar) convertView.findViewById(R.id.progressBarZip);
                sVar.f55595e = convertView.findViewById(R.id.line);
                sVar.f55600j = (TextView) convertView.findViewById(R.id.tipSText);
                convertView.setTag(sVar);
            } else {
                sVar = (SearchHintActivity.s) convertView.getTag();
            }
            sVar.f55595e.setVisibility(0);
            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) this.f55700d.get(i10);
            DownloadTask downloadTask = commonGameInfoBean.getDownloadTask();
            if (commonGameInfoBean.getG_info().getGift_package_switch() == 1) {
                sVar.f55592b.setVisibility(8);
            } else {
                sVar.f55592b.setVisibility(8);
            }
            sVar.f55593c.setText(commonGameInfoBean.getShowName());
            sVar.f55596f.setText(commonGameInfoBean.getG_info().getInfo());
            long j10 = (long) (Double.parseDouble(commonGameInfoBean.getG_info().getApp_size()) * 1024.0d * 1024.0d);
            com.join.android.app.common.utils.l.h(sVar.f55591a, commonGameInfoBean.getG_info().getIco().trim());
            sVar.f55600j.setText(commonGameInfoBean.getG_info().getSp_tag_info().getModel().getName() + "  " + UtilsMy.Z2(j10));
            SearchListActivity1 searchListActivity1 = SearchListActivity1.this;
            EditText editText = searchListActivity1.input;
            sVar.f55594d.f(new a(this.f55698b, commonGameInfoBean, commonGameInfoBean, editText != null ? editText.getText().toString() : searchListActivity1.keyword));
            if (commonGameInfoBean.isH5Game()) {
                sVar.f55598h.setVisibility(8);
                sVar.f55592b.setVisibility(8);
            } else if (downloadTask == null) {
                g(sVar, Boolean.TRUE, Boolean.FALSE);
            } else {
                int status = downloadTask.getStatus();
                if (UtilsMy.x0(commonGameInfoBean.getG_info().getPay_tag_info(), commonGameInfoBean.getGameId()) > 0) {
                    status = 43;
                }
                if (status == 0 || status == 48) {
                    g(sVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 2) {
                    UtilsMy.U4(downloadTask);
                    Boolean bool = Boolean.FALSE;
                    g(sVar, bool, bool);
                    if (downloadTask.getSize() == 0) {
                        sVar.f55599i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        sVar.f55599i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    sVar.f55602l.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    sVar.f55601k.setText(speed + "/S");
                } else if (status == 3) {
                    Boolean bool2 = Boolean.FALSE;
                    g(sVar, bool2, bool2);
                    try {
                        if (downloadTask.getSize() == 0) {
                            sVar.f55599i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        } else {
                            sVar.f55599i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        }
                        sVar.f55602l.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    sVar.f55601k.setText("暂停中");
                } else if (status == 5) {
                    Boolean bool3 = Boolean.TRUE;
                    g(sVar, bool3, bool3);
                } else if (status == 6) {
                    Boolean bool4 = Boolean.FALSE;
                    g(sVar, bool4, bool4);
                    if (downloadTask.getSize() == 0) {
                        sVar.f55599i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        sVar.f55599i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    sVar.f55602l.setProgress((int) downloadTask.getProgress());
                    sVar.f55601k.setText("暂停中");
                } else if (status == 7) {
                    g(sVar, Boolean.TRUE, Boolean.FALSE);
                } else if (status == 42) {
                    Boolean bool5 = Boolean.TRUE;
                    g(sVar, bool5, bool5);
                } else if (status != 43) {
                    switch (status) {
                        case 9:
                            g(sVar, Boolean.TRUE, Boolean.FALSE);
                            break;
                        case 10:
                            Boolean bool6 = Boolean.FALSE;
                            g(sVar, bool6, bool6);
                            sVar.f55599i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            try {
                                sVar.f55602l.setProgress((int) downloadTask.getProgress());
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                            sVar.f55601k.setText("等待中");
                            break;
                        case 11:
                            g(sVar, Boolean.TRUE, Boolean.FALSE);
                            break;
                        case 12:
                            g(sVar, Boolean.FALSE, Boolean.TRUE);
                            sVar.f55599i.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            sVar.f55601k.setText("解压中..");
                            sVar.f55603m.setProgress((int) downloadTask.getProgress());
                            break;
                        case 13:
                            g(sVar, Boolean.FALSE, Boolean.TRUE);
                            sVar.f55599i.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            sVar.f55601k.setText("点击重新解压");
                            sVar.f55603m.setProgress((int) downloadTask.getProgress());
                            break;
                    }
                } else {
                    g(sVar, Boolean.TRUE, Boolean.FALSE);
                }
            }
            return convertView;
        }

        void g(SearchHintActivity.s holder, Boolean isNormal, Boolean isZip) {
            if (isNormal.booleanValue()) {
                holder.f55597g.setVisibility(8);
                holder.f55602l.setVisibility(8);
                holder.f55603m.setVisibility(8);
                holder.f55598h.setVisibility(0);
                holder.f55596f.setVisibility(8);
                return;
            }
            holder.f55597g.setVisibility(0);
            if (isZip.booleanValue()) {
                holder.f55602l.setVisibility(8);
                holder.f55603m.setVisibility(0);
            } else {
                holder.f55603m.setVisibility(8);
                holder.f55602l.setVisibility(0);
            }
            holder.f55598h.setVisibility(8);
            holder.f55596f.setVisibility(8);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<Object> list = this.f55700d;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            List<Object> list = this.f55700d;
            if (list == null || list.size() <= i10) {
                return null;
            }
            return this.f55700d.get(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            List<Object> list = this.f55700d;
            if (list == null || list.size() <= position) {
                return 0;
            }
            if (this.f55700d.get(position) instanceof SearchAutoDataBean) {
                return 1;
            }
            return this.f55700d.get(position) instanceof CommonGameInfoBean ? 2 : 3;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View convertView, ViewGroup viewGroup) {
            if (getItemViewType(i10) == 1) {
                return e(i10, convertView, viewGroup);
            }
            return getItemViewType(i10) == 2 ? f(i10, convertView, viewGroup) : d(i10, convertView, viewGroup);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
        }

        public k(Context context, List<Object> searchAutoDataBeanList) {
            this.f55698b = context;
            this.f55700d = searchAutoDataBeanList;
            this.f55699c = LayoutInflater.from(context);
        }
    }
}
