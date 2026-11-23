package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.label.MainLabelActivity_;
import com.join.mgps.customview.ForumBaseHeaderView;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.ForumMyHeaderView;
import com.join.mgps.customview.XExpandableListView;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.RecommenGroup;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.join.mgps.ptr.PtrFrameLayout;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import ru.noties.scrollable.ScrollableLayout;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_forum_my)
public class ForumMyActivity extends BaseAppCompatActivity implements View.OnClickListener, ForumBaseHeaderView.a {
    k adapter;

    @ViewById
    XExpandableListView expandableListView;

    @ViewById
    TextView forum_title_center;

    @ViewById
    ForumMyHeaderView headerView;
    private com.join.mgps.customview.j listViewRefreshListener;

    @ViewById
    ForumLoadingView loadingView;

    @ViewById
    PtrClassicFrameLayout mPtrFrame;
    public int pageCount;
    public int pageLoading;
    com.join.mgps.rpc.i rpcForumClient;

    @ViewById
    ScrollableLayout scrollableLayout;
    List<RecommenGroup> forum_follow = new ArrayList();
    List<RecommendLabelTag> tag_follow = new ArrayList();
    private final int EX_ITEM_GROUP = 1;
    private final int EX_ITEM_TAG = 2;
    private final int EX_ITEM_POST = 3;
    private final int EX_ITEM_COMMENT = 4;
    Handler mHandler = new Handler();
    boolean firstExpandGroup = true;

    class a implements com.join.mgps.ptr.b {
        a() {
        }

        @Override // com.join.mgps.ptr.b
        public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
            return com.join.mgps.ptr.a.checkContentCanBePulledDown(frame, content, header);
        }

