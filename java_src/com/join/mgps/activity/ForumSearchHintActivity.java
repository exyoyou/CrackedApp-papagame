package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.adapter.ForumSearchHintAdapter;
import com.join.mgps.customview.LoadingImageView;
import com.join.mgps.customview.MarqueeTextView;
import com.join.mgps.customview.NoScrollListView;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.ForumSearchRecordTable;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.SearchAutoDataBean;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.EditorAction;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ItemClick;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.forum_search_hint_activity)
public class ForumSearchHintActivity extends BaseFragmentActivity implements AbsListView.OnScrollListener {
    private ForumSearchHintAdapter adapter;

    @ViewById
    LinearLayout allSearch;

    @ViewById
    XListView2 autoListView;

    @ViewById
    LinearLayout clearLayout;
    public Context context;

    @ViewById
    TextView failedMessage;

    @Extra
    int fid;
    private i gridAdapter;

    @ViewById
    GridView gridView;
    private ArrayList<String> historyList;

    @ViewById
    NoScrollListView historyListView;

    @ViewById
    ImageView img_iconback;

    @ViewById
    ImageView img_search;
    List<ForumBean.ForumSearchIndexBean> indexBeens;

    @Extra
    String keyword;

    @ViewById
    RelativeLayout layout1;

    @ViewById
    RelativeLayout layout2;

    @ViewById
    RelativeLayout layout3;

    @ViewById
    RelativeLayout layout4;

    @ViewById
    RelativeLayout layout5;

    @ViewById
    RelativeLayout layout6;
    private List<ForumSearchHintAdapter.f> listData;
    com.join.mgps.customview.j listViewRefreshListener;

    @ViewById
    LoadingImageView loading_view;

    @ViewById
    ImageView lodingBackImage;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @StringRes(resName = "connect_server_excption")
    String netConnectExcption;

    @StringRes(resName = "net_excption")
    String netExcption;

    @ViewById
    TextView noHistory;
    List<ForumBean.ForumSearchQueryBean> queryBeens;

    @ViewById
    ImageView relodingimag;
    com.join.mgps.rpc.i rpcForumClient;

    @ViewById
    EditText searchEditText;
    private com.join.mgps.adapter.c7 searchHistoryAdapter;
    private List<SearchAutoDataBean> searchHistoryDataBeanList;

    @ViewById
    LinearLayout search_list_layout;

    @ViewById
    Button setNetwork;

    @ViewById
    TextView setting;

    @ViewById
    MarqueeTextView text1;

    @ViewById
    MarqueeTextView text2;

    @ViewById
    MarqueeTextView text3;

    @ViewById
    MarqueeTextView text4;

    @ViewById
    MarqueeTextView text5;

    @ViewById
    MarqueeTextView text6;

    @ViewById
    TextView textView2;
    private int totalItemCount;

    @ViewById
    TextView tv1;

    @ViewById
    TextView tv2;

    @ViewById
    TextView tv3;

    @ViewById
    TextView tv4;

    @ViewById
    TextView tv5;

    @ViewById
    TextView tv6;

    @ViewById
    WrapContentGridView wrapGridView;
    private int pageCount = 0;
    private int loadingPage = 0;
    private ForumSearchHintAdapter.b mAdapterOnClickListener = new a();
    Handler mHandler = new f();

    class a implements ForumSearchHintAdapter.b {
        a() {
        }

