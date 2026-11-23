package com.join.mgps.activity;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.BaseAppCompatActivity;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.search.SearchAutoAdData;
import com.join.mgps.activity.search.SearchAutoDataV1;
import com.join.mgps.activity.search.SearchHotAdInfo;
import com.join.mgps.activity.search.SearchIndexData;
import com.join.mgps.activity.search.SearchRankingFragment;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.db.tables.SearchRecordTable;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.RequestKeywordArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestUidtagidTagdes;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SScrollingTxtBeanV2;
import com.join.mgps.dto.SearchAutoDataBean;
import com.join.mgps.dto.SearchGameZoneBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.JsonMapper;
import com.papa91.arc.view.GlideImageLoader;
import com.uc.crashsdk.export.LogType;
import com.wufan.user.service.protobuf.UserInfo;
import com.youth.banner.Banner;
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
import org.androidannotations.annotations.EditorAction;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.search_hint_activity)
public class SearchHintActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {
    public static final String KEY = "key";
    public static boolean popKeyboard;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f55553ad;

    @ViewById
    ListView autoListView;

    @ViewById
    Banner banner;
    SearchIndexData bean;

    @ViewById
    LinearLayout clearLayout;
    private Context context;

    @Extra
    int from;

    @ViewById
    FlowLayout guessLickFlow;

    @ViewById
    View guessliketext;
    private boolean hasShowHint;

    @ViewById
    FlowLayout historyFlow;
    private ArrayList<String> historyList;

    @ViewById
    ImageView img_iconback;

    @ViewById
    ImageView img_search;

    @Extra
    int interval;

    @ViewById(R.id.clearHistoryx)
    ImageView ivClearHistory;

    @Extra
    String keyword;

    @ViewById
    RelativeLayout lLayout_search;

    @ViewById
    View llRecent;

    @ViewById
    ForumLoadingView loadingView;
    private String msg;

    @StringRes(resName = "connect_server_excption")
    String netConnectExcption;

    @StringRes(resName = "net_excption")
    String netExcption;
    private p pagerAdapter;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    View recommend;

    @ViewById
    View requestLayout;
    com.join.mgps.rpc.e rpcClient;
    private ResponseModel<SearchAutoDataV1> searchAutoBean;
    private List<Object> searchAutoDataBeanList;
    private int searchBarStyle;

    @ViewById
    ImageView searchClear;
    private boolean searchClearInProgress;

    @ViewById
    EditText searchEditText;
    private List<SearchAutoDataBean> searchHistoryDataBeanList;
    private ResponseModel<SearchIndexData> searchPageBean;
    private long searchRankingPagerStamp;
    private q searchSimpleAdapter;

    @ViewById
    View search_bar_layout;

    @ViewById
    View statubar;
    private boolean suppressSearchTextListenerForClear;

    @ViewById
    TabLayout tabLayout;
    private com.google.android.material.tabs.d tabLayoutMediator;

    @ViewById
    TextView tv_search;

    @ViewById
    ViewPager2 vf;

    @ViewById
    ViewPager2 viewPager;

    @Extra
    ArrayList<SScrollingTxtBeanV2> keywords = new ArrayList<>();
    private int pn = 1;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f55554pc = 50;
    private int count = 0;
    int flag = 0;
    boolean isNeedRecommend = false;
    private String defaultHint = "搜索游戏、厂商、帖子";
    private final ViewPager2.OnPageChangeCallback rankingPageChangeCallback = new n();
    private String[] title = {"热搜榜", "网游榜", "模拟器榜", "单机榜"};
    String searchKey = "";
    List<com.join.mgps.adapter.h0.a> list = new ArrayList();
    List<CommonGameInfoBean> gameDownLists = new ArrayList();
    private int lastVisibleIndex = 0;
    private int firstVisiblePosition = 0;
    private boolean SCROLLING = false;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameInfoBean f55555b;

