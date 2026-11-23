package com.join.mgps.activity;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
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
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.video.MediaController;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.adapter.ForumTopicAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mg_forum_forum_topic_activity)
public class ForumTopicActivity extends BaseAppCompatActivity implements AbsListView.OnScrollListener {
    public static final String KEY_FORUM_TOPIC_BEAN = "key_forum_topic_bean";
    public static final String KEY_MEDIACMD = "key_mediacmd";
    public static final String KEY_MEDIACMDPARAMS = "key_mediacmd_params";

    @ViewById
    RelativeLayout actionbarLayout;
    ForumTopicAdapter adapter;

    @ViewById
    View bottom;

    @ViewById
    SimpleDraweeView cover;
    String coverUrl;

    @Extra
    ExtBean extBean;
    com.join.mgps.customview.e extFuncPopWindow;
    com.join.android.app.component.video.c helper;

    @ViewById
    TextView layout_title;
    volatile List<ForumTopicAdapter.t> listData;

    @ViewById
    XListView listView;
    com.join.mgps.customview.j listViewRefreshListener;

    @ViewById
    LinearLayout loadingLayout;

    @ViewById
    ForumLoadingView loadingView;
    ForumTopicAdapter.k mForumPostsOnClickListener;
    boolean mFullScreenFlag;
    MediaController mediaController;
    int pageCount;
    int pageLoading;

    @ViewById
    ImageView play;
    List<ForumBean.ForumPostsBean> posts;
    com.join.mgps.rpc.i rpcForumClient;
    ForumBean.ForumTopicBean topicBean;

    @ViewById
    MyVideoView video;

    @ViewById
    FrameLayout videoContainer;
    int videoIndex;

    @ViewById
    RelativeLayout videoLayout;
    String videoUrl;
    private String TAG = getClass().getSimpleName();
    Handler mHandler = new k();
    int currentPlayPosition = -1;
    boolean isActive = false;
    int mTop = -1;
    int mOffsetY = -1;
    int videoDefaultHeight = 0;
    com.join.mgps.customview.t mDialog = null;
    GestureDetector mGestureDetector = new GestureDetector(new f());

    public enum MediaCmd {
        CMD_PLAY,
        CMD_PLAY_BACKGROUND,
        CMD_PAUSE,
        CMD_STOP,
        CMD_FULLSCREEN,
        CMD_TRANSLATE_Y
    }

