package com.join.mgps.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.BaseAppCompatActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.MediaController;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.ForumProfileFavoritesAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestdetialFolowAndBeSpeak;
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
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mg_forum_profile_favorites_activity)
public class ForumProfileFavoritesActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {
    public static final String KEY_MEDIACMD = "key_mediacmd";
    public static final String KEY_MEDIACMDPARAMS = "key_mediacmd_params";
    private static final String TAG = "ForumProfileFavoritesActivity";

    @ViewById
    RelativeLayout actionbarLayout;

    @ViewById
    ImageView back_image;
    View bottom;

    @ViewById
    SimpleDraweeView cover;
    String coverUrl;
    List<DownloadTask> downloadTasks;

    @Extra
    ExtBean extBean;
    private com.join.mgps.dialog.x0 forumDialog;
    List<ForumData.ForumUserFavoritesData> forumPosts;

    @ViewById
    XListView2 forum_posts_list;
    com.join.android.app.component.video.c helper;

    @ViewById
    TextView layout_title;
    volatile List<ForumProfileFavoritesAdapter.k0> listData;

    @ViewById
    LinearLayout loadingLayout;

    @ViewById
    ForumLoadingView loadingView;
    ForumProfileFavoritesAdapter mForumAdapter;
    boolean mFullScreenFlag;

    @ViewById
    PtrClassicFrameLayout mPtrFrame;
    Dialog mUnFollowDialog;
    MediaController mediaController;

    @ViewById
    ImageView play;
    com.join.mgps.customview.e popWindow;
    private com.join.mgps.rpc.e recommendClient;
    com.join.mgps.rpc.e rpcClient;
    com.join.mgps.rpc.i rpcForumClient;

    @ViewById
    MyVideoView video;

    @ViewById
    FrameLayout videoContainer;
    int videoIndex;

    @ViewById
    RelativeLayout videoLayout;
    String videoUrl;
    ForumProfileFavoritesAdapter.u mForumPostsOnClickListener = new k();
    Handler mHandler = new o();
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
    com.join.mgps.customview.e.d iForumExtFuncListener = new g();
    int currentPlayPosition = -1;
    boolean isActive = false;
    int mTop = -1;
    int mOffsetY = -1;
    int videoDefaultHeight = 0;
    com.join.mgps.customview.t mDialog = null;
    GestureDetector mGestureDetector = new GestureDetector(new n());
    Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    private int lastVisiblePosition = 0;
    private int firstVisiblePosition = 0;
    int getGameDownloadInfoStatus = 0;
    boolean downloadGameWhenInfoGotcha = false;

    public enum MediaCmd {
        CMD_PLAY,
        CMD_PLAY_BACKGROUND,
        CMD_PAUSE,
        CMD_STOP,
        CMD_FULLSCREEN,
        CMD_TRANSLATE_Y
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumProfileFavoritesActivity.this.forumDialog.dismiss();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51828b;

        b(final int val$pid) {
            this.f51828b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (com.join.android.app.common.utils.m.j(v10.getContext())) {
                ForumProfileFavoritesActivity.this.deletePosts(v10.getContext(), this.f51828b);
            } else {
                ForumProfileFavoritesActivity forumProfileFavoritesActivity = ForumProfileFavoritesActivity.this;
                forumProfileFavoritesActivity.showToast(forumProfileFavoritesActivity.getString(R.string.net_connect_failed));
            }
            ForumProfileFavoritesActivity.this.forumDialog.dismiss();
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
            super.b();
            ForumProfileFavoritesActivity.this.loading();
        }
    }

    class d extends ForumLoadingView.e {
        d(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }
    }

    class e extends ForumLoadingView.e {
        e(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumProfileFavoritesActivity.this.loading();
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
            super.b();
            ForumProfileFavoritesActivity.this.loading();
        }
    }

    class g implements com.join.mgps.customview.e.d {
        g() {
        }

        @Override // com.join.mgps.customview.e.d
        public void a(int pid) {
        }

        @Override // com.join.mgps.customview.e.d
        public void b(ForumBean.ForumPostsBean bean) {
        }

        @Override // com.join.mgps.customview.e.d
        public void c(ForumBean.ForumPostsBean bean) {
            ForumBean.ForumPostsBean forumPostsBeanByPid = ForumProfileFavoritesActivity.this.getForumPostsBeanByPid(bean.getPid());
            if (forumPostsBeanByPid != null) {
                forumPostsBeanByPid.setIs_favorite(bean.is_favorite());
                if (!bean.is_favorite()) {
                    ForumProfileFavoritesActivity.this.notifyDeletePost(bean.getPid(), true);
                }
            }
            ForumProfileFavoritesActivity.this.notifyAdapterDataChanged();
        }

        @Override // com.join.mgps.customview.e.d
        public void d(int pid, boolean success) {
            ForumProfileFavoritesActivity.this.notifyDeletePost(pid, success);
        }

        @Override // com.join.mgps.customview.e.d
        public void e(ForumBean.ForumPostsBean bean) {
            ForumBean.ForumPostsBean forumPostsBeanByPid = ForumProfileFavoritesActivity.this.getForumPostsBeanByPid(bean.getPid());
            if (forumPostsBeanByPid != null) {
                forumPostsBeanByPid.setBest(bean.getBest());
            }
        }

        @Override // com.join.mgps.customview.e.d
        public void onCancel() {
        }
    }