        a(final GameInfoBean val$tag) {
            this.f55555b = val$tag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i10;
            SearchHintActivity.this.goSearch(this.f55555b.getGame_name(), this.f55555b.getGame_id());
            if (this.f55555b.isThe_hot()) {
                i10 = 1;
            } else {
                i10 = this.f55555b.isThe_score() ? 2 : 0;
            }
            com.papa.sim.statistic.t.l(SearchHintActivity.this.context).R1(Event.clickSearchRecommend, new Ext().setFrom(i10 + ""));
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchGameZoneBean f55557b;

        b(final SearchGameZoneBean val$tag) {
            this.f55557b = val$tag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TextUtils.isEmpty(this.f55557b.getZone_id())) {
                SearchHintActivity.this.goSearch(this.f55557b.getZone_name(), null);
            } else {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(33);
                intentDateBean.setLink_type_val(this.f55557b.getZone_id());
                IntentUtil.getInstance().intentActivity(SearchHintActivity.this.context, intentDateBean);
            }
            com.papa.sim.statistic.t.l(SearchHintActivity.this.context).R1(Event.clickSearchRecommend, new Ext().setFrom("0"));
        }
    }

    class c extends ForumLoadingView.e {
        c(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            SearchHintActivity.this.loading();
        }
    }

    class d extends ForumLoadingView.e {
        d(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            SearchHintActivity.this.loading();
        }
    }

    class e extends ForumLoadingView.e {
        e(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            SearchHintActivity.this.loading();
        }
    }

    class f implements Function0<Unit> {
        f() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unit invoke() {
            SearchHintActivity searchHintActivity = SearchHintActivity.this;
            searchHintActivity.updateDownStateList(searchHintActivity.gameDownLists);
            SearchHintActivity.this.searchSimpleAdapter.notifyDataSetChanged();
            return null;
        }
    }

    class g implements View.OnFocusChangeListener {
        g() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View v10, boolean hasFocus) {
            com.join.mgps.Util.h1.e("onFocusChange", "hasFocus=" + hasFocus);
            if (SearchHintActivity.this.searchClearInProgress) {
                return;
            }
            SearchHintActivity.this.updateUi();
            SearchHintActivity searchHintActivity = SearchHintActivity.this;
            if (searchHintActivity.vf != null) {
                if (!hasFocus) {
                    searchHintActivity.banner.q(true);
                    SearchHintActivity.this.vf.setVisibility(0);
                    SearchHintActivity.this.searchEditText.setHint("");
                    return;
                }
                searchHintActivity.banner.q(false);
                int currentItem = SearchHintActivity.this.vf.getCurrentItem();
                ArrayList<SScrollingTxtBeanV2> arrayList = SearchHintActivity.this.keywords;
                if (arrayList == null || arrayList.size() <= 0) {
                    return;
                }
                ArrayList<SScrollingTxtBeanV2> arrayList2 = SearchHintActivity.this.keywords;
                SScrollingTxtBeanV2 sScrollingTxtBeanV2 = arrayList2.get(currentItem % arrayList2.size());
                SearchHintActivity.this.vf.setVisibility(8);
                if (sScrollingTxtBeanV2 != null) {
                    SearchHintActivity.this.searchEditText.setHint(sScrollingTxtBeanV2.getWord());
                    r7.a.c(SearchHintActivity.this.searchEditText);
                }
            }
        }
    }

    class h implements View.OnKeyListener {
        h() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int keyCode, KeyEvent keyEvent) {
            ArrayList<SScrollingTxtBeanV2> arrayList;
            if (keyCode != 66 || keyEvent.getAction() != 0) {
                return false;
            }
            SearchHintActivity.this.hideKeyboard();
            String strReplaceAll = SearchHintActivity.this.searchEditText.getText().toString().replaceAll(" ", "");
            SearchHintActivity.this.searchEditText.clearFocus();
            SearchHintActivity.this.img_iconback.clearFocus();
            com.join.mgps.Util.h1.e("setOnKeyListener", "keyword=" + strReplaceAll);
            if (strReplaceAll.length() > 0) {
                SearchHintActivity.this.goSearch(strReplaceAll, "");
                return false;
            }
            SearchHintActivity searchHintActivity = SearchHintActivity.this;
            if (searchHintActivity.vf != null && (arrayList = searchHintActivity.keywords) != null && arrayList.size() > 0) {
                int currentItem = SearchHintActivity.this.vf.getCurrentItem();
                ArrayList<SScrollingTxtBeanV2> arrayList2 = SearchHintActivity.this.keywords;
                SearchHintActivity.this.goSearch(arrayList2.get(currentItem % arrayList2.size()).getWord(), "");
                return false;
            }
            if (SearchHintActivity.this.searchKey.length() <= 0) {
                return false;
            }
            SearchHintActivity searchHintActivity2 = SearchHintActivity.this;
            searchHintActivity2.goSearch(searchHintActivity2.searchKey, "");
            return false;
        }
    }

    class i implements TextWatcher {
        i() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            com.join.mgps.Util.h1.e("afterTextChanged", "keyword=" + SearchHintActivity.this.searchEditText.getText().toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            com.join.mgps.Util.h1.e("beforeTextChanged", "keyword=" + SearchHintActivity.this.searchEditText.getText().toString());
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            com.join.mgps.Util.h1.e("onTextChanged", "keyword=" + SearchHintActivity.this.searchEditText.getText().toString());
            if (SearchHintActivity.this.suppressSearchTextListenerForClear) {
                return;
            }
            SearchHintActivity.this.updateUi();
        }
    }

    class j implements AdapterView.OnItemClickListener {
        j() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
            Object obj = SearchHintActivity.this.searchAutoDataBeanList.get(i10);
            if (obj instanceof SearchAutoDataBean) {
                SearchAutoDataBean searchAutoDataBean = (SearchAutoDataBean) obj;
                String string = searchAutoDataBean.getGame_name().toString();
                SearchHintActivity.this.goSearch(string, searchAutoDataBean.getCrc_sign_id(), 2);
                String crc_sign_id = searchAutoDataBean.getCrc_sign_id();
                SearchHintActivity.this.saveRecordBean(string, crc_sign_id);
                SearchHintActivity.this.sendGameCount(crc_sign_id);
            }
            if (obj instanceof CommonGameInfoBean) {
                CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) obj;
                if (commonGameInfoBean.isAdInfo()) {
                    IntentUtil.getInstance().intentActivity(SearchHintActivity.this.context, commonGameInfoBean.getIntentDataBean());
                    SearchHintActivity.this.sendAutoListPoint(Event.searchThinkAdWordClick, "2", commonGameInfoBean.getIntentDataBean().getLink_type_val(), commonGameInfoBean.getTitle());
                    return;
                }
                String string2 = SearchHintActivity.this.searchEditText.getText().toString();
                SearchHintActivity.this.goSearch(string2, "", 2);
                SearchHintActivity.this.saveRecordBean(string2, "");
                SearchHintActivity.this.sendGameCount("");
                SearchHintActivity.this.sendAutoListPoint(Event.searchThinkAdWordClick, "1", commonGameInfoBean.getIntentDataBean().getLink_type_val(), commonGameInfoBean.getTitle());
            }
        }
    }

    class k implements TabLayout.d {
        k() {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(TabLayout.g tab) {
            SearchHintActivity.this.setStatus(tab);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabSelected(TabLayout.g tab) {
            SearchHintActivity.this.setStatus(tab);
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(TabLayout.g tab) {
        }
    }

    class l implements ViewPager.OnPageChangeListener {
        l() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            ArrayList<SScrollingTxtBeanV2> arrayList;
            ViewPager2 viewPager2 = SearchHintActivity.this.vf;
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(position);
                if (SearchHintActivity.this.vf.getVisibility() != 0 && (arrayList = SearchHintActivity.this.keywords) != null && arrayList.size() > 0) {
                    SearchHintActivity searchHintActivity = SearchHintActivity.this;
                    searchHintActivity.searchEditText.setHint(searchHintActivity.keywords.get(position).getWord());
                }
            }
            SearchHintActivity.this.sendBannerPoint(Event.searchReturnExpGamePic, position);
        }
    }

    class m implements ya.b {
        m() {
        }

        @Override // ya.b
        public void OnBannerClick(int i10) {
            ArrayList<SScrollingTxtBeanV2> arrayList = SearchHintActivity.this.keywords;
            if (arrayList == null || arrayList.get(i10) == null || SearchHintActivity.this.keywords.get(i10).getJumpModelDto() == null) {
                return;
            }
            CommonGameInfoBean jumpModelDto = SearchHintActivity.this.keywords.get(i10).getJumpModelDto();
            jumpModelDto.set_from(164);
            jumpModelDto.set_from_type(164);
            IntentUtil.getInstance().intentActivity(SearchHintActivity.this.context, jumpModelDto.getIntentDataBean());
            SearchHintActivity.this.sendBannerPoint(Event.searchReturnClickGamePic, i10);
        }
    }

    class n extends ViewPager2.OnPageChangeCallback {
        n() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int position) {
            com.papa.sim.statistic.t.l(SearchHintActivity.this.context).R1(Event.switchRankingList, new Ext().setFrom((position + 1) + ""));
        }
    }

    class o implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchAutoDataBean f55571b;

        o(final SearchAutoDataBean val$tag) {
            this.f55571b = val$tag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchHintActivity.this.goSearch(this.f55571b.getGame_name(), this.f55571b.getGame_id());
        }
    }

    private final class p extends FragmentStateAdapter {
        p(FragmentActivity fragmentActivity) {
            super(fragmentActivity);
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public boolean containsItem(long itemId) {
            return itemId >= 0 && itemId / 256 == SearchHintActivity.this.searchRankingPagerStamp;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NonNull
        public Fragment createFragment(int position) {
            return SearchHintActivity.this.list.get(position).f62228c;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<com.join.mgps.adapter.h0.a> list = SearchHintActivity.this.list;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int position) {
            return (SearchHintActivity.this.searchRankingPagerStamp * 256) + ((long) position);
        }
    }

    class r extends BaseQuickAdapter<String, com.join.mgps.base.b> {
        public r(List<String> data) {
            super(R.layout.item_search_hint_viewflipper_v2, data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, String item) {
            helper.setText(R.id.tvHint, item);
        }
    }

    public static class s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleDraweeView f55591a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ImageView f55592b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f55593c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public DownloadNormalView f55594d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f55595e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f55596f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public LinearLayout f55597g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public LinearLayout f55598h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f55599i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f55600j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f55601k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ProgressBar f55602l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public ProgressBar f55603m;
    }

    private void getView() {
        TextView textView;
        if (this.tabLayout.getTabCount() == 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            if (i10 >= this.tabLayout.getTabCount()) {
                break;
            }
            TabLayout.g gVarD = this.tabLayout.D(i10);
            if (gVarD != null) {
                View viewInflate = LayoutInflater.from(this).inflate(R.layout.search_tab_item_layout, (ViewGroup) null);
                ((TextView) viewInflate.findViewById(R.id.f35487tv)).setText(this.title[i10]);
                gVarD.v(viewInflate);
            }
            i10++;
        }
        TabLayout.g gVarD2 = this.tabLayout.D(0);
        View viewG = gVarD2 != null ? gVarD2.g() : null;
        if (viewG == null || (textView = (TextView) viewG.findViewById(R.id.f35487tv)) == null) {
            return;
        }
        textView.setTextColor(-16777216);
        textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
        textView.setTypeface(textView.getTypeface(), 1);
        View viewFindViewById = viewG.findViewById(R.id.iv);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(0);
        }
    }

    private void initBanner() {
        ArrayList<SScrollingTxtBeanV2> arrayList = this.keywords;
        if (arrayList == null || arrayList.size() <= 0) {
            this.keywords = MApplication.L1;
        }
        ArrayList<SScrollingTxtBeanV2> arrayList2 = this.keywords;
        if (arrayList2 == null || arrayList2.size() <= 0 || this.banner == null) {
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        String big_pic = null;
        for (SScrollingTxtBeanV2 sScrollingTxtBeanV2 : this.keywords) {
            if (sScrollingTxtBeanV2 != null && sScrollingTxtBeanV2.getJumpModelDto() != null && sScrollingTxtBeanV2.getJumpModelDto().getBig_pic() != null) {
                big_pic = sScrollingTxtBeanV2.getJumpModelDto().getBig_pic();
            }
            arrayList3.add(big_pic);
            if (sScrollingTxtBeanV2 != null) {
                arrayList4.add(sScrollingTxtBeanV2.getWord());
            } else {
                arrayList4.add("");
            }
        }
        for (int i10 = 0; i10 < arrayList3.size(); i10++) {
            if (arrayList3.get(i10) == null) {
                arrayList3.set(i10, big_pic == null ? Integer.valueOf(R.drawable.main_normal_icon) : big_pic);
            }
        }
        this.vf.setOrientation(1);
        this.vf.setAdapter(new r(arrayList4));
        this.vf.setUserInputEnabled(false);
        this.banner.z(arrayList3).x(this.interval * 1000).y(new GlideImageLoader()).D(new m()).I().setOnPageChangeListener(new l());
        sendBannerPoint(Event.searchReturnExpGamePic, 0);
    }

    private void initStatusBar() {
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        int iV = com.join.android.app.common.utils.q.v(this);
        View view = this.statubar;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = iV;
            this.statubar.setLayoutParams(layoutParams);
        }
        int dimension = (int) getResources().getDimension(R.dimen.wdp97);
        View view2 = this.search_bar_layout;
        if (view2 != null) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) view2.getLayoutParams();
            layoutParams2.topMargin = iV;
            this.search_bar_layout.setLayoutParams(layoutParams2);
        }
        ListView listView = this.autoListView;
        if (listView != null) {
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) listView.getLayoutParams();
            layoutParams3.topMargin = dimension;
            this.autoListView.setLayoutParams(layoutParams3);
        }
        View decorView = getWindow().getDecorView();
        ViewCompat.setOnApplyWindowInsetsListener(decorView, new OnApplyWindowInsetsListener() { // from class: com.join.mgps.activity.z8
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view3, WindowInsetsCompat windowInsetsCompat) {
                return this.f58290a.lambda$initStatusBar$1(view3, windowInsetsCompat);
            }
        });
        ViewCompat.requestApplyInsets(decorView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViews$0(TabLayout.g gVar, int i10) {
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.search_tab_item_layout, (ViewGroup) this.tabLayout, false);
        ((TextView) viewInflate.findViewById(R.id.f35487tv)).setText(this.title[i10]);
        gVar.v(viewInflate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat lambda$initStatusBar$1(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime());
        ListView listView = this.autoListView;
        if (listView != null) {
            if (listView.getVisibility() == 0) {
                this.autoListView.setPadding(0, 0, 0, insets.bottom);
            } else {
                this.autoListView.setPadding(0, 0, 0, 0);
            }
        }
        return windowInsetsCompat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$searchClear$2() {
        ListView listView = this.autoListView;
        if (listView != null) {
            listView.setVisibility(8);
        }
        this.searchClearInProgress = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateHint$3(CommonGameInfoBean commonGameInfoBean, View view) {
        IntentDateBean intentDataBean = commonGameInfoBean.getIntentDataBean();
        ExtBean extBean = intentDataBean.getExtBean();
        extBean.setRecPosition("22-99-1");
        extBean.setFrom("113");
        intentDataBean.setExtBean(extBean);
        IntentUtil.getInstance().intentActivity(this, intentDataBean);
    }

    private View makeFlawLayoutItem(final Context mContext, final SearchAutoDataBean tag) {
        View view = null;
        try {
            View viewInflate = View.inflate(mContext, R.layout.forum_group_tag_item, null);
            try {
                viewInflate.setLayoutParams(new ViewGroup.MarginLayoutParams(-2, -2));
                TextView textView = (TextView) viewInflate.findViewById(R.id.tagTv);
                if (textView == null) {
                    return null;
                }
                textView.setBackgroundResource(R.drawable.search_history_tag_back);
                textView.setTextColor(Color.parseColor("#777777"));
                textView.setText(tag.getGame_name());
                textView.setTextSize(0, mContext.getResources().getDimensionPixelSize(R.dimen.wdp26));
                int dimensionPixelOffset = mContext.getResources().getDimensionPixelOffset(R.dimen.wdp14);
                int dimensionPixelOffset2 = mContext.getResources().getDimensionPixelOffset(R.dimen.wdp24);
                textView.setPadding(dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset);
                textView.setOnClickListener(new o(tag));
                return viewInflate;
            } catch (Exception e10) {
                e = e10;
                view = viewInflate;
                e.printStackTrace();
                return view;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveRecordBean(String name, String gameId) {
        if (name != null) {
            try {
                if (TextUtils.isEmpty(name.trim())) {
                    return;
                }
                List<SearchRecordTable> listD = t6.h0.n().d();
                if (listD != null && listD.size() != 0) {
                    if (listD.size() > 100) {
                        t6.h0.n().delete((Collection) t6.h0.n().i(10L, listD.size(), "create_time", false));
                        return;
                    }
                    for (SearchRecordTable searchRecordTable : listD) {
                        if (searchRecordTable.getName().equals(name)) {
                            t6.h0.n().delete(searchRecordTable);
                        }
                    }
                    SearchRecordTable searchRecordTable2 = new SearchRecordTable();
                    searchRecordTable2.setName(name);
                    searchRecordTable2.setCreate_time(System.currentTimeMillis());
                    t6.h0.n().m(searchRecordTable2);
                    return;
                }
                SearchRecordTable searchRecordTable3 = new SearchRecordTable();
                searchRecordTable3.setName(name);
                searchRecordTable3.setCreate_time(System.currentTimeMillis());
                t6.h0.n().m(searchRecordTable3);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
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
    public void sendBannerPoint(Event event, int position) {
        SScrollingTxtBeanV2 sScrollingTxtBeanV2;
        ArrayList<SScrollingTxtBeanV2> arrayList = this.keywords;
        if (arrayList == null || position >= arrayList.size() || (sScrollingTxtBeanV2 = this.keywords.get(position)) == null) {
            return;
        }
        if (Event.searchReturnExpGamePic.name().equals(event.name()) && sScrollingTxtBeanV2.isHasExposure()) {
            return;
        }
        sScrollingTxtBeanV2.setHasExposure(true);
        String id2 = (sScrollingTxtBeanV2.getJumpModelDto() == null || sScrollingTxtBeanV2.getJumpModelDto().getG_info() == null) ? null : sScrollingTxtBeanV2.getJumpModelDto().getG_info().getId();
        Ext ext = new Ext();
        ext.setGameId(id2);
        Data data = new Data();
        if (sScrollingTxtBeanV2.getJumpModelDto() != null) {
            data.setWhere(sScrollingTxtBeanV2.getJumpModelDto().getIntentDataBean().getLink_type_val());
        }
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
                    viewG.findViewById(R.id.iv).setVisibility(0);
                    TextView textView = (TextView) viewG.findViewById(R.id.f35487tv);
                    textView.setTextColor(-16777216);
                    textView.setTypeface(null, 1);
                    textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
                } else {
                    viewG.findViewById(R.id.iv).setVisibility(4);
                    TextView textView2 = (TextView) viewG.findViewById(R.id.f35487tv);
                    textView2.setTextColor(Color.parseColor("#535353"));
                    textView2.setTypeface(null, 0);
                    textView2.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp28));
                }
            }
        }
    }

    private void showFargment(SearchIndexData bean) {
        this.bean = bean;
        this.list.clear();
        this.list.add(new com.join.mgps.adapter.h0.a(this.title[0], SearchRankingFragment.getInstance(1)));
        this.list.add(new com.join.mgps.adapter.h0.a(this.title[1], SearchRankingFragment.getInstance(2)));
        this.list.add(new com.join.mgps.adapter.h0.a(this.title[2], SearchRankingFragment.getInstance(3)));
        this.list.add(new com.join.mgps.adapter.h0.a(this.title[3], SearchRankingFragment.getInstance(4)));
        this.searchRankingPagerStamp++;
        this.pagerAdapter.notifyDataSetChanged();
        getView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<CommonGameInfoBean> updateDownStateList(List<CommonGameInfoBean> collectionBeanSubList) {
        Iterator<CommonGameInfoBean> it2 = collectionBeanSubList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
        return collectionBeanSubList;
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex && !(this.autoListView.getItemAtPosition(i10) instanceof SearchAutoDataBean); i10++) {
            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) this.autoListView.getItemAtPosition(i10);
            if (commonGameInfoBean != null && (downloadTask = commonGameInfoBean.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                View childAt = this.autoListView.getChildAt(i10 - this.firstVisiblePosition);
                if (childAt.getTag() instanceof s) {
                    s sVar = (s) childAt.getTag();
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

    @AfterViews
    @TargetApi(12)
    void afterViews() {
        ArrayList<SScrollingTxtBeanV2> arrayList;
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.Util.j0.a().d(this);
        initStatusBar();
        ArrayList<SScrollingTxtBeanV2> arrayList2 = this.keywords;
        if ((arrayList2 == null || arrayList2.size() <= 0) && (arrayList = MApplication.L1) != null && arrayList.size() > 0) {
            this.keywords = MApplication.L1;
        }
        if (this.from == 4) {
            popKeyboard = true;
        }
        if (this.interval <= 0) {
            this.interval = MApplication.R1;
        }
        if (this.interval < 1) {
            this.interval = 1;
        }
        try {
            this.context = this;
            this.searchEditText.setOnFocusChangeListener(new g());
            this.searchEditText.setOnKeyListener(new h());
            this.searchEditText.addTextChangedListener(new i());
            this.searchAutoDataBeanList = new ArrayList();
            q qVar = new q(this.context, this.searchAutoDataBeanList);
            this.searchSimpleAdapter = qVar;
            this.autoListView.setAdapter((ListAdapter) qVar);
            this.autoListView.setOnScrollListener(this);
            this.autoListView.setOnItemClickListener(new j());
            this.searchHistoryDataBeanList = new ArrayList();
            ArrayList<SScrollingTxtBeanV2> arrayList3 = this.keywords;
            if (arrayList3 == null || arrayList3.size() <= 0) {
                if (!TextUtils.isEmpty(this.keyword)) {
                    this.defaultHint = this.keyword;
                }
                this.searchEditText.setHint(" " + this.defaultHint);
            }
            p pVar = new p(this);
            this.pagerAdapter = pVar;
            this.viewPager.setAdapter(pVar);
            this.viewPager.setOffscreenPageLimit(4);
            com.google.android.material.tabs.d dVar = this.tabLayoutMediator;
            if (dVar != null) {
                dVar.b();
            }
            com.google.android.material.tabs.d dVar2 = new com.google.android.material.tabs.d(this.tabLayout, this.viewPager, new com.google.android.material.tabs.d.b() { // from class: com.join.mgps.activity.a9
                @Override // com.google.android.material.tabs.d.b
                public final void a(TabLayout.g gVar, int i10) {
                    this.f56462a.lambda$afterViews$0(gVar, i10);
                }
            });
            this.tabLayoutMediator = dVar2;
            dVar2.a();
            this.viewPager.registerOnPageChangeCallback(this.rankingPageChangeCallback);
            getView();
            this.tabLayout.h(new k());
            loadingDB();
            loading();
            getHistoryFromDb();
            if (popKeyboard) {
                showKeyBorad();
            } else {
                clearEditFocus();
            }
            initBanner();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        com.papa.sim.statistic.t.l(this.context).R1(Event.visitTopSearchPage, new Ext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void changeLoadingState(int state) {
        ForumLoadingView forumLoadingView = this.loadingView;
        if (forumLoadingView == null) {
            return;
        }
        if (state == 1) {
            forumLoadingView.j(1);
            return;
        }
        if (state == 2) {
            forumLoadingView.j(2);
            updateUi();
            return;
        }
        if (state == 4) {
            forumLoadingView.j(4);
            return;
        }
        if (state == 16) {
            forumLoadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView2 = this.loadingView;
            forumLoadingView2.setListener(new e(forumLoadingView2));
            this.loadingView.j(16);
            return;
        }
        if (state == 9) {
            forumLoadingView.setListener(new c(forumLoadingView));
            this.loadingView.j(9);
        } else {
            if (state != 10) {
                return;
            }
            forumLoadingView.setFailedMsg("没有更多内容哦~");
            ForumLoadingView forumLoadingView3 = this.loadingView;
            forumLoadingView3.setListener(new d(forumLoadingView3));
            this.loadingView.setReloadingVisibility(0);
            this.loadingView.j(10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void changeSearchBarLayout(int style) {
        Banner banner;
        this.img_iconback.setImageResource(style == 0 ? R.drawable.ic_introduction_back_white : R.drawable.back_icon);
        this.search_bar_layout.setBackgroundResource(style == 0 ? 0 : R.drawable.papa_title_back);
        this.lLayout_search.setBackgroundResource(style == 0 ? R.drawable.search_context_bg_v2 : R.drawable.search_context_bg);
        this.searchEditText.setTextColor(style == 0 ? -1 : Color.parseColor("#8A8A8A"));
        this.searchEditText.setHintTextColor(style == 0 ? -1 : Color.parseColor("#8A8A8A"));
        this.tv_search.setTextColor(style != 0 ? Color.parseColor("#AAAAAA") : -1);
        this.searchBarStyle = style;
        if (style != 0 || (banner = this.banner) == null) {
            return;
        }
        banner.q(true);
        if (this.vf != null) {
            EditText editText = this.searchEditText;
            if (editText == null || !editText.hasFocus()) {
                this.vf.setVisibility(0);
            }
        }
    }

    void clearEditFocus() {
        this.searchEditText.clearFocus();
        this.requestLayout.setFocusable(true);
        this.requestLayout.setFocusableInTouchMode(true);
        this.requestLayout.requestFocus();
        this.requestLayout.requestFocusFromTouch();
        hideKeyboard();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void clearHistory() {
        t6.h0.n().a();
        updateUi();
    }

    @Click
    void clearHistoryx() {
        ArrayList<String> arrayList = this.historyList;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.historyFlow.removeAllViews();
        clearHistory();
        showHint();
    }

    void deleteRecordBean(String name) {
        try {
            List<SearchRecordTable> listD = t6.h0.n().d();
            if (listD == null && listD.size() == 0) {
                return;
            }
            for (SearchRecordTable searchRecordTable : listD) {
                if (searchRecordTable.getName().equals(name)) {
                    t6.h0.n().delete(searchRecordTable);
                    return;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    IntentDateBean fromSearch(IntentDateBean bean) {
        ExtBean extBean = bean.getExtBean();
        if (extBean == null) {
            extBean = new ExtBean();
        }
        extBean.setFrom("112");
        EditText editText = this.searchEditText;
        if (editText != null) {
            extBean.setLocation(editText.getText().toString());
            extBean.setWhere(this.searchEditText.getText().toString());
        }
        bean.setExtBean(extBean);
        return bean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getAutoSearchList(String keyword) {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            netWorkException();
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            try {
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.context);
                requestModel.setArgs(new RequestKeywordArgs(keyword, this.pn, this.f55554pc, 0, 0));
                ResponseModel<SearchAutoDataV1> responseModelBody = com.join.mgps.rpc.impl.i.Q0().N0().Z0(requestModel.makeSign()).execute().body();
                this.searchAutoBean = responseModelBody;
                updateUI(responseModelBody.getData().getSearch_list(), 0);
            } catch (Exception e10) {
                e10.printStackTrace();
                serverConnectionException();
                updateUI(arrayList, 0);
            }
        } catch (Throwable th) {
            updateUI(arrayList, 0);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getHint() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            netWorkException();
            changeLoadingState(9);
            return;
        }
        try {
            RequestModel<RequestUidtagidTagdes> requestModel = new RequestModel<>();
            requestModel.setDefault(this.context);
            RequestUidtagidTagdes requestUidtagidTagdes = new RequestUidtagidTagdes();
            UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
            requestUidtagidTagdes.setUid(accountData.getUid());
            requestUidtagidTagdes.setToken(accountData.getToken());
            requestModel.setArgs(requestUidtagidTagdes);
            ResponseModel<SearchIndexData> responseModelBody = com.join.mgps.rpc.impl.i.Q0().N0().l1(requestModel).execute().body();
            this.searchPageBean = responseModelBody;
            SearchIndexData data = responseModelBody.getData();
            if (data != null && (data.getHot_search_ranking() != null || data.getSearch_key() != null)) {
                updateHint(data, true);
                updateUi();
                changeLoadingState(2);
                return;
            }
            changeLoadingState(4);
        } catch (Exception e10) {
            e10.printStackTrace();
            serverConnectionException();
            changeLoadingState(4);
        }
    }

    public CommonRequestBean getHintRequestBean() {
        String uid = AccountUtil_.getInstance_(this.context).getUid();
        return RequestBeanUtil.getInstance(this.context).getSearchPageRequestBean(Integer.parseInt(uid), AccountUtil_.getInstance_(this.context).getToken());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getHistoryFromDb() {
        try {
            ArrayList arrayList = new ArrayList();
            List<SearchRecordTable> listI = t6.h0.n().i(0L, 20, "create_time", false);
            if (this.historyList == null) {
                this.historyList = new ArrayList<>();
            }
            this.historyList.clear();
            Iterator<SearchRecordTable> it2 = listI.iterator();
            while (it2.hasNext()) {
                this.historyList.add(it2.next().getName());
            }
            if (this.historyList.size() > 0) {
                for (int i10 = 0; i10 < this.historyList.size(); i10++) {
                    SearchAutoDataBean searchAutoDataBean = new SearchAutoDataBean();
                    if (i10 >= this.historyList.size()) {
                        break;
                    }
                    searchAutoDataBean.setGame_name(this.historyList.get(i10));
                    searchAutoDataBean.setCrc_sign_id("");
                    searchAutoDataBean.setIsHistory(true);
                    arrayList.add(searchAutoDataBean);
                }
                showHistory();
                updateHistoryList(arrayList);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public SearchHotAdInfo getHotAdInfo(int position) {
        SearchIndexData searchIndexData = this.bean;
        if (searchIndexData == null || position != 1) {
            return null;
        }
        return searchIndexData.getHot_search_ad_info();
    }

    public List<GameInfoBean> getItemData(int position) {
        SearchIndexData searchIndexData = this.bean;
        if (searchIndexData != null) {
            if (position == 1) {
                return searchIndexData.getHot_search_ranking();
            }
            if (position == 2) {
                return searchIndexData.getNet_search_ranking();
            }
            if (position == 3) {
                return searchIndexData.getSimulator_search_ranking();
            }
            if (position == 4) {
                return searchIndexData.getStandalone_search_ranking();
            }
        }
        return new ArrayList();
    }

    public CommonRequestBean getRequestBean(String KEYWORD) {
        return RequestBeanUtil.getInstance(this.context).getSearchAutoRequestBean("searchAuto", KEYWORD, this.pn, this.f55554pc, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getSearchAutoData(String key, int type) {
        if (type == 0) {
            getAutoSearchList(key);
        } else {
            if (type != 1) {
                return;
            }
            getHistoryFromDb();
        }
    }

    public void goSearch(String keyword, String gameid) {
        goSearch(keyword, gameid, 1);
    }

    void hideKeyboard() {
        r7.a.b(this.searchEditText);
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getWindowToken(), 2);
        }
    }

    @Click
    void img_iconback() {
        try {
            if (getCurrentFocus() != null) {
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.searchBarStyle == 0) {
            finish();
            return;
        }
        this.searchEditText.setText("");
        clearEditFocus();
        showHint();
    }

    @Click
    void img_search() {
        ArrayList<SScrollingTxtBeanV2> arrayList;
        if (this.searchEditText.getText().length() > 0) {
            goSearch(this.searchEditText.getText().toString(), "");
            return;
        }
        if (!TextUtils.isEmpty(this.keyword)) {
            goSearch(this.keyword, "");
            return;
        }
        if (this.vf == null || (arrayList = this.keywords) == null || arrayList.size() <= 0) {
            return;
        }
        int currentItem = this.vf.getCurrentItem();
        ArrayList<SScrollingTxtBeanV2> arrayList2 = this.keywords;
        goSearch(arrayList2.get(currentItem % arrayList2.size()).getWord(), "");
    }

    void loading() {
        changeLoadingState(1);
        getHint();
        updateUi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadingDB() {
        SearchIndexData searchIndexData;
        String strD = this.prefDef.searchHintCache().d();
        if (TextUtils.isEmpty(strD) || (searchIndexData = (SearchIndexData) JsonMapper.getInstance().fromJson(strD, SearchIndexData.class)) == null) {
            return;
        }
        if (searchIndexData.getHot_search_ranking() == null && searchIndexData.getSearch_key() == null) {
            return;
        }
        updateHint(searchIndexData, false);
        updateUi();
        changeLoadingState(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void netWorkException() {
        com.join.android.app.common.manager.a.h().j(this.context, this.netExcption, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyAdapter() {
        this.searchSimpleAdapter.notifyDataSetChanged();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        ViewPager2 viewPager2 = this.viewPager;
        if (viewPager2 != null) {
            viewPager2.unregisterOnPageChangeCallback(this.rankingPageChangeCallback);
        }
        com.google.android.material.tabs.d dVar = this.tabLayoutMediator;
        if (dVar != null) {
            dVar.b();
            this.tabLayoutMediator = null;
        }
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new f());
        if (downloadTaskEvent.c() != 8 || this.SCROLLING) {
            return;
        }
        updateProgressPartly();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        Banner banner = this.banner;
        if (banner != null) {
            banner.q(false);
        }
        r7.a.b(this.searchEditText);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        EditText editText;
        super.onResume();
        if (this.banner != null && (editText = this.searchEditText) != null && editText.hasFocus()) {
            this.banner.q(true);
        }
        UtilsMy.N4(this);
        getHistoryFromDb();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.lastVisibleIndex = (visibleItemCount + firstVisibleItem) - 1;
        this.firstVisiblePosition = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        this.SCROLLING = scrollState != 0;
    }

    @Receiver(actions = {"com.broadcast.bespeak.sussess"})
    void recviedBespeak(Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("gameid");
            int intExtra = intent.getIntExtra("game_book", 0);
            String stringExtra2 = intent.getStringExtra("message");
            DomainInfoBean domainInfoBean = (DomainInfoBean) intent.getSerializableExtra("pd_info");
            updateBespeak(stringExtra, intExtra);
            if (intExtra == 1) {
                if (domainInfoBean != null) {
                    UtilsMy.D4(this.context, domainInfoBean.getInfo(), "game_search_subscribe");
                }
                com.join.mgps.Util.h0.h0(this.context).J(this.context, domainInfoBean, stringExtra2);
            }
        }
    }

    void requestEditFocus() {
        this.searchEditText.requestFocus();
        this.searchEditText.requestFocusFromTouch();
        r7.a.c(this.searchEditText);
    }

    @Click
    void searchClear() {
        this.searchClearInProgress = true;
        try {
            EditText editText = this.searchEditText;
            if (editText != null && editText.length() > 0) {
                this.suppressSearchTextListenerForClear = true;
                this.searchEditText.setText("");
                this.suppressSearchTextListenerForClear = false;
                List<Object> list = this.searchAutoDataBeanList;
                if (list != null) {
                    list.clear();
                    q qVar = this.searchSimpleAdapter;
                    if (qVar != null) {
                        qVar.notifyDataSetChanged();
                    }
                }
            }
            this.autoListView.setVisibility(8);
            this.searchClear.setVisibility(8);
        } finally {
            View decorView = this.searchEditText;
            if (decorView == null) {
                decorView = getWindow().getDecorView();
            }
            decorView.post(new Runnable() { // from class: com.join.mgps.activity.x8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f58237b.lambda$searchClear$2();
                }
            });
        }
    }

    @EditorAction
    boolean searchEditText(TextView textView, int actionId, KeyEvent keyEvent) {
        if (actionId != 6) {
            return false;
        }
        getAutoSearchList(this.searchEditText.getText().toString());
        saveRecordBean(this.searchEditText.getText().toString(), "");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sendGameCount(String gameId) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void serverConnectionException() {
        com.join.android.app.common.manager.a.h().j(this.context, this.netConnectExcption, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showHint() {
        com.join.mgps.Util.h1.e("showHint", "keyword=" + this.searchEditText.getText().toString());
        if (popKeyboard) {
            return;
        }
        String string = this.searchEditText.getText().toString();
        int i10 = 8;
        if (!TextUtils.isEmpty(string) || !TextUtils.isEmpty(string.trim())) {
            this.recommend.setVisibility(8);
            return;
        }
        this.recommend.setVisibility(0);
        this.autoListView.setVisibility(8);
        LinearLayout linearLayout = this.clearLayout;
        ArrayList<String> arrayList = this.historyList;
        if (arrayList != null && !arrayList.isEmpty()) {
            i10 = 0;
        }
        linearLayout.setVisibility(i10);
        changeSearchBarLayout(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showHistory() {
        if (isFinishing() || this.searchEditText == null) {
            return;
        }
        com.join.mgps.Util.h1.e("showHistory", "keyword=" + this.searchEditText.getText().toString());
        View view = this.recommend;
        if (view != null) {
            view.setVisibility(0);
        }
        ListView listView = this.autoListView;
        if (listView != null) {
            listView.setVisibility(8);
        }
        LinearLayout linearLayout = this.clearLayout;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        ImageView imageView = this.ivClearHistory;
        if (imageView != null) {
            ArrayList<String> arrayList = this.historyList;
            imageView.setVisibility((arrayList == null || arrayList.size() <= 0) ? 8 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 300)
    public void showKeyBorad() {
        this.searchEditText.setText("");
        this.searchClear.setVisibility(8);
        this.autoListView.setVisibility(8);
        requestEditFocus();
        popKeyboard = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showRecommend() {
        if (isFinishing() || this.searchEditText == null) {
            return;
        }
        com.join.mgps.Util.h1.e("showRecommend", "keyword=" + this.searchEditText.getText().toString());
        View view = this.recommend;
        if (view != null) {
            view.setVisibility(8);
        }
        ListView listView = this.autoListView;
        if (listView != null) {
            listView.setVisibility(0);
        }
        LinearLayout linearLayout = this.clearLayout;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        changeSearchBarLayout(1);
        ViewCompat.requestApplyInsets(getWindow().getDecorView());
    }

    @Click
    void tv_search() {
        ArrayList<SScrollingTxtBeanV2> arrayList;
        String gameId = "";
        if (this.searchEditText.getText().length() > 0) {
            goSearch(this.searchEditText.getText().toString(), "");
            return;
        }
        if (!TextUtils.isEmpty(this.keyword)) {
            goSearch(this.keyword, "");
            return;
        }
        if (this.vf == null || (arrayList = this.keywords) == null || arrayList.size() <= 0) {
            return;
        }
        int currentItem = this.vf.getCurrentItem();
        ArrayList<SScrollingTxtBeanV2> arrayList2 = this.keywords;
        SScrollingTxtBeanV2 sScrollingTxtBeanV2 = arrayList2.get(currentItem % arrayList2.size());
        CommonGameInfoBean jumpModelDto = sScrollingTxtBeanV2.getJumpModelDto();
        if (jumpModelDto != null && jumpModelDto.isGame()) {
            gameId = jumpModelDto.getGameId();
        }
        goSearch(sScrollingTxtBeanV2.getWord(), gameId);
    }

    void updateAutoList(List<SearchAutoDataBean> autoBeanList, int from) {
        ResponseModel<SearchAutoDataV1> responseModel;
        this.searchAutoDataBeanList.clear();
        if (from == 0 && (responseModel = this.searchAutoBean) != null && responseModel.getData() != null && this.searchAutoBean.getData().getGame_list() != null) {
            this.gameDownLists.clear();
            for (CommonGameInfoBean commonGameInfoBean : this.searchAutoBean.getData().getGame_list()) {
                commonGameInfoBean.set_from(103);
                commonGameInfoBean.set_from_type(112);
                commonGameInfoBean.setReMarks("0");
                this.searchAutoDataBeanList.add(commonGameInfoBean);
                this.gameDownLists.add(commonGameInfoBean);
            }
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
            updateDownStateList(this.gameDownLists);
        }
        if (autoBeanList != null && autoBeanList.size() > 0) {
            this.searchAutoDataBeanList.addAll(autoBeanList);
        }
        List<Object> list = this.searchAutoDataBeanList;
        this.isNeedRecommend = list == null || list.size() <= 0;
        this.searchSimpleAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateBespeak(String gameId, int game_book) {
        if (com.join.mgps.Util.t2.h(gameId)) {
            return;
        }
        for (Object obj : this.searchAutoDataBeanList) {
            if (obj instanceof CommonGameInfoBean) {
                CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) obj;
                if (gameId.equals(commonGameInfoBean.getGameId())) {
                    commonGameInfoBean.getG_info().setGame_book(game_book);
                    break;
                }
            }
        }
        q qVar = this.searchSimpleAdapter;
        if (qVar != null) {
            qVar.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateHint(SearchIndexData bean, boolean isFromNet) {
        SearchIndexData searchIndexData;
        View viewMakeFlawLayoutItem;
        if (bean == null) {
            return;
        }
        this.prefDef.searchHintCache().g(JsonMapper.getInstance().toJson(bean));
        if (com.join.mgps.Util.t2.i(bean.getSearch_key())) {
            this.searchKey = bean.getSearch_key();
            this.searchEditText.setHint(" " + this.searchKey);
        }
        showHint();
        if (bean.getAd_info_v2() != null && bean.getAd_info_v2().getAd_switch().intValue() == 1) {
            this.llRecent.setVisibility(0);
            final CommonGameInfoBean ad_info_v2 = bean.getAd_info_v2();
            com.join.android.app.common.utils.l.q(this.f55553ad, ad_info_v2.getBig_pic(), com.facebook.drawee.drawable.s.c.f27292i);
            this.f55553ad.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.y8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f58268b.lambda$updateHint$3(ad_info_v2, view);
                }
            });
        }
        List<SearchGameZoneBean> arrayList = new ArrayList<>();
        List<GameInfoBean> arrayList2 = new ArrayList<>();
        if ((bean.getGuess_you_like_info() == null || bean.getGuess_you_like_info().size() <= 0) && (bean.getGame_zone_entry() == null || bean.getGame_zone_entry().size() <= 0)) {
            String strD = this.prefDef.searchguesslikeData().d();
            if (com.join.mgps.Util.t2.i(strD) && (searchIndexData = (SearchIndexData) JsonMapper.getInstance().fromJson(strD, SearchIndexData.class)) != null) {
                arrayList = searchIndexData.getGame_zone_entry();
                arrayList2 = searchIndexData.getGuess_you_like_info();
            }
        } else {
            arrayList = bean.getGame_zone_entry();
            arrayList2 = bean.getGuess_you_like_info();
            this.prefDef.searchguesslikeData().g(JsonMapper.getInstance().toJson(bean));
        }
        if ((arrayList == null || arrayList.size() <= 0) && (arrayList2 == null || arrayList2.size() <= 0)) {
            this.guessLickFlow.removeAllViews();
            this.guessliketext.setVisibility(8);
        } else {
            this.guessliketext.setVisibility(0);
            this.guessLickFlow.removeAllViews();
            if (arrayList != null && arrayList.size() > 0 && (viewMakeFlawLayoutItem = makeFlawLayoutItem(this, arrayList.get(0))) != null) {
                this.guessLickFlow.addView(viewMakeFlawLayoutItem);
            }
            if (arrayList2 != null) {
                for (int i10 = 0; i10 < arrayList2.size(); i10++) {
                    View viewMakeFlawLayoutItem2 = makeFlawLayoutItem(this, arrayList2.get(i10));
                    if (viewMakeFlawLayoutItem2 != null) {
                        this.guessLickFlow.addView(viewMakeFlawLayoutItem2);
                    }
                }
            }
            if (arrayList != null && arrayList.size() > 1) {
                for (int i11 = 1; i11 < arrayList.size(); i11++) {
                    View viewMakeFlawLayoutItem3 = makeFlawLayoutItem(this, arrayList.get(i11));
                    if (viewMakeFlawLayoutItem3 != null) {
                        this.guessLickFlow.addView(viewMakeFlawLayoutItem3);
                    }
                }
            }
            this.guessLickFlow.setHorizontalDivider(getResources().getDimensionPixelOffset(R.dimen.wdp30));
            this.guessLickFlow.setVerticalDivider(getResources().getDimensionPixelOffset(R.dimen.wdp18));
        }
        showFargment(bean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateHistoryList(List<SearchAutoDataBean> autoBeanList) {
        this.searchHistoryDataBeanList.clear();
        this.gameDownLists.clear();
        if (autoBeanList != null) {
            this.searchHistoryDataBeanList.addAll(autoBeanList);
        }
        this.historyFlow.removeAllViews();
        this.historyFlow.setNumberRows(3);
        try {
            FlowLayout flowLayout = this.historyFlow;
            flowLayout.setHorizontalDivider(flowLayout.getResources().getDimensionPixelOffset(R.dimen.wdp30));
            FlowLayout flowLayout2 = this.historyFlow;
            flowLayout2.setVerticalDivider(flowLayout2.getResources().getDimensionPixelOffset(R.dimen.wdp18));
            ImageView imageView = this.ivClearHistory;
            if (imageView != null) {
                imageView.setVisibility(this.searchHistoryDataBeanList.isEmpty() ? 8 : 0);
            }
            if (this.searchHistoryDataBeanList.isEmpty()) {
                this.clearLayout.setVisibility(8);
                return;
            }
            this.clearLayout.setVisibility(0);
            for (int i10 = 0; i10 < this.searchHistoryDataBeanList.size(); i10++) {
                View viewMakeFlawLayoutItem = makeFlawLayoutItem(this, this.searchHistoryDataBeanList.get(i10));
                if (viewMakeFlawLayoutItem != null) {
                    this.historyFlow.addView(viewMakeFlawLayoutItem);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUI(List<SearchAutoDataBean> searchAutoDataBeans, int i10) {
        EditText editText;
        if (i10 != 0 || (editText = this.searchEditText) == null || TextUtils.isEmpty(editText.getText().toString().trim())) {
            return;
        }
        updateAutoList(searchAutoDataBeans, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi() {
        String string = this.searchEditText.getText().toString();
        if (!string.isEmpty()) {
            showRecommend();
            getAutoSearchList(string);
            this.searchClear.setVisibility(0);
            return;
        }
        if (com.join.mgps.Util.t2.i(this.searchKey)) {
            this.searchEditText.setHint("");
            showHint();
            this.searchEditText.setHint(" " + this.searchKey);
        }
        this.searchClear.setVisibility(8);
        this.autoListView.setVisibility(8);
    }

    public class q extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Context f55574b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private LayoutInflater f55575c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<Object> f55576d;

        class a extends m6.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CommonGameInfoBean f55578a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context ctx, Downloadable info, final CommonGameInfoBean val$item) {
                super(ctx, info);
                this.f55578a = val$item;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // m6.c
            public void onButtonClicked(DownloadNormalView downView) {
                if (this.f55578a.getG_info().getBespeak_switch() == 1 && this.f55578a.getG_info().getDown_state().intValue() == 6) {
                    String modGameId = this.f55578a.isModGameVm() ? this.f55578a.getModGameId() : this.f55578a.getGameId();
                    if (this.f55578a.getG_info().getGame_book() == 0) {
                        ((CommonService_.n0) CommonService_.P2(q.this.f55574b).extra("onClickGamebeSpeakGameId", modGameId)).a();
                        return;
                    } else if (this.f55578a.getG_info().getGame_book() == 1) {
                        ((CommonService_.n0) CommonService_.P2(q.this.f55574b).extra("onClickUnGamebeSpeakGameId", modGameId)).a();
                        return;
                    }
                }
                this.f55578a.setWhere(SearchHintActivity.this.keyword);
                ExtBean extBean = new ExtBean();
                extBean.setGameId(this.f55578a.getGameId());
                extBean.setReMarks(this.f55578a.getReMarks());
                extBean.set_from_type(112);
                extBean.setFrom("103");
                extBean.setWhere(SearchHintActivity.this.keyword);
                extBean.setKeyword(SearchHintActivity.this.keyword);
                this.f55578a.setExt(JsonMapper.toJsonString(extBean.buildScene().toExt()));
                super.onButtonClicked(downView);
                q.this.c(this.f55578a.getDownloadTask());
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f55580b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ SearchAutoDataBean f55581c;

            b(final String val$name, final SearchAutoDataBean val$searchAutoDataBean) {
                this.f55580b = val$name;
                this.f55581c = val$searchAutoDataBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                SearchHintActivity.this.deleteRecordBean(this.f55580b);
                q.this.f55576d.remove(this.f55581c);
                q.this.notifyDataSetChanged();
            }
        }

        public class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public TextView f55583a;

            public c() {
            }
        }

        private class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public ImageView f55585a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public ImageView f55586b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public View f55587c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public TextView f55588d;

            private d() {
            }

            /* synthetic */ d(q qVar, g gVar) {
                this();
            }
        }

        public q(Context context) {
            this.f55574b = context;
        }

        void c(DownloadTask downloadTask) {
            if (downloadTask == null) {
                return;
            }
            ExtBean extBean = new ExtBean();
            extBean.setGameId(downloadTask.getCrc_link_type_val());
            extBean.setFrom("103");
            extBean.setLocation(SearchHintActivity.this.keyword);
            downloadTask.setExt(com.join.android.app.common.utils.JsonMapper.toJsonString(extBean));
        }

        public View d(int i10, View convertView, ViewGroup viewGroup) {
            c cVar;
            if (convertView == null) {
                convertView = this.f55575c.inflate(R.layout.simple_listview_item2, (ViewGroup) null);
                cVar = new c();
                cVar.f55583a = (TextView) convertView.findViewById(R.id.lv_tv_title);
                convertView.setTag(cVar);
            } else {
                cVar = (c) convertView.getTag();
            }
            cVar.f55583a.setText(((CommonGameInfoBean) this.f55576d.get(i10)).getTitle());
            return convertView;
        }

        public View e(int i10, View convertView, ViewGroup viewGroup) {
            d dVar;
            if (convertView == null) {
                convertView = this.f55575c.inflate(R.layout.simple_listview_item1, (ViewGroup) null);
                dVar = new d(this, null);
                dVar.f55588d = (TextView) convertView.findViewById(R.id.lv_tv_title);
                dVar.f55586b = (ImageView) convertView.findViewById(R.id.dotHistory);
                dVar.f55587c = convertView.findViewById(R.id.rlClearHistory);
                convertView.setTag(dVar);
            } else {
                dVar = (d) convertView.getTag();
            }
            SearchAutoDataBean searchAutoDataBean = (SearchAutoDataBean) this.f55576d.get(i10);
            String game_name = searchAutoDataBean.getGame_name();
            String string = SearchHintActivity.this.searchEditText.getText().toString();
            dVar.f55588d.setText(Html.fromHtml(game_name.replace(string, "<font color=#f47500>" + string + "</font>")), TextView.BufferType.SPANNABLE);
            if (searchAutoDataBean.getIsHistory()) {
                if (dVar.f55586b.getVisibility() != 0) {
                    dVar.f55586b.setVisibility(0);
                }
                if (dVar.f55587c.getVisibility() != 0) {
                    dVar.f55587c.setVisibility(0);
                }
                dVar.f55587c.setOnClickListener(new b(game_name, searchAutoDataBean));
            } else if (dVar.f55587c.getVisibility() != 8) {
                dVar.f55587c.setVisibility(8);
            }
            return convertView;
        }

        /* JADX WARN: Code duplicated, block: B:47:0x026f  */
        /* JADX WARN: Code duplicated, block: B:48:0x0276  */
        /* JADX WARN: Code duplicated, block: B:51:0x0283 A[Catch: Exception -> 0x02d5, TryCatch #0 {Exception -> 0x02d5, blocks: (B:49:0x027b, B:51:0x0283, B:53:0x02ca, B:52:0x02a7), top: B:68:0x027b }] */
        /* JADX WARN: Code duplicated, block: B:52:0x02a7 A[Catch: Exception -> 0x02d5, TryCatch #0 {Exception -> 0x02d5, blocks: (B:49:0x027b, B:51:0x0283, B:53:0x02ca, B:52:0x02a7), top: B:68:0x027b }] */
        /* JADX WARN: Code duplicated, block: B:63:0x035e  */
        /* JADX WARN: Instruction removed from duplicated block: B:51:0x0283, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:52:0x02a7, please report this as an issue */
        public View f(final int i10, View convertView, ViewGroup viewGroup) {
            s sVar;
            if (convertView == null) {
                convertView = this.f55575c.inflate(R.layout.searchauto_app_listview_item, (ViewGroup) null);
                sVar = new s();
                sVar.f55591a = (SimpleDraweeView) convertView.findViewById(R.id.mgListviewItemIcon);
                sVar.f55592b = (ImageView) convertView.findViewById(R.id.giftPackageSwich);
                sVar.f55593c = (TextView) convertView.findViewById(R.id.mgListviewItemAppname);
                sVar.f55594d = (DownloadNormalView) convertView.findViewById(R.id.dv_view);
                sVar.f55596f = (TextView) convertView.findViewById(R.id.mgListviewItemDescribe);
                sVar.f55597g = (LinearLayout) convertView.findViewById(R.id.linearLayout2);
                sVar.f55598h = (LinearLayout) convertView.findViewById(R.id.tipsLayout);
                sVar.f55600j = (TextView) convertView.findViewById(R.id.tipSText);
                sVar.f55599i = (TextView) convertView.findViewById(R.id.appSize);
                sVar.f55601k = (TextView) convertView.findViewById(R.id.loding_info);
                sVar.f55602l = (ProgressBar) convertView.findViewById(R.id.progressBar);
                sVar.f55603m = (ProgressBar) convertView.findViewById(R.id.progressBarZip);
                sVar.f55595e = convertView.findViewById(R.id.line);
                convertView.setTag(sVar);
            } else {
                sVar = (s) convertView.getTag();
            }
            CommonGameInfoBean commonGameInfoBean = (CommonGameInfoBean) this.f55576d.get(i10);
            DownloadTask downloadTask = commonGameInfoBean.getDownloadTask();
            if (commonGameInfoBean.getG_info().getGift_package_switch() != 1) {
                sVar.f55592b.setVisibility(8);
            }
            sVar.f55593c.setText(commonGameInfoBean.getG_info().getName());
            sVar.f55596f.setText(commonGameInfoBean.getG_info().getInfo());
            long j10 = (long) (Double.parseDouble(commonGameInfoBean.getG_info().getApp_size()) * 1024.0d * 1024.0d);
            com.join.android.app.common.utils.l.h(sVar.f55591a, commonGameInfoBean.getG_info().getIco().trim());
            if (com.join.mgps.Util.w0.p(commonGameInfoBean.getG_info().getTag_info())) {
                sVar.f55600j.setText(commonGameInfoBean.getG_info().getSp_tag_info().getModel().getName());
            } else {
                sVar.f55600j.setText(commonGameInfoBean.getG_info().getSp_tag_info().getModel().getName() + " · " + UtilsMy.Z2(j10));
            }
            sVar.f55594d.f(new a(this.f55574b, commonGameInfoBean, commonGameInfoBean));
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
                        case 11:
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
            EditText editText = SearchHintActivity.this.searchEditText;
            if (editText != null) {
                editText.getText().toString();
            }
            return convertView;
        }

        void g(s holder, Boolean isNormal, Boolean isZip) {
            if (isNormal.booleanValue()) {
                holder.f55597g.setVisibility(8);
                holder.f55602l.setVisibility(8);
                holder.f55603m.setVisibility(8);
                holder.f55598h.setVisibility(0);
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
            return this.f55576d.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this.f55576d.get(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            if (this.f55576d.get(position) instanceof SearchAutoDataBean) {
                return 1;
            }
            return this.f55576d.get(position) instanceof CommonGameInfoBean ? 2 : 3;
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

        public q(Context context, List<Object> searchAutoDataBeanList) {
            this.f55574b = context;
            this.f55576d = searchAutoDataBeanList;
            this.f55575c = LayoutInflater.from(context);
        }
    }

    public CommonRequestBean getRequestBean(int type) {
        return RequestBeanUtil.getInstance(this.context).getSearchRecommendBean(type);
    }

    public void goSearch(String keyword, String gameid, int way) {
        saveRecordBean(keyword, "");
        this.searchEditText.setText("");
        clearEditFocus();
        if (com.join.mgps.Util.t2.i(gameid)) {
            SearchListActivity1_.intent(this.context).e(keyword).d(this.isNeedRecommend).a(0).c(gameid).b(way).start();
        } else if (this.from == 1) {
            SearchListActivity1_.intent(this.context).e(keyword).d(this.isNeedRecommend).a(2).b(way).start();
        } else {
            SearchListActivity1_.intent(this.context).e(keyword).d(this.isNeedRecommend).b(way).start();
        }
        if (!TextUtils.isEmpty(keyword)) {
            com.papa.sim.statistic.t.l(this.context).n1(Event.clickSearchButton, keyword, null);
        }
        showHint();
    }

    private View makeFlawLayoutItem(final Context mContext, final GameInfoBean tag) {
        View view = null;
        try {
            View viewInflate = View.inflate(mContext, R.layout.forum_group_tag_item, null);
            try {
                viewInflate.setLayoutParams(new ViewGroup.MarginLayoutParams(-2, -2));
                TextView textView = (TextView) viewInflate.findViewById(R.id.tagTv);
                if (textView == null) {
                    return null;
                }
                textView.setBackgroundResource(R.drawable.search_history_tag_back);
                textView.setTextColor(Color.parseColor("#777777"));
                textView.setText(tag.getGame_name());
                textView.setTextSize(0, mContext.getResources().getDimensionPixelSize(R.dimen.wdp26));
                if (tag.isThe_hot()) {
                    Drawable drawable = getResources().getDrawable(R.drawable.icon_hot);
                    drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                    textView.setCompoundDrawables(drawable, null, null, null);
                    textView.setCompoundDrawablePadding(getResources().getDimensionPixelOffset(R.dimen.wdp8));
                } else if (tag.isThe_score()) {
                    Drawable drawable2 = getResources().getDrawable(R.drawable.icon_prise);
                    drawable2.setBounds(0, 0, drawable2.getMinimumWidth(), drawable2.getMinimumHeight());
                    textView.setCompoundDrawables(drawable2, null, null, null);
                    textView.setCompoundDrawablePadding(getResources().getDimensionPixelOffset(R.dimen.wdp8));
                }
                int dimensionPixelOffset = mContext.getResources().getDimensionPixelOffset(R.dimen.wdp14);
                int dimensionPixelOffset2 = mContext.getResources().getDimensionPixelOffset(R.dimen.wdp16);
                textView.setPadding(dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset);
                textView.setOnClickListener(new a(tag));
                return viewInflate;
            } catch (Exception e10) {
                e = e10;
                view = viewInflate;
                e.printStackTrace();
                return view;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    private View makeFlawLayoutItem(final Context mContext, final SearchGameZoneBean tag) {
        View view = null;
        try {
            View viewInflate = View.inflate(mContext, R.layout.forum_group_tag_item, null);
            try {
                viewInflate.setLayoutParams(new ViewGroup.MarginLayoutParams(-2, -2));
                TextView textView = (TextView) viewInflate.findViewById(R.id.tagTv);
                if (textView == null) {
                    return null;
                }
                textView.setBackgroundResource(R.drawable.search_history_tag_back);
                textView.setTextColor(Color.parseColor("#777777"));
                textView.setText(tag.getZone_name());
                textView.setTextSize(0, mContext.getResources().getDimensionPixelSize(R.dimen.wdp26));
                int dimensionPixelOffset = mContext.getResources().getDimensionPixelOffset(R.dimen.wdp14);
                int dimensionPixelOffset2 = mContext.getResources().getDimensionPixelOffset(R.dimen.wdp16);
                textView.setPadding(dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset);
                textView.setOnClickListener(new b(tag));
                return viewInflate;
            } catch (Exception e10) {
                e = e10;
                view = viewInflate;
                e.printStackTrace();
                return view;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }
}
