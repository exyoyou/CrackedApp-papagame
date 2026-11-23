package com.join.mgps.activity;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.adapter.ForumProfileCommentAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mg_forum_profile_comment_activity)
public class ForumProfileCommentActivity extends BaseActivity {

    @ViewById
    ImageView back_image;
    ForumProfileCommentAdapter forumProfileCommentAdapter1;
    List<ForumData.ForumProfileCommentData> forumProfileCommentDataList;

    @ViewById
    TextView layout_title;
    List<ForumProfileCommentAdapter.i> listData;

    @ViewById
    ForumLoadingView loadingView;

    @ViewById
    PtrClassicFrameLayout mPtrFrame;

    @ViewById
    XListView2 mg_forum_profile_comment_list;

    @StringRes(resName = "connect_server_excption")
    String netConnectException;

    @StringRes(resName = "net_excption")
    String netExcption;
    com.join.mgps.rpc.i rpcForumClient;
    private int pageCount = 0;
    private int loadingPage = 0;
    private final int LOADING = 0;
    private final int LOADING_FAILED = 16;
    private final int LOADING_SUCCESS = 32;
    private final int LOADING_NETWORK_FAILED = 17;
    private final int LOADING_DB_FAILED = 18;
    private final int LOADING_SRV_NO_REC_FAILED = 20;
    private final int LOADING_SRV_POSTS_FAILED = 24;
    private int loadingState = 0;
    ForumProfileCommentAdapter.c mProfileListener = new a();
    Handler mHandler = new b();

    class a implements ForumProfileCommentAdapter.c {
        a() {
        }