        @Override // com.join.mgps.adapter.ForumSearchHintAdapter.b
        public void b(String pid) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(Integer.parseInt(pid));
            com.join.mgps.Util.r0.v0(ForumSearchHintActivity.this.context, forumPostsBean);
        }
    }

    class b implements View.OnKeyListener {
        b() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int keyCode, KeyEvent keyEvent) {
            Activity activity = (Activity) view.getContext();
            if (keyCode != 66) {
                return false;
            }
            ((InputMethodManager) ForumSearchHintActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 2);
            ForumSearchHintActivity.this.img_search();
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
            String string = ForumSearchHintActivity.this.searchEditText.getText().toString();
            if (charSequence.length() <= 0) {
                ForumSearchHintActivity.this.setSearchUiVisibility(false);
                ForumSearchHintActivity.this.searchEditText.setHint("");
                ForumSearchHintActivity.this.loadSearchHistory();
            } else {
                ForumSearchHintActivity.this.setSearchUiVisibility(true);
                ForumSearchHintActivity.this.pageCount = 0;
                ForumSearchHintActivity.this.loadingPage = 0;
                ForumSearchHintActivity.this.loadSearchQuery(string, 1);
            }
        }
    }

    class d implements com.join.mgps.customview.i {
        d() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!com.join.android.app.common.utils.m.j(ForumSearchHintActivity.this.context)) {
                ForumSearchHintActivity forumSearchHintActivity = ForumSearchHintActivity.this;
                forumSearchHintActivity.showToast(forumSearchHintActivity.getString(R.string.net_connect_failed));
                ForumSearchHintActivity.this.stopXlistRefreshAndLoadMore();
            } else {
                if (ForumSearchHintActivity.this.isSearching()) {
                    ForumSearchHintActivity forumSearchHintActivity2 = ForumSearchHintActivity.this;
                    forumSearchHintActivity2.loadSearchQuery(forumSearchHintActivity2.searchEditText.getText().toString(), ForumSearchHintActivity.this.pageCount + 1);
                }
                if (ForumSearchHintActivity.this.loadingPage == -1) {
                    ForumSearchHintActivity.this.stopXlistRefreshAndLoadMore();
                }
            }
        }
    }

    class e implements com.join.mgps.customview.j {
        e() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.m.j(ForumSearchHintActivity.this.context)) {
                ForumSearchHintActivity.this.loadingPage = 0;
                ForumSearchHintActivity.this.load();
            } else {
                ForumSearchHintActivity forumSearchHintActivity = ForumSearchHintActivity.this;
                forumSearchHintActivity.showToast(forumSearchHintActivity.getString(R.string.net_connect_failed));
                ForumSearchHintActivity.this.stopXlistRefreshAndLoadMore();
            }
        }
    }

    class f extends Handler {
        f() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            ForumSearchHintActivity.this.autoListView.v();
            ForumSearchHintActivity.this.autoListView.u();
            if (ForumSearchHintActivity.this.loadingPage == -1) {
                ForumSearchHintActivity.this.autoListView.setNoMore();
            }
            if (ForumSearchHintActivity.this.autoListView.getFirstVisiblePosition() == 0 && ForumSearchHintActivity.this.autoListView.getLastVisiblePosition() + 1 == ForumSearchHintActivity.this.totalItemCount) {
                ForumSearchHintActivity.this.autoListView.k();
            }
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goWirelessSettings(v10.getContext());
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumSearchHintActivity.this.img_search();
        }
    }

    class i extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<ForumBean.ForumSearchIndexBean> f52027b = new ArrayList();

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public TextView f52029a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public TextView f52030b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public TextView f52031c;

            a() {
            }
        }

        public i() {
        }

        public List<ForumBean.ForumSearchIndexBean> a(ForumBean.ForumSearchIndexBean bean) {
            if (bean == null) {
                return this.f52027b;
            }
            if (this.f52027b == null) {
                this.f52027b = new ArrayList();
            }
            this.f52027b.add(bean);
            return this.f52027b;
        }

        public List<ForumBean.ForumSearchIndexBean> b(List<ForumBean.ForumSearchIndexBean> bean) {
            if (bean == null) {
                return this.f52027b;
            }
            if (this.f52027b == null) {
                this.f52027b = new ArrayList();
            }
            this.f52027b.addAll(bean);
            return this.f52027b;
        }

        public List<ForumBean.ForumSearchIndexBean> c() {
            return this.f52027b;
        }

        public void d(List<ForumBean.ForumSearchIndexBean> beans) {
            this.f52027b = beans;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<ForumBean.ForumSearchIndexBean> list = this.f52027b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            List<ForumBean.ForumSearchIndexBean> list = this.f52027b;
            if (list != null) {
                return list.get(i10);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            return super.getItemViewType(position);
        }

        @Override // android.widget.Adapter
        public View getView(int position, View view, ViewGroup viewGroup) {
            a aVar;
            if (view != null) {
                aVar = (a) view.getTag();
            } else {
                aVar = new a();
                view = LayoutInflater.from(ForumSearchHintActivity.this).inflate(R.layout.search_hint_hot_item, (ViewGroup) null);
                aVar.f52029a = (TextView) view.findViewById(R.id.icon);
                aVar.f52030b = (TextView) view.findViewById(R.id.rank);
                aVar.f52031c = (TextView) view.findViewById(R.id.name);
                view.setTag(aVar);
            }
            ForumBean.ForumSearchIndexBean forumSearchIndexBean = (ForumBean.ForumSearchIndexBean) getItem(position);
            int[] iArr = {R.drawable.search_rank_1, R.drawable.search_rank_2, R.drawable.search_rank_3};
            if (position < 3) {
                aVar.f52029a.setVisibility(0);
                aVar.f52030b.setVisibility(8);
                aVar.f52029a.setBackgroundResource(iArr[position]);
            } else {
                aVar.f52029a.setVisibility(8);
                aVar.f52030b.setVisibility(0);
                aVar.f52030b.setText("" + (position + 1));
            }
            aVar.f52031c.setText(forumSearchIndexBean.getKeyword());
            aVar.f52031c.setTextColor(com.join.mgps.Util.m.d(com.join.mgps.Util.t2.g(forumSearchIndexBean.getColor())));
            view.setOnClickListener(ForumSearchHintActivity.this.new j(forumSearchIndexBean.getKeyword()));
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return super.getViewTypeCount();
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f52033b;

        public j(String searchTag) {
            this.f52033b = searchTag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumSearchHintActivity.this.saveRecordBean(this.f52033b);
            ForumSearchHintActivity.this.searchEditText.setText(this.f52033b);
            if (TextUtils.isEmpty(this.f52033b)) {
                return;
            }
            ForumSearchHintActivity.this.searchEditText.setSelection(this.f52033b.length());
            ForumSearchHintActivity.this.hideKeyboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveRecordBean(String name) {
        List<ForumSearchRecordTable> listD = t6.s.n().d();
        if (listD == null && listD.size() == 0) {
            ForumSearchRecordTable forumSearchRecordTable = new ForumSearchRecordTable();
            forumSearchRecordTable.setName(name);
            forumSearchRecordTable.setCreate_time(System.currentTimeMillis());
            t6.s.n().m(forumSearchRecordTable);
            return;
        }
        if (listD.size() > 100) {
            t6.s.n().delete((Collection) t6.s.n().i(10L, listD.size(), "create_time", false));
            return;
        }
        for (ForumSearchRecordTable forumSearchRecordTable2 : listD) {
            if (forumSearchRecordTable2.getName().equals(name)) {
                t6.s.n().delete(forumSearchRecordTable2);
            }
        }
        ForumSearchRecordTable forumSearchRecordTable3 = new ForumSearchRecordTable();
        forumSearchRecordTable3.setName(name);
        forumSearchRecordTable3.setCreate_time(System.currentTimeMillis());
        t6.s.n().m(forumSearchRecordTable3);
    }

    private void setPostViewData(ForumBean.ForumSearchQueryBean posts) {
        boolean z10;
        String keyword = getKeyword();
        if (posts.getSubject() == null || com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            z10 = true;
        } else {
            this.listData.add(new ForumSearchHintAdapter.f(ForumSearchHintAdapter.ViewType.POST_SUBJECT, new ForumSearchHintAdapter.f.c(keyword, posts.getPid(), posts.getSubject())));
            z10 = false;
        }
        if (!com.join.mgps.Util.t2.h(posts.getMessage()) && !com.join.mgps.Util.t2.h(posts.getMessage().trim())) {
            this.listData.add(new ForumSearchHintAdapter.f(ForumSearchHintAdapter.ViewType.POST_MESSAGE, new ForumSearchHintAdapter.f.b(keyword, posts.getPid(), posts.getMessage(), z10)));
        }
        this.listData.add(new ForumSearchHintAdapter.f(ForumSearchHintAdapter.ViewType.POST_FOOTER, new ForumSearchHintAdapter.f.a(keyword, posts.getPid(), posts.getView(), posts.getComment(), posts.getPraise())));
    }

    private void updateQuery(List<ForumBean.ForumSearchQueryBean> res, int page) {
        if (this.queryBeens == null) {
            this.queryBeens = new ArrayList();
        }
        if (res != null && res.size() != 0) {
            if (page == 1) {
                this.queryBeens.clear();
                this.pageCount = 1;
                stopXlistRefreshAndLoadMore();
            }
            this.queryBeens.addAll(res);
        }
        notifyUi();
    }

    @AfterViews
    void afterViews() {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        this.context = this;
        initViews();
        load();
    }

    @Click
    void change_data() {
        loadSearchIndex();
    }

    @Background
    void clearHistory() {
        t6.s.n().a();
        this.searchHistoryDataBeanList.clear();
    }

    @Click
    void clearLayout() {
        clearHistory();
        this.searchHistoryDataBeanList.clear();
        notifyUi();
    }

    String getKeyword() {
        return this.searchEditText.getText().toString();
    }

    void hideAllUi() {
        setViewVisibility(this.autoListView, 8);
        setViewVisibility(this.allSearch, 8);
        setViewVisibility(this.search_list_layout, 8);
        setViewVisibility(this.loding_layout, 8);
        setViewVisibility(this.loding_faile, 8);
    }

    @UiThread
    void hideKeyboard() {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
    }

    @UiThread
    void hidePullLoad() {
        XListView2 xListView2 = this.autoListView;
        if (xListView2 != null) {
            xListView2.g();
        }
    }

    @ItemClick
    void historyListView(int i10) {
        if (i10 >= this.searchHistoryDataBeanList.size() || i10 < 0) {
            return;
        }
        String string = this.searchHistoryDataBeanList.get(i10).getGame_name().toString();
        saveRecordBean(string);
        this.searchEditText.setText(string);
        if (TextUtils.isEmpty(string)) {
            return;
        }
        this.searchEditText.setSelection(string.length());
        hideKeyboard();
    }

    @Click
    void img_iconback() {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
        if (!isSearching()) {
            finish();
        } else {
            this.searchEditText.setText("");
            notifyUi();
        }
    }

    @Click
    void img_search() {
        String strG = com.join.mgps.Util.t2.g(this.searchEditText.getText().toString());
        if (strG.length() > 0) {
            hideKeyboard();
            saveRecordBean(strG);
            loadSearchQuery(strG, 1);
        }
    }

    void initViews() {
        this.searchEditText.setOnKeyListener(new b());
        this.searchEditText.addTextChangedListener(new c());
        if (com.join.mgps.Util.t2.i(this.keyword)) {
            this.searchEditText.setText(this.keyword);
            this.searchEditText.setSelection(this.keyword.length());
        }
        this.historyList = new ArrayList<>();
        this.searchHistoryDataBeanList = new ArrayList();
        this.searchHistoryAdapter = new com.join.mgps.adapter.c7(this.context, this.searchHistoryDataBeanList);
        this.listData = new ArrayList();
        ForumSearchHintAdapter forumSearchHintAdapter = new ForumSearchHintAdapter(this.context);
        this.adapter = forumSearchHintAdapter;
        forumSearchHintAdapter.f(this.mAdapterOnClickListener);
        this.autoListView.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.autoListView.setAdapter((ListAdapter) this.adapter);
        this.autoListView.setPullLoadEnable(new d());
        e eVar = new e();
        this.listViewRefreshListener = eVar;
        this.autoListView.setPullRefreshEnable(eVar);
        this.autoListView.f();
        this.autoListView.setOnScrollListener(this);
        hidePullLoad();
        setViewVisibility(this.loding_layout, 8);
        if (this.gridAdapter == null) {
            this.gridAdapter = new i();
        }
        this.wrapGridView.setAdapter((ListAdapter) this.gridAdapter);
    }

    boolean isSearching() {
        return com.join.mgps.Util.t2.i(this.searchEditText.getText().toString());
    }

    @Background
    void load() {
        try {
            loadSearchHistory();
            if (com.join.android.app.common.utils.m.j(this.context)) {
                loadSearchIndex();
            } else {
                showToast(getString(R.string.net_connect_failed));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void loadSearchHistory() {
        ArrayList arrayList = new ArrayList();
        List<ForumSearchRecordTable> listI = t6.s.n().i(0L, 10L, "create_time", false);
        this.historyList.clear();
        if (listI != null) {
            Iterator<ForumSearchRecordTable> it2 = listI.iterator();
            while (it2.hasNext()) {
                this.historyList.add(it2.next().getName());
            }
        }
        ArrayList<String> arrayList2 = this.historyList;
        if (arrayList2 != null && arrayList2.size() > 0) {
            for (int i10 = 0; i10 < this.historyList.size(); i10++) {
                SearchAutoDataBean searchAutoDataBean = new SearchAutoDataBean();
                searchAutoDataBean.setCrc_sign_id("");
                searchAutoDataBean.setGame_name(this.historyList.get(i10));
                arrayList.add(searchAutoDataBean);
            }
        }
        this.searchHistoryDataBeanList.clear();
        this.searchHistoryDataBeanList.addAll(arrayList);
        notifyUi();
    }

    @Background
    void loadSearchIndex() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            notifyUi();
            return;
        }
        try {
            ForumResponse<ForumData.ForumSearchIndexData> forumResponseM = this.rpcForumClient.M("");
            if (forumResponseM == null || forumResponseM.getError() != 0 || forumResponseM.getData() == null) {
                this.indexBeens = null;
            } else {
                this.indexBeens = forumResponseM.getData().getRecommend();
            }
            notifyUi();
        } catch (Exception e10) {
            e10.printStackTrace();
            serverConnectionException();
            notifyUi();
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0074 A[DONT_GENERATE] */
    @Background
    void loadSearchQuery(String keyword, int page) {
        ForumData.ForumSearchQueryData data;
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            showToast(getString(R.string.net_connect_failed));
            stopXlistRefreshAndLoadMore();
            return;
        }
        int i10 = this.loadingPage;
        if (page == i10) {
            return;
        }
        if (i10 == -1) {
            return;
        }
        this.loadingPage = page;
        try {
            if (page == 1) {
                List<ForumBean.ForumSearchQueryBean> list = this.queryBeens;
                if (list != null) {
                    list.clear();
                }
            }
            int i11 = this.fid;
            ForumResponse<ForumData.ForumSearchQueryData> forumResponseF0 = i11 > 0 ? this.rpcForumClient.f0(page, com.join.mgps.Util.r0.f49989d, keyword, "", i11) : this.rpcForumClient.P(page, com.join.mgps.Util.r0.f49989d, keyword, "");
            if (forumResponseF0 != null) {
                data = forumResponseF0.getData();
            } else {
                this.loadingPage = 0;
                data = null;
            }
            List<ForumBean.ForumSearchQueryBean> res = data != null ? data.getRes() : null;
            if (res == null || res.size() == 0) {
                this.loadingPage = -1;
                setXListNoMore();
            } else {
                this.pageCount = page;
            }
            updateQuery(res, page);
        } catch (Exception e10) {
            e10.printStackTrace();
        } finally {
            if (this.loadingPage != -1) {
                this.loadingPage = 0;
            }
            if (page == 1) {
                showPullLoad();
            }
            stopXlistRefreshAndLoadMore();
        }
    }

    @UiThread
    void netWorkException() {
        com.join.android.app.common.manager.a.h().j(this.context, this.netExcption, 1);
    }

    void notifyDefaultUi() {
        hideAllUi();
        updateRecommand(this.indexBeens, Boolean.TRUE);
        this.search_list_layout.setVisibility(0);
        List<SearchAutoDataBean> list = this.searchHistoryDataBeanList;
        if (list == null || list.size() <= 0) {
            this.noHistory.setVisibility(0);
        } else {
            this.noHistory.setVisibility(8);
            this.historyListView.setAdapter((ListAdapter) this.searchHistoryAdapter);
        }
        this.searchHistoryAdapter.notifyDataSetChanged();
    }

    void notifySearchUi() {
        if (this.queryBeens == null) {
            this.queryBeens = new ArrayList();
        }
        if (this.listData == null) {
            this.listData = new ArrayList();
        }
        this.listData.clear();
        Iterator<ForumBean.ForumSearchQueryBean> it2 = this.queryBeens.iterator();
        while (it2.hasNext()) {
            setPostViewData(it2.next());
        }
        this.adapter.h(this.listData);
        this.adapter.notifyDataSetChanged();
        this.autoListView.requestLayout();
    }

    @UiThread
    void notifyUi() {
        boolean zIsSearching = isSearching();
        try {
            if (zIsSearching) {
                setSearchUiVisibility(zIsSearching);
                notifySearchUi();
            } else {
                notifyDefaultUi();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.totalItemCount = totalItemCount;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    @EditorAction
    boolean searchEditText(TextView textView, int actionId, KeyEvent keyEvent) {
        if (actionId != 6) {
            return false;
        }
        ((InputMethodManager) textView.getContext().getSystemService("input_method")).toggleSoftInput(1, 2);
        img_search();
        return true;
    }

    @UiThread
    void serverConnectionException() {
        com.join.android.app.common.manager.a.h().j(this.context, this.netConnectExcption, 1);
    }

    void setSearchUiVisibility(boolean visible) {
        List<ForumBean.ForumSearchQueryBean> list;
        hideAllUi();
        if (!visible) {
            showDefaultUi();
            return;
        }
        if (this.pageCount == 0 && !com.join.android.app.common.utils.m.j(this)) {
            showNetworkFailedUi();
            return;
        }
        if (this.loadingPage == -1 && this.pageCount == 0 && ((list = this.queryBeens) == null || list.size() == 0)) {
            showNoRecordUi();
        } else {
            showResultUi();
        }
    }

    void setViewVisibility(View view, int visibility) {
        if (view == null || visibility == view.getVisibility()) {
            return;
        }
        view.setVisibility(visibility);
    }

    @UiThread
    void setXListNoMore() {
        this.autoListView.setNoMore();
    }

    void showDefaultUi() {
        hideAllUi();
        setViewVisibility(this.allSearch, 0);
        setViewVisibility(this.search_list_layout, 0);
    }

    void showLoadingUi() {
        hideAllUi();
        setViewVisibility(this.loding_layout, 0);
    }

    void showNetworkFailedUi() {
        hideAllUi();
        setViewVisibility(this.loding_faile, 0);
        this.relodingimag.setImageResource(R.drawable.reload_butn_selector);
        this.failedMessage.setText("网络连接失败，再试试吧~");
        this.setting.setVisibility(8);
        this.setNetwork.setVisibility(0);
        this.lodingBackImage.setVisibility(0);
        this.setNetwork.setOnClickListener(new g());
        this.relodingimag.setOnClickListener(new h());
    }

    void showNoRecordUi() {
        hideAllUi();
        setViewVisibility(this.loding_faile, 0);
        this.relodingimag.setImageResource(R.drawable.papa_loading_null);
        this.failedMessage.setText("未搜索到相应帖子");
        this.setting.setVisibility(8);
        this.setNetwork.setVisibility(8);
        this.lodingBackImage.setVisibility(8);
    }

    @UiThread
    void showPullLoad() {
        this.autoListView.q();
    }

    void showResultUi() {
        hideAllUi();
        setViewVisibility(this.autoListView, 0);
    }

    @UiThread
    void showToast(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    @UiThread
    void stopLoadMore() {
        this.autoListView.u();
    }

    @UiThread
    void stopXlistRefreshAndLoadMore() {
        if (this.autoListView.j()) {
            this.mHandler.sendEmptyMessageDelayed(0, 2000L);
        } else {
            this.mHandler.sendEmptyMessage(0);
        }
    }

    void updateRecommand(List<ForumBean.ForumSearchIndexBean> beans, Boolean visible) {
        if (!visible.booleanValue()) {
            this.allSearch.setVisibility(8);
            return;
        }
        if (beans == null || beans.size() == 0) {
            this.allSearch.setVisibility(8);
            return;
        }
        this.allSearch.setVisibility(0);
        i iVar = this.gridAdapter;
        if (iVar != null) {
            if (iVar.c() != null) {
                this.gridAdapter.c().clear();
            }
            this.gridAdapter.b(beans);
            this.gridAdapter.notifyDataSetChanged();
        }
    }

    @UiThread
    void updateUI() {
        this.search_list_layout.setVisibility(0);
        this.noHistory.setVisibility(0);
        this.historyListView.setAdapter((ListAdapter) this.searchHistoryAdapter);
        this.searchHistoryAdapter.notifyDataSetChanged();
    }
}