    class a implements MediaPlayer.OnCompletionListener {
        a() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mp) {
            ForumTopicActivity.this.playBackground(true);
        }
    }

    class b implements MediaPlayer.OnPreparedListener {
        b() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mp) {
            ForumTopicActivity.this.resume();
        }
    }

    class c implements MediaPlayer.OnErrorListener {
        c() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mp, int what, int extra) {
            ForumTopicActivity.this.playBackground(true);
            com.join.mgps.Util.a3.b(ForumTopicActivity.this.video.getContext()).d("视频播放失败");
            return false;
        }
    }

    class d implements MyVideoView.h {
        d() {
        }

        @Override // com.join.android.app.component.video.MyVideoView.h
        public boolean a(boolean flag) {
            com.join.mgps.Util.h1.e("onScreenChanged", "fullscreen=" + flag);
            ForumTopicActivity.this.fullscreen();
            return false;
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v10.setVisibility(8);
            ForumTopicActivity.this.resume();
        }
    }

    class f extends GestureDetector.SimpleOnGestureListener {
        f() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent e10, MotionEvent e11, float velocityX, float velocityY) {
            Fresco.getImagePipeline().Q();
            return super.onFling(e10, e11, velocityX, velocityY);
        }
    }

    class g implements com.join.mgps.customview.i {
        g() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (ForumTopicActivity.this.isNetWorkConnected()) {
                ForumTopicActivity.this.pullLoadCurrentTabData();
            }
        }
    }

    class h implements com.join.mgps.customview.j {
        h() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            ForumTopicActivity.this.stop();
            if (ForumTopicActivity.this.isNetWorkConnected()) {
                ForumTopicActivity.this.refreshCurrentTabData();
            }
        }
    }

    class i implements ForumTopicAdapter.k {
        i() {
        }

        @Override // com.join.mgps.adapter.ForumTopicAdapter.k
        public void a(int pid) {
            ForumTopicActivity forumTopicActivity = ForumTopicActivity.this;
            if (!forumTopicActivity.isLogined(forumTopicActivity)) {
                ForumTopicActivity.this.showMessage(forumTopicActivity.getString(R.string.forum_user_not_login));
            } else if (!ForumTopicActivity.this.validAccount()) {
                ForumTopicActivity.this.showDialog();
            } else {
                ForumTopicActivity.this.refreshPraiseChanged(pid);
                ForumTopicActivity.this.praisePosts(pid);
            }
        }

        @Override // com.join.mgps.adapter.ForumTopicAdapter.k
        public void b(int pid) {
            ForumTopicActivity forumTopicActivity = ForumTopicActivity.this;
            forumTopicActivity.showExtPopWindow(forumTopicActivity.getForumPostsBeanByPid(pid));
        }

        @Override // com.join.mgps.adapter.ForumTopicAdapter.k
        public void c(int position) {
            ForumTopicAdapter.t.l lVar = (ForumTopicAdapter.t.l) ForumTopicActivity.this.listData.get(position).a();
            ForumTopicActivity.this.currentPlayPosition = position;
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{ForumTopicActivity.this.currentPlayPosition + "", lVar.f60505b, lVar.f60504a});
            ForumTopicActivity.this.callbackPlayVideo(bundle);
            ForumTopicActivity.this.notifyPlayViewOffset();
        }

        @Override // com.join.mgps.adapter.ForumTopicAdapter.k
        public void d(int pid) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(pid);
            com.join.mgps.Util.r0.v0(ForumTopicActivity.this, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumTopicAdapter.k
        public void e(int fid) {
            ForumBean forumBean = new ForumBean();
            forumBean.setFid(fid);
            com.join.mgps.Util.r0.r0(ForumTopicActivity.this.getBaseContext(), forumBean);
        }
    }

    class j implements View.OnTouchListener {
        j() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            ForumTopicActivity.this.mGestureDetector.onTouchEvent(event);
            return false;
        }
    }

    class k extends Handler {
        k() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what != 0) {
                return;
            }
            ForumTopicActivity.this.listView.r();
            ForumTopicActivity.this.listView.q();
            ForumTopicActivity forumTopicActivity = ForumTopicActivity.this;
            if (forumTopicActivity.pageLoading == -1) {
                forumTopicActivity.listView.setNoMore();
            }
        }
    }

    class l extends ForumLoadingView.e {
        l(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumTopicActivity.this.loading();
        }
    }

    class m extends ForumLoadingView.e {
        m(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            ForumTopicActivity.this.loading();
        }
    }

    class n extends ForumLoadingView.e {
        n(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumTopicActivity.this.loading();
        }
    }

    class o implements com.join.mgps.customview.e.d {
        o() {
        }

        @Override // com.join.mgps.customview.e.d
        public void a(int pid) {
        }

        @Override // com.join.mgps.customview.e.d
        public void b(ForumBean.ForumPostsBean bean) {
        }

        @Override // com.join.mgps.customview.e.d
        public void c(ForumBean.ForumPostsBean bean) {
            ForumBean.ForumPostsBean forumPostsBeanByPid = ForumTopicActivity.this.getForumPostsBeanByPid(bean.getPid());
            if (forumPostsBeanByPid != null) {
                forumPostsBeanByPid.setIs_favorite(bean.is_favorite());
            }
        }

        @Override // com.join.mgps.customview.e.d
        public void d(int pid, boolean success) {
            f(pid, success);
        }

        @Override // com.join.mgps.customview.e.d
        public void e(ForumBean.ForumPostsBean bean) {
            ForumBean.ForumPostsBean forumPostsBeanByPid = ForumTopicActivity.this.getForumPostsBeanByPid(bean.getPid());
            if (forumPostsBeanByPid != null) {
                forumPostsBeanByPid.setBest(bean.getBest());
            }
        }

        void f(int pid, boolean success) {
            ForumTopicActivity forumTopicActivity = ForumTopicActivity.this;
            List<ForumBean.ForumPostsBean> list = forumTopicActivity.posts;
            if (!success) {
                com.join.mgps.Util.a3.b(forumTopicActivity.getBaseContext()).d("删除失败");
                return;
            }
            if (list != null && list.size() != 0) {
                for (ForumBean.ForumPostsBean forumPostsBean : list) {
                    if (forumPostsBean.getPid() == pid) {
                        list.remove(forumPostsBean);
                        ForumTopicActivity.this.stopXlistRefreshAndLoadMore();
                        ForumTopicActivity.this.notifyAdapterDataChanged();
                        break;
                    }
                }
            }
            com.join.mgps.Util.a3.b(ForumTopicActivity.this.getBaseContext()).d("删除成功");
        }

        @Override // com.join.mgps.customview.e.d
        public void onCancel() {
        }
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void clearMemory() {
        if (this.listData != null) {
            this.listData.clear();
        }
        List<ForumBean.ForumPostsBean> list = this.posts;
        if (list != null) {
            list.clear();
        }
        this.topicBean = null;
        this.extBean = null;
        this.mHandler = null;
        this.listViewRefreshListener = null;
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
        this.listView.setVisibility(8);
    }

    private void initActionBar() {
        ForumBean.ForumTopicBean forumTopicBean = this.topicBean;
        if (forumTopicBean == null || !com.join.mgps.Util.t2.i(forumTopicBean.getName())) {
            this.layout_title.setText("话题专区");
        } else {
            this.layout_title.setText(this.topicBean.getName());
        }
    }

    private void initListView() {
        this.listView.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.listView.setPullLoadEnable(new g());
        h hVar = new h();
        this.listViewRefreshListener = hVar;
        this.listView.setPullRefreshEnable(hVar);
        this.listData = new ArrayList();
        this.helper = new com.join.android.app.component.video.c(this, this.TAG);
        ForumTopicAdapter forumTopicAdapter = new ForumTopicAdapter(this, this.helper);
        this.adapter = forumTopicAdapter;
        this.listView.setAdapter((ListAdapter) forumTopicAdapter);
        this.listView.setOnScrollListener(this);
        i iVar = new i();
        this.mForumPostsOnClickListener = iVar;
        this.adapter.x(iVar);
        this.listView.setOnTouchListener(new j());
    }

    private void initViews() {
        changeLoadingState(1);
        initListView();
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
        changeLoadingState(1);
        if (com.join.android.app.common.utils.m.j(this)) {
            loadSrvData();
        } else {
            showToast(getString(R.string.net_connect_failed));
            changeLoadingState(9);
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
        this.video.setOnCompletionListener(new a());
        this.video.setOnPreparedListener(new b());
        this.video.setOnErrorListener(new c());
        this.video.setScreenChangedListener(new d());
        this.play.setOnClickListener(new e());
    }

    private void processPost(int page, List<ForumBean.ForumPostsBean> obj) {
        if (this.posts == null) {
            this.posts = new ArrayList();
        }
        if (obj != null && obj.size() != 0) {
            if (page == 1) {
                this.posts.clear();
                this.pageCount = 1;
            }
            this.posts.addAll(obj);
        }
        stopXlistRefreshAndLoadMore();
        notifyAdapterDataChanged();
    }

    private void processTopic(ForumBean.ForumTopicBean forumTopicBean) {
        this.topicBean = forumTopicBean;
    }

    private void setForumPostViewsData(List<ForumBean.ForumPostsBean> posts) {
        if (posts == null || posts.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < posts.size(); i10++) {
            setPostViewData(posts.get(i10));
        }
    }

    private void setPostViewData(ForumBean.ForumPostsBean posts) {
        String str;
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.listData.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.POST_HEADER, new ForumTopicAdapter.t.g(false, posts.getAvatar_src(), posts.getNickname(), posts.getAdd_time(), posts.getFirst() > 0, posts.getPid(), posts.getFid(), accountData != null && posts.getUid() == accountData.getUid(), posts.getForum_auth() == 1, 0, posts.getVip_level(), posts.getSvip_level(), posts.getCopper_title() != null ? posts.getCopper_title().getBattleTitle() : "", posts.getCopper_title() != null ? posts.getCopper_title().getBattleColor() : "", posts.getUid())));
        if (posts.getSubject() != null && !com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            this.listData.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.POST_SUBJECT, new ForumTopicAdapter.t.j(posts.getBest() > 0, posts.getSubject(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info())));
        }
        boolean z10 = posts.getSubject() == null || com.join.mgps.Util.t2.h(posts.getSubject().trim());
        if (com.join.mgps.Util.t2.h(posts.getMessage()) || com.join.mgps.Util.t2.h(posts.getMessage().trim())) {
            str = "";
        } else {
            str = "";
            ForumTopicAdapter.t.i iVar = new ForumTopicAdapter.t.i(z10 && posts.getBest() > 0, posts.getMessage(), posts.getPid(), posts.getFid(), z10 && posts.getHelp() > 0, posts.getHelp_money() + str, z10 ? posts.getTag_info() : null, com.join.mgps.Util.r0.m0(this, posts.getMessage(), z10, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info()));
            this.listData.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.POST_MESSAGE, iVar));
            this.adapter.g().e(iVar);
        }
        List<ForumBean.ForumPostsBean.ResBean> rs_list = posts.getRs_list();
        ArrayList arrayList = new ArrayList();
        boolean zIsAttach_video = posts.isAttach_video();
        String thumb = str;
        String raw = thumb;
        for (int i10 = 0; i10 < rs_list.size(); i10++) {
            ForumBean.ForumPostsBean.ResBean resBean = rs_list.get(i10);
            if (resBean.getType().equals("pic")) {
                arrayList.add(resBean.getRaw());
            } else if (resBean.getType().equals("video") && com.join.mgps.Util.t2.h(raw)) {
                thumb = resBean.getThumb();
                raw = resBean.getRaw();
            }
        }
        String subject = com.join.mgps.Util.t2.i(posts.getSubject()) ? posts.getSubject() : com.join.mgps.Util.t2.i(posts.getMessage()) ? posts.getMessage() : str;
        if (zIsAttach_video) {
            this.listData.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.POST_VIDEO_THUMBNAIL, new ForumTopicAdapter.t.l(thumb, raw, subject)));
        } else if (rs_list.size() != 0) {
            this.listData.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.POST_IMAGE_THUMBNAIL, new ForumTopicAdapter.t.h(rs_list, arrayList, posts.getPid())));
        }
        this.listData.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.POST_FOOTER, new ForumTopicAdapter.t.f(posts.getPid(), posts.getFid(), posts.getFname(), posts.getView(), posts.getCommit(), posts.getPraise(), posts.is_praise(), false)));
    }

    private void showUserUi() {
        this.actionbarLayout.setVisibility(0);
        this.listView.setVisibility(0);
    }

    @AfterViews
    void afterViews() {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        getIntentInfo();
        initActionBar();
        this.loadingView.m();
        initViews();
        loading();
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
            this.video.setVisibility(0);
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
                this.video.setVisibility(8);
                this.isActive = false;
                stop();
                return;
            }
            if (this.videoIndex == -1) {
                return;
            }
            this.videoContainer.setVisibility(0);
            this.video.setVisibility(0);
            this.isActive = true;
            return;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void changeLoadingState(int state) {
        if (state == 1) {
            this.loadingView.j(1);
            return;
        }
        if (state == 2) {
            this.loadingView.j(2);
            return;
        }
        if (state == 9) {
            ForumLoadingView forumLoadingView = this.loadingView;
            forumLoadingView.setListener(new l(forumLoadingView));
            this.loadingView.j(9);
        } else {
            if (state == 10) {
                this.loadingView.setFailedMsg("没有更多话题哦~");
                ForumLoadingView forumLoadingView2 = this.loadingView;
                forumLoadingView2.setListener(new m(forumLoadingView2));
                this.loadingView.setReloadingVisibility(0);
                this.loadingView.j(10);
                return;
            }
            if (state != 16) {
                return;
            }
            this.loadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView3 = this.loadingView;
            forumLoadingView3.setListener(new n(forumLoadingView3));
            this.loadingView.j(16);
        }
    }

    void clearPostPopWindow() {
        com.join.mgps.customview.e eVar = this.extFuncPopWindow;
        if (eVar != null && eVar.isShowing()) {
            this.extFuncPopWindow.dismiss();
        }
        this.extFuncPopWindow = null;
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

    ForumBean.ForumPostsBean getForumPostsBeanByPid(int pid) {
        List<ForumBean.ForumPostsBean> list = this.posts;
        ForumBean.ForumPostsBean next = null;
        if (list == null) {
            return null;
        }
        Iterator<ForumBean.ForumPostsBean> it2 = list.iterator();
        while (it2.hasNext()) {
            next = it2.next();
            if (pid == next.getPid()) {
                break;
            }
        }
        return next;
    }

    public void getIntentInfo() {
        try {
            this.topicBean = new ForumBean.ForumTopicBean();
            String str = (String) getIntent().getSerializableExtra(KEY_FORUM_TOPIC_BEAN);
            if (com.join.mgps.Util.t2.h(str)) {
                finish();
            } else {
                this.topicBean = (ForumBean.ForumTopicBean) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumBean.ForumTopicBean.class, new Class[0]));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
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

    boolean isNetWorkConnected() {
        if (com.join.android.app.common.utils.m.j(getBaseContext())) {
            return true;
        }
        showToast(getString(R.string.net_connect_failed));
        changeLoadingState(9);
        stopXlistRefreshAndLoadMore();
        return false;
    }

    boolean isNotMore(List<ForumBean.ForumPostsBean> objs) {
        boolean z10 = objs == null || objs.size() == 0;
        if (z10) {
            stopXlistRefreshAndLoadMore();
        }
        return z10;
    }

    boolean isPlayPositionVisible() {
        if (this.currentPlayPosition == -1) {
            return false;
        }
        int firstVisiblePosition = this.listView.getFirstVisiblePosition();
        int lastVisiblePosition = this.listView.getLastVisiblePosition();
        int i10 = this.currentPlayPosition;
        return i10 >= firstVisiblePosition - 1 && i10 <= lastVisiblePosition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:45:0x009c A[DONT_GENERATE] */
    @Background
    public void loadForumPostsData(int page) {
        String token;
        int i10;
        List<ForumBean.ForumPostsBean> posts_list;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            changeLoadingState(9);
            stopXlistRefreshAndLoadMore();
            return;
        }
        if (validate(page)) {
            return;
        }
        try {
            UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
            if (com.join.mgps.Util.r0.Y0(this)) {
                int uid = userInfoT.getUid();
                token = userInfoT.getToken();
                i10 = uid;
            } else {
                token = "";
                i10 = 0;
            }
            ExtBean extBean = this.extBean;
            if (extBean != null) {
                extBean.getFrom();
                this.extBean.getPosition();
            }
            ForumResponse<ForumData.ForumForumTopicData> forumResponseF = this.rpcForumClient.f(this.topicBean.getTid(), i10, token, page, com.join.mgps.Util.r0.f49989d, "");
            if (forumResponseF != null) {
                ForumData.ForumForumTopicData data = forumResponseF.getData();
                if (data != null) {
                    ForumBean.ForumTopicBean topic = data.getTopic();
                    posts_list = data.getPosts_list();
                    processTopic(topic);
                    processPost(page, posts_list);
                } else {
                    posts_list = null;
                }
                if (data != null && !isNotMore(posts_list)) {
                    this.pageCount = page;
                    changeLoadingState(2);
                }
                this.pageLoading = -1;
                if (page == 1) {
                    changeLoadingState(10);
                }
                stopXlistRefreshAndLoadMore();
                return;
            }
            changeLoadingState(4);
        } catch (Exception e10) {
            changeLoadingState(4);
            e10.printStackTrace();
        } finally {
            if (this.pageLoading != -1) {
                this.pageLoading = 0;
            }
            stopXlistRefreshAndLoadMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyAdapter() {
        this.adapter.z(this.listData);
        this.adapter.notifyDataSetChanged();
    }

    synchronized void notifyAdapterDataChanged() {
        if (this.listData == null) {
            this.listData = new ArrayList();
        }
        this.listData.clear();
        setForumTopicTop();
        setNormalPost();
        notifyAdapter();
    }

    void notifyPlayViewOffset() {
        int i10 = this.currentPlayPosition;
        if (i10 == -1) {
            return;
        }
        int firstVisiblePosition = this.listView.getFirstVisiblePosition();
        int lastVisiblePosition = this.listView.getLastVisiblePosition();
        int i11 = this.currentPlayPosition;
        if (i11 < firstVisiblePosition - 1 || i11 > lastVisiblePosition) {
            playBackground(true);
        } else {
            playBackground(false);
            i10 = (this.currentPlayPosition - firstVisiblePosition) + 1;
        }
        View childAt = this.listView.getChildAt(i10);
        if (childAt != null) {
            int bottom = this.actionbarLayout.getBottom();
            int top = childAt.getTop() + this.listView.getTop();
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_TRANSLATE_Y.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{bottom + "", top + ""});
            callbackPlayVideo(bundle);
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

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        videoConfigurationChanged(newConfig);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        clearPostPopWindow();
        clearMemory();
        com.join.android.app.component.video.c cVar = this.helper;
        if (cVar != null) {
            cVar.F();
        }
    }

    @Override // com.BaseAppCompatActivity
    public void onFavoriteChanged(int pid, boolean isFavorite) {
        super.onFavoriteChanged(pid, isFavorite);
        com.join.mgps.Util.r0.j(pid, isFavorite, this.posts);
        notifyAdapterDataChanged();
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
    public void praisePosts(int pid) {
        try {
            if (!com.join.mgps.Util.r0.Y0(this)) {
                com.join.mgps.Util.r0.L0(this);
                com.join.mgps.Util.a3.b(this).d("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanE0 = com.join.mgps.Util.r0.e0(this, pid);
            forumPostsPraiseRequestBeanE0.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> forumResponseR = this.rpcForumClient.R(forumPostsPraiseRequestBeanE0.getParams());
            if (forumResponseR == null) {
                return;
            }
            if (forumResponseR.getError() != 706) {
                com.join.mgps.Util.r0.m1(forumPostsPraiseRequestBeanE0, forumResponseR.getData());
            } else {
                refreshPraiseChanged(pid);
                showDialog();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void pullLoadCurrentTabData() {
        if (this.pageLoading == -1) {
            stopXlistRefreshAndLoadMore();
        } else {
            loadForumPostsData(this.pageCount + 1);
        }
    }

    void refreshActive() {
        if (this.isActive) {
            this.videoContainer.setVisibility(0);
        } else {
            this.videoContainer.setVisibility(8);
        }
    }

    void refreshCurrentTabData() {
        if (this.topicBean == null) {
            return;
        }
        loadForumPostsData(1);
    }

    void refreshPraiseChanged(int pid) {
        List<ForumBean.ForumPostsBean> list = this.posts;
        if (list == null || list.size() == 0) {
            return;
        }
        for (ForumBean.ForumPostsBean forumPostsBean : list) {
            if (forumPostsBean.getPid() == pid) {
                forumPostsBean.setPraise(forumPostsBean.is_praise() ? forumPostsBean.getPraise() - 1 : forumPostsBean.getPraise() + 1);
                forumPostsBean.setIs_praise(!forumPostsBean.is_praise());
                notifyAdapterDataChanged();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshTitle() {
        if (com.join.mgps.Util.t2.i(this.topicBean.getName())) {
            this.layout_title.setText(this.topicBean.getName());
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
        this.videoContainer.postInvalidate();
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

    void setForumTopicTop() {
        refreshTitle();
        AccountUtil_.getInstance_(this).getAccountData();
        this.listData.add(new ForumTopicAdapter.t(ForumTopicAdapter.ViewType.FORUM_TOPIC_TOP, new ForumTopicAdapter.t.a(this.topicBean.getIcon_src())));
    }

    void setNormalPost() {
        setForumPostViewsData(this.posts);
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
    public void showDialog() {
        com.join.mgps.Util.h0.h0(this).m(this);
    }

    void showExtPopWindow(ForumBean.ForumPostsBean bean) {
        if (bean == null) {
            return;
        }
        if (this.extFuncPopWindow == null) {
            com.join.mgps.customview.f fVarZ = com.join.mgps.customview.f.z(this);
            this.extFuncPopWindow = fVarZ;
            fVarZ.m(new o());
        }
        this.extFuncPopWindow.p(this.bottom, bean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
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
        Handler handler = this.mHandler;
        if (handler == null) {
            return;
        }
        handler.sendEmptyMessageDelayed(0, 2000L);
    }

    void toggleFullScreen() {
        MyVideoView myVideoView = this.video;
        if (myVideoView != null) {
            myVideoView.setFullScreen(!this.mFullScreenFlag);
        }
    }

    boolean validAccount() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    boolean validate(int page) {
        int i10 = this.pageLoading;
        if (i10 == -1) {
            stopXlistRefreshAndLoadMore();
            return true;
        }
        if (page == i10) {
            return true;
        }
        this.pageLoading = page;
        return false;
    }

    public void videoConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (newConfig.orientation == 2) {
            this.listView.setVisibility(4);
        } else {
            this.listView.setVisibility(0);
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