        @Override // com.join.mgps.ptr.b
        public void onRefreshBegin(PtrFrameLayout frame) {
            ForumMyActivity.this.refresh();
        }
    }

    class b implements ru.noties.scrollable.b {
        b() {
        }

        @Override // ru.noties.scrollable.b
        public boolean i(int direction) {
            XExpandableListView xExpandableListView = ForumMyActivity.this.expandableListView;
            return xExpandableListView != null && xExpandableListView.canScrollVertically(direction);
        }
    }

    class c implements ru.noties.scrollable.j {
        c() {
        }

        @Override // ru.noties.scrollable.j
        public void C(int y10, long duration) {
            XExpandableListView xExpandableListView = ForumMyActivity.this.expandableListView;
            if (xExpandableListView != null) {
                xExpandableListView.smoothScrollBy(y10, (int) duration);
            }
        }
    }

    class d implements com.join.mgps.customview.i {
        d() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (ForumMyActivity.this.isNetWorkConnected()) {
                ForumMyActivity forumMyActivity = ForumMyActivity.this;
                if (forumMyActivity.pageLoading == -1) {
                    forumMyActivity.stopXlistRefreshAndLoadMore();
                } else {
                    forumMyActivity.myForumMain(forumMyActivity.pageCount + 1);
                }
            }
        }
    }

    class e implements com.join.mgps.customview.j {
        e() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (ForumMyActivity.this.isNetWorkConnected()) {
                ForumMyActivity forumMyActivity = ForumMyActivity.this;
                forumMyActivity.pageLoading = 0;
                forumMyActivity.myForumMain(1);
            }
        }
    }

    class f implements ExpandableListView.OnGroupClickListener {
        f() {
        }

        @Override // android.widget.ExpandableListView.OnGroupClickListener
        public boolean onGroupClick(ExpandableListView expandableListView, View view, int i10, long l10) {
            return true;
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XExpandableListView xExpandableListView = ForumMyActivity.this.expandableListView;
            if (xExpandableListView == null) {
                return;
            }
            xExpandableListView.s();
            ForumMyActivity.this.expandableListView.r();
            ForumMyActivity forumMyActivity = ForumMyActivity.this;
            if (forumMyActivity.pageLoading == -1) {
                forumMyActivity.expandableListView.setNoMore();
            }
        }
    }

    class h extends ForumLoadingView.e {
        h(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
        }
    }

    class i extends ForumLoadingView.e {
        i(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
        }
    }

    class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleDraweeView f51491a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f51492b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f51493c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f51494d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f51495e;

        j() {
        }
    }

    class k extends BaseExpandableListAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        List<l> f51497a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Context f51498b;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f51500b;

            a(final int val$pos) {
                this.f51500b = val$pos;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ForumMyActivity.this.expandableListView.isGroupExpanded(this.f51500b)) {
                    ForumMyActivity.this.expandableListView.collapseGroup(this.f51500b);
                } else {
                    ForumMyActivity.this.expandableListView.expandGroup(this.f51500b);
                }
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil.getInstance().goForumMyPostsActivity(view.getContext());
            }
        }

        class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil.getInstance().goForumProfileCommentActivity(view.getContext());
            }
        }

        class d implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f51504b;

            d(final int val$fid) {
                this.f51504b = val$fid;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil.getInstance().goForumGroupActivity(view.getContext(), this.f51504b);
            }
        }

        class e implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f51506b;

            e(final int val$tag_id) {
                this.f51506b = val$tag_id;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainLabelActivity_.intent(view.getContext()).d(this.f51506b).start();
            }
        }

        public k(Context context) {
            this.f51498b = context;
        }

        private void f(View v10, final int fid) {
            if (v10 == null) {
                return;
            }
            v10.setOnClickListener(new d(fid));
        }

        private void i(View v10, final int tag_id) {
            if (v10 == null) {
                return;
            }
            v10.setOnClickListener(new e(tag_id));
        }

        public void a(l bean) {
            if (this.f51497a == null) {
                this.f51497a = new ArrayList();
            }
            this.f51497a.add(bean);
        }

        public List<l> b() {
            return this.f51497a;
        }

        @Override // android.widget.ExpandableListAdapter
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public l getGroup(int i10) {
            List<l> list = this.f51497a;
            if (list == null || i10 >= list.size()) {
                return null;
            }
            return this.f51497a.get(i10);
        }

        public void d(List<l> exBeanList) {
            this.f51497a = exBeanList;
        }

        public void e(View v10, final int pos) {
            if (v10 == null) {
                return;
            }
            v10.setOnClickListener(new a(pos));
        }

        public void g(View v10) {
            if (v10 == null) {
                return;
            }
            v10.setOnClickListener(new b());
        }

        @Override // android.widget.ExpandableListAdapter
        public Object getChild(int i10, int i11) {
            if (getGroup(i10) == null) {
                return null;
            }
            l group = getGroup(i10);
            if (group.getType() == 1) {
                if (group.a() == null || i11 >= group.a().size()) {
                    return null;
                }
                return group.a().get(i11);
            }
            if (group.getType() != 2 || group.b() == null || i11 >= group.b().size()) {
                return null;
            }
            return group.b().get(i11);
        }

        @Override // android.widget.ExpandableListAdapter
        public long getChildId(int i10, int i11) {
            return i11;
        }

        /* JADX WARN: Code duplicated, block: B:17:0x00b6  */
        @Override // android.widget.ExpandableListAdapter
        public View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
            j jVar;
            String tag_icon;
            String tag_name;
            String description;
            int today_posts;
            if (convertView != null) {
                jVar = (j) convertView.getTag();
            } else {
                jVar = ForumMyActivity.this.new j();
                convertView = LayoutInflater.from(this.f51498b).inflate(R.layout.mg_forum_item_for_welcome1, (ViewGroup) null);
                jVar.f51491a = (SimpleDraweeView) convertView.findViewById(R.id.forum_icon);
                jVar.f51492b = (TextView) convertView.findViewById(R.id.forum_name);
                jVar.f51493c = (TextView) convertView.findViewById(R.id.forum_desc);
                jVar.f51494d = (TextView) convertView.findViewById(R.id.countTv);
                jVar.f51495e = convertView.findViewById(R.id.arrow);
                convertView.setTag(jVar);
            }
            try {
                if (getChild(groupPosition, childPosition) == null) {
                    return convertView;
                }
                if (getGroup(groupPosition) == null) {
                    tag_icon = "";
                    tag_name = "";
                    description = tag_name;
                    today_posts = 0;
                } else if (getGroup(groupPosition).getType() == 1) {
                    RecommenGroup recommenGroup = (RecommenGroup) getChild(groupPosition, childPosition);
                    tag_icon = recommenGroup.getIcon_src();
                    tag_name = recommenGroup.getName();
                    description = recommenGroup.getDescription();
                    today_posts = recommenGroup.getToday_posts();
                    f(convertView, recommenGroup.getFid());
                } else if (getGroup(groupPosition).getType() == 2) {
                    RecommendLabelTag recommendLabelTag = (RecommendLabelTag) getChild(groupPosition, childPosition);
                    tag_icon = recommendLabelTag.getTag_icon();
                    tag_name = recommendLabelTag.getTag_name();
                    description = recommendLabelTag.getDescription();
                    today_posts = recommendLabelTag.getToday_posts();
                    i(convertView, recommendLabelTag.getTag_id());
                } else {
                    tag_icon = "";
                    tag_name = "";
                    description = tag_name;
                    today_posts = 0;
                }
                com.join.android.app.common.utils.l.h(jVar.f51491a, tag_icon);
                jVar.f51492b.setText(tag_name);
                jVar.f51493c.setText(description);
                if (today_posts > 0) {
                    jVar.f51494d.setText("今日更新：" + today_posts);
                } else {
                    jVar.f51494d.setText("今日更新：0");
                }
                jVar.f51494d.setVisibility(0);
                jVar.f51493c.setVisibility(0);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return convertView;
        }

        @Override // android.widget.ExpandableListAdapter
        public int getChildrenCount(int i10) {
            if (getGroup(i10) == null) {
                return 0;
            }
            l group = getGroup(i10);
            if (group.getType() == 1) {
                if (group.a() != null) {
                    return group.a().size();
                }
                return 0;
            }
            if (group.getType() != 2 || group.b() == null) {
                return 0;
            }
            return group.b().size();
        }

        @Override // android.widget.ExpandableListAdapter
        public int getGroupCount() {
            List<l> list = this.f51497a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.ExpandableListAdapter
        public long getGroupId(int i10) {
            return i10;
        }

        @Override // android.widget.ExpandableListAdapter
        public View getGroupView(final int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
            m mVar;
            if (convertView != null) {
                mVar = (m) convertView.getTag();
            } else {
                mVar = ForumMyActivity.this.new m();
                convertView = LayoutInflater.from(this.f51498b).inflate(R.layout.mg_forum_my_item_ex_header, (ViewGroup) null);
                mVar.f51512a = (ImageView) convertView.findViewById(R.id.icon);
                mVar.f51513b = (TextView) convertView.findViewById(R.id.title);
                mVar.f51514c = (TextView) convertView.findViewById(R.id.state);
                mVar.f51515d = convertView.findViewById(R.id.arrow);
                mVar.f51516e = convertView.findViewById(R.id.divider);
                mVar.f51517f = convertView.findViewById(R.id.divider1);
                convertView.setTag(mVar);
            }
            try {
                if (isExpanded) {
                    mVar.f51514c.setText("收起");
                } else {
                    mVar.f51514c.setText("展开");
                }
                l group = getGroup(groupPosition);
                e(convertView, groupPosition);
                if (group.getType() == 1) {
                    mVar.f51512a.setImageResource(R.drawable.mg_forum_icon_group);
                    mVar.f51513b.setText("小组");
                    mVar.f51515d.setVisibility(8);
                    mVar.f51517f.setVisibility(8);
                    mVar.f51516e.setVisibility(0);
                    mVar.f51514c.setVisibility(0);
                } else if (group.getType() == 2) {
                    mVar.f51515d.setVisibility(8);
                    mVar.f51512a.setImageResource(R.drawable.mg_forum_icon_tag);
                    mVar.f51513b.setText("话题");
                    mVar.f51517f.setVisibility(8);
                    mVar.f51516e.setVisibility(0);
                    mVar.f51514c.setVisibility(0);
                } else if (group.getType() == 3) {
                    mVar.f51515d.setVisibility(0);
                    mVar.f51512a.setImageResource(R.drawable.mg_forum_icon_post);
                    mVar.f51513b.setText("帖子");
                    mVar.f51517f.setVisibility(8);
                    mVar.f51516e.setVisibility(8);
                    mVar.f51514c.setVisibility(8);
                    g(convertView);
                } else if (group.getType() == 4) {
                    mVar.f51517f.setVisibility(0);
                    mVar.f51516e.setVisibility(8);
                    mVar.f51514c.setVisibility(8);
                    mVar.f51515d.setVisibility(0);
                    mVar.f51512a.setImageResource(R.drawable.mg_forum_icon_comment);
                    mVar.f51513b.setText("评论");
                    h(convertView);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return convertView;
        }

        public void h(View v10) {
            if (v10 == null) {
                return;
            }
            v10.setOnClickListener(new c());
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean hasStableIds() {
            return false;
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean isChildSelectable(int i10, int i11) {
            return false;
        }
    }

    class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f51508a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<RecommenGroup> f51509b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List<RecommendLabelTag> f51510c;

        l() {
        }

        public List<RecommenGroup> a() {
            return this.f51509b;
        }

        public List<RecommendLabelTag> b() {
            return this.f51510c;
        }

        public void c(List<RecommenGroup> groups) {
            this.f51509b = groups;
        }

        public void d(List<RecommendLabelTag> tags) {
            this.f51510c = tags;
        }

        public void e(int type) {
            this.f51508a = type;
        }

        public int getType() {
            return this.f51508a;
        }
    }

    class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ImageView f51512a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f51513b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f51514c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f51515d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f51516e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f51517f;

        m() {
        }
    }

    private synchronized void notifyDataChanged() {
        k kVar = this.adapter;
        if (kVar != null && kVar.b() != null) {
            this.adapter.b().clear();
        }
        l lVar = new l();
        lVar.e(3);
        this.adapter.a(lVar);
        l lVar2 = new l();
        lVar2.e(4);
        this.adapter.a(lVar2);
        List<RecommenGroup> list = this.forum_follow;
        if (list != null && list.size() != 0) {
            l lVar3 = new l();
            lVar3.e(1);
            lVar3.c(this.forum_follow);
            this.adapter.a(lVar3);
        }
        List<RecommendLabelTag> list2 = this.tag_follow;
        if (list2 != null && list2.size() != 0) {
            l lVar4 = new l();
            lVar4.e(2);
            lVar4.d(this.tag_follow);
            this.adapter.a(lVar4);
        }
        this.adapter.notifyDataSetChanged();
        if (this.firstExpandGroup) {
            for (int i10 = 0; i10 < this.adapter.getGroupCount(); i10++) {
                this.expandableListView.expandGroup(i10);
            }
            this.firstExpandGroup = false;
        }
    }

    @AfterViews
    void afterViews() {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        this.forum_title_center.setVisibility(0);
        this.forum_title_center.setText("我的社区");
        ForumMyHeaderView forumMyHeaderView = this.headerView;
        if (forumMyHeaderView != null) {
            forumMyHeaderView.setmOnMeasureHeight(this);
            this.headerView.setHeaderClickListener(this);
        }
        if (this.scrollableLayout != null) {
            this.mPtrFrame.setPtrHandler(new a());
            this.scrollableLayout.setAutoMaxScroll(false);
            this.scrollableLayout.setCanScrollVerticallyDelegate(new b());
            this.scrollableLayout.setOnFlingOverListener(new c());
        }
        this.expandableListView.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.expandableListView.setPullLoadEnable(new d());
        e eVar = new e();
        this.listViewRefreshListener = eVar;
        this.expandableListView.setPullRefreshEnable(eVar);
        k kVar = new k(this);
        this.adapter = kVar;
        this.expandableListView.setAdapter(kVar);
        this.expandableListView.setOnGroupClickListener(new f());
        loading();
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void changeLoadingState(int state) {
        if (state == 1) {
            this.loadingView.m();
            this.loadingView.j(1);
            return;
        }
        if (state == 2) {
            this.loadingView.m();
            this.loadingView.j(2);
            return;
        }
        if (state == 4) {
            this.loadingView.j(4);
            return;
        }
        if (state == 16) {
            this.loadingView.setFailedMsg("加载失败~");
            ForumLoadingView forumLoadingView = this.loadingView;
            forumLoadingView.setListener(new i(forumLoadingView));
            this.loadingView.j(16);
            return;
        }
        if (state == 9) {
            this.loadingView.j(9);
            return;
        }
        if (state != 10) {
            return;
        }
        this.loadingView.setFailedMsg("没有更多社区内容帖哦~");
        ForumLoadingView forumLoadingView2 = this.loadingView;
        forumLoadingView2.setListener(new h(forumLoadingView2));
        this.loadingView.setReloadingVisibility(0);
        this.loadingView.j(10);
        this.loadingView.setFailedImgVisibility(8);
    }

    boolean isNetWorkConnected() {
        if (com.join.android.app.common.utils.m.j(getBaseContext())) {
            return true;
        }
        showMessage(getString(R.string.net_connect_failed));
        changeLoadingState(9);
        stopXlistRefreshAndLoadMore();
        return false;
    }

    void loading() {
        myForumMain(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:40:0x008b  */
    @Background
    public void myForumMain(int page) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showMessage(getString(R.string.net_connect_failed));
            changeLoadingState(9);
            return;
        }
        try {
            try {
                int i10 = this.pageLoading;
                if (i10 == page) {
                    if (i10 != -1) {
                        this.pageLoading = 0;
                    }
                    stopXlistRefreshAndLoadMore();
                    return;
                }
                this.pageLoading = page;
                ForumResponse<ForumData.MyForumMain> forumResponseR = this.rpcForumClient.r(AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken(), page, com.join.mgps.Util.r0.f49989d);
                if (forumResponseR == null || forumResponseR.getError() != 0) {
                    changeLoadingState(4);
                } else {
                    if (forumResponseR.getData() == null) {
                        changeLoadingState(4);
                        if (this.pageLoading != -1) {
                            this.pageLoading = 0;
                        }
                        stopXlistRefreshAndLoadMore();
                        return;
                    }
                    showMain(forumResponseR.getData(), page);
                    if (forumResponseR.getData().getTag_follow() == null || forumResponseR.getData().getTag_follow().size() == 0) {
                        this.pageLoading = -1;
                    } else {
                        this.pageCount = page;
                    }
                }
                if (this.pageLoading != -1) {
                    this.pageLoading = 0;
                }
                stopXlistRefreshAndLoadMore();
            } catch (Exception e10) {
                e10.printStackTrace();
                changeLoadingState(4);
                if (this.pageLoading != -1) {
                    this.pageLoading = 0;
                }
            }
        } catch (Throwable th) {
            if (this.pageLoading != -1) {
                this.pageLoading = 0;
            }
            stopXlistRefreshAndLoadMore();
            throw th;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // com.join.mgps.customview.ForumBaseHeaderView.a
    public void onMeasure(int height) {
        ScrollableLayout scrollableLayout = this.scrollableLayout;
        if (scrollableLayout != null) {
            scrollableLayout.setMaxScrollY(height);
            ViewGroup.LayoutParams layoutParams = this.expandableListView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = this.loadingView.getMeasuredHeight();
            this.expandableListView.setLayoutParams(layoutParams);
            this.scrollableLayout.setAutoMaxScroll(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        timeRefreshData();
    }

    void refresh() {
        loading();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain(ForumData.MyForumMain data, int page) {
        List<RecommenGroup> forum_follow = data.getForum_follow();
        List<RecommendLabelTag> tag_follow = data.getTag_follow();
        if (page == 1) {
            this.forum_follow.clear();
            this.tag_follow.clear();
        }
        if (forum_follow != null && forum_follow.size() != 0) {
            this.forum_follow.addAll(forum_follow);
        }
        if (tag_follow != null && tag_follow.size() != 0) {
            this.tag_follow.addAll(tag_follow);
        }
        if (page == 1) {
            this.firstExpandGroup = true;
        }
        notifyDataChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void stopXlistRefreshAndLoadMore() {
        this.mHandler.postDelayed(new g(), 100L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void timeRefreshData() {
        try {
            if (this.loadingView.getLoadingState() == 2 && com.join.mgps.pref.h.n(this).A()) {
                com.join.mgps.pref.h.n(this).o0(false);
                loading();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
