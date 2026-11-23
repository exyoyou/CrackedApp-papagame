package com.join.mgps.activity;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_forum_my_post)
public class ForumMyPostsActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {
    private ForumBaseAdapter adapter;

    @ViewById
    ImageView back_image;
    com.join.android.app.component.video.c helper;

    @ViewById
    TextView layout_title;

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
    private List<ForumBean.ForumPostsBean> posts;
    private com.join.mgps.rpc.e recommendClient;
    com.join.mgps.rpc.i rpcForumClient;
    String TAG = "ForumMyPostsActivity";
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
    Handler mHandler = new a();
    private Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    private List<DownloadTask> downloadTasks = new ArrayList();
    int getGameDownloadInfoStatus = 0;
    boolean downloadGameWhenInfoGotcha = false;
    List<ForumBaseAdapter.r1> itemBeans = new ArrayList();
    com.join.mgps.customview.t mDialog = null;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            ForumMyPostsActivity.this.mg_forum_profile_comment_list.v();
            ForumMyPostsActivity.this.mg_forum_profile_comment_list.u();
            if (ForumMyPostsActivity.this.loadingPage == -1) {
                ForumMyPostsActivity.this.mg_forum_profile_comment_list.setNoMore();
            }
        }
    }

    class b implements com.join.mgps.customview.i {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f51533b;

        b(final Context val$context) {
            this.f51533b = val$context;
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!com.join.android.app.common.utils.m.j(this.f51533b)) {
                ForumMyPostsActivity forumMyPostsActivity = ForumMyPostsActivity.this;
                forumMyPostsActivity.showToast(forumMyPostsActivity.getString(R.string.net_connect_failed));
                ForumMyPostsActivity.this.stopXlistRefreshAndLoadMore();
            } else {
                ForumMyPostsActivity forumMyPostsActivity2 = ForumMyPostsActivity.this;
                forumMyPostsActivity2.getForumProfileMessageData(forumMyPostsActivity2.pageCount + 1);
                if (ForumMyPostsActivity.this.loadingPage == -1) {
                    ForumMyPostsActivity.this.stopXlistRefreshAndLoadMore();
                }
            }
        }
    }

    class c implements com.join.mgps.customview.j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f51535b;

        c(final Context val$context) {
            this.f51535b = val$context;
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.m.j(this.f51535b)) {
                ForumMyPostsActivity.this.loadingPage = 0;
                ForumMyPostsActivity.this.getForumProfileMessageData(1);
            } else {
                ForumMyPostsActivity forumMyPostsActivity = ForumMyPostsActivity.this;
                forumMyPostsActivity.showToast(forumMyPostsActivity.getString(R.string.net_connect_failed));
                ForumMyPostsActivity.this.stopXlistRefreshAndLoadMore();
            }
        }
    }

    class d extends ForumBaseAdapter.b1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f51537a;

        d(final Context val$context) {
            this.f51537a = val$context;
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void a(int pid) {
            if (!ForumMyPostsActivity.this.isLogined(this.f51537a)) {
                ForumMyPostsActivity.this.showMessage(this.f51537a.getString(R.string.forum_user_not_login));
            } else if (!ForumMyPostsActivity.this.validAccount()) {
                ForumMyPostsActivity.this.showDialog();
            } else {
                ForumMyPostsActivity.this.refreshPraiseChanged(pid);
                ForumMyPostsActivity.this.praisePosts(pid);
            }
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void d(int fid) {
            super.d(fid);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(fid);
            com.join.mgps.Util.r0.v0(this.f51537a, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void e(String gameId) {
            ForumMyPostsActivity forumMyPostsActivity = ForumMyPostsActivity.this;
            forumMyPostsActivity.downloadGameWhenInfoGotcha = true;
            forumMyPostsActivity.downloadGameById(gameId);
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
            ForumMyPostsActivity.this.loading();
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
            ForumMyPostsActivity.this.loading();
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
            ForumMyPostsActivity.this.loading();
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
        this.layout_title.setText("我的帖子");
        this.mg_forum_profile_comment_list.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.mg_forum_profile_comment_list.setPullLoadEnable(new b(this));
        this.mg_forum_profile_comment_list.setPullRefreshEnable(new c(this));
        this.posts = new ArrayList();
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(this, this.helper);
        this.adapter = forumBaseAdapter;
        forumBaseAdapter.C0(this.TAG);
        this.adapter.I0(new d(this));
        this.mg_forum_profile_comment_list.setAdapter((ListAdapter) this.adapter);
        this.mg_forum_profile_comment_list.setOnScrollListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(this);
        return userInfoAccountBean != null && com.join.mgps.Util.t2.i(userInfoAccountBean.getToken());
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

    private void receiveDelete(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.downloadTasks.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.downloadTasksMap.remove(next.getCrc_link_type_val());
                    it2.remove();
                    break;
                }
            }
            notifyUpdateUi(downloadTask, 2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            notifyUpdateUi(downloadTask, 3);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.downloadTasks, downloadTask);
        if (!this.downloadTasksMap.containsKey(downloadTask.getCrc_link_type_val())) {
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        notifyUpdateUi(downloadTask, 0);
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.downloadTasksMap.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        notifyUpdateUi(downloadTask, 1);
    }

    private void receiveUpdate() {
        int i10 = 0;
        while (true) {
            List<DownloadTask> list = this.downloadTasks;
            if (list == null || i10 >= list.size()) {
                return;
            }
            notifyUpdateUi(q5.f.M().G(this.downloadTasks.get(i10).getCrc_link_type_val()), 4);
            i10++;
        }
    }

    private void setPostsView(ForumBean.ForumPostsBean posts, boolean showDivider) {
        boolean z10;
        boolean z11;
        if (com.join.mgps.Util.t2.h(posts.getSubject()) || com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            z10 = showDivider;
            z11 = false;
        } else {
            this.itemBeans.add(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT, new ForumBaseAdapter.r1.p(true, posts.getBest() > 0, posts.getFirst() > 0, posts.getSubject(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
            z11 = true;
            z10 = true;
        }
        if (z11) {
            boolean z12 = posts.getSubject() == null || com.join.mgps.Util.t2.h(posts.getSubject().trim());
            if (!com.join.mgps.Util.t2.h(posts.getMessage()) && !com.join.mgps.Util.t2.h(posts.getMessage().trim())) {
                ArrayList arrayList = new ArrayList();
                if (posts.getBest() > 0) {
                    ForumBean.ForumPostsBean.TagInfo tagInfo = new ForumBean.ForumPostsBean.TagInfo();
                    tagInfo.setName("精");
                    tagInfo.setColor("#00FFFFFF");
                    tagInfo.setFont_color("#FF8378FF");
                    tagInfo.setBorder_color("#FF8378FF");
                    arrayList.add(0, tagInfo);
                }
                if (posts.getFirst() > 0) {
                    ForumBean.ForumPostsBean.TagInfo tagInfo2 = new ForumBean.ForumPostsBean.TagInfo();
                    tagInfo2.setName("顶");
                    tagInfo2.setColor("#00FFFFFF");
                    tagInfo2.setFont_color("#FFFF6464");
                    tagInfo2.setBorder_color("#FFFF6464");
                    arrayList.add(0, tagInfo2);
                }
                if (posts.getTag_info() != null) {
                    arrayList.addAll(posts.getTag_info());
                }
                ForumBaseAdapter.r1.o oVar = new ForumBaseAdapter.r1.o(z10 ^ true, z12 && posts.getBest() > 0, z12 && posts.getFirst() > 0, posts.getMessage(), posts.getPid(), posts.getFid(), z12 && posts.getHelp() > 0, posts.getHelp_money() + "", z12 ? posts.getTag_info() : null, z12, com.join.mgps.Util.r0.m0(this, posts.getMessage(), z12, posts.getHelp() > 0, posts.getHelp_money() + "", arrayList));
                this.itemBeans.add(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_MESSAGE, oVar));
                this.adapter.y().e(oVar);
            }
        } else {
            this.itemBeans.add(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT, new ForumBaseAdapter.r1.p(true, posts.getBest() > 0, posts.getFirst() > 0, posts.getMessage(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
        }
        boolean z13 = (posts.getRelation_game() == null || TextUtils.isEmpty(posts.getRelation_game().getGame_id())) ? false : true;
        if (!z13) {
            List<ForumBean.ForumPostsBean.ResBean> rs_list = posts.getRs_list();
            ArrayList arrayList2 = new ArrayList();
            boolean zIsAttach_video = posts.isAttach_video();
            String thumb = "";
            String raw = thumb;
            for (int i10 = 0; rs_list != null && i10 < rs_list.size(); i10++) {
                ForumBean.ForumPostsBean.ResBean resBean = rs_list.get(i10);
                if (resBean.getType().equals("pic")) {
                    arrayList2.add(resBean.getRaw());
                } else if (resBean.getType().equals("video") && com.join.mgps.Util.t2.h(raw)) {
                    thumb = resBean.getThumb();
                    raw = resBean.getRaw();
                }
            }
            String subject = com.join.mgps.Util.t2.i(posts.getSubject()) ? posts.getSubject() : com.join.mgps.Util.t2.i(posts.getMessage()) ? posts.getMessage() : "";
            if (zIsAttach_video) {
                this.itemBeans.add(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, subject)));
            } else if (rs_list != null && rs_list.size() != 0) {
                this.itemBeans.add(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(rs_list, arrayList2, posts.getPid())));
            }
        }
        if (z13) {
            preLoadDownloadTask(posts.getRelation_game());
            ForumBaseAdapter.ViewType viewType = ForumBaseAdapter.ViewType.POST_GAME;
            if (!TextUtils.isEmpty(posts.getResource_url())) {
                viewType = ForumBaseAdapter.ViewType.POST_GAME_RES_LINK;
            }
            this.itemBeans.add(new ForumBaseAdapter.r1(viewType, new ForumBaseAdapter.r1.w(true, posts.getPid() + "", posts.getRelation_game(), posts.getResource_url())));
        }
        this.itemBeans.add(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(1, posts.getAvatar_src(), posts.getLast_comment_time(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
    }

    @AfterViews
    void afterViews() {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        this.helper = new com.join.android.app.component.video.c(this, this.TAG);
        initFields();
        initViews();
        loading();
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
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                return;
            }
            this.downloadingMap.put(crc_link_type_val, task);
            return;
        }
        if (from == 3) {
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.remove(crc_link_type_val);
                return;
            }
            return;
        }
        if (from != 5) {
            if (from == 6) {
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 7) {
                if (this.downloadedMap.containsKey(crc_link_type_val)) {
                    this.downloadedMap.remove(crc_link_type_val);
                }
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 10) {
                if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                    this.downloadedMap.put(crc_link_type_val, task);
                }
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    return;
                }
                this.downloadingMap.put(crc_link_type_val, task);
                return;
            }
            if (from != 11) {
                return;
            }
        } else if (this.downloadedMap.containsKey(crc_link_type_val)) {
            this.downloadedMap.remove(crc_link_type_val);
        }
        if (this.downloadingMap.containsKey(crc_link_type_val)) {
            this.downloadingMap.remove(crc_link_type_val);
        }
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
            this.loadingView.setFailedMsg("还没有发布帖子~");
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
    /* JADX WARN: Multi-variable type inference failed */
    @Background
    public void downloadGameById(String str) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("获取游戏信息失败");
            return;
        }
        if (this.getGameDownloadInfoStatus == 1) {
            return;
        }
        try {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
                ResultMainBean<List<DetailResultBean>> resultMainBeanI0 = this.recommendClient.I0(RequestBeanUtil.getInstance(this).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                if (resultMainBeanI0 != null && resultMainBeanI0.getFlag() != 0) {
                    List<DetailResultBean> data = resultMainBeanI0.getMessages().getData();
                    if (data.size() != 0) {
                        DetailResultBean detailResultBean = data.get(0);
                        if (this.downloadGameWhenInfoGotcha) {
                            startDown(detailResultBean);
                        }
                    }
                } else if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() != 0) {
                    showToast("获取游戏信息失败");
                } else {
                    showToast("获取游戏信息失败");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showToast("获取游戏信息失败");
            }
        } finally {
            this.getGameDownloadInfoStatus = 0;
            this.downloadGameWhenInfoGotcha = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:15:0x0024 A[Catch: all -> 0x0092, Exception -> 0x0094, Merged into TryCatch #0 {all -> 0x0092, Exception -> 0x0094, blocks: (B:12:0x0017, B:13:0x001a, B:15:0x0024, B:17:0x003b, B:19:0x0043, B:21:0x0049, B:23:0x0053, B:27:0x0066, B:29:0x006a, B:35:0x0077, B:37:0x007b, B:52:0x0097), top: B:64:0x0015 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003b A[Catch: all -> 0x0092, Exception -> 0x0094, Merged into TryCatch #0 {all -> 0x0092, Exception -> 0x0094, blocks: (B:12:0x0017, B:13:0x001a, B:15:0x0024, B:17:0x003b, B:19:0x0043, B:21:0x0049, B:23:0x0053, B:27:0x0066, B:29:0x006a, B:35:0x0077, B:37:0x007b, B:52:0x0097), top: B:64:0x0015 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x006a A[Catch: all -> 0x0092, Exception -> 0x0094, Merged into TryCatch #0 {all -> 0x0092, Exception -> 0x0094, blocks: (B:12:0x0017, B:13:0x001a, B:15:0x0024, B:17:0x003b, B:19:0x0043, B:21:0x0049, B:23:0x0053, B:27:0x0066, B:29:0x006a, B:35:0x0077, B:37:0x007b, B:52:0x0097), top: B:64:0x0015 }, TRY_LEAVE] */
    /* JADX WARN: Code duplicated, block: B:32:0x0071 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:35:0x0077 A[Catch: all -> 0x0092, Exception -> 0x0094, Merged into TryCatch #0 {all -> 0x0092, Exception -> 0x0094, blocks: (B:12:0x0017, B:13:0x001a, B:15:0x0024, B:17:0x003b, B:19:0x0043, B:21:0x0049, B:23:0x0053, B:27:0x0066, B:29:0x006a, B:35:0x0077, B:37:0x007b, B:52:0x0097), top: B:64:0x0015 }, TRY_ENTER] */
    /* JADX WARN: Code duplicated, block: B:37:0x007b A[Catch: all -> 0x0092, Exception -> 0x0094, Merged into TryCatch #0 {all -> 0x0092, Exception -> 0x0094, blocks: (B:12:0x0017, B:13:0x001a, B:15:0x0024, B:17:0x003b, B:19:0x0043, B:21:0x0049, B:23:0x0053, B:27:0x0066, B:29:0x006a, B:35:0x0077, B:37:0x007b, B:52:0x0097), top: B:64:0x0015 }, TRY_LEAVE] */
    /* JADX WARN: Code duplicated, block: B:40:0x0082 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:43:0x0088 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:45:0x008c A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:55:0x00a1 A[DONT_GENERATE] */
    @Background
    public void getForumProfileMessageData(int page) {
        UserInfo userInfoT;
        ForumResponse<ForumData.ForumProfilePostsData> forumResponseH;
        ForumData.ForumProfilePostsData data;
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
                    forumResponseH = this.rpcForumClient.h(userInfoT.getUid(), userInfoT.getToken(), page, com.join.mgps.Util.r0.f49989d, "");
                    if (forumResponseH != null) {
                        this.loadingPage = 0;
                        if (page == 1) {
                            changeLoadingState(20);
                        }
                        return;
                    } else {
                        data = forumResponseH.getData();
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
            forumResponseH = this.rpcForumClient.h(userInfoT.getUid(), userInfoT.getToken(), page, com.join.mgps.Util.r0.f49989d, "");
            if (forumResponseH != null) {
                this.loadingPage = 0;
                if (page == 1) {
                    changeLoadingState(20);
                }
                return;
            }
            data = forumResponseH.getData();
            if (data != null || data.getPosts_list() == null || data.getPosts_list().size() == 0) {
                this.loadingPage = -1;
                if (page == 1) {
                    changeLoadingState(20);
                }
            } else {
                this.pageCount = page;
                updateCommentData(data.getPosts_list(), page);
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

    public void initFields() {
        this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.Util.j0.a().d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadSrvData() {
        getForumProfileMessageData(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyAdapter() {
        ForumBaseAdapter forumBaseAdapter = this.adapter;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    synchronized void notifyDataSetChanged() {
        if (this.posts == null) {
            this.posts = new ArrayList();
        }
        this.itemBeans.clear();
        int i10 = 0;
        while (i10 < this.posts.size()) {
            setPostsView(this.posts.get(i10), i10 == 0);
            i10++;
        }
        ForumBaseAdapter forumBaseAdapter = this.adapter;
        if (forumBaseAdapter != null && forumBaseAdapter.x() != null) {
            this.adapter.x().clear();
        }
        this.adapter.g(this.itemBeans);
        notifyAdapter();
    }

    void notifyUpdateUi(DownloadTask downloadTask, int event) {
        boolean z10 = false;
        for (int i10 = 0; i10 < this.posts.size(); i10++) {
            try {
                ForumBean.ForumPostsBean forumPostsBean = this.posts.get(i10);
                if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    forumPostsBean.getRelation_game().setDownloadTask(downloadTask);
                    z10 |= true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (z10) {
            notifyDataSetChanged();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
        com.join.android.app.component.video.c cVar = this.helper;
        if (cVar != null) {
            cVar.F();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        changeDownloadTaskNumber(downloadTaskA, downloadTaskEvent.c());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("zip DownloadStatus =");
        sb2.append(downloadTaskEvent.c());
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
            return;
        }
        if (iC == 3) {
            updateUI(downloadTaskA, 2);
            return;
        }
        if (iC != 5) {
            if (iC == 6) {
                updateUI(downloadTaskA, 6);
                return;
            }
            if (iC == 7) {
                updateUI(downloadTaskA, 3);
                return;
            }
            if (iC == 8) {
                updateUI(downloadTaskA, 4);
                return;
            }
            if (iC != 48) {
                switch (iC) {
                    case 10:
                        updateUI(downloadTaskA, 7);
                        break;
                    case 12:
                        updateUI(downloadTaskA, 8);
                        break;
                    case 13:
                        updateUI(downloadTaskA, 9);
                        break;
                }
                return;
            }
        }
        updateUI(downloadTaskA, 5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        com.join.android.app.component.video.c cVar = this.helper;
        if (cVar != null) {
            cVar.G();
        }
        super.onPause();
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void onPayGameSuccess(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        ForumBaseAdapter forumBaseAdapter = this.adapter;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.c cVar = this.helper;
        if (cVar != null) {
            cVar.H();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.helper.e(view, firstVisibleItem, visibleItemCount, totalItemCount);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        this.helper.i(view, scrollState);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void praisePosts(int curPid) {
        try {
            if (!com.join.mgps.Util.r0.Y0(this)) {
                com.join.mgps.Util.r0.L0(this);
                com.join.mgps.Util.a3.b(this).d("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanE0 = com.join.mgps.Util.r0.e0(this, curPid);
            forumPostsPraiseRequestBeanE0.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> forumResponseR = this.rpcForumClient.R(forumPostsPraiseRequestBeanE0.getParams());
            if (forumResponseR == null) {
                return;
            }
            if (forumResponseR.getError() == 706) {
                refreshPraiseChanged(curPid);
                showDialog();
            } else {
                ForumData.ForumPostsPraiseData data = forumResponseR.getData();
                data.isResult();
                com.join.mgps.Util.r0.m1(forumPostsPraiseRequestBeanE0, data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void preLoadDownloadTask(ForumBean.GameInfo gameInfo) {
        if (gameInfo != null) {
            try {
                DownloadTask downloadTaskG = q5.f.M().G(gameInfo.getGame_id());
                gameInfo.setDownloadTask(downloadTaskG);
                Map<String, DownloadTask> map = this.downloadTasksMap;
                if (map == null || downloadTaskG == null || map.containsKey(downloadTaskG.getCrc_link_type_val())) {
                    return;
                }
                this.downloadTasks.add(downloadTaskG);
                this.downloadTasksMap.put(downloadTaskG.getCrc_link_type_val(), downloadTaskG);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void refreshPraiseChanged(int pid) {
        ForumBean.ForumPostsBean next;
        List<ForumBean.ForumPostsBean> list = this.posts;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<ForumBean.ForumPostsBean> it2 = this.posts.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getPid() == pid) {
                next.setPraise(next.is_praise() ? next.getPraise() - 1 : next.getPraise() + 1);
                next.setIs_praise(!next.is_praise());
                notifyDataSetChanged();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDialog() {
        com.join.mgps.Util.h0.h0(this).m(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
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
    public void startDown(DetailResultBean detialResultBean) {
        DownloadTask downloadtaskDown;
        if (detialResultBean == null || (downloadtaskDown = detialResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < this.posts.size(); i10++) {
            ForumBean.ForumPostsBean forumPostsBean = this.posts.get(i10);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadtaskDown.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadtaskDown);
                z10 |= true;
            }
        }
        if (z10) {
            notifyDataSetChanged();
        }
        if (UtilsMy.y0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.z4(this, downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.A1(downloadtaskDown, detialResultBean);
        if (UtilsMy.o1(this, downloadtaskDown)) {
            return;
        }
        if (detialResultBean.getDown_status() == 5) {
            UtilsMy.l1(this, downloadtaskDown);
        } else {
            UtilsMy.U0(this, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void stopXlistRefreshAndLoadMore() {
        if (this.mg_forum_profile_comment_list.j()) {
            this.mHandler.sendEmptyMessageDelayed(0, 100L);
        } else {
            this.mHandler.sendEmptyMessage(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateCommentData(List<ForumBean.ForumPostsBean> datas, int page) {
        if (page == 1) {
            this.posts.clear();
            this.pageCount = 1;
            stopXlistRefreshAndLoadMore();
        }
        if (datas != null && datas.size() != 0) {
            this.posts.addAll(datas);
        }
        stopXlistRefreshAndLoadMore();
        notifyDataSetChanged();
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask == null) {
            if (from != 4) {
                return;
            }
            receiveUpdate();
        }
        switch (from) {
            case 1:
            case 2:
            case 7:
            case 8:
            case 9:
                receiveStart(downloadTask);
                break;
            case 3:
                receiveDelete(downloadTask);
                break;
            case 4:
                receiveUpdate();
                break;
            case 5:
                receiveSuccess(downloadTask);
                break;
            case 6:
                receiveError(downloadTask);
                break;
        }
    }

    boolean validAccount() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }
}
