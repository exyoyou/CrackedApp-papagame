package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.activity.posting.PostingActivity_;
import com.join.mgps.customview.ForumBaseHeaderView;
import com.join.mgps.customview.ForumGroupHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabLayout4;
import com.join.mgps.customview.WrapContentListView;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.RecommenGroupClassify;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import ru.noties.scrollable.ScrollableLayout;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mg_forum_group_activity)
public class ForumActivity extends BaseAppCompatActivity implements View.OnClickListener, ForumBaseHeaderView.a {
    public static int orderBy = 2;
    com.join.mgps.adapter.h0 adapter;
    BaseAdapter adapterPW;

    @ViewById
    View bottom;
    Button btnSendPosts;
    com.join.mgps.fragment.b0 currentFragment;

    @Extra
    int fid;
    ForumData.ForumGroupIndex forumGroupIndex;

    @ViewById
    Button forum_post;

    @ViewById
    TextView forum_title_center;

    @Extra
    String from;

    @ViewById
    ForumGroupHeaderView headerView;
    int keepJoinState;

    @ViewById
    ForumLoadingView loadingView;
    private int mDySinceDirectionChange;
    private int mLastSelectedPos;

    @ViewById
    PtrClassicFrameLayout mPtrFrame;
    String[] names;
    com.join.mgps.customview.g popWindow;
    com.join.mgps.customview.h popupWindow;
    com.join.mgps.Util.n3.a quickReturnFooter;

    @ViewById
    RelativeLayout rlOrderBy;
    com.join.mgps.rpc.i rpcForumClient;

    @ViewById
    ScrollableLayout scrollableLayout;

    @ViewById
    ImageView sreach_image;

    @ViewById
    SlidingTabLayout4 tabsLayout;
    private List<ForumData.ForumGroupIndexTab> types;
    List<ForumData.ForumGroupIndexTab> typesPW = new ArrayList();

