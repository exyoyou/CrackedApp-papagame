package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import com.BaseAppCompatActivity;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.adapter.CommentSelfListAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommentListForSelfBean;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentSelfListBean;
import com.join.mgps.dto.FavoritesCenterData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_comment_self_list)
public class CommentSelfListActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {

    @ViewById
    RelativeLayout actionbarLayout;
    private CommentSelfListAdapter adapter;

    @ViewById
    ImageView back;

    @ViewById
    ImageView back_image;
    com.join.mgps.rpc.b client;
    Context context;
    FavoritesCenterData data;
    private com.join.mgps.customview.j listViewRefreshListener;

    @ViewById
    XListView2 listview;

    @ViewById
    ForumLoadingView loadingView;

    @ViewById
    RelativeLayout newTitle;
    public int pageCount;
    public int pageLoading;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.f rpcForumClient;

    @ViewById
    View setting2;

    @ViewById
    View setting3;

    @ViewById
    View titleStatubar;

    @Extra
    int uid;
    private List<CommentSelfListBean> dataSet = new ArrayList();
    Handler mHandler = new Handler();
    com.join.mgps.customview.t mDialog = null;

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (CommentSelfListActivity.this.isNetWorkConnected()) {
                CommentSelfListActivity commentSelfListActivity = CommentSelfListActivity.this;
                commentSelfListActivity.getHomepageRecommendLabel(commentSelfListActivity.pageCount + 1);
            }
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (CommentSelfListActivity.this.isNetWorkConnected()) {
                CommentSelfListActivity.this.stopXlistRefreshAndLoadMore();
                CommentSelfListActivity commentSelfListActivity = CommentSelfListActivity.this;
                commentSelfListActivity.pageLoading = 0;
                commentSelfListActivity.pageCount = 0;
                commentSelfListActivity.getHomepageRecommendLabel(1);
            }
        }
    }

    class c implements CommentSelfListAdapter.j {
        c() {
        }

        @Override // com.join.mgps.adapter.CommentSelfListAdapter.j
        public void a(int cid, String gid, int depiseType) {
            CommentSelfListActivity commentSelfListActivity = CommentSelfListActivity.this;
            if (!commentSelfListActivity.isLogined(commentSelfListActivity)) {
                CommentSelfListActivity.this.showMessage(commentSelfListActivity.getString(R.string.forum_user_not_login));
            } else if (!CommentSelfListActivity.this.validAccount()) {
                CommentSelfListActivity.this.showDialog();
            } else {
                CommentSelfListActivity.this.refreshDePraiseChanged(cid, gid, depiseType);
                CommentSelfListActivity.this.depraisePosts(cid, gid, depiseType);
            }
        }

        @Override // com.join.mgps.adapter.CommentSelfListAdapter.j
        public void b(int cid, String gid, int praiseType) {
            CommentSelfListActivity commentSelfListActivity = CommentSelfListActivity.this;
            if (!commentSelfListActivity.isLogined(commentSelfListActivity)) {
                CommentSelfListActivity.this.showMessage(commentSelfListActivity.getString(R.string.forum_user_not_login));
            } else if (!CommentSelfListActivity.this.validAccount()) {
                CommentSelfListActivity.this.showDialog();
            } else {
                CommentSelfListActivity.this.refreshPraiseChanged(cid, gid, praiseType);
                CommentSelfListActivity.this.praisePosts(cid, gid, praiseType);
            }
        }

        @Override // com.join.mgps.adapter.CommentSelfListAdapter.j
        public void c(int commentId, String gameId, String commentScoreSwitch) {
            IntentUtil.getInstance().goCommentDetailActivity(CommentSelfListActivity.this, commentId + "", gameId, commentScoreSwitch);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XListView2 xListView2 = CommentSelfListActivity.this.listview;
            if (xListView2 == null) {
                return;
            }
            xListView2.v();
            CommentSelfListActivity.this.listview.u();
            CommentSelfListActivity commentSelfListActivity = CommentSelfListActivity.this;
            if (commentSelfListActivity.pageLoading == -1) {
                commentSelfListActivity.listview.setNoMore();
            }
            if (CommentSelfListActivity.this.dataSet.size() == 0) {
                CommentSelfListActivity.this.listview.g();
            } else if (CommentSelfListActivity.this.dataSet.size() < 10) {
                CommentSelfListActivity.this.listview.setNoMore();
            }
        }
    }

    class e extends ForumLoadingView.e {
        e(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            CommentSelfListActivity.this.changeLoadingState(1);
            CommentSelfListActivity.this.getData();
        }
    }

    class f extends ForumLoadingView.e {
        f(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            CommentSelfListActivity.this.changeLoadingState(1);
            CommentSelfListActivity.this.getData();
        }
    }

    class g extends ForumLoadingView.e {
        g(ForumLoadingView loadingView) {
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

    class h extends ForumLoadingView.e {
        h(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            CommentSelfListActivity.this.changeLoadingState(1);
            CommentSelfListActivity.this.getData();
        }
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void dialogDismiss() {
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    private void initViews() {
        XListView2 xListView2 = this.listview;
        if (xListView2 == null) {
            return;
        }
        xListView2.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.listview.setPullLoadEnable(new a());
        b bVar = new b();
        this.listViewRefreshListener = bVar;
        this.listview.setPullRefreshEnable(bVar);
        CommentSelfListAdapter commentSelfListAdapter = new CommentSelfListAdapter(this, this.uid);
        this.adapter = commentSelfListAdapter;
        commentSelfListAdapter.o(new c());
        this.listview.setOnScrollListener(this);
        this.listview.setAdapter((ListAdapter) this.adapter);
        changeLoadingState(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(context);
        return userInfoAccountBean != null && com.join.mgps.Util.t2.i(userInfoAccountBean.getToken());
    }

    private void setPostsView(CommentSelfListBean bean, boolean hideDivider) {
        if (bean == null || bean.getGame_info() == null || bean.getSelf_comment() == null) {
            return;
        }
        int id2 = bean.getSelf_comment().getId();
        String game_id = bean.getGame_info().getGame_id();
        this.adapter.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.COMMENT_LIST_ITEM_HEADER, new CommentSelfListAdapter.k.c(hideDivider, id2, game_id, bean.getGame_info().getGame_ico(), bean.getGame_info().getGame_name(), bean.getGame_info().getComment_score_switch(), bean.getSelf_comment().getAdd_times(), bean.getSelf_comment().getStars_score(), bean.getSelf_comment().getIs_old())));
        this.adapter.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.COMMENT_LIST_ITEM_CONTENT, new CommentSelfListAdapter.k.a(id2, game_id, bean.getSelf_comment().getContent(), bean.getSelf_comment().getIs_old(), bean.getGame_info().getComment_score_switch())));
        this.adapter.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.COMMENT_LIST_ITEM_FOOTER, new CommentSelfListAdapter.k.b(id2, game_id, bean.getSelf_comment().getPraise_count(), bean.getSelf_comment().getDespise_count(), bean.getSelf_comment().getReply_count(), bean.getSelf_comment().getIs_praise(), bean.getSelf_comment().getIs_despise(), bean.getSelf_comment().getIs_old(), bean.getGame_info().getComment_score_switch())));
    }

    private void setPostsViews() {
        int i10 = 0;
        while (i10 < this.dataSet.size()) {
            setPostsView(this.dataSet.get(i10), i10 == 0);
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    @AfterViews
    void afterViews() {
        getWindow().setFlags(67108864, 67108864);
        new com.join.android.app.common.manager.b(this).n(R.color.black_30_alpha);
        this.context = this;
        this.rpcForumClient = com.join.mgps.rpc.impl.e.m();
        if (this.uid == AccountUtil_.getInstance_(this).getAccountData().getUid() || this.uid == 0) {
            this.setting2.setVisibility(0);
            this.setting3.setVisibility(0);
        } else {
            this.setting2.setVisibility(8);
            this.setting3.setVisibility(8);
        }
        try {
            this.client = com.join.mgps.rpc.impl.a.c0();
            initViews();
            getData();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void back() {
        finish();
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
            ForumLoadingView forumLoadingView = this.loadingView;
            forumLoadingView.setListener(new e(forumLoadingView));
            return;
        }
        if (state == 16) {
            this.loadingView.setFailedMsg("加载失败~");
            ForumLoadingView forumLoadingView2 = this.loadingView;
            forumLoadingView2.setListener(new h(forumLoadingView2));
            this.loadingView.j(16);
            return;
        }
        if (state == 9) {
            this.loadingView.j(9);
            ForumLoadingView forumLoadingView3 = this.loadingView;
            forumLoadingView3.setListener(new f(forumLoadingView3));
            this.loadingView.j(9);
            return;
        }
        if (state != 10) {
            return;
        }
        this.loadingView.setFailedMsg("没有更多点评哦~");
        ForumLoadingView forumLoadingView4 = this.loadingView;
        forumLoadingView4.setListener(new g(forumLoadingView4));
        this.loadingView.setReloadingVisibility(0);
        this.loadingView.j(10);
        this.loadingView.setFailedImgVisibility(8);
        this.loadingView.setReloadingVisibility(0);
        this.loadingView.setFailedReloadingRes(R.drawable.papa_loading_null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void depraisePosts(int commentId, String gameId, int type) {
        try {
            if (!com.join.mgps.Util.r0.Y0(this)) {
                com.join.mgps.Util.r0.L0(this);
                com.join.mgps.Util.a3.b(this).d("尚未登录，请先登录！");
                return;
            }
            CommentResponse<CommentPraiseBean> commentResponseC = this.rpcForumClient.c(RequestBeanUtil.getInstance(this).getCommentPraiseRequestBean(AccountUtil_.getInstance_(this).getUid(), this.prefDef.commentToken().d(), AccountUtil_.getInstance_(this).getToken(), commentId, gameId, type));
            if (commentResponseC == null) {
                return;
            }
            int code = commentResponseC.getCode();
            if (code != 0) {
                if (TextUtils.isEmpty(commentResponseC.getMsg())) {
                    T(type == 1 ? "点踩失败" : "取消点踩失败");
                } else {
                    T(commentResponseC.getMsg());
                }
                refreshDePraiseChanged(commentId, gameId, type);
            } else if (TextUtils.isEmpty(commentResponseC.getMsg())) {
                T(type == 1 ? "点踩成功" : "取消点踩成功");
            } else {
                T(commentResponseC.getMsg());
            }
            if (code == 706) {
                showDialog();
            }
        } catch (Exception e10) {
            T(type != 1 ? "取消点踩失败" : "点踩失败");
            refreshDePraiseChanged(commentId, gameId, type);
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 100)
    public void getData() {
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            changeLoadingState(9);
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("uid", "" + this.uid);
            map.put("device_id", "");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("");
            RequestBeanUtil.getInstance(this);
            sb2.append(RequestBeanUtil.getVersionAndVersionName());
            map.put("version ", sb2.toString());
            map.put("page", "1");
            map.put("type", "");
            ForumResponse<FavoritesCenterData> forumResponseZ = this.client.Z(map);
            if (forumResponseZ == null || forumResponseZ.getError() != 0) {
                return;
            }
            updateUi(forumResponseZ.getData());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:69:0x00ec  */
    @Background
    public void getHomepageRecommendLabel(int page) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            T(getString(R.string.net_connect_failed));
            changeLoadingState(9);
            return;
        }
        try {
            try {
                int i10 = this.pageLoading;
                if (i10 == -1) {
                    if (i10 != -1) {
                        this.pageLoading = 0;
                    }
                    stopXlistRefreshAndLoadMore();
                    return;
                }
                if (i10 == page) {
                    if (i10 != -1) {
                        this.pageLoading = 0;
                    }
                    stopXlistRefreshAndLoadMore();
                    return;
                }
                this.pageLoading = page;
                CommentResponse<CommentListForSelfBean> commentResponseK = this.rpcForumClient.k(RequestBeanUtil.getInstance(this).selfComment(this.uid, AccountUtil_.getInstance_(this).getAccountData() != null ? this.prefDef.commentToken().d() : "", page, com.join.mgps.Util.r0.f49989d, AccountUtil_.getInstance_(this).getAccountData().getUid()));
                if (commentResponseK == null || commentResponseK.getCode() != 0) {
                    if (commentResponseK != null && !TextUtils.isEmpty(commentResponseK.getMsg())) {
                        T(commentResponseK.getMsg());
                    }
                    changeLoadingState(4);
                    if (this.pageLoading != -1) {
                        this.pageLoading = 0;
                    }
                    stopXlistRefreshAndLoadMore();
                    return;
                }
                if (commentResponseK.getData_info() == null) {
                    changeLoadingState(4);
                    if (this.pageLoading != -1) {
                        this.pageLoading = 0;
                    }
                    stopXlistRefreshAndLoadMore();
                    return;
                }
                List<CommentSelfListBean> list = commentResponseK.getData_info().getList();
                if (list == null || list.size() == 0) {
                    this.pageLoading = -1;
                    if (page != 1) {
                        changeLoadingState(10);
                        if (this.pageLoading != -1) {
                            this.pageLoading = 0;
                        }
                        stopXlistRefreshAndLoadMore();
                        return;
                    }
                    list = new ArrayList<>();
                }
                showHomepageRecommendLabel(page, list);
                this.pageCount = page;
                changeLoadingState(2);
                if (this.pageLoading != -1) {
                    this.pageLoading = 0;
                }
                stopXlistRefreshAndLoadMore();
            } catch (Exception e10) {
                e10.printStackTrace();
                stopXlistRefreshAndLoadMore();
                if (page == 1 && this.loadingView.getLoadingState() != 4) {
                    this.loadingView.m();
                }
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

    boolean isNetWorkConnected() {
        if (com.join.android.app.common.utils.m.j(this)) {
            return true;
        }
        T(getString(R.string.net_connect_failed));
        changeLoadingState(9);
        stopXlistRefreshAndLoadMore();
        return false;
    }

    void loading() {
        getHomepageRecommendLabel(1);
    }

    @Receiver(actions = {p5.a.f96217r})
    void loginOut(Intent intent) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyDataChanged() {
        CommentSelfListAdapter commentSelfListAdapter = this.adapter;
        if (commentSelfListAdapter != null && commentSelfListAdapter.k() != null) {
            this.adapter.k().clear();
        }
        this.adapter.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_TITLE, this.data.getMember_info()));
        FavoritesCenterData favoritesCenterData = this.data;
        if (favoritesCenterData != null && favoritesCenterData.getCreate_group_list() != null && this.data.getCreate_group_list().size() > 0) {
            this.adapter.c(this.data.getCreate_group_list().size() < 10 ? new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_ITEM_TITLE, 1) : new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_ITEM_TITLE, 2));
            this.adapter.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_F, this.data.getCreate_group_list()));
        }
        FavoritesCenterData favoritesCenterData2 = this.data;
        if (favoritesCenterData2 != null && favoritesCenterData2.getBook_group_list() != null && this.data.getBook_group_list().size() > 0) {
            this.adapter.c(this.data.getBook_group_list().size() < 10 ? new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_ITEM_TITLE, 3) : new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_ITEM_TITLE, 4));
            this.adapter.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_F, this.data.getBook_group_list()));
        }
        if (this.dataSet.size() > 0) {
            this.adapter.c(new CommentSelfListAdapter.k(CommentSelfListAdapter.ViewType.FAVORITES_ITEM_TITLE, 5));
        } else {
            this.listview.g();
        }
        setPostsViews();
        this.adapter.notifyDataSetChanged();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        MApplication.f3182z.j();
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        changeLoadingState(this.loadingView.getLoadingState());
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        if (firstVisibleItem != 0) {
            if (this.actionbarLayout.getVisibility() == 8) {
                this.newTitle.setVisibility(8);
                this.actionbarLayout.setVisibility(0);
                this.titleStatubar.setVisibility(0);
                return;
            }
            return;
        }
        View childAt = this.listview.getChildAt(0);
        if (childAt != null && childAt.getTop() == 0) {
            this.newTitle.setVisibility(0);
            this.actionbarLayout.setVisibility(8);
            this.titleStatubar.setVisibility(8);
        } else if (this.actionbarLayout.getVisibility() == 8) {
            this.newTitle.setVisibility(8);
            this.actionbarLayout.setVisibility(0);
            this.titleStatubar.setVisibility(0);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void praisePosts(int commentId, String gameId, int type) {
        try {
            if (!com.join.mgps.Util.r0.Y0(this)) {
                com.join.mgps.Util.r0.L0(this);
                com.join.mgps.Util.a3.b(this).d("尚未登录，请先登录！");
                return;
            }
            CommentResponse<CommentPraiseBean> commentResponseJ = this.rpcForumClient.j(RequestBeanUtil.getInstance(this).getCommentPraiseRequestBean(AccountUtil_.getInstance_(this).getUid(), this.prefDef.commentToken().d(), AccountUtil_.getInstance_(this).getToken(), commentId, gameId, type));
            if (commentResponseJ == null) {
                return;
            }
            int code = commentResponseJ.getCode();
            if (code != 0) {
                if (TextUtils.isEmpty(commentResponseJ.getMsg())) {
                    T(type == 1 ? "点赞失败" : "取消点赞失败");
                } else {
                    T(commentResponseJ.getMsg());
                }
                refreshPraiseChanged(commentId, gameId, type);
            } else if (TextUtils.isEmpty(commentResponseJ.getMsg())) {
                T(type == 1 ? "点赞成功" : "取消点赞成功");
            } else {
                T(commentResponseJ.getMsg());
            }
            if (code == 706) {
                showDialog();
            }
        } catch (Exception e10) {
            T(type != 1 ? "取消点赞失败" : "点赞失败");
            refreshPraiseChanged(commentId, gameId, type);
            e10.printStackTrace();
        }
    }

    void refreshDePraiseChanged(int commentId, String gameId, int type) {
        CommentSelfListBean next;
        List<CommentSelfListBean> list = this.dataSet;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<CommentSelfListBean> it2 = this.dataSet.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getSelf_comment().getId() == commentId && next.getSelf_comment() != null && !TextUtils.isEmpty(next.getSelf_comment().getGame_id()) && next.getSelf_comment().getGame_id().equals(gameId)) {
                int is_despise = next.getSelf_comment().getIs_despise();
                int despise_count = next.getSelf_comment().getDespise_count();
                int i10 = is_despise == 1 ? despise_count - 1 : despise_count + 1;
                if (i10 < 0) {
                    i10 = 0;
                }
                next.getSelf_comment().setIs_despise(is_despise == 1 ? 0 : 1);
                next.getSelf_comment().setDespise_count(i10);
                int is_praise = next.getSelf_comment().getIs_praise();
                if (is_despise != 1 && is_praise == 1) {
                    int praise_count = next.getSelf_comment().getPraise_count();
                    int i11 = is_praise == 1 ? praise_count - 1 : praise_count + 1;
                    if (i11 < 0) {
                        i11 = 0;
                    }
                    next.getSelf_comment().setIs_praise(is_praise == 1 ? 0 : 1);
                    next.getSelf_comment().setPraise_count(i11);
                }
                notifyDataChanged();
                return;
            }
        }
    }

    void refreshPraiseChanged(int commentId, String gameId, int type) {
        CommentSelfListBean next;
        List<CommentSelfListBean> list = this.dataSet;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<CommentSelfListBean> it2 = this.dataSet.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getSelf_comment().getId() == commentId && next.getSelf_comment() != null && !TextUtils.isEmpty(next.getSelf_comment().getGame_id()) && next.getSelf_comment().getGame_id().equals(gameId)) {
                int is_praise = next.getSelf_comment().getIs_praise();
                int praise_count = next.getSelf_comment().getPraise_count();
                int i10 = is_praise == 1 ? praise_count - 1 : praise_count + 1;
                if (i10 < 0) {
                    i10 = 0;
                }
                next.getSelf_comment().setIs_praise(is_praise == 1 ? 0 : 1);
                next.getSelf_comment().setPraise_count(i10);
                int is_despise = next.getSelf_comment().getIs_despise();
                if (is_praise != 1 && is_despise == 1) {
                    int despise_count = next.getSelf_comment().getDespise_count();
                    int i11 = is_despise == 1 ? despise_count - 1 : despise_count + 1;
                    if (i11 < 0) {
                        i11 = 0;
                    }
                    next.getSelf_comment().setIs_despise(is_despise == 1 ? 0 : 1);
                    next.getSelf_comment().setDespise_count(i11);
                }
                notifyDataChanged();
                return;
            }
        }
    }

    @Click
    void setting2() {
        IntentUtil.getInstance().goMYAccountDetialActivity(this);
    }

    @Click
    void setting3() {
        IntentUtil.getInstance().goMYAccountDetialActivity(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDialog() {
        com.join.mgps.Util.h0.h0(this).m(this);
    }

    void showHomepageRecommendLabel(int page, List<CommentSelfListBean> datax) {
        if (page == 1) {
            this.dataSet.clear();
        }
        if (this.data != null) {
            this.dataSet.addAll(datax);
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
        this.mHandler.postDelayed(new d(), 100L);
    }

    @Receiver(actions = {p5.a.f96217r})
    public void updateInfo(Context context) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(FavoritesCenterData data) {
        this.data = data;
        loading();
    }

    boolean validAccount() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }
}