        @Override // com.join.mgps.adapter.ForumProfileCommentAdapter.c
        public void d(int pid) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(pid);
            com.join.mgps.Util.r0.v0(ForumProfileCommentActivity.this, forumPostsBean);
        }
    }

    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            ForumProfileCommentActivity.this.mg_forum_profile_comment_list.v();
            ForumProfileCommentActivity.this.mg_forum_profile_comment_list.u();
            if (ForumProfileCommentActivity.this.loadingPage == -1) {
                ForumProfileCommentActivity.this.mg_forum_profile_comment_list.setNoMore();
            }
        }
    }

    class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!com.join.android.app.common.utils.m.j(ForumProfileCommentActivity.this)) {
                ForumProfileCommentActivity forumProfileCommentActivity = ForumProfileCommentActivity.this;
                forumProfileCommentActivity.showToast(forumProfileCommentActivity.getString(R.string.net_connect_failed));
                ForumProfileCommentActivity.this.stopXlistRefreshAndLoadMore();
            } else {
                ForumProfileCommentActivity forumProfileCommentActivity2 = ForumProfileCommentActivity.this;
                forumProfileCommentActivity2.getForumProfileMessageData(forumProfileCommentActivity2.pageCount + 1);
                if (ForumProfileCommentActivity.this.loadingPage == -1) {
                    ForumProfileCommentActivity.this.stopXlistRefreshAndLoadMore();
                }
            }
        }
    }

    class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.m.j(ForumProfileCommentActivity.this)) {
                ForumProfileCommentActivity.this.loadingPage = 0;
                ForumProfileCommentActivity.this.getForumProfileMessageData(1);
            } else {
                ForumProfileCommentActivity forumProfileCommentActivity = ForumProfileCommentActivity.this;
                forumProfileCommentActivity.showToast(forumProfileCommentActivity.getString(R.string.net_connect_failed));
                ForumProfileCommentActivity.this.stopXlistRefreshAndLoadMore();
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
            ForumProfileCommentActivity.this.loading();
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
    }

    class g extends ForumLoadingView.e {
        g(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumProfileCommentActivity.this.loading();
        }
    }

    class h extends ForumLoadingView.e {
        h(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumProfileCommentActivity.this.loading();
        }
    }

    private void initViews() {
        this.layout_title.setText("我的评论");
        this.forumProfileCommentDataList = new ArrayList();
        this.mg_forum_profile_comment_list.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.mg_forum_profile_comment_list.setPullLoadEnable(new c());
        this.mg_forum_profile_comment_list.setPullRefreshEnable(new d());
        this.forumProfileCommentAdapter1 = new ForumProfileCommentAdapter(this);
        this.listData = new ArrayList();
        this.forumProfileCommentAdapter1.h(this.mProfileListener);
        this.mg_forum_profile_comment_list.setAdapter((ListAdapter) this.forumProfileCommentAdapter1);
    }

    private void loadDBData() {
        changeLoadingState(18);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loading() {
        changeLoadingState(0);
        loadDBData();
        if (com.join.android.app.common.utils.m.j(this)) {
            loadSrvData();
        } else {
            showToast(getString(R.string.net_connect_failed));
            changeLoadingState(17);
        }
    }

    @AfterViews
    void afterViews() {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        initViews();
        loading();
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void changeLoadingState(int state) {
        int i10 = this.loadingState;
        if (i10 == 32) {
            return;
        }
        if (state == 32) {
            this.loadingState = 32;
            this.loadingView.j(2);
            return;
        }
        if (state == 0) {
            this.loadingState = 0;
            this.loadingView.m();
            this.loadingView.j(1);
            return;
        }
        this.loadingState = state | i10;
        if (checkFailed(-11)) {
            this.loadingState = 16;
            ForumLoadingView forumLoadingView = this.loadingView;
            forumLoadingView.setListener(new e(forumLoadingView));
            this.loadingView.j(9);
            return;
        }
        if (checkFailed(22)) {
            this.loadingState = 16;
            this.loadingView.setFailedMsg("还没有发布评论~");
            ForumLoadingView forumLoadingView2 = this.loadingView;
            forumLoadingView2.setListener(new f(forumLoadingView2));
            this.loadingView.j(10);
            this.loadingView.setReloadingVisibility(0);
            this.loadingView.setFailedReloadingRes(R.drawable.papa_loading_null);
            return;
        }
        if (checkFailed(31) || checkFailed(26)) {
            this.loadingState = 16;
            this.loadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView3 = this.loadingView;
            forumLoadingView3.setListener(new g(forumLoadingView3));
            this.loadingView.j(16);
            return;
        }
        if (checkFailed(17)) {
            this.loadingState = 16;
            ForumLoadingView forumLoadingView4 = this.loadingView;
            forumLoadingView4.setListener(new h(forumLoadingView4));
            this.loadingView.j(9);
        }
    }

    boolean checkFailed(int val) {
        return (this.loadingState & val) == val;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:15:0x0024 A[Catch: all -> 0x0084, Exception -> 0x0086, Merged into TryCatch #0 {all -> 0x0084, Exception -> 0x0086, blocks: (B:12:0x0017, B:13:0x001a, B:15:0x0024, B:17:0x003b, B:19:0x0043, B:21:0x0049, B:25:0x0058, B:27:0x005c, B:33:0x0069, B:35:0x006d, B:50:0x0089), top: B:62:0x0015 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003b A[Catch: all -> 0x0084, Exception -> 0x0086, Merged into TryCatch #0 {all -> 0x0084, Exception -> 0x0086, blocks: (B:12:0x0017, B:13:0x001a, B:15:0x0024, B:17:0x003b, B:19:0x0043, B:21:0x0049, B:25:0x0058, B:27:0x005c, B:33:0x0069, B:35:0x006d, B:50:0x0089), top: B:62:0x0015 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x005c A[Catch: all -> 0x0084, Exception -> 0x0086, Merged into TryCatch #0 {all -> 0x0084, Exception -> 0x0086, blocks: (B:12:0x0017, B:13:0x001a, B:15:0x0024, B:17:0x003b, B:19:0x0043, B:21:0x0049, B:25:0x0058, B:27:0x005c, B:33:0x0069, B:35:0x006d, B:50:0x0089), top: B:62:0x0015 }, TRY_LEAVE] */
    /* JADX WARN: Code duplicated, block: B:30:0x0063 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:33:0x0069 A[Catch: all -> 0x0084, Exception -> 0x0086, Merged into TryCatch #0 {all -> 0x0084, Exception -> 0x0086, blocks: (B:12:0x0017, B:13:0x001a, B:15:0x0024, B:17:0x003b, B:19:0x0043, B:21:0x0049, B:25:0x0058, B:27:0x005c, B:33:0x0069, B:35:0x006d, B:50:0x0089), top: B:62:0x0015 }, TRY_ENTER] */
    /* JADX WARN: Code duplicated, block: B:35:0x006d A[Catch: all -> 0x0084, Exception -> 0x0086, Merged into TryCatch #0 {all -> 0x0084, Exception -> 0x0086, blocks: (B:12:0x0017, B:13:0x001a, B:15:0x0024, B:17:0x003b, B:19:0x0043, B:21:0x0049, B:25:0x0058, B:27:0x005c, B:33:0x0069, B:35:0x006d, B:50:0x0089), top: B:62:0x0015 }, TRY_LEAVE] */
    /* JADX WARN: Code duplicated, block: B:38:0x0074 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:41:0x007a A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:43:0x007e A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:53:0x0093 A[DONT_GENERATE] */
    @Background
    public void getForumProfileMessageData(int page) {
        UserInfo userInfoT;
        ForumResponse<List<ForumData.ForumProfileCommentData>> forumResponseA;
        List<ForumData.ForumProfileCommentData> data;
        int i10 = this.loadingPage;
        if (page == i10) {
            return;
        }
        if (i10 == -1) {
            stopXlistRefreshAndLoadMore();
        }
        this.loadingPage = page;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            changeLoadingState(17);
            return;
        }
        try {
            if (page <= 1) {
                userInfoT = com.join.mgps.Util.r0.T(this);
                if (!com.join.mgps.Util.r0.Y0(this)) {
                    forumResponseA = this.rpcForumClient.a(userInfoT.getUid(), userInfoT.getToken(), page, com.join.mgps.Util.r0.f49989d, "");
                    if (forumResponseA != null) {
                        this.loadingPage = 0;
                        if (page == 1) {
                            changeLoadingState(20);
                        }
                        return;
                    } else {
                        data = forumResponseA.getData();
                        if (data != null) {
                        }
                        this.loadingPage = -1;
                        if (page == 1) {
                            changeLoadingState(20);
                        }
                    }
                }
                return;
            }
            showMoreLoading();
            userInfoT = com.join.mgps.Util.r0.T(this);
            if (!com.join.mgps.Util.r0.Y0(this)) {
                return;
            }
            forumResponseA = this.rpcForumClient.a(userInfoT.getUid(), userInfoT.getToken(), page, com.join.mgps.Util.r0.f49989d, "");
            if (forumResponseA != null) {
                this.loadingPage = 0;
                if (page == 1) {
                    changeLoadingState(20);
                }
                return;
            }
            data = forumResponseA.getData();
            if (data != null || data.size() == 0) {
                this.loadingPage = -1;
                if (page == 1) {
                    changeLoadingState(20);
                }
            } else {
                this.pageCount = page;
                updateCommentData(data, page);
                changeLoadingState(32);
            }
        } catch (Exception e10) {
            changeLoadingState(24);
            e10.printStackTrace();
        } finally {
            if (this.loadingPage != -1) {
                this.loadingPage = 0;
            }
            stopXlistRefreshAndLoadMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadSrvData() {
        getForumProfileMessageData(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyAdapter() {
        this.forumProfileCommentAdapter1.g(this.listData);
        this.forumProfileCommentAdapter1.notifyDataSetChanged();
    }

    synchronized void notifyDataSetChanged() {
        if (this.forumProfileCommentDataList == null) {
            return;
        }
        this.listData.clear();
        int i10 = 0;
        while (i10 < this.forumProfileCommentDataList.size()) {
            setProfileViewData(this.forumProfileCommentDataList.get(i10), i10 == 0);
            i10++;
        }
        notifyAdapter();
    }

    void setProfileViewData(ForumData.ForumProfileCommentData data, boolean hideHeadDivider) {
        try {
            ForumBean.ForumPostsBean posts = data.getPosts();
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            String thumb = "";
            this.listData.add(new ForumProfileCommentAdapter.i(ForumProfileCommentAdapter.ViewType.PROFILE_HEADER, new ForumProfileCommentAdapter.i.b(hideHeadDivider, accountData.getAvatarSrc(), accountData.getNickname(), data.getLast_update_time(), posts.getFirst() > 0, posts.getPid(), accountData.getVipLevel(), accountData.getSVIPLevel(), posts.getCopper_title() != null ? posts.getCopper_title().getBattleTitle() : "", posts.getCopper_title() != null ? posts.getCopper_title().getBattleColor() : "", posts.getUid())));
            List<ForumBean.ForumProfileCommentBean> list = data.getList();
            int i10 = 0;
            while (list != null && i10 < list.size()) {
                this.listData.add(new ForumProfileCommentAdapter.i(ForumProfileCommentAdapter.ViewType.PROFILE_MESSAGE_ITEM, new ForumProfileCommentAdapter.i.c(posts.getPid(), i10 == list.size() + (-1), list.get(i10))));
                i10++;
            }
            ForumProfileCommentAdapter.ViewType viewType = ForumProfileCommentAdapter.ViewType.PROFILE_FOOTER;
            int pid = posts.getPid();
            if (posts.getRs_list() != null && posts.getRs_list().size() != 0) {
                thumb = posts.getRs_list().get(0).getThumb();
            }
            this.listData.add(new ForumProfileCommentAdapter.i(viewType, new ForumProfileCommentAdapter.i.a(pid, thumb, !com.join.mgps.Util.t2.h(posts.getSubject()) ? posts.getSubject() : posts.getMessage())));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMoreLoading() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void stopXlistRefreshAndLoadMore() {
        if (this.mg_forum_profile_comment_list.j()) {
            this.mHandler.sendEmptyMessageDelayed(0, BaseCloudFileManager.ACK_TIMEOUT);
        } else {
            this.mHandler.sendEmptyMessage(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateCommentData(List<ForumData.ForumProfileCommentData> datas, int page) {
        if (datas != null && datas.size() != 0) {
            if (page == 1) {
                this.forumProfileCommentDataList.clear();
                this.pageCount = 1;
                stopXlistRefreshAndLoadMore();
            }
            this.forumProfileCommentDataList.addAll(datas);
        }
        stopXlistRefreshAndLoadMore();
        notifyDataSetChanged();
    }
}