    @ViewById
    ViewPager viewPager;
    WrapContentListView wrapListView;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            com.join.mgps.customview.h hVar = ForumActivity.this.popupWindow;
            if (hVar != null && hVar.isShowing()) {
                ForumActivity.this.popupWindow.dismiss();
            }
            if (AccountUtil_.getInstance_(view.getContext()).isTourist()) {
                ForumActivity.this.showDialog();
            } else if (ForumActivity.this.forumGroupIndex != null) {
                PostingActivity_.intent(view.getContext()).g(ForumActivity.this.typesPW.get(position).getType_id()).f(ForumActivity.this.forumGroupIndex.getForum_name()).a(ForumActivity.this.fid).startForResult(PostingActivity.ACTIVITY_RESULT_POSTING);
            }
        }
    }

    class b implements com.join.mgps.ptr.b {
        b() {
        }

        @Override // com.join.mgps.ptr.b
        public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
            return com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, content, header);
        }

        @Override // com.join.mgps.ptr.b
        public void onRefreshBegin(PtrFrameLayout frame) {
            ForumActivity.this.refresh();
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
            ForumActivity.this.loading();
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
            ForumActivity.this.loading();
        }
    }

    class e extends ForumLoadingView.e {
        e(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumActivity.this.loading();
        }
    }

    class f implements ViewPager.OnPageChangeListener {
        f() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            com.join.mgps.Util.h1.e("onPageScrolled", "position=" + position + "");
            ForumActivity.this.hideSendBtn();
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            try {
                ForumActivity forumActivity = ForumActivity.this;
                com.join.mgps.adapter.h0 h0Var = forumActivity.adapter;
                Fragment item = h0Var != null ? h0Var.getItem(forumActivity.mLastSelectedPos) : null;
                if (item != null) {
                    item.onPause();
                    ForumActivity.this.onPause();
                }
                ForumActivity.this.adapter.getItem(position).onResume();
                ForumActivity.this.onResume();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            ForumActivity.this.mLastSelectedPos = position;
            ForumActivity.this.playVideoDelay();
            ForumActivity.this.hideSendBtn();
        }
    }

    class g implements ru.noties.scrollable.b {
        g() {
        }

        @Override // ru.noties.scrollable.b
        public boolean i(int direction) {
            com.join.mgps.fragment.v1 currentFragment = ForumActivity.this.getCurrentFragment();
            return currentFragment != null && currentFragment.i(direction);
        }
    }

    class h implements ru.noties.scrollable.j {
        h() {
        }

        @Override // ru.noties.scrollable.j
        public void C(int y10, long duration) {
            com.join.mgps.fragment.v1 currentFragment = ForumActivity.this.getCurrentFragment();
            if (currentFragment != null) {
                currentFragment.C(y10, duration);
            }
        }
    }

    class i implements ru.noties.scrollable.k {
        i() {
        }

        @Override // ru.noties.scrollable.k
        public void a(int y10, int oldY, int maxY) {
            try {
                ForumActivity forumActivity = ForumActivity.this;
                ((com.join.mgps.fragment.s1) forumActivity.adapter.getItem(forumActivity.mLastSelectedPos)).S();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class j implements com.join.mgps.customview.g.b {
        j() {
        }

        @Override // com.join.mgps.customview.g.b
        public void a(int i10) {
            ForumActivity.orderBy = i10;
            ForumActivity.this.refresh();
        }
    }

    private List<com.join.mgps.adapter.h0.a> items(Context context) {
        List<ForumData.ForumGroupIndexTab> list = this.types;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < this.types.size(); i10++) {
            ForumData.ForumGroupIndexTab forumGroupIndexTab = this.types.get(i10);
            int type_id = forumGroupIndexTab.getType_id();
            String type_name = forumGroupIndexTab.getType_name();
            RecommenGroupClassify recommenGroupClassify = new RecommenGroupClassify();
            recommenGroupClassify.setGid(type_id);
            recommenGroupClassify.setGname(type_name);
            arrayList.add(new com.join.mgps.adapter.h0.a(type_name, com.join.mgps.fragment.s1.Z(this.fid, this.forumGroupIndex.getForum_name(), recommenGroupClassify, i10)));
        }
        return arrayList;
    }

    @UiThread
    void T(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    @AfterViews
    void afterViews() {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        initForumId();
        this.forum_title_center.setVisibility(0);
        this.forum_post.setVisibility(0);
        this.forum_title_center.setText("小组主页");
        this.quickReturnFooter = new com.join.mgps.Util.n3.a(this.btnSendPosts);
        this.scrollableLayout.setAutoMaxScroll(false);
        this.headerView.setmOnMeasureHeight(this);
        this.headerView.setHeaderClickListener(this);
        this.mPtrFrame.j(true);
        this.mPtrFrame.setPtrHandler(new b());
        changeLoadingState(1);
        loading();
        this.sreach_image.setVisibility(0);
    }

    public void autoRefresh() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrFrame;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.f();
        }
    }

    @Click
    void back_image() {
        finish();
        if (TextUtils.isEmpty(this.from) || !this.from.equals("discovery")) {
            return;
        }
        ForumIndexActivity_.intent(this).start();
    }

    @Click
    void btnSendPosts() {
        if (this.forumGroupIndex != null) {
            PostingActivity_.intent(this).g(getType()).f(this.forumGroupIndex.getForum_name()).a(this.fid).startForResult(PostingActivity.ACTIVITY_RESULT_POSTING);
        }
    }

    @UiThread
    void changeJoinState(boolean isJoined) {
        ForumGroupHeaderView forumGroupHeaderView = this.headerView;
        if (forumGroupHeaderView != null) {
            forumGroupHeaderView.setJoinState(isJoined);
        }
        if ((this.keepJoinState == 1) != isJoined) {
            com.join.mgps.pref.h.n(this).o0(true);
        } else {
            com.join.mgps.pref.h.n(this).o0(false);
        }
    }

    @UiThread
    void changeLoadingState(int state) {
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
            hideSendBtn();
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

    @Background
    void exitGroup() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            T(getString(R.string.net_connect_failed));
            return;
        }
        try {
            ForumResponse<ForumData.HomepageRecommendLabel> forumResponseO = this.rpcForumClient.O(this.fid, AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken());
            if (forumResponseO == null || forumResponseO.getData() == null) {
                T(getString(R.string.exit_group_failed));
                return;
            }
            if (forumResponseO.getError() == 0) {
                changeJoinState(false);
            }
            T(forumResponseO.getData().getMsg());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void forum_post() {
        List<ForumData.ForumGroupIndexTab> list = this.typesPW;
        if (list == null || list.size() == 0) {
            com.join.mgps.customview.h hVar = this.popupWindow;
            if (hVar == null || !hVar.isShowing()) {
                return;
            }
            this.popupWindow.dismiss();
            return;
        }
        this.names = new String[this.typesPW.size()];
        for (int i10 = 0; i10 < this.typesPW.size(); i10++) {
            this.names[i10] = this.typesPW.get(i10).getType_name() + "帖";
        }
        if (this.popupWindow == null) {
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.forum_activity_forum_post, (ViewGroup) null);
            com.join.mgps.customview.h hVar2 = new com.join.mgps.customview.h(this);
            this.popupWindow = hVar2;
            hVar2.setWidth(-1);
            this.popupWindow.setHeight(-2);
            this.popupWindow.setContentView(viewInflate);
            this.wrapListView = (WrapContentListView) this.popupWindow.getContentView().findViewById(R.id.wrapListView);
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, R.layout.forum_activity_forum_post_item, R.id.name, this.names);
        this.adapterPW = arrayAdapter;
        this.wrapListView.setAdapter((ListAdapter) arrayAdapter);
        this.wrapListView.setOnItemClickListener(new a());
        int measuredHeight = this.popupWindow.getContentView().getMeasuredHeight() * (-1);
        if (measuredHeight == 0) {
            measuredHeight = getResources().getDimensionPixelOffset(R.dimen.wdp112) * (-1) * this.names.length;
        }
        this.popupWindow.showAsDropDown(this.bottom, 0, measuredHeight);
    }

    com.join.mgps.fragment.v1 getCurrentFragment() {
        com.join.mgps.fragment.b0 b0Var = this.currentFragment;
        if (b0Var != null) {
            return b0Var.a();
        }
        return null;
    }

    public int getCurrentItem() {
        ViewPager viewPager = this.viewPager;
        if (viewPager != null) {
            return viewPager.getCurrentItem();
        }
        return -1;
    }

    @Background
    void getForumGroupIndex() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            T(getString(R.string.net_connect_failed));
            changeLoadingState(9);
            return;
        }
        try {
            ForumResponse<ForumData.ForumGroupIndex> forumResponseK = this.rpcForumClient.K(this.fid, AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken());
            if (forumResponseK == null || forumResponseK.getError() != 0) {
                changeLoadingState(4);
            } else if (forumResponseK.getData() == null) {
                changeLoadingState(4);
            } else {
                showForumGroupIndex(forumResponseK.getData());
                changeLoadingState(2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            changeLoadingState(4);
        }
    }

    int getType() {
        List<ForumData.ForumGroupIndexTab> list = this.types;
        if (list == null || list.size() == 0) {
            return 0;
        }
        return this.types.get(this.viewPager.getCurrentItem()).getType_id();
    }

    @UiThread
    void hideSendBtn() {
        try {
            if (this.btnSendPosts == null) {
                return;
            }
            List<ForumData.ForumGroupIndexTab> list = this.types;
            if (list != null && list.size() != 0) {
                int i10 = this.mLastSelectedPos;
                if (i10 < 0 || i10 >= this.types.size()) {
                    this.btnSendPosts.setVisibility(0);
                    return;
                } else if (this.types.get(this.mLastSelectedPos).getType_id() == 5) {
                    this.btnSendPosts.setVisibility(8);
                    return;
                } else {
                    this.btnSendPosts.setVisibility(0);
                    return;
                }
            }
            this.btnSendPosts.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void initForumId() {
        ForumBean forumBean;
        try {
            String str = (String) getIntent().getSerializableExtra("key_forum_bean");
            if (TextUtils.isEmpty(str) || (forumBean = (ForumBean) JsonMapper.getInstance().fromJson(str, ForumBean.class)) == null || forumBean.getFid() == 0) {
                return;
            }
            this.fid = forumBean.getFid();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void initScrollableLayout() {
        this.tabsLayout.setVisibility(0);
        this.viewPager.setVisibility(0);
        this.viewPager.removeAllViews();
        if (this.adapter == null) {
            this.adapter = new com.join.mgps.adapter.h0(getSupportFragmentManager());
        }
        this.adapter.e(items(this));
        this.viewPager.setAdapter(this.adapter);
        this.viewPager.setOffscreenPageLimit(this.adapter.getCount());
        this.tabsLayout.setViewPager(this.viewPager);
        this.tabsLayout.g();
        this.adapter.notifyDataSetChanged();
        if (this.adapter.getCount() <= 5) {
            this.tabsLayout.setShouldExpand(true);
        } else {
            this.tabsLayout.setShouldExpand(false);
        }
        this.tabsLayout.setOnPageChangeListener(new f());
        this.scrollableLayout.setDraggableView(this.headerView);
        this.currentFragment = new com.join.mgps.fragment.c0(this.viewPager, getSupportFragmentManager());
        this.scrollableLayout.setCanScrollVerticallyDelegate(new g());
        this.scrollableLayout.setOnFlingOverListener(new h());
        this.scrollableLayout.w(new i());
    }

    public boolean isRefresh() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrFrame;
        if (ptrClassicFrameLayout != null) {
            return ptrClassicFrameLayout.q();
        }
        return false;
    }

    @Background
    void joinGroup() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            T(getString(R.string.net_connect_failed));
            return;
        }
        try {
            ForumResponse<ForumData.HomepageRecommendLabel> forumResponseN0 = this.rpcForumClient.n0(this.fid, AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken());
            if (forumResponseN0 == null || forumResponseN0.getData() == null) {
                T(getString(R.string.join_group_failed));
                return;
            }
            if (forumResponseN0.getError() == 0) {
                changeJoinState(true);
            }
            T(forumResponseN0.getData().getMsg());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void loading() {
        getForumGroupIndex();
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 17476 && resultCode == -1) {
            if (data != null) {
                int intExtra = data.getIntExtra(PostingActivity_.POSTING_TYPE_EXTRA, -1);
                if (this.types != null) {
                    for (int i10 = 0; i10 < this.types.size(); i10++) {
                        if (intExtra == this.types.get(i10).getType_id()) {
                            this.viewPager.setCurrentItem(i10, true);
                            break;
                        }
                    }
                }
            }
            refreshFrg();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        boolean zG0 = com.join.android.app.component.video.a.g0(this);
        try {
            if (((com.join.mgps.fragment.s1) this.adapter.getItem(this.mLastSelectedPos)).onBackPressedMy()) {
                return;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        super.onBackPressed();
        if (zG0 || TextUtils.isEmpty(this.from) || !this.from.equals("discovery")) {
            return;
        }
        ForumIndexActivity_.intent(this).start();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R.id.memberLL) {
            IntentUtil.getInstance().goForumGroupMemberActivity(this, this.fid);
            return;
        }
        if (id2 == R.id.follow) {
            if (this.headerView.b()) {
                exitGroup();
            } else if (AccountUtil_.getInstance_(this).isTourist()) {
                showDialog();
            } else {
                joinGroup();
            }
        }
    }

    @Override // com.join.mgps.customview.ForumBaseHeaderView.a
    public void onMeasure(int height) {
        ScrollableLayout scrollableLayout = this.scrollableLayout;
        if (scrollableLayout != null) {
            scrollableLayout.setMaxScrollY(height);
            ViewGroup.LayoutParams layoutParams = this.viewPager.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = this.loadingView.getMeasuredHeight() - this.tabsLayout.getMeasuredHeight();
            this.viewPager.setLayoutParams(layoutParams);
            this.scrollableLayout.setAutoMaxScroll(true);
        }
    }

    public void onScroll(int dy) {
        if ((dy > 0 && this.mDySinceDirectionChange < 0) || (dy < 0 && this.mDySinceDirectionChange > 0)) {
            this.quickReturnFooter.g();
            this.mDySinceDirectionChange = 0;
        }
        int i10 = this.mDySinceDirectionChange + dy;
        this.mDySinceDirectionChange = i10;
        if (i10 > this.quickReturnFooter.h()) {
            this.quickReturnFooter.l(false);
        } else if (this.mDySinceDirectionChange < 0) {
            this.quickReturnFooter.l(true);
        }
    }

    @UiThread
    void playVideoDelay() {
        ((com.join.mgps.fragment.s1) this.adapter.getItem(this.mLastSelectedPos)).S();
    }

    void refresh() {
        loading();
    }

    @UiThread
    void refreshFrg() {
        com.join.mgps.fragment.b0 b0Var = this.currentFragment;
        if (b0Var == null || !(b0Var.a() instanceof com.join.mgps.fragment.s1)) {
            return;
        }
        ((com.join.mgps.fragment.s1) this.currentFragment.a()).refresh();
    }

    @Click
    void rlOrderBy() {
        try {
            if (this.popWindow == null) {
                com.join.mgps.customview.g gVar = new com.join.mgps.customview.g(this, -2, -2);
                this.popWindow = gVar;
                gVar.d(new j());
            }
            int iApplyDimension = (int) TypedValue.applyDimension(1, 126.0f, getResources().getDisplayMetrics());
            com.join.mgps.customview.g gVar2 = this.popWindow;
            if (gVar2 != null && gVar2.getContentView() != null) {
                this.popWindow.getContentView().measure(0, 0);
                iApplyDimension = this.popWindow.getContentView().getMeasuredWidth();
                this.popWindow.setHeight(this.popWindow.getContentView().getMeasuredHeight());
            }
            this.popWindow.setWidth(iApplyDimension);
            int measuredWidth = (this.rlOrderBy.getMeasuredWidth() - iApplyDimension) - getResources().getDimensionPixelOffset(R.dimen.dp17);
            if (!this.popWindow.isShowing()) {
                this.popWindow.showAsDropDown(this.rlOrderBy, measuredWidth, 0);
            }
            this.popWindow.c(orderBy);
        } catch (Resources.NotFoundException e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showDialog() {
        com.join.mgps.Util.h0.h0(this).m(this);
    }

    @UiThread
    void showForumGroupIndex(ForumData.ForumGroupIndex data) {
        ForumData.ForumGroupIndex forumGroupIndex;
        if (data == null) {
            return;
        }
        if (com.join.mgps.pref.h.n(this).A() || (forumGroupIndex = this.forumGroupIndex) == null || forumGroupIndex.getIs_joined() == data.getIs_joined()) {
            this.keepJoinState = data.getIs_joined();
        } else {
            com.join.mgps.pref.h.n(this).o0(true);
        }
        this.forumGroupIndex = data;
        this.headerView.setData(data);
        this.typesPW.clear();
        if (data.getPost_type() != null && data.getPost_type().size() != 0) {
            this.typesPW.addAll(data.getPost_type());
        }
        if (this.types == null) {
            this.types = new ArrayList();
        }
        if (this.types != null && data.getType() != null && this.types.equals(data.getType())) {
            refreshFrg();
        } else {
            this.types = data.getType();
            initScrollableLayout();
        }
    }

    @Click
    void sreach_image() {
        com.join.mgps.Util.r0.C0(this, this.fid);
    }

    public void stopRefresh() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrFrame;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.C();
        }
    }
}
