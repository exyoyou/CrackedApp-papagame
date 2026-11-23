package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.adapter.ForumProfileMessageAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
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
@EActivity(R.layout.mg_forum_profile_message_activity)
public class ForumProfileMessageActivity extends BaseActivity implements AbsListView.OnScrollListener {

    @ViewById
    ImageView back_image;
    ForumProfileMessageAdapter forumProfileMessageAdapter1;
    List<ForumBean.ForumProfileMessageBean> forumProfileMessageBeans;

    @ViewById
    TextView layout_title;
    List<ForumProfileMessageAdapter.j> listData;

    @ViewById
    ForumLoadingView loadingView;

    @ViewById
    XListView2 mg_forum_profile_message_list;

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
    ForumProfileMessageAdapter.d mProfileListener = new a();
    Handler mHandler = new b();

    class a implements ForumProfileMessageAdapter.d {
        a() {
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageAdapter.d
        public void a(int pid, int cid, int rid, String fromNickName) {
            ForumBean.ForumCommentReplyBean forumCommentReplyBean;
            ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean();
            forumCommentBean.setPid(cid);
            forumCommentBean.setNickname(fromNickName);
            if (rid != 0) {
                forumCommentReplyBean = new ForumBean.ForumCommentReplyBean();
                forumCommentReplyBean.setRid(rid);
                forumCommentReplyBean.setNickname(fromNickName);
            } else {
                forumCommentReplyBean = null;
            }
            ForumProfileMessageActivity forumProfileMessageActivity = ForumProfileMessageActivity.this;
            com.join.mgps.Util.r0.A0(forumProfileMessageActivity, forumProfileMessageActivity.getForumPostBean(pid), forumCommentBean, forumCommentReplyBean);
        }

        @Override // com.join.mgps.adapter.ForumProfileMessageAdapter.d
        public void d(int pid) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(pid);
            com.join.mgps.Util.r0.v0(ForumProfileMessageActivity.this, forumPostsBean);
        }
    }

    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            ForumProfileMessageActivity.this.mg_forum_profile_message_list.v();
            ForumProfileMessageActivity.this.mg_forum_profile_message_list.u();
            if (ForumProfileMessageActivity.this.loadingPage == -1) {
                ForumProfileMessageActivity.this.mg_forum_profile_message_list.setNoMore();
            }
        }
    }

    class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!com.join.android.app.common.utils.m.j(ForumProfileMessageActivity.this)) {
                ForumProfileMessageActivity forumProfileMessageActivity = ForumProfileMessageActivity.this;
                forumProfileMessageActivity.showToast(forumProfileMessageActivity.getString(R.string.net_connect_failed));
                ForumProfileMessageActivity.this.stopXlistRefreshAndLoadMore();
            } else {
                ForumProfileMessageActivity forumProfileMessageActivity2 = ForumProfileMessageActivity.this;
                forumProfileMessageActivity2.getForumProfileMessageData(forumProfileMessageActivity2.pageCount + 1);
                if (ForumProfileMessageActivity.this.loadingPage == -1) {
                    ForumProfileMessageActivity.this.stopXlistRefreshAndLoadMore();
                }
            }
        }
    }

    class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.m.j(ForumProfileMessageActivity.this)) {
                ForumProfileMessageActivity.this.loadingPage = 0;
                ForumProfileMessageActivity.this.getForumProfileMessageData(1);
            } else {
                ForumProfileMessageActivity.this.stopXlistRefreshAndLoadMore();
                ForumProfileMessageActivity forumProfileMessageActivity = ForumProfileMessageActivity.this;
                forumProfileMessageActivity.showToast(forumProfileMessageActivity.getString(R.string.net_connect_failed));
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
            Context applicationContext = ForumProfileMessageActivity.this.getApplicationContext();
            if (com.join.mgps.Util.r0.Y0(applicationContext)) {
                ForumProfileMessageActivity.this.loading();
            } else {
                ForumProfileMessageActivity.this.showToast("用户未登录，请登录！");
                com.join.mgps.Util.r0.L0(applicationContext);
            }
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
            Context applicationContext = ForumProfileMessageActivity.this.getApplicationContext();
            if (com.join.mgps.Util.r0.Y0(applicationContext)) {
                ForumProfileMessageActivity.this.loading();
            } else {
                ForumProfileMessageActivity.this.showToast("用户未登录，请登录！");
                com.join.mgps.Util.r0.L0(applicationContext);
            }
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
            Context applicationContext = ForumProfileMessageActivity.this.getApplicationContext();
            if (com.join.mgps.Util.r0.Y0(applicationContext)) {
                ForumProfileMessageActivity.this.loading();
            } else {
                ForumProfileMessageActivity.this.showToast("用户未登录，请登录！");
                com.join.mgps.Util.r0.L0(applicationContext);
            }
        }
    }

    private void initViews() {
        this.layout_title.setText("我的消息");
        this.forumProfileMessageBeans = new ArrayList();
        this.mg_forum_profile_message_list.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.mg_forum_profile_message_list.setPullLoadEnable(new c());
        this.mg_forum_profile_message_list.setPullRefreshEnable(new d());
        this.forumProfileMessageAdapter1 = new ForumProfileMessageAdapter(this);
        this.listData = new ArrayList();
        this.forumProfileMessageAdapter1.j(this.mProfileListener);
        this.mg_forum_profile_message_list.setAdapter((ListAdapter) this.forumProfileMessageAdapter1);
        this.mg_forum_profile_message_list.setOnScrollListener(this);
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
        if (com.join.mgps.Util.r0.Y0(this)) {
            return;
        }
        showToast("用户未登录，请登录！");
        com.join.mgps.Util.r0.L0(this);
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
            this.loadingView.setFailedMsg("还没有收到消息哦~");
            ForumLoadingView forumLoadingView2 = this.loadingView;
            forumLoadingView2.setListener(new f(forumLoadingView2));
            this.loadingView.j(10);
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

    ForumBean.ForumPostsBean getForumPostBean(int pid) {
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        int i10 = 0;
        while (true) {
            List<ForumBean.ForumProfileMessageBean> list = this.forumProfileMessageBeans;
            if (list == null || i10 >= list.size()) {
                return forumPostsBean;
            }
            ForumBean.ForumProfileMessageBean forumProfileMessageBean = this.forumProfileMessageBeans.get(i10);
            if (forumProfileMessageBean.getPosts().getPid() == pid) {
                return forumProfileMessageBean.getPosts();
            }
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:15:0x0026 A[Catch: all -> 0x0089, Exception -> 0x008b, Merged into TryCatch #1 {all -> 0x0089, Exception -> 0x008b, blocks: (B:12:0x0019, B:13:0x001c, B:15:0x0026, B:17:0x003c, B:21:0x004a, B:25:0x0056, B:27:0x005c, B:31:0x006b, B:33:0x006f, B:23:0x0051, B:18:0x0043, B:39:0x007c, B:48:0x008c), top: B:61:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003c A[Catch: all -> 0x0089, Exception -> 0x008b, Merged into TryCatch #1 {all -> 0x0089, Exception -> 0x008b, blocks: (B:12:0x0019, B:13:0x001c, B:15:0x0026, B:17:0x003c, B:21:0x004a, B:25:0x0056, B:27:0x005c, B:31:0x006b, B:33:0x006f, B:23:0x0051, B:18:0x0043, B:39:0x007c, B:48:0x008c), top: B:61:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0043 A[Catch: all -> 0x0089, Exception -> 0x008b, Merged into TryCatch #1 {all -> 0x0089, Exception -> 0x008b, blocks: (B:12:0x0019, B:13:0x001c, B:15:0x0026, B:17:0x003c, B:21:0x004a, B:25:0x0056, B:27:0x005c, B:31:0x006b, B:33:0x006f, B:23:0x0051, B:18:0x0043, B:39:0x007c, B:48:0x008c), top: B:61:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x004a A[Catch: all -> 0x0089, Exception -> 0x008b, Merged into TryCatch #1 {all -> 0x0089, Exception -> 0x008b, blocks: (B:12:0x0019, B:13:0x001c, B:15:0x0026, B:17:0x003c, B:21:0x004a, B:25:0x0056, B:27:0x005c, B:31:0x006b, B:33:0x006f, B:23:0x0051, B:18:0x0043, B:39:0x007c, B:48:0x008c), top: B:61:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x004f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x0051 A[Catch: all -> 0x0089, Exception -> 0x008b, Merged into TryCatch #1 {all -> 0x0089, Exception -> 0x008b, blocks: (B:12:0x0019, B:13:0x001c, B:15:0x0026, B:17:0x003c, B:21:0x004a, B:25:0x0056, B:27:0x005c, B:31:0x006b, B:33:0x006f, B:23:0x0051, B:18:0x0043, B:39:0x007c, B:48:0x008c), top: B:61:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x006f A[Catch: all -> 0x0089, Exception -> 0x008b, Merged into TryCatch #1 {all -> 0x0089, Exception -> 0x008b, blocks: (B:12:0x0019, B:13:0x001c, B:15:0x0026, B:17:0x003c, B:21:0x004a, B:25:0x0056, B:27:0x005c, B:31:0x006b, B:33:0x006f, B:23:0x0051, B:18:0x0043, B:39:0x007c, B:48:0x008c), top: B:61:0x0017 }, TRY_LEAVE] */
    /* JADX WARN: Code duplicated, block: B:36:0x0076 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:39:0x007c A[Catch: all -> 0x0089, Exception -> 0x008b, Merged into TryCatch #1 {all -> 0x0089, Exception -> 0x008b, blocks: (B:12:0x0019, B:13:0x001c, B:15:0x0026, B:17:0x003c, B:21:0x004a, B:25:0x0056, B:27:0x005c, B:31:0x006b, B:33:0x006f, B:23:0x0051, B:18:0x0043, B:39:0x007c, B:48:0x008c), top: B:61:0x0017 }, TRY_ENTER, TRY_LEAVE] */
    /* JADX WARN: Code duplicated, block: B:42:0x0083 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:51:0x0096 A[DONT_GENERATE] */
    @Background
    public void getForumProfileMessageData(int page) {
        UserInfo userInfoT;
        ForumResponse<ForumData.ForumProfileMessageData> forumResponseU;
        List<ForumBean.ForumProfileMessageBean> message_list;
        ForumData.ForumProfileMessageData data;
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
                if (com.join.mgps.Util.r0.Y0(this)) {
                    changeLoadingState(24);
                    return;
                }
                forumResponseU = this.rpcForumClient.U(userInfoT.getUid(), userInfoT.getToken(), page, com.join.mgps.Util.r0.f49989d, "");
                message_list = null;
                if (forumResponseU != null) {
                    data = forumResponseU.getData();
                } else {
                    this.loadingPage = 0;
                    data = null;
                }
                if (data != null) {
                    message_list = data.getMessage_list();
                } else if (page == 1) {
                    changeLoadingState(20);
                }
                if (message_list != null) {
                }
                this.loadingPage = -1;
                if (page == 1) {
                    changeLoadingState(20);
                }
            }
            showMoreLoading();
            userInfoT = com.join.mgps.Util.r0.T(this);
            if (com.join.mgps.Util.r0.Y0(this)) {
                changeLoadingState(24);
                return;
            }
            forumResponseU = this.rpcForumClient.U(userInfoT.getUid(), userInfoT.getToken(), page, com.join.mgps.Util.r0.f49989d, "");
            message_list = null;
            if (forumResponseU != null) {
                data = forumResponseU.getData();
            } else {
                this.loadingPage = 0;
                data = null;
            }
            if (data != null) {
                message_list = data.getMessage_list();
            } else if (page == 1) {
                changeLoadingState(20);
            }
            if (message_list != null || message_list.size() == 0) {
                this.loadingPage = -1;
                if (page == 1) {
                    changeLoadingState(20);
                }
            } else {
                this.pageCount = page;
                updateMessageData(message_list, page);
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
        this.forumProfileMessageAdapter1.h(this.listData);
        this.forumProfileMessageAdapter1.notifyDataSetChanged();
    }

    synchronized void notifyDataSetChanged() {
        if (this.forumProfileMessageBeans == null) {
            return;
        }
        this.listData.clear();
        int i10 = 0;
        while (i10 < this.forumProfileMessageBeans.size()) {
            setProfileViewData(this.forumProfileMessageBeans.get(i10), i10 == 0);
            i10++;
        }
        notifyAdapter();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.loadingState == 16) {
            loading();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        if ((totalItemCount - (firstVisibleItem + visibleItemCount) < com.join.mgps.Util.r0.f49991f) && (this.loadingPage != -1)) {
            getForumProfileMessageData(this.pageCount + 1);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    void setProfileViewData(ForumBean.ForumProfileMessageBean data, boolean hideHeadDivider) {
        try {
            ForumBean.ForumPostsBean posts = data.getPosts();
            UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
            String thumb = "";
            this.listData.add(new ForumProfileMessageAdapter.j(ForumProfileMessageAdapter.ViewType.PROFILE_HEADER, new ForumProfileMessageAdapter.j.b(hideHeadDivider, data.getFrom_avatar_src(), data.getFrom_nickname(), data.getAdd_time(), posts.getFirst() > 0, posts.getPid(), posts.getForum_auth() == 1, data.isFrom_officialAccount(), data.getComment_id(), data.getFrom_type(), data.getRid(), data.getVip_level(), data.getSvip_level(), posts.getCopper_title() != null ? posts.getCopper_title().getBattleTitle() : "", posts.getCopper_title() != null ? posts.getCopper_title().getBattleColor() : "", posts.getUid())));
            this.listData.add(new ForumProfileMessageAdapter.j(ForumProfileMessageAdapter.ViewType.PROFILE_MESSAGE_ITEM, new ForumProfileMessageAdapter.j.c(posts.getPid(), data.getFrom_type(), accountData != null ? accountData.getNickname() : "我", data.getMessage(), data.getComment_id(), data.getRid(), false)));
            ForumProfileMessageAdapter.ViewType viewType = ForumProfileMessageAdapter.ViewType.PROFILE_FOOTER;
            int pid = posts.getPid();
            if (posts.getRs_list() != null && posts.getRs_list().size() != 0) {
                thumb = posts.getRs_list().get(0).getThumb();
            }
            this.listData.add(new ForumProfileMessageAdapter.j(viewType, new ForumProfileMessageAdapter.j.a(pid, thumb, !com.join.mgps.Util.t2.h(posts.getSubject()) ? posts.getSubject() : posts.getMessage(), data.getComment_id(), data.getFrom_type(), data.getFrom_nickname(), data.getRid())));
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
        if (this.mg_forum_profile_message_list.j()) {
            this.mHandler.sendEmptyMessageDelayed(0, BaseCloudFileManager.ACK_TIMEOUT);
        } else {
            this.mHandler.sendEmptyMessage(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateMessageData(List<ForumBean.ForumProfileMessageBean> messageBeans, int page) {
        if (messageBeans != null && messageBeans.size() != 0) {
            if (page == 1) {
                this.forumProfileMessageBeans.clear();
                this.pageCount = 1;
                stopXlistRefreshAndLoadMore();
            }
            this.forumProfileMessageBeans.addAll(messageBeans);
        }
        stopXlistRefreshAndLoadMore();
        notifyDataSetChanged();
    }
}