    class h implements MediaPlayer.OnCompletionListener {
        h() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mp) {
            ForumProfileFavoritesActivity.this.stop();
        }
    }

    class i implements MediaPlayer.OnPreparedListener {
        i() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mp) {
            ForumProfileFavoritesActivity.this.resume();
        }
    }

    class j implements MediaPlayer.OnErrorListener {
        j() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mp, int what, int extra) {
            ForumProfileFavoritesActivity.this.stop();
            com.join.mgps.Util.a3.b(ForumProfileFavoritesActivity.this.video.getContext()).d("视频播放失败");
            return false;
        }
    }

    class k implements ForumProfileFavoritesAdapter.u {
        k() {
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void a(int pid) {
            ForumProfileFavoritesActivity forumProfileFavoritesActivity = ForumProfileFavoritesActivity.this;
            if (!forumProfileFavoritesActivity.isLogined(forumProfileFavoritesActivity)) {
                ForumProfileFavoritesActivity.this.showMessage(forumProfileFavoritesActivity.getString(R.string.forum_user_not_login));
            } else if (!ForumProfileFavoritesActivity.this.validAccount()) {
                ForumProfileFavoritesActivity.this.showDialog();
            } else {
                ForumProfileFavoritesActivity.this.refreshPraiseChanged(pid);
                ForumProfileFavoritesActivity.this.praisePosts(pid);
            }
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void b(int pid) {
            ForumProfileFavoritesActivity forumProfileFavoritesActivity = ForumProfileFavoritesActivity.this;
            forumProfileFavoritesActivity.show(forumProfileFavoritesActivity.getForumPostsBeanByPid(pid));
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void c(int position) {
            ForumProfileFavoritesAdapter.k0.o oVar = (ForumProfileFavoritesAdapter.k0.o) ForumProfileFavoritesActivity.this.listData.get(position).a();
            ForumProfileFavoritesActivity.this.currentPlayPosition = position;
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{ForumProfileFavoritesActivity.this.currentPlayPosition + "", oVar.f60053b, oVar.f60052a});
            ForumProfileFavoritesActivity.this.callbackPlayVideo(bundle);
            ForumProfileFavoritesActivity.this.notifyPlayViewOffset();
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void d(int pid) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(pid);
            com.join.mgps.Util.r0.v0(ForumProfileFavoritesActivity.this, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void e(String gameId) {
            ForumProfileFavoritesActivity forumProfileFavoritesActivity = ForumProfileFavoritesActivity.this;
            forumProfileFavoritesActivity.downloadGameWhenInfoGotcha = true;
            forumProfileFavoritesActivity.downloadGameById(gameId);
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void f(int fid) {
            ForumBean forumBean = new ForumBean();
            forumBean.setFid(fid);
            com.join.mgps.Util.r0.r0(ForumProfileFavoritesActivity.this, forumBean);
        }
    }

    class l implements MyVideoView.h {
        l() {
        }

        @Override // com.join.android.app.component.video.MyVideoView.h
        public boolean a(boolean flag) {
            com.join.mgps.Util.h1.e("onScreenChanged", "fullscreen=" + flag);
            ForumProfileFavoritesActivity.this.fullscreen();
            return false;
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v10.setVisibility(8);
            ForumProfileFavoritesActivity.this.resume();
        }
    }

    class n extends GestureDetector.SimpleOnGestureListener {
        n() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent e10, MotionEvent e11, float velocityX, float velocityY) {
            Fresco.getImagePipeline().Q();
            return super.onFling(e10, e11, velocityX, velocityY);
        }
    }

    class o extends Handler {
        o() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            ForumProfileFavoritesActivity.this.forum_posts_list.v();
            ForumProfileFavoritesActivity.this.forum_posts_list.u();
            if (ForumProfileFavoritesActivity.this.loadingPage == -1) {
                ForumProfileFavoritesActivity.this.forum_posts_list.setNoMore();
            }
        }
    }

    class p implements com.join.mgps.customview.i {
        p() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            ForumProfileFavoritesActivity forumProfileFavoritesActivity = ForumProfileFavoritesActivity.this;
            forumProfileFavoritesActivity.loadForumPostsData(forumProfileFavoritesActivity.pageCount + 1);
            if (ForumProfileFavoritesActivity.this.loadingPage == -1) {
                ForumProfileFavoritesActivity.this.stopXlistRefreshAndLoadMore();
            }
        }
    }

    class q implements com.join.mgps.customview.j {
        q() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.m.j(ForumProfileFavoritesActivity.this)) {
                ForumProfileFavoritesActivity.this.loadingPage = 0;
                ForumProfileFavoritesActivity.this.loadForumPostsData(1);
            } else {
                ForumProfileFavoritesActivity forumProfileFavoritesActivity = ForumProfileFavoritesActivity.this;
                forumProfileFavoritesActivity.showToast(forumProfileFavoritesActivity.getString(R.string.net_connect_failed));
                ForumProfileFavoritesActivity.this.changeLoadingState(17);
                ForumProfileFavoritesActivity.this.stopXlistRefreshAndLoadMore();
            }
        }
    }

    class r implements View.OnTouchListener {
        r() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            ForumProfileFavoritesActivity.this.mGestureDetector.onTouchEvent(event);
            return false;
        }
    }

    class s implements AdapterView.OnItemClickListener {
        s() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = ForumProfileFavoritesActivity.this.mForumAdapter;
            if (forumProfileFavoritesAdapter != null && forumProfileFavoritesAdapter.getItemViewType(position) == ForumProfileFavoritesAdapter.ViewType.GAME_ITEM.ordinal()) {
                ForumProfileFavoritesAdapter.k0.b bVar = (ForumProfileFavoritesAdapter.k0.b) ForumProfileFavoritesActivity.this.mForumAdapter.getItem(position);
                Context context = parent.getContext();
                if (bVar.a() == null || bVar.a().getGame() == null) {
                    return;
                }
                ForumBean.GameInfo gameInfo = new ForumBean.GameInfo();
                gameInfo.setSp_tpl_two_position(bVar.a().getGame().getSp_tpl_two_position());
                gameInfo.setGame_id(bVar.a().getGame().getGame_id());
                gameInfo.setGame_info_tpl_type(bVar.a().getGame().getGame_info_tpl_type());
                com.join.mgps.Util.r0.I0(context, gameInfo);
            }
        }
    }

    class t implements AdapterView.OnItemLongClickListener {
        t() {
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id2) {
            ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = ForumProfileFavoritesActivity.this.mForumAdapter;
            if (forumProfileFavoritesAdapter == null) {
                return false;
            }
            if (forumProfileFavoritesAdapter.getItemViewType(position) != ForumProfileFavoritesAdapter.ViewType.GAME_ITEM.ordinal()) {
                return true;
            }
            ForumProfileFavoritesAdapter.k0.b bVar = (ForumProfileFavoritesAdapter.k0.b) ForumProfileFavoritesActivity.this.mForumAdapter.getItem(position);
            if (bVar.a() == null || bVar.a().getGame() == null) {
                return true;
            }
            ForumProfileFavoritesActivity.this.showUnFollowDialog(bVar.a().getGame().getGame_id());
            return true;
        }
    }

    class u implements com.join.mgps.callbacks.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f51848a;

        u(final String val$gameId) {
            this.f51848a = val$gameId;
        }

        @Override // com.join.mgps.callbacks.e
        public void a(Dialog dialog) {
            ForumProfileFavoritesActivity.this.mUnFollowDialog.dismiss();
            ForumProfileFavoritesActivity.this.changeGameFollow(1, this.f51848a);
        }

        @Override // com.join.mgps.callbacks.e
        public void b(Dialog dialog) {
            dialog.dismiss();
        }
    }

    class v implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51850b;

        v(final String val$gameId) {
            this.f51850b = val$gameId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileFavoritesActivity.this.mUnFollowDialog.dismiss();
            ForumProfileFavoritesActivity.this.changeGameFollow(1, this.f51850b);
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

    private void hideUserUi() {
        this.actionbarLayout.setVisibility(8);
        this.mPtrFrame.setVisibility(8);
    }

    private void initViews() {
        this.layout_title.setText("我的收藏");
        this.forumPosts = new ArrayList();
        this.forum_posts_list.requestFocus();
        this.forum_posts_list.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.forum_posts_list.setPullLoadEnable(new p());
        this.forum_posts_list.setPullRefreshEnable(new q());
        this.listData = new ArrayList();
        this.helper = new com.join.android.app.component.video.c(this, TAG);
        ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = new ForumProfileFavoritesAdapter(this, this.helper);
        this.mForumAdapter = forumProfileFavoritesAdapter;
        forumProfileFavoritesAdapter.M(this.mForumPostsOnClickListener);
        this.forum_posts_list.setAdapter((ListAdapter) this.mForumAdapter);
        this.forum_posts_list.setOnScrollListener(this);
        this.forum_posts_list.setOnTouchListener(new r());
        this.forum_posts_list.setOnItemClickListener(new s());
        this.forum_posts_list.setOnItemLongClickListener(new t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(context);
        return userInfoAccountBean != null && com.join.mgps.Util.t2.i(userInfoAccountBean.getToken());
    }

    private void loadSrvData() {
        loadForumPostsData(1);
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

    private void playVideo() {
        String str = this.videoUrl;
        String str2 = this.coverUrl;
        this.cover.setVisibility(0);
        this.cover.setScaleType(ImageView.ScaleType.FIT_XY);
        com.join.android.app.common.utils.l.h(this.cover, str2);
        LinearLayout linearLayout = this.loadingLayout;
        if (this.mediaController == null) {
            MediaController mediaController = new MediaController(this);
            this.mediaController = mediaController;
            mediaController.q();
            this.mediaController.hide();
            this.mediaController.setVisibility(8);
        }
        if (this.video.isPlaying()) {
            MyVideoView myVideoView = this.video;
            if (myVideoView != null) {
                myVideoView.I();
                linearLayout.setVisibility(8);
            }
            MediaController mediaController2 = this.mediaController;
            if (mediaController2 != null) {
                mediaController2.setVisibility(8);
            }
        }
        this.video.setVisibility(0);
        this.mediaController.setAnchorView(this.video);
        this.mediaController.setMediaPlayer(this.video);
        this.video.setMediaController(this.mediaController);
        this.video.requestFocus();
        linearLayout.setVisibility(0);
        if (!this.video.E() || this.video.isPlaying()) {
            this.video.setVideoPath(str);
            com.join.mgps.Util.h1.e("play a new video ...");
        } else {
            resume();
            com.join.mgps.Util.h1.e("play a last video ...");
        }
        this.video.setOnCompletionListener(new h());
        this.video.setOnPreparedListener(new i());
        this.video.setOnErrorListener(new j());
        this.video.setScreenChangedListener(new l());
        this.play.setOnClickListener(new m());
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.downloadTasks.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.downloadTasksMap.remove(next.getCrc_link_type_val());
                it2.remove();
                updateDataSet(downloadTask, 2);
                break;
            }
        }
        this.forum_posts_list.requestLayout();
        notifyAdapterDataChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            updateDataSet(downloadTask, 3);
            notifyAdapterDataChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.downloadTasks, downloadTask);
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map != null) {
            if (map.containsKey(downloadTask.getCrc_link_type_val())) {
                this.downloadTasksMap.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            } else {
                this.downloadTasks.add(downloadTask);
                this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        updateDataSet(downloadTask, 0);
        notifyAdapterDataChanged();
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
        updateDataSet(downloadTask, 1);
        DownloadTask downloadTask2 = this.downloadTasksMap.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.forum_posts_list.requestLayout();
        notifyAdapterDataChanged();
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

    /* JADX WARN: Code duplicated, block: B:64:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:66:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:72:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:73:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:81:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:82:0x0204  */
    /* JADX WARN: Code duplicated, block: B:84:0x020e  */
    /* JADX WARN: Code duplicated, block: B:85:0x0213  */
    /* JADX WARN: Code duplicated, block: B:87:0x0216  */
    /* JADX WARN: Code duplicated, block: B:88:0x0228  */
    /* JADX WARN: Code duplicated, block: B:93:0x0247  */
    /* JADX WARN: Instruction removed from duplicated block: B:93:0x0247, please report this as an issue */
    private void setPostViewData(ForumBean.ForumPostsBean posts) {
        boolean z10;
        boolean z11;
        boolean z12;
        List<ForumBean.ForumPostsBean.ResBean> rs_list;
        ArrayList arrayList;
        boolean zIsAttach_video;
        String raw;
        String thumb;
        int i10;
        String message;
        ForumBean.ForumPostsBean.ResBean resBean;
        if (com.join.mgps.Util.t2.h(posts.getSubject()) || com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            z10 = false;
        } else {
            this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_SUBJECT, new ForumProfileFavoritesAdapter.k0.f(false, posts.getBest() > 0, posts.getSubject(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname())));
            z10 = true;
        }
        if (z10) {
            boolean z13 = posts.getSubject() == null || com.join.mgps.Util.t2.h(posts.getSubject().trim());
            if (!com.join.mgps.Util.t2.h(posts.getMessage()) && !com.join.mgps.Util.t2.h(posts.getMessage().trim())) {
                SpannableStringBuilder spannableStringBuilderM0 = com.join.mgps.Util.r0.m0(this, posts.getMessage(), z13, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info());
                z11 = true;
                ForumProfileFavoritesAdapter.k0.e eVar = new ForumProfileFavoritesAdapter.k0.e(false, z13 && posts.getBest() > 0, posts.getMessage(), posts.getPid(), 0, z13 && posts.getHelp() > 0, posts.getHelp_money() + "", z13 ? posts.getTag_info() : null, z13, spannableStringBuilderM0);
                this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_MESSAGE, eVar));
                this.mForumAdapter.j().e(eVar);
            }
            if (posts.getRelation_game() != null || TextUtils.isEmpty(posts.getRelation_game().getGame_id())) {
                z12 = false;
            } else {
                z12 = true;
            }
            if (!z12) {
                rs_list = posts.getRs_list();
                arrayList = new ArrayList();
                zIsAttach_video = posts.isAttach_video();
                raw = r15;
                thumb = raw;
                for (i10 = 0; rs_list != null && i10 < rs_list.size(); i10++) {
                    resBean = rs_list.get(i10);
                    if (resBean.getType().equals("pic")) {
                        arrayList.add(resBean.getRaw());
                    } else if (!resBean.getType().equals("video") && com.join.mgps.Util.t2.h(raw)) {
                        thumb = resBean.getThumb();
                        raw = resBean.getRaw();
                    }
                }
                if (com.join.mgps.Util.t2.i(posts.getSubject())) {
                    message = posts.getSubject();
                } else if (com.join.mgps.Util.t2.i(posts.getMessage())) {
                    message = posts.getMessage();
                } else {
                    message = "";
                }
                if (zIsAttach_video) {
                    this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_VIDEO, new ForumProfileFavoritesAdapter.k0.g(thumb, raw, message)));
                } else if (rs_list != null && rs_list.size() != 0) {
                    this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_IMGS, new ForumProfileFavoritesAdapter.k0.d(rs_list, arrayList, posts.getPid())));
                }
            }
            if (z12) {
                preLoadDownloadTask(posts.getRelation_game());
                this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_GAME, new ForumProfileFavoritesAdapter.k0.i(z11, posts.getPid() + r15, posts.getRelation_game())));
            }
            this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_FOOTER, new ForumProfileFavoritesAdapter.k0.c(1, posts.getAvatar_src(), posts.getLast_comment_time(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
        }
        this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_SUBJECT, new ForumProfileFavoritesAdapter.k0.f(false, posts.getBest() > 0, posts.getMessage(), posts.getPid(), 0, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname())));
        z11 = true;
        if (posts.getRelation_game() != null) {
            z12 = false;
        } else {
            z12 = false;
        }
        if (!z12) {
            rs_list = posts.getRs_list();
            arrayList = new ArrayList();
            zIsAttach_video = posts.isAttach_video();
            raw = r15;
            thumb = raw;
            while (rs_list != null) {
                resBean = rs_list.get(i10);
                if (resBean.getType().equals("pic")) {
                    arrayList.add(resBean.getRaw());
                } else if (!resBean.getType().equals("video")) {
                }
            }
            if (com.join.mgps.Util.t2.i(posts.getSubject())) {
                message = posts.getSubject();
            } else if (com.join.mgps.Util.t2.i(posts.getMessage())) {
                message = posts.getMessage();
            } else {
                message = "";
            }
            if (zIsAttach_video) {
                this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_VIDEO, new ForumProfileFavoritesAdapter.k0.g(thumb, raw, message)));
            } else if (rs_list != null) {
                this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_IMGS, new ForumProfileFavoritesAdapter.k0.d(rs_list, arrayList, posts.getPid())));
            }
        }
        if (z12) {
            preLoadDownloadTask(posts.getRelation_game());
            this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_GAME, new ForumProfileFavoritesAdapter.k0.i(z11, posts.getPid() + r15, posts.getRelation_game())));
        }
        this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_FOOTER, new ForumProfileFavoritesAdapter.k0.c(1, posts.getAvatar_src(), posts.getLast_comment_time(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
    }

    private void setPostViewData1(ForumBean.ForumPostsBean posts) {
        String message = "";
        if (posts.getSubject() != null && !com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_SUBJECT, new ForumProfileFavoritesAdapter.k0.m(posts.getBest() > 0, posts.getSubject(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info())));
        }
        boolean z10 = posts.getSubject() == null || com.join.mgps.Util.t2.h(posts.getSubject().trim());
        if (!com.join.mgps.Util.t2.h(posts.getMessage()) && !com.join.mgps.Util.t2.h(posts.getMessage().trim())) {
            SpannableStringBuilder spannableStringBuilderM0 = com.join.mgps.Util.r0.m0(this, posts.getMessage(), z10, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info());
            ForumProfileFavoritesAdapter.k0.l lVar = new ForumProfileFavoritesAdapter.k0.l(z10 && posts.getBest() > 0, posts.getMessage(), posts.getPid(), posts.getFid(), z10 && posts.getHelp() > 0, posts.getHelp_money() + "", z10 ? posts.getTag_info() : null, spannableStringBuilderM0);
            this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_MESSAGE, lVar));
            this.mForumAdapter.j().e(lVar);
        }
        List<ForumBean.ForumPostsBean.ResBean> rs_list = posts.getRs_list();
        ArrayList arrayList = new ArrayList();
        boolean zIsAttach_video = posts.isAttach_video();
        String thumb = "";
        String raw = thumb;
        for (int i10 = 0; rs_list != null && i10 < rs_list.size(); i10++) {
            ForumBean.ForumPostsBean.ResBean resBean = rs_list.get(i10);
            if (resBean.getType().equals("pic")) {
                arrayList.add(resBean.getRaw());
            } else if (resBean.getType().equals("video") && com.join.mgps.Util.t2.h(raw)) {
                thumb = resBean.getThumb();
                raw = resBean.getRaw();
            }
        }
        if (com.join.mgps.Util.t2.i(posts.getSubject())) {
            message = posts.getSubject();
        } else if (com.join.mgps.Util.t2.i(posts.getMessage())) {
            message = posts.getMessage();
        }
        if (zIsAttach_video) {
            this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_VIDEO_THUMBNAIL, new ForumProfileFavoritesAdapter.k0.o(thumb, raw, message)));
        } else if (rs_list != null && rs_list.size() != 0) {
            this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_IMAGE_THUMBNAIL, new ForumProfileFavoritesAdapter.k0.k(rs_list, arrayList, posts.getPid())));
        }
        this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_FOOTER, new ForumProfileFavoritesAdapter.k0.h(posts.getPid(), posts.getFid(), posts.getFname(), posts.getView(), posts.getCommit(), posts.getPraise(), posts.is_praise(), false)));
    }

    private void setPostViewsData(List<ForumData.ForumUserFavoritesData> posts) {
        if (posts == null || posts.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < posts.size(); i10++) {
            ForumData.ForumUserFavoritesData forumUserFavoritesData = posts.get(i10);
            if (forumUserFavoritesData.getType() == 1) {
                setFavoriteItemHeaderViewData(forumUserFavoritesData);
                setGameItemViewData(forumUserFavoritesData);
            } else if (forumUserFavoritesData.getType() == 2) {
                ForumBean.ForumPostsBean post = forumUserFavoritesData.getPost();
                if (post.is_favorite()) {
                    setFavoriteItemHeaderViewData(forumUserFavoritesData);
                    setPostViewData(post);
                }
            }
        }
    }

    private void showPromptDialog(final int pid) {
        if (this.forumDialog == null) {
            com.join.mgps.dialog.x0 x0Var = new com.join.mgps.dialog.x0(this);
            this.forumDialog = x0Var;
            x0Var.f("确定");
            this.forumDialog.d("取消");
            this.forumDialog.b(8);
            this.forumDialog.g("确定要删除该帖吗？").c(new a());
        }
        this.forumDialog.e(new b(pid));
        if (this.forumDialog.isShowing()) {
            return;
        }
        this.forumDialog.show();
    }

    private void showUserUi() {
        this.actionbarLayout.setVisibility(0);
        this.mPtrFrame.setVisibility(0);
    }

    private void updateProgressPartly() {
        XListView2 xListView2 = this.forum_posts_list;
        if (this.mForumAdapter == null) {
            return;
        }
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisiblePosition; i10++) {
            if (this.mForumAdapter.getItemViewType(i10) == ForumProfileFavoritesAdapter.ViewType.GAME_ITEM.ordinal()) {
                ForumProfileFavoritesAdapter.k0.b bVar = (ForumProfileFavoritesAdapter.k0.b) this.mForumAdapter.getItem(i10);
                if (bVar.a() != null && bVar.a().getGame() != null) {
                    DownloadTask downloadTask = bVar.a().getDownloadTask();
                    bVar.a().getGame().getGame_id();
                    if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                        View childAt = xListView2.getChildAt(i10 - this.firstVisiblePosition);
                        if (childAt.getTag() instanceof ForumProfileFavoritesAdapter.w) {
                            DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                            updateDownloadItemProgress((ForumProfileFavoritesAdapter.w) childAt.getTag(), downloadTask, downloadTaskG);
                            updateDataSet(downloadTaskG, 4);
                        }
                    }
                }
            }
        }
    }

    @AfterViews
    void afterViews() {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        try {
            initDownloadTaskInfo();
            initViews();
            loading();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void back_image() {
        finish();
    }

    public void callbackPlayVideo(Bundle arg) {
        if (arg == null) {
            return;
        }
        String string = arg.getString("key_mediacmd");
        Object[] objArr = (Object[]) arg.get("key_mediacmd_params");
        com.join.mgps.Util.h1.e("callbackPlayVideo", "cmd=" + string, "params=" + objArr.toString());
        if (string.equals(MediaCmd.CMD_PLAY.name())) {
            String str = null;
            String str2 = null;
            for (int i10 = 0; i10 < objArr.length; i10++) {
                String str3 = (String) objArr[i10];
                if (i10 == 0) {
                    int i11 = Integer.parseInt(str3);
                    if (i11 == this.videoIndex) {
                        return;
                    }
                    stop();
                    this.videoIndex = i11;
                } else if (i10 == 1) {
                    str = str3;
                } else if (i10 == 2) {
                    str2 = str3;
                }
            }
            com.join.mgps.Util.h1.e("CMD_PLAY", "videoUrl=" + str, "coverUrl=" + str2);
            this.videoContainer.setVisibility(0);
            this.isActive = true;
            setVideoContainerParams();
            play(str, str2);
            return;
        }
        if (string.equals(MediaCmd.CMD_PLAY_BACKGROUND.name())) {
            if (this.videoIndex == -1) {
                return;
            }
            if (Boolean.parseBoolean((String) objArr[0])) {
                this.videoContainer.setVisibility(8);
                this.isActive = false;
                stop();
                return;
            } else {
                if (this.videoIndex == -1) {
                    return;
                }
                this.videoContainer.setVisibility(0);
                this.isActive = true;
                return;
            }
        }
        if (string.equals(MediaCmd.CMD_PAUSE.name())) {
            pause();
            return;
        }
        if (string.equals(MediaCmd.CMD_STOP.name())) {
            stop();
            return;
        }
        if (string.equals(MediaCmd.CMD_FULLSCREEN.name())) {
            String str4 = "false";
            for (int i12 = 0; i12 < objArr.length; i12++) {
                if (i12 == 0) {
                    str4 = (String) objArr[0];
                }
                if (i12 == 1) {
                }
            }
            Boolean.parseBoolean(str4);
            fullscreen();
            return;
        }
        if (string.equals(MediaCmd.CMD_TRANSLATE_Y.name())) {
            String str5 = "0";
            String str6 = "0";
            for (int i13 = 0; i13 < objArr.length; i13++) {
                if (i13 == 0) {
                    str5 = (String) objArr[0];
                }
                if (i13 == 1) {
                    str6 = (String) objArr[1];
                }
            }
            int i14 = Integer.parseInt(str5);
            int i15 = Integer.parseInt(str6);
            com.join.mgps.Util.h1.e("CMD_TRANSLATE_Y", "top=" + i14, "offset=" + i15);
            offsetContainer(i14, i15);
        }
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
    @Background
    public void changeGameFollow(int type, String gameId) {
        String str;
        ResultMainBean resultMainBeanJ1;
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d(getString(R.string.network_conn_failed));
            return;
        }
        UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        int uid = accountData != null ? accountData.getUid() : 0;
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
            str = packageInfo.versionCode + "_" + packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            str = "";
        }
        RequestdetialFolowAndBeSpeak requestdetialFolowAndBeSpeak = new RequestdetialFolowAndBeSpeak();
        requestdetialFolowAndBeSpeak.setApp_ver(str);
        requestdetialFolowAndBeSpeak.setGame_id(gameId);
        requestdetialFolowAndBeSpeak.setUid(uid);
        requestdetialFolowAndBeSpeak.setMobile(accountData.getMobile());
        CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
        if (type == 1) {
            resultMainBeanJ1 = this.rpcClient.j1(detialFollowAnd);
        } else if (type == 2) {
            resultMainBeanJ1 = this.rpcClient.n(detialFollowAnd);
        } else if (type != 3) {
            resultMainBeanJ1 = type != 4 ? null : this.rpcClient.M0(detialFollowAnd);
        } else {
            resultMainBeanJ1 = this.rpcClient.g(detialFollowAnd);
        }
        if (resultMainBeanJ1 != null) {
            updateUnFollowResult(resultMainBeanJ1, type, gameId);
        } else {
            com.join.mgps.Util.a3.b(this).d(getString(R.string.game_unfollow_failed));
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
            this.loadingView.setFailedMsg("网络连接失败，再试试吧~");
            ForumLoadingView forumLoadingView = this.loadingView;
            forumLoadingView.setListener(new c(forumLoadingView));
            this.loadingView.j(9);
            return;
        }
        if (checkFailed(22)) {
            this.loadingState = 16;
            this.loadingView.setFailedMsg("还没有收藏内容~");
            ForumLoadingView forumLoadingView2 = this.loadingView;
            forumLoadingView2.setListener(new d(forumLoadingView2));
            this.loadingView.j(10);
            this.loadingView.setReloadingVisibility(0);
            this.loadingView.setFailedReloadingRes(R.drawable.papa_loading_null);
            return;
        }
        if (checkFailed(31) || checkFailed(26)) {
            this.loadingState = 16;
            this.loadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView3 = this.loadingView;
            forumLoadingView3.setListener(new e(forumLoadingView3));
            this.loadingView.j(16);
            return;
        }
        if (checkFailed(17)) {
            this.loadingState = 16;
            this.loadingView.setFailedMsg("网络连接失败，再试试吧~");
            ForumLoadingView forumLoadingView4 = this.loadingView;
            forumLoadingView4.setListener(new f(forumLoadingView4));
            this.loadingView.j(9);
        }
    }

    boolean checkFailed(int val) {
        return (this.loadingState & val) == val;
    }

    void clearImageMemoryLruCache() {
        if (this.listData == null) {
            return;
        }
        System.gc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void deletePosts(Context context, int pid) {
        try {
            if (com.join.mgps.Util.r0.c0(context, pid) != null) {
                ForumResponse<ForumData.ForumPostsDeleteData> forumResponseI = this.rpcForumClient.I(com.join.mgps.Util.r0.c0(context, pid).getParams());
                ForumData.ForumPostsDeleteData data = forumResponseI != null ? forumResponseI.getData() : null;
                notifyDeletePost(pid, data != null && data.isResult());
            }
        } catch (Exception unused) {
            notifyDeletePost(pid, false);
        }
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

    void fullscreen() {
        if (!(getResources().getConfiguration().orientation == 2)) {
            this.mFullScreenFlag = true;
            hideUserUi();
            resetVideoContainerParams();
        } else {
            this.mFullScreenFlag = false;
            showUserUi();
            setVideoContainerParams();
            offsetContainer(0, 0);
        }
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

    ForumBean.ForumPostsBean getForumPostsBeanByPid(int pid) {
        List<ForumData.ForumUserFavoritesData> list = this.forumPosts;
        ForumBean.ForumPostsBean post = null;
        if (list == null) {
            return null;
        }
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : list) {
            if (forumUserFavoritesData.getType() == 2 && forumUserFavoritesData.getPost() != null) {
                post = forumUserFavoritesData.getPost();
                if (pid == post.getPid()) {
                    break;
                }
            }
        }
        return post;
    }

    ForumData.ForumUserFavoritesData getGameItem(String crcLinkTypeVal) {
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.forumPosts) {
            if (forumUserFavoritesData.getType() == 1 && forumUserFavoritesData.getGame() != null && !TextUtils.isEmpty(forumUserFavoritesData.getGame().getGame_id()) && forumUserFavoritesData.getGame().getGame_id().equals(crcLinkTypeVal)) {
                return forumUserFavoritesData;
            }
        }
        return null;
    }

    int getVideoDefaultHeight(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.videoDefaultHeight == 0) {
            Resources resources = context.getResources();
            this.videoDefaultHeight = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.videoDefaultHeight;
    }

    void initDownloadTaskInfo() {
        try {
            com.join.mgps.Util.j0.a().d(this);
            getDownloadTaskInfo();
            List<DownloadTask> listD = q5.f.M().d();
            this.downloadTasks = listD;
            if (listD != null && listD.size() > 0) {
                for (DownloadTask downloadTask : this.downloadTasks) {
                    this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
            this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void initFields() {
    }

    boolean isPlayPositionVisible() {
        if (this.currentPlayPosition == -1) {
            return false;
        }
        int firstVisiblePosition = this.forum_posts_list.getFirstVisiblePosition();
        int lastVisiblePosition = this.forum_posts_list.getLastVisiblePosition();
        int i10 = this.currentPlayPosition;
        return i10 >= firstVisiblePosition - 0 && i10 <= lastVisiblePosition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadDBData() {
        loadDBForumWelcomePostsData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadDBForumWelcomePostsData() {
        try {
            ForumTable forumTableO = t6.t.p().o(ForumBean.ForumEvent.MyProfileFavorites);
            if (com.join.mgps.Util.t2.h(forumTableO.getArgs1())) {
                changeLoadingState(18);
                return;
            }
            ForumData.ForumUserFavoritesDatas forumUserFavoritesDatasJ = com.join.mgps.Util.r0.J(forumTableO.getArgs1());
            List<ForumData.ForumUserFavoritesData> favorites_list = forumUserFavoritesDatasJ != null ? forumUserFavoritesDatasJ.getFavorites_list() : null;
            if (favorites_list == null || favorites_list.size() == 0) {
                changeLoadingState(18);
                return;
            }
            int iCeil = (int) Math.ceil((favorites_list.size() * 1.0f) / com.join.mgps.Util.r0.f49989d);
            this.pageCount = iCeil;
            processPostsInfo(favorites_list, iCeil);
            changeLoadingState(32);
        } catch (Exception e10) {
            changeLoadingState(18);
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:23:0x003d A[Catch: all -> 0x001f, Exception -> 0x0022, TryCatch #1 {Exception -> 0x0022, blocks: (B:11:0x001b, B:21:0x0033, B:23:0x003d, B:25:0x0054, B:27:0x005c, B:29:0x0061, B:31:0x0067, B:33:0x006d, B:35:0x0075, B:38:0x007d, B:39:0x0083, B:34:0x0073, B:46:0x0093, B:49:0x009b, B:20:0x002f), top: B:70:0x001b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0054 A[Catch: all -> 0x001f, Exception -> 0x0022, TryCatch #1 {Exception -> 0x0022, blocks: (B:11:0x001b, B:21:0x0033, B:23:0x003d, B:25:0x0054, B:27:0x005c, B:29:0x0061, B:31:0x0067, B:33:0x006d, B:35:0x0075, B:38:0x007d, B:39:0x0083, B:34:0x0073, B:46:0x0093, B:49:0x009b, B:20:0x002f), top: B:70:0x001b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x005c A[Catch: all -> 0x001f, Exception -> 0x0022, TryCatch #1 {Exception -> 0x0022, blocks: (B:11:0x001b, B:21:0x0033, B:23:0x003d, B:25:0x0054, B:27:0x005c, B:29:0x0061, B:31:0x0067, B:33:0x006d, B:35:0x0075, B:38:0x007d, B:39:0x0083, B:34:0x0073, B:46:0x0093, B:49:0x009b, B:20:0x002f), top: B:70:0x001b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0061 A[Catch: all -> 0x001f, Exception -> 0x0022, TryCatch #1 {Exception -> 0x0022, blocks: (B:11:0x001b, B:21:0x0033, B:23:0x003d, B:25:0x0054, B:27:0x005c, B:29:0x0061, B:31:0x0067, B:33:0x006d, B:35:0x0075, B:38:0x007d, B:39:0x0083, B:34:0x0073, B:46:0x0093, B:49:0x009b, B:20:0x002f), top: B:70:0x001b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0073 A[Catch: all -> 0x001f, Exception -> 0x0022, TryCatch #1 {Exception -> 0x0022, blocks: (B:11:0x001b, B:21:0x0033, B:23:0x003d, B:25:0x0054, B:27:0x005c, B:29:0x0061, B:31:0x0067, B:33:0x006d, B:35:0x0075, B:38:0x007d, B:39:0x0083, B:34:0x0073, B:46:0x0093, B:49:0x009b, B:20:0x002f), top: B:70:0x001b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0083 A[Catch: all -> 0x001f, Exception -> 0x0022, TRY_LEAVE, TryCatch #1 {Exception -> 0x0022, blocks: (B:11:0x001b, B:21:0x0033, B:23:0x003d, B:25:0x0054, B:27:0x005c, B:29:0x0061, B:31:0x0067, B:33:0x006d, B:35:0x0075, B:38:0x007d, B:39:0x0083, B:34:0x0073, B:46:0x0093, B:49:0x009b, B:20:0x002f), top: B:70:0x001b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0089  */
    /* JADX WARN: Code duplicated, block: B:43:0x008d  */
    /* JADX WARN: Code duplicated, block: B:46:0x0093 A[Catch: all -> 0x001f, Exception -> 0x0022, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0022, blocks: (B:11:0x001b, B:21:0x0033, B:23:0x003d, B:25:0x0054, B:27:0x005c, B:29:0x0061, B:31:0x0067, B:33:0x006d, B:35:0x0075, B:38:0x007d, B:39:0x0083, B:34:0x0073, B:46:0x0093, B:49:0x009b, B:20:0x002f), top: B:70:0x001b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x009b A[Catch: all -> 0x001f, Exception -> 0x0022, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0022, blocks: (B:11:0x001b, B:21:0x0033, B:23:0x003d, B:25:0x0054, B:27:0x005c, B:29:0x0061, B:31:0x0067, B:33:0x006d, B:35:0x0075, B:38:0x007d, B:39:0x0083, B:34:0x0073, B:46:0x0093, B:49:0x009b, B:20:0x002f), top: B:70:0x001b, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ad  */
    @Background
    public void loadForumPostsData(int page) {
        String versionAndVersionName;
        UserInfo userInfoT;
        ForumResponse<ForumData.ForumUserFavoritesDatas> forumResponseX;
        ForumData.ForumUserFavoritesDatas data;
        List<ForumData.ForumUserFavoritesData> favorites_list;
        if (!com.join.android.app.common.utils.m.j(this)) {
            if (this.loadingPage != -1) {
                this.loadingPage = 0;
            }
            showToast(getString(R.string.net_connect_failed));
            changeLoadingState(17);
            stopXlistRefreshAndLoadMore();
            return;
        }
        int i10 = this.loadingPage;
        if (page == i10) {
            return;
        }
        if (i10 == -1) {
            stopXlistRefreshAndLoadMore();
        }
        this.loadingPage = page;
        try {
            if (page > 1) {
                try {
                    showMoreLoading();
                    try {
                        RequestBeanUtil.getInstance(this);
                        versionAndVersionName = RequestBeanUtil.getVersionAndVersionName();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        versionAndVersionName = "";
                    }
                    userInfoT = com.join.mgps.Util.r0.T(this);
                    if (com.join.mgps.Util.r0.Y0(this)) {
                        forumResponseX = this.rpcForumClient.X(userInfoT.getUid(), userInfoT.getToken(), page, com.join.mgps.Util.r0.f49989d, "", versionAndVersionName, 2);
                        if (forumResponseX != null) {
                            this.loadingPage = 0;
                            this.loadingPage = 0;
                            stopXlistRefreshAndLoadMore();
                            return;
                        }
                        data = forumResponseX.getData();
                        if (page == 1) {
                            com.join.mgps.Util.r0.s1(data);
                        }
                        if (data != null) {
                            if (this.loadingPage != -1) {
                                this.loadingPage = 0;
                            }
                            stopXlistRefreshAndLoadMore();
                            return;
                        }
                        favorites_list = data.getFavorites_list();
                        if (favorites_list != null || favorites_list.size() == 0) {
                            this.loadingPage = -1;
                        } else {
                            this.pageCount = page;
                            processPostsInfo(favorites_list, page);
                        }
                        if (favorites_list.size() == 0 || page != 1) {
                            changeLoadingState(32);
                        } else {
                            changeLoadingState(20);
                        }
                    } else {
                        changeLoadingState(24);
                    }
                    if (this.loadingPage != -1) {
                        this.loadingPage = 0;
                    }
                } catch (Exception e11) {
                    changeLoadingState(24);
                    e11.printStackTrace();
                    if (this.loadingPage != -1) {
                        this.loadingPage = 0;
                    }
                }
            } else {
                RequestBeanUtil.getInstance(this);
                versionAndVersionName = RequestBeanUtil.getVersionAndVersionName();
                userInfoT = com.join.mgps.Util.r0.T(this);
                if (com.join.mgps.Util.r0.Y0(this)) {
                    forumResponseX = this.rpcForumClient.X(userInfoT.getUid(), userInfoT.getToken(), page, com.join.mgps.Util.r0.f49989d, "", versionAndVersionName, 2);
                    if (forumResponseX != null) {
                        this.loadingPage = 0;
                        this.loadingPage = 0;
                        stopXlistRefreshAndLoadMore();
                        return;
                    }
                    data = forumResponseX.getData();
                    if (page == 1) {
                        com.join.mgps.Util.r0.s1(data);
                    }
                    if (data != null) {
                        if (this.loadingPage != -1) {
                            this.loadingPage = 0;
                        }
                        stopXlistRefreshAndLoadMore();
                        return;
                    } else {
                        favorites_list = data.getFavorites_list();
                        if (favorites_list != null) {
                            this.loadingPage = -1;
                        } else {
                            this.loadingPage = -1;
                        }
                        if (favorites_list.size() == 0) {
                            changeLoadingState(32);
                        } else {
                            changeLoadingState(32);
                        }
                    }
                } else {
                    changeLoadingState(24);
                }
                if (this.loadingPage != -1) {
                    this.loadingPage = 0;
                }
            }
            stopXlistRefreshAndLoadMore();
        } catch (Throwable th) {
            if (this.loadingPage != -1) {
                this.loadingPage = 0;
            }
            stopXlistRefreshAndLoadMore();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyAdapter() {
        this.mForumAdapter.P(this.listData);
        this.mForumAdapter.notifyDataSetChanged();
    }

    synchronized void notifyAdapterDataChanged() {
        if (this.listData == null) {
            this.listData = new ArrayList();
        }
        this.listData.clear();
        setPostViewsData(this.forumPosts);
        notifyAdapter();
        List<ForumData.ForumUserFavoritesData> list = this.forumPosts;
        if (list == null || list.size() == 0) {
            this.loadingState = 0;
            this.loadingView.m();
            changeLoadingState(22);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyDeletePost(int pid, boolean success) {
        if (!success) {
            com.join.mgps.Util.a3.b(this).d("删除失败");
            return;
        }
        List<ForumData.ForumUserFavoritesData> list = this.forumPosts;
        if (list != null && list.size() != 0) {
            for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.forumPosts) {
                if (forumUserFavoritesData.getType() == 2 && forumUserFavoritesData.getPost() != null && forumUserFavoritesData.getPost().getPid() == pid) {
                    this.forumPosts.remove(forumUserFavoritesData);
                    stopXlistRefreshAndLoadMore();
                    notifyAdapterDataChanged();
                    break;
                }
            }
        }
        ForumData.ForumUserFavoritesData forumUserFavoritesData2 = new ForumData.ForumUserFavoritesData();
        forumUserFavoritesData2.setType(2);
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        forumPostsBean.setPid(pid);
        forumUserFavoritesData2.setPost(forumPostsBean);
        com.join.mgps.Util.r0.h1(forumUserFavoritesData2);
        com.join.mgps.Util.a3.b(this).d("删除成功");
    }

    void notifyPlayViewOffset() {
        int i10 = this.currentPlayPosition;
        if (i10 == -1) {
            return;
        }
        int firstVisiblePosition = this.forum_posts_list.getFirstVisiblePosition();
        int lastVisiblePosition = this.forum_posts_list.getLastVisiblePosition();
        int i11 = this.currentPlayPosition;
        if (i11 < firstVisiblePosition + 0 || i11 > lastVisiblePosition) {
            playBackground(true);
        } else {
            playBackground(false);
            i10 = 0 + (this.currentPlayPosition - firstVisiblePosition);
        }
        View childAt = this.forum_posts_list.getChildAt(i10);
        if (childAt != null) {
            int bottom = this.actionbarLayout.getBottom();
            this.forum_posts_list.getTop();
            int top = childAt.getTop();
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_TRANSLATE_Y.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{bottom + "", top + ""});
            callbackPlayVideo(bundle);
        }
    }

    void notifyUpdateUi(DownloadTask downloadTask, int event) {
        ForumBean.ForumPostsBean post;
        boolean z10 = false;
        for (int i10 = 0; i10 < this.forumPosts.size(); i10++) {
            ForumData.ForumUserFavoritesData forumUserFavoritesData = this.forumPosts.get(i10);
            if (forumUserFavoritesData.getType() == 1) {
                CollectionBeanSub game = forumUserFavoritesData.getGame();
                if (game != null && !TextUtils.isEmpty(game.getGame_id()) && game.getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                    forumUserFavoritesData.setDownloadTask(downloadTask);
                    z10 |= true;
                }
            } else if (forumUserFavoritesData.getType() == 2 && (post = forumUserFavoritesData.getPost()) != null && post.getRelation_game() != null && !TextUtils.isEmpty(post.getRelation_game().getGame_id()) && post.getRelation_game().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                post.getRelation_game().setDownloadTask(downloadTask);
                z10 |= true;
            }
        }
        if (z10) {
            notifyAdapterDataChanged();
        }
    }

    void offsetContainer(int top, int offsetY) {
        if (getResources().getConfiguration().orientation == 2) {
            ViewCompat.setTranslationY(this.videoContainer, -this.videoContainer.getTop());
            return;
        }
        this.mTop = top;
        this.mOffsetY = offsetY;
        com.join.mgps.Util.h1.e("offsetContainer", "mTop=" + this.mTop, "mOffsetY=" + this.mOffsetY);
        ViewCompat.setTranslationY(this.videoContainer, (float) this.mOffsetY);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == 3) {
            refreshDateModify(data);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        videoConfigurationChanged(newConfig);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.android.app.component.video.c cVar = this.helper;
        if (cVar != null) {
            cVar.F();
        }
        com.join.mgps.Util.j0.a().e(this);
        clearImageMemoryLruCache();
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        changeDownloadTaskNumber(downloadTaskA, downloadTaskEvent.c());
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
                Map<String, DownloadTask> map = this.downloadTasksMap;
                if (map == null || map.isEmpty()) {
                    return;
                }
                updateProgressPartly();
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

    @Override // com.BaseAppCompatActivity
    public void onFavoriteChanged(int pid, boolean isFavorite) {
        super.onFavoriteChanged(pid, isFavorite);
        notifyDeletePost(pid, !isFavorite);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4 || event.getRepeatCount() != 0 || getResources().getConfiguration().orientation != 2) {
            return super.onKeyDown(keyCode, event);
        }
        this.mFullScreenFlag = true;
        toggleFullScreen();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        stop();
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
        ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = this.mForumAdapter;
        if (forumProfileFavoritesAdapter != null) {
            forumProfileFavoritesAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        com.join.android.app.component.video.c cVar = this.helper;
        if (cVar != null) {
            cVar.H();
        }
        super.onResume();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.lastVisiblePosition = (firstVisibleItem + visibleItemCount) - 1;
        this.firstVisiblePosition = firstVisibleItem;
        videoScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
        this.helper.e(view, firstVisibleItem, visibleItemCount, totalItemCount);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        videoScrollStateChanged(view, scrollState);
        this.helper.i(view, scrollState);
    }

    void pause() {
        MyVideoView myVideoView = this.video;
        if (myVideoView.isPlaying() && (myVideoView != null)) {
            this.video.pause();
            this.play.setVisibility(0);
        }
    }

    void play(String videoUrl, String coverUrl) {
        String str = this.videoUrl;
        if (str != null && str.equals(videoUrl) && this.video.isPlaying()) {
            pause();
            return;
        }
        MyVideoView myVideoView = this.video;
        if (myVideoView != null) {
            if (myVideoView.E() && this.videoUrl.equals(videoUrl)) {
                this.video.seekTo(0);
                resume();
            } else {
                this.video.G();
            }
        }
        this.videoUrl = videoUrl;
        this.coverUrl = coverUrl;
        if (com.join.mgps.Util.t2.h(videoUrl)) {
            stop();
            return;
        }
        this.cover.setVisibility(8);
        this.play.setVisibility(8);
        playVideo();
    }

    void playBackground(boolean flag) {
        Bundle bundle = new Bundle();
        bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY_BACKGROUND.name());
        bundle.putStringArray("key_mediacmd_params", new String[]{String.valueOf(flag)});
        callbackPlayVideo(bundle);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void processPostsInfo(List<ForumData.ForumUserFavoritesData> postsList, int page) {
        if (postsList != null && postsList.size() != 0) {
            if (page == 1) {
                this.forumPosts.clear();
                this.pageCount = 1;
                stopXlistRefreshAndLoadMore();
            }
            this.forumPosts.addAll(postsList);
        }
        stopXlistRefreshAndLoadMore();
        notifyAdapterDataChanged();
    }

    void refreshActive() {
        if (this.isActive) {
            this.videoContainer.setVisibility(0);
        } else {
            this.videoContainer.setVisibility(8);
        }
    }

    void refreshDateModify(Intent data) {
        if (data == null) {
            return;
        }
        int intExtra = data.getIntExtra(ForumPostsTagSelectActivity_.PID_EXTRA, 0);
        int intExtra2 = data.getIntExtra("view", 0);
        int intExtra3 = data.getIntExtra("comment", 0);
        int intExtra4 = data.getIntExtra("praise", 0);
        boolean booleanExtra = data.getBooleanExtra("isPraise", false);
        boolean booleanExtra2 = data.getBooleanExtra("isFavorite", true);
        if (intExtra == 0) {
            return;
        }
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.forumPosts) {
            if (forumUserFavoritesData.getType() == 2 && forumUserFavoritesData.getPost() != null) {
                ForumBean.ForumPostsBean post = forumUserFavoritesData.getPost();
                if (post.getPid() == intExtra) {
                    post.setView(intExtra2);
                    post.setCommit(intExtra3);
                    post.setPraise(intExtra4);
                    post.setIs_praise(booleanExtra);
                    if (!booleanExtra2) {
                        this.forumPosts.remove(post);
                    }
                    notifyAdapterDataChanged();
                    return;
                }
            }
        }
    }

    void refreshPraiseChanged(int pid) {
        List<ForumData.ForumUserFavoritesData> list = this.forumPosts;
        if (list == null || list.size() == 0) {
            return;
        }
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.forumPosts) {
            if (forumUserFavoritesData.getType() == 2) {
                ForumBean.ForumPostsBean post = forumUserFavoritesData.getPost();
                if (post == null) {
                    return;
                }
                if (post.getPid() == pid) {
                    post.setPraise(post.is_praise() ? post.getPraise() - 1 : post.getPraise() + 1);
                    post.setIs_praise(!post.is_praise());
                    notifyAdapterDataChanged();
                    return;
                }
            }
        }
    }

    RelativeLayout.LayoutParams resetVideoContainerParams() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.videoContainer.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = -1;
            layoutParams.height = -1;
            this.videoContainer.setPadding(0, 0, 0, 0);
        }
        RelativeLayout relativeLayout = this.videoLayout;
        if (relativeLayout == null) {
            return layoutParams;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = -1;
        }
        this.videoContainer.setTop(0);
        return layoutParams;
    }

    void resume() {
        MyVideoView myVideoView = this.video;
        if (!myVideoView.E() || !(myVideoView != null)) {
            playVideo();
            return;
        }
        this.loadingLayout.setVisibility(8);
        this.cover.setVisibility(8);
        this.play.setVisibility(8);
        this.video.start();
        MediaController mediaController = this.mediaController;
        if (mediaController != null) {
            mediaController.setVisibility(8);
        }
    }

    void setFavoriteItemHeaderViewData(ForumData.ForumUserFavoritesData data) {
        if (data == null) {
            return;
        }
        this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.FAVORITE_ITEM_HEADER, new ForumProfileFavoritesAdapter.k0.a(false, data.getType(), data.getFav_time())));
    }

    void setGameItemTask(ForumData.ForumUserFavoritesData data) {
        if (data == null || data.getGame() == null || TextUtils.isEmpty(data.getGame().getGame_id())) {
            return;
        }
        try {
            DownloadTask downloadTaskG = q5.f.M().G(data.getGame().getGame_id());
            data.setDownloadTask(downloadTaskG);
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

    void setGameItemViewData(ForumData.ForumUserFavoritesData data) {
        setGameItemTask(data);
        this.listData.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.GAME_ITEM, new ForumProfileFavoritesAdapter.k0.b(data)));
    }

    void setVideoContainerParams() {
        RelativeLayout relativeLayout = this.videoLayout;
        if (relativeLayout == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = getVideoDefaultHeight(this);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.videoContainer.getLayoutParams();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mg_forum_post_item_padding);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_top);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_bottom);
        if (layoutParams2 != null) {
            layoutParams2.height = -2;
            this.videoContainer.setPadding(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize3);
        }
        this.videoLayout.postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setXListNoMore() {
        this.forum_posts_list.setNoMore();
    }

    void show(ForumBean.ForumPostsBean bean) {
        if (bean == null) {
            return;
        }
        if (this.bottom == null) {
            this.bottom = findViewById(R.id.bottom);
        }
        if (this.popWindow == null) {
            this.popWindow = com.join.mgps.customview.f.z(this);
        }
        this.popWindow.m(this.iForumExtFuncListener);
        com.join.mgps.customview.e eVar = this.popWindow;
        if (eVar == null || eVar.isShowing()) {
            return;
        }
        this.popWindow.p(this.bottom, bean);
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

    void showUnFollowDialog(final String gameId) {
        if (this.mUnFollowDialog == null) {
            this.mUnFollowDialog = com.join.mgps.Util.h0.h0(this).d(this, "取消收藏", "确定要取消收藏吗？", "取消", "确定", new u(gameId));
        }
        ((Button) this.mUnFollowDialog.findViewById(R.id.dialog_button_ok)).setOnClickListener(new v(gameId));
        Dialog dialog = this.mUnFollowDialog;
        if (dialog == null || dialog.isShowing()) {
            return;
        }
        this.mUnFollowDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startDown(DetailResultBean detialResultBean) {
        DownloadTask downloadtaskDown;
        if (detialResultBean == null || (downloadtaskDown = detialResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        notifyUpdateUi(downloadtaskDown, 0);
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

    void stop() {
        MyVideoView myVideoView = this.video;
        if (myVideoView != null) {
            myVideoView.seekTo(0);
            this.video.I();
            this.videoIndex = -1;
            this.video.G();
            this.loadingLayout.setVisibility(8);
            MediaController mediaController = this.mediaController;
            if (mediaController != null) {
                mediaController.setVisibility(8);
            }
            this.play.setVisibility(0);
            if (getResources().getConfiguration().orientation != 1) {
                toggleFullScreen();
            } else {
                this.videoContainer.setVisibility(8);
                this.isActive = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void stopXlistRefreshAndLoadMore() {
        if (this.forum_posts_list.j()) {
            this.mHandler.sendEmptyMessageDelayed(0, 2000L);
        } else {
            this.mHandler.sendEmptyMessage(0);
        }
    }

    void toggleFullScreen() {
        MyVideoView myVideoView = this.video;
        if (myVideoView != null) {
            myVideoView.setFullScreen(!this.mFullScreenFlag);
        }
    }

    void updateDataSet(DownloadTask downloadTask, int event) {
        com.join.mgps.Util.h1.e(TAG, "event=" + event, "downloadTask=" + downloadTask.toString());
        ForumData.ForumUserFavoritesData gameItem = getGameItem(downloadTask.getCrc_link_type_val());
        if (gameItem == null) {
            return;
        }
        if (event == 0 || event == 1) {
            gameItem.setDownloadTask(downloadTask);
            return;
        }
        if (event == 2) {
            gameItem.setDownloadTask(null);
        } else if (event == 3 || event == 4) {
            gameItem.setDownloadTask(downloadTask);
        }
    }

    void updateDownloadItemProgress(ForumProfileFavoritesAdapter.w holder, DownloadTask downloadTask, DownloadTask taskProgress) {
        if (taskProgress == null) {
            return;
        }
        try {
            long j10 = (long) (Double.parseDouble(taskProgress.getShowSize()) * 1024.0d * 1024.0d);
            if (downloadTask.getSize() == 0) {
                holder.f60092j.setText(UtilsMy.c(taskProgress.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
            } else {
                holder.f60092j.setText(UtilsMy.c(taskProgress.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
            }
            if (downloadTask.getStatus() == 12) {
                holder.f60095m.setProgress((int) taskProgress.getProgress());
            } else {
                holder.f60094l.setProgress((int) taskProgress.getProgress());
            }
            if (downloadTask.getStatus() == 2) {
                holder.f60093k.setText(taskProgress.getSpeed() + "/S");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
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
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUnFollowResult(ResultMainBean result, int type, String gameId) {
        if (type != 1) {
            return;
        }
        if (result.getFlag() != 1) {
            com.join.mgps.Util.a3.b(this).d(result.getError_info());
            return;
        }
        ForumData.ForumUserFavoritesData gameItem = getGameItem(gameId);
        List<ForumData.ForumUserFavoritesData> list = this.forumPosts;
        if (list != null && list.contains(gameItem)) {
            this.forumPosts.remove(gameItem);
            com.join.mgps.Util.r0.h1(gameItem);
        }
        notifyAdapterDataChanged();
    }

    boolean validAccount() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    public void videoConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (newConfig.orientation == 2) {
            this.mPtrFrame.setVisibility(4);
        } else {
            this.mPtrFrame.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void videoScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        notifyPlayViewOffset();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void videoScrollStateChanged(AbsListView view, int scrollState) {
        if (scrollState == 0) {
            playBackground(!isPlayPositionVisible());
            if (Fresco.getImagePipeline().P()) {
                Fresco.getImagePipeline().c0();
            }
        }
    }
}
