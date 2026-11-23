package com.join.mgps.fragment;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
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
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.video.MediaController;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.join.mgps.activity.ForumProfileFavoritesActivity;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.adapter.ForumProfileFavoritesAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DetailResultBean;
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
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.mg_forum_profile_favorites_activity)
public class GmaeFormPostFragment extends Fragment implements AbsListView.OnScrollListener {
    private static final String V1 = ForumProfileFavoritesActivity.class.getSimpleName();

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    static int f68578a2 = 0;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    public static final String f68579b2 = "key_mediacmd";

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    public static final String f68580c2 = "key_mediacmd_params";

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    @ViewById
    static MyVideoView f68581d2;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    static boolean f68582e2;
    Context A;
    com.join.android.app.component.video.c C;
    com.join.mgps.rpc.e D;
    Dialog E;
    com.join.mgps.customview.e G;
    View H;

    @ViewById
    FrameLayout J;

    @ViewById
    RelativeLayout K;

    @ViewById
    SimpleDraweeView L;

    @ViewById
    ImageView M;

    @ViewById
    LinearLayout N;
    MediaController O;
    int P;
    String Q;
    String R;
    List<DownloadTask> Y;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    RelativeLayout f68584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    ImageView f68585d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f68586e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    ForumLoadingView f68587f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    List<ForumData.ForumUserFavoritesData> f68589g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    volatile List<ForumProfileFavoritesAdapter.k0> f68590h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ForumProfileFavoritesAdapter f68591i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    XListView2 f68593j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f68594k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    com.join.mgps.rpc.i f68595l;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private com.join.mgps.rpc.e f68596l1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.join.mgps.dialog.x0 f68597m;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public AbsListView f68606r1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    UserInfo f68615z;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    ForumProfileFavoritesAdapter.u f68598n = new k();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Handler f68599o = new o();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f68600p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f68603q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f68605r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f68607s = 16;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f68608t = 32;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f68609u = 17;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f68610v = 18;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int f68612w = 20;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f68613x = 24;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f68614y = 0;
    int B = 0;
    com.join.mgps.customview.e.d F = new g();
    int I = -1;
    boolean S = false;
    int T = -1;
    int U = -1;
    int V = 0;
    com.join.mgps.customview.t W = null;
    GestureDetector X = new GestureDetector(new n());
    Map<String, DownloadTask> Z = new ConcurrentHashMap();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    Map<String, DownloadTask> f68601p0 = new HashMap();

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    Map<String, DownloadTask> f68583b1 = new HashMap();

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private int f68588f1 = 0;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private int f68592i1 = 0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    int f68602p1 = 0;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    boolean f68604q1 = false;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public int f68611v1 = 0;
    public int L1 = 0;
    public int R1 = 0;

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
            GmaeFormPostFragment.this.f68597m.dismiss();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68617b;

        b(final int val$pid) {
            this.f68617b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (com.join.android.app.common.utils.m.j(v10.getContext())) {
                GmaeFormPostFragment.this.c0(v10.getContext(), this.f68617b);
            } else {
                GmaeFormPostFragment gmaeFormPostFragment = GmaeFormPostFragment.this;
                gmaeFormPostFragment.showToast(gmaeFormPostFragment.getString(R.string.net_connect_failed));
            }
            GmaeFormPostFragment.this.f68597m.dismiss();
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
            GmaeFormPostFragment.this.loading();
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
            GmaeFormPostFragment.this.loading();
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
            GmaeFormPostFragment.this.loading();
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
            ForumBean.ForumPostsBean forumPostsBeanG0 = GmaeFormPostFragment.this.g0(bean.getPid());
            if (forumPostsBeanG0 != null) {
                forumPostsBeanG0.setIs_favorite(bean.is_favorite());
                if (!bean.is_favorite()) {
                    GmaeFormPostFragment.this.u0(bean.getPid(), true);
                }
            }
            GmaeFormPostFragment.this.t0();
        }

        @Override // com.join.mgps.customview.e.d
        public void d(int pid, boolean success) {
            GmaeFormPostFragment.this.u0(pid, success);
        }

        @Override // com.join.mgps.customview.e.d
        public void e(ForumBean.ForumPostsBean bean) {
            ForumBean.ForumPostsBean forumPostsBeanG0 = GmaeFormPostFragment.this.g0(bean.getPid());
            if (forumPostsBeanG0 != null) {
                forumPostsBeanG0.setBest(bean.getBest());
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
            GmaeFormPostFragment.this.b1();
        }
    }

    class i implements MediaPlayer.OnPreparedListener {
        i() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mp) {
            GmaeFormPostFragment.this.L0();
        }
    }

    class j implements MediaPlayer.OnErrorListener {
        j() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mp, int what, int extra) {
            GmaeFormPostFragment.this.b1();
            com.join.mgps.Util.a3.b(GmaeFormPostFragment.f68581d2.getContext()).d("视频播放失败");
            return false;
        }
    }

    class k implements ForumProfileFavoritesAdapter.u {
        k() {
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void a(int pid) {
            FragmentActivity activity = GmaeFormPostFragment.this.getActivity();
            if (!GmaeFormPostFragment.this.isLogined(activity)) {
                GmaeFormPostFragment.this.showMessage(activity.getString(R.string.forum_user_not_login));
            } else if (!GmaeFormPostFragment.this.h1()) {
                GmaeFormPostFragment.this.V0();
            } else {
                GmaeFormPostFragment.this.J0(pid);
                GmaeFormPostFragment.this.D0(pid);
            }
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void b(int pid) {
            GmaeFormPostFragment gmaeFormPostFragment = GmaeFormPostFragment.this;
            gmaeFormPostFragment.U0(gmaeFormPostFragment.g0(pid));
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void c(int position) {
            ForumProfileFavoritesAdapter.k0.o oVar = (ForumProfileFavoritesAdapter.k0.o) GmaeFormPostFragment.this.f68590h.get(position).a();
            GmaeFormPostFragment.this.I = position;
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{GmaeFormPostFragment.this.I + "", oVar.f60053b, oVar.f60052a});
            GmaeFormPostFragment.this.X(bundle);
            GmaeFormPostFragment.this.v0();
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void d(int pid) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(pid);
            com.join.mgps.Util.r0.v0(GmaeFormPostFragment.this.A, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void e(String gameId) {
            GmaeFormPostFragment gmaeFormPostFragment = GmaeFormPostFragment.this;
            gmaeFormPostFragment.f68604q1 = true;
            gmaeFormPostFragment.e0(gameId);
        }

        @Override // com.join.mgps.adapter.ForumProfileFavoritesAdapter.u
        public void f(int fid) {
            ForumBean forumBean = new ForumBean();
            forumBean.setFid(fid);
            com.join.mgps.Util.r0.r0(GmaeFormPostFragment.this.A, forumBean);
        }
    }

    class l implements MyVideoView.h {
        l() {
        }

        @Override // com.join.android.app.component.video.MyVideoView.h
        public boolean a(boolean flag) {
            com.join.mgps.Util.h1.e("onScreenChanged", "fullscreen=" + flag);
            GmaeFormPostFragment.this.f0();
            return false;
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v10.setVisibility(8);
            GmaeFormPostFragment.this.L0();
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
            GmaeFormPostFragment.this.f68593j.v();
            GmaeFormPostFragment.this.f68593j.u();
            if (GmaeFormPostFragment.this.f68603q == -1) {
                GmaeFormPostFragment.this.f68593j.setNoMore();
            }
        }
    }

    class p implements com.join.mgps.customview.i {
        p() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            GmaeFormPostFragment gmaeFormPostFragment = GmaeFormPostFragment.this;
            gmaeFormPostFragment.q0(gmaeFormPostFragment.f68600p + 1);
            if (GmaeFormPostFragment.this.f68603q == -1) {
                GmaeFormPostFragment.this.c1();
            }
        }
    }

    class q implements com.join.mgps.customview.j {
        q() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (com.join.android.app.common.utils.m.j(GmaeFormPostFragment.this.A)) {
                GmaeFormPostFragment.this.f68603q = 0;
                GmaeFormPostFragment.this.q0(1);
            } else {
                GmaeFormPostFragment gmaeFormPostFragment = GmaeFormPostFragment.this;
                gmaeFormPostFragment.showToast(gmaeFormPostFragment.getString(R.string.net_connect_failed));
                GmaeFormPostFragment.this.Z(17);
                GmaeFormPostFragment.this.c1();
            }
        }
    }

    class r implements View.OnTouchListener {
        r() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            GmaeFormPostFragment.this.X.onTouchEvent(event);
            return false;
        }
    }

    class s implements AdapterView.OnItemClickListener {
        s() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = GmaeFormPostFragment.this.f68591i;
            if (forumProfileFavoritesAdapter != null && forumProfileFavoritesAdapter.getItemViewType(position) == ForumProfileFavoritesAdapter.ViewType.GAME_ITEM.ordinal()) {
                ForumProfileFavoritesAdapter.k0.b bVar = (ForumProfileFavoritesAdapter.k0.b) GmaeFormPostFragment.this.f68591i.getItem(position);
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
            ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = GmaeFormPostFragment.this.f68591i;
            if (forumProfileFavoritesAdapter == null) {
                return false;
            }
            if (forumProfileFavoritesAdapter.getItemViewType(position) != ForumProfileFavoritesAdapter.ViewType.GAME_ITEM.ordinal()) {
                return true;
            }
            ForumProfileFavoritesAdapter.k0.b bVar = (ForumProfileFavoritesAdapter.k0.b) GmaeFormPostFragment.this.f68591i.getItem(position);
            if (bVar.a() == null || bVar.a().getGame() == null) {
                return true;
            }
            GmaeFormPostFragment.this.Y0(bVar.a().getGame().getGame_id());
            return true;
        }
    }

    class u implements com.join.mgps.callbacks.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f68637a;

        u(final String val$gameId) {
            this.f68637a = val$gameId;
        }

        @Override // com.join.mgps.callbacks.e
        public void a(Dialog dialog) {
            GmaeFormPostFragment.this.E.dismiss();
            GmaeFormPostFragment.this.Y(1, this.f68637a);
        }

        @Override // com.join.mgps.callbacks.e
        public void b(Dialog dialog) {
            dialog.dismiss();
        }
    }

    class v implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68639b;

        v(final String val$gameId) {
            this.f68639b = val$gameId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GmaeFormPostFragment.this.E.dismiss();
            GmaeFormPostFragment.this.Y(1, this.f68639b);
        }
    }

    private void G0() {
        int i10 = 0;
        while (true) {
            List<DownloadTask> list = this.Y;
            if (list == null || i10 >= list.size()) {
                return;
            }
            w0(q5.f.M().G(this.Y.get(i10).getCrc_link_type_val()), 4);
            i10++;
        }
    }

    private void P0(ForumBean.ForumPostsBean posts) {
        boolean z10;
        if (com.join.mgps.Util.t2.h(posts.getSubject()) || com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            z10 = false;
        } else {
            this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_SUBJECT, new ForumProfileFavoritesAdapter.k0.f(false, posts.getBest() > 0, posts.getSubject(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname())));
            z10 = true;
        }
        if (z10) {
            boolean z11 = posts.getSubject() == null || com.join.mgps.Util.t2.h(posts.getSubject().trim());
            if (!com.join.mgps.Util.t2.h(posts.getMessage()) && !com.join.mgps.Util.t2.h(posts.getMessage().trim())) {
                ForumProfileFavoritesAdapter.k0.e eVar = new ForumProfileFavoritesAdapter.k0.e(false, z11 && posts.getBest() > 0, posts.getMessage(), posts.getPid(), 0, z11 && posts.getHelp() > 0, posts.getHelp_money() + "", z11 ? posts.getTag_info() : null, z11, com.join.mgps.Util.r0.m0(this.A, posts.getMessage(), z11, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info()));
                this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_MESSAGE, eVar));
                this.f68591i.j().e(eVar);
            }
        } else {
            this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_SUBJECT, new ForumProfileFavoritesAdapter.k0.f(false, posts.getBest() > 0, posts.getMessage(), posts.getPid(), 0, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname())));
        }
        boolean z12 = (posts.getRelation_game() == null || TextUtils.isEmpty(posts.getRelation_game().getGame_id())) ? false : true;
        if (!z12) {
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
            String subject = com.join.mgps.Util.t2.i(posts.getSubject()) ? posts.getSubject() : com.join.mgps.Util.t2.i(posts.getMessage()) ? posts.getMessage() : "";
            if (zIsAttach_video) {
                this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_VIDEO, new ForumProfileFavoritesAdapter.k0.g(thumb, raw, subject)));
            } else if (rs_list != null && rs_list.size() != 0) {
                this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_IMGS, new ForumProfileFavoritesAdapter.k0.d(rs_list, arrayList, posts.getPid())));
            }
        }
        if (z12) {
            E0(posts.getRelation_game());
            this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_GAME, new ForumProfileFavoritesAdapter.k0.i(true, posts.getPid() + "", posts.getRelation_game())));
        }
        this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.P_FOOTER, new ForumProfileFavoritesAdapter.k0.c(1, posts.getAvatar_src(), posts.getLast_comment_time(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
    }

    private void Q0(ForumBean.ForumPostsBean posts) {
        String message = "";
        if (posts.getSubject() != null && !com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_SUBJECT, new ForumProfileFavoritesAdapter.k0.m(posts.getBest() > 0, posts.getSubject(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info())));
        }
        boolean z10 = posts.getSubject() == null || com.join.mgps.Util.t2.h(posts.getSubject().trim());
        if (!com.join.mgps.Util.t2.h(posts.getMessage()) && !com.join.mgps.Util.t2.h(posts.getMessage().trim())) {
            SpannableStringBuilder spannableStringBuilderM0 = com.join.mgps.Util.r0.m0(this.A, posts.getMessage(), z10, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info());
            ForumProfileFavoritesAdapter.k0.l lVar = new ForumProfileFavoritesAdapter.k0.l(z10 && posts.getBest() > 0, posts.getMessage(), posts.getPid(), posts.getFid(), z10 && posts.getHelp() > 0, posts.getHelp_money() + "", z10 ? posts.getTag_info() : null, spannableStringBuilderM0);
            this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_MESSAGE, lVar));
            this.f68591i.j().e(lVar);
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
            this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_VIDEO_THUMBNAIL, new ForumProfileFavoritesAdapter.k0.o(thumb, raw, message)));
        } else if (rs_list != null && rs_list.size() != 0) {
            this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_IMAGE_THUMBNAIL, new ForumProfileFavoritesAdapter.k0.k(rs_list, arrayList, posts.getPid())));
        }
        this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.POST_FOOTER, new ForumProfileFavoritesAdapter.k0.h(posts.getPid(), posts.getFid(), posts.getFname(), posts.getView(), posts.getCommit(), posts.getPraise(), posts.is_praise(), false)));
    }

    private void R0(List<ForumData.ForumUserFavoritesData> posts) {
        if (posts == null || posts.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < posts.size(); i10++) {
            ForumData.ForumUserFavoritesData forumUserFavoritesData = posts.get(i10);
            if (forumUserFavoritesData.getType() == 1) {
                M0(forumUserFavoritesData);
                O0(forumUserFavoritesData);
            } else if (forumUserFavoritesData.getType() == 2) {
                ForumBean.ForumPostsBean post = forumUserFavoritesData.getPost();
                if (post.is_favorite()) {
                    M0(forumUserFavoritesData);
                    P0(post);
                }
            }
        }
    }

    private UserInfo S(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void X0(final int pid) {
        if (this.f68597m == null) {
            com.join.mgps.dialog.x0 x0Var = new com.join.mgps.dialog.x0(this.A);
            this.f68597m = x0Var;
            x0Var.f("确定");
            this.f68597m.d("取消");
            this.f68597m.b(8);
            this.f68597m.g("确定要删除该帖吗？").c(new a());
        }
        this.f68597m.e(new b(pid));
        if (this.f68597m.isShowing()) {
            return;
        }
        this.f68597m.show();
    }

    private void Z0() {
        this.f68594k.setVisibility(0);
    }

    private void d0() {
        com.join.mgps.customview.t tVar = this.W;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.W.dismiss();
    }

    static void d1() {
        MyVideoView myVideoView = f68581d2;
        if (myVideoView != null) {
            myVideoView.setFullScreen(!f68582e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        UserInfo userInfoS = S(context);
        return userInfoS != null && com.join.mgps.Util.t2.i(userInfoS.getToken());
    }

    private void j0() {
        this.f68584c.setVisibility(8);
        this.f68594k.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loading() {
        Z(0);
        o0();
        if (com.join.android.app.common.utils.m.j(this.A)) {
            r0();
        } else {
            showToast(getString(R.string.net_connect_failed));
            Z(17);
        }
    }

    private void m0() {
        this.f68586e.setText("我的收藏");
        this.f68589g = new ArrayList();
        this.f68593j.requestFocus();
        this.f68593j.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.f68593j.setPullLoadEnable(new p());
        this.f68593j.setPullRefreshEnable(new q());
        this.f68590h = new ArrayList();
        this.C = new com.join.android.app.component.video.c(this.A, V1);
        ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = new ForumProfileFavoritesAdapter(this.A, this.C);
        this.f68591i = forumProfileFavoritesAdapter;
        forumProfileFavoritesAdapter.M(this.f68598n);
        this.f68593j.setAdapter((ListAdapter) this.f68591i);
        this.f68593j.setOnScrollListener(this);
        this.f68593j.setOnTouchListener(new r());
        this.f68593j.setOnItemClickListener(new s());
        this.f68593j.setOnItemLongClickListener(new t());
    }

    private void playVideo() {
        String str = this.Q;
        String str2 = this.R;
        this.L.setVisibility(0);
        this.L.setScaleType(ImageView.ScaleType.FIT_XY);
        com.join.android.app.common.utils.l.h(this.L, str2);
        LinearLayout linearLayout = this.N;
        if (this.O == null) {
            MediaController mediaController = new MediaController(this.A);
            this.O = mediaController;
            mediaController.q();
            this.O.hide();
            this.O.setVisibility(8);
        }
        if (f68581d2.isPlaying()) {
            MyVideoView myVideoView = f68581d2;
            if (myVideoView != null) {
                myVideoView.I();
                linearLayout.setVisibility(8);
            }
            MediaController mediaController2 = this.O;
            if (mediaController2 != null) {
                mediaController2.setVisibility(8);
            }
        }
        f68581d2.setVisibility(0);
        this.O.setAnchorView(f68581d2);
        this.O.setMediaPlayer(f68581d2);
        f68581d2.setMediaController(this.O);
        f68581d2.requestFocus();
        linearLayout.setVisibility(0);
        if (!f68581d2.E() || f68581d2.isPlaying()) {
            f68581d2.setVideoPath(str);
            com.join.mgps.Util.h1.e("play a new video ...");
        } else {
            L0();
            com.join.mgps.Util.h1.e("play a last video ...");
        }
        f68581d2.setOnCompletionListener(new h());
        f68581d2.setOnPreparedListener(new i());
        f68581d2.setOnErrorListener(new j());
        f68581d2.setScreenChangedListener(new l());
        this.M.setOnClickListener(new m());
    }

    private void r0() {
        q0(1);
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.Y.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.Z.remove(next.getCrc_link_type_val());
                it2.remove();
                e1(downloadTask, 2);
                break;
            }
        }
        this.f68593j.requestLayout();
        t0();
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.Z;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            e1(downloadTask, 3);
            t0();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.Y, downloadTask);
        Map<String, DownloadTask> map = this.Z;
        if (map != null) {
            if (map.containsKey(downloadTask.getCrc_link_type_val())) {
                this.Z.get(downloadTask.getCrc_link_type_val()).setStatus(downloadTask.getStatus());
            } else {
                this.Y.add(downloadTask);
                this.Z.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        e1(downloadTask, 0);
        t0();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.Z;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.Y.add(downloadTask);
            this.Z.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        e1(downloadTask, 1);
        DownloadTask downloadTask2 = this.Z.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        this.f68593j.requestLayout();
        t0();
    }

    private void updateProgressPartly() {
        XListView2 xListView2 = this.f68593j;
        ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = this.f68591i;
        if (forumProfileFavoritesAdapter != null && this.f68588f1 <= forumProfileFavoritesAdapter.getCount()) {
            for (int i10 = this.f68592i1; i10 <= this.f68588f1; i10++) {
                if (this.f68591i.getItemViewType(i10) == ForumProfileFavoritesAdapter.ViewType.GAME_ITEM.ordinal()) {
                    ForumProfileFavoritesAdapter.k0.b bVar = (ForumProfileFavoritesAdapter.k0.b) this.f68591i.getItem(i10);
                    if (bVar.a() != null && bVar.a().getGame() != null) {
                        DownloadTask downloadTask = bVar.a().getDownloadTask();
                        String game_id = bVar.a().getGame().getGame_id();
                        if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                            View childAt = xListView2.getChildAt(i10 - this.f68592i1);
                            if (childAt.getTag() instanceof ForumProfileFavoritesAdapter.w) {
                                DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(game_id);
                                f1((ForumProfileFavoritesAdapter.w) childAt.getTag(), downloadTask, downloadTaskG);
                                e1(downloadTaskG, 4);
                            }
                        }
                    }
                }
            }
        }
    }

    public static boolean y0(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getRepeatCount() == 0 && f68578a2 == 2) {
            f68582e2 = true;
            d1();
        }
        return true;
    }

    void A0() {
        MyVideoView myVideoView = f68581d2;
        if (myVideoView.isPlaying() && (myVideoView != null)) {
            f68581d2.pause();
            this.M.setVisibility(0);
        }
    }

    void B0(String videoUrl, String coverUrl) {
        String str = this.Q;
        if (str != null && str.equals(videoUrl) && f68581d2.isPlaying()) {
            A0();
            return;
        }
        MyVideoView myVideoView = f68581d2;
        if (myVideoView != null) {
            if (myVideoView.E() && this.Q.equals(videoUrl)) {
                f68581d2.seekTo(0);
                L0();
            } else {
                f68581d2.G();
            }
        }
        this.Q = videoUrl;
        this.R = coverUrl;
        if (com.join.mgps.Util.t2.h(videoUrl)) {
            b1();
            return;
        }
        this.L.setVisibility(8);
        this.M.setVisibility(8);
        playVideo();
    }

    void C0(boolean flag) {
        Bundle bundle = new Bundle();
        bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY_BACKGROUND.name());
        bundle.putStringArray("key_mediacmd_params", new String[]{String.valueOf(flag)});
        X(bundle);
    }

    @Background
    void D0(int curPid) {
        try {
            if (!com.join.mgps.Util.r0.Y0(this.A)) {
                com.join.mgps.Util.r0.L0(this.A);
                com.join.mgps.Util.a3.b(this.A).d("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanE0 = com.join.mgps.Util.r0.e0(this.A, curPid);
            forumPostsPraiseRequestBeanE0.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> forumResponseR = this.f68595l.R(forumPostsPraiseRequestBeanE0.getParams());
            if (forumResponseR == null) {
                return;
            }
            if (forumResponseR.getError() == 706) {
                J0(curPid);
                V0();
            } else {
                ForumData.ForumPostsPraiseData data = forumResponseR.getData();
                data.isResult();
                com.join.mgps.Util.r0.m1(forumPostsPraiseRequestBeanE0, data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void E0(ForumBean.GameInfo gameInfo) {
        if (gameInfo != null) {
            try {
                DownloadTask downloadTaskG = q5.f.M().G(gameInfo.getGame_id());
                gameInfo.setDownloadTask(downloadTaskG);
                Map<String, DownloadTask> map = this.Z;
                if (map == null || downloadTaskG == null || map.containsKey(downloadTaskG.getCrc_link_type_val())) {
                    return;
                }
                this.Y.add(downloadTaskG);
                this.Z.put(downloadTaskG.getCrc_link_type_val(), downloadTaskG);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @UiThread
    void F0(List<ForumData.ForumUserFavoritesData> postsList, int page) {
        if (postsList != null && postsList.size() != 0) {
            if (page == 1) {
                this.f68589g.clear();
                this.f68600p = 1;
                c1();
            }
            this.f68589g.addAll(postsList);
        }
        c1();
        t0();
    }

    void H0() {
        if (this.S) {
            this.J.setVisibility(0);
        } else {
            this.J.setVisibility(8);
        }
    }

    void I0(Intent data) {
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
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.f68589g) {
            if (forumUserFavoritesData.getType() == 2 && forumUserFavoritesData.getPost() != null) {
                ForumBean.ForumPostsBean post = forumUserFavoritesData.getPost();
                if (post.getPid() == intExtra) {
                    post.setView(intExtra2);
                    post.setCommit(intExtra3);
                    post.setPraise(intExtra4);
                    post.setIs_praise(booleanExtra);
                    if (!booleanExtra2) {
                        this.f68589g.remove(post);
                    }
                    t0();
                    return;
                }
            }
        }
    }

    void J0(int pid) {
        List<ForumData.ForumUserFavoritesData> list = this.f68589g;
        if (list == null || list.size() == 0) {
            return;
        }
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.f68589g) {
            if (forumUserFavoritesData.getType() == 2) {
                ForumBean.ForumPostsBean post = forumUserFavoritesData.getPost();
                if (post == null) {
                    return;
                }
                if (post.getPid() == pid) {
                    post.setPraise(post.is_praise() ? post.getPraise() - 1 : post.getPraise() + 1);
                    post.setIs_praise(!post.is_praise());
                    t0();
                    return;
                }
            }
        }
    }

    RelativeLayout.LayoutParams K0() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.J.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = -1;
            layoutParams.height = -1;
            this.J.setPadding(0, 0, 0, 0);
        }
        RelativeLayout relativeLayout = this.K;
        if (relativeLayout == null) {
            return layoutParams;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = -1;
        }
        this.J.setTop(0);
        return layoutParams;
    }

    void L0() {
        MyVideoView myVideoView = f68581d2;
        if (!myVideoView.E() || !(myVideoView != null)) {
            playVideo();
            return;
        }
        this.N.setVisibility(8);
        this.L.setVisibility(8);
        this.M.setVisibility(8);
        f68581d2.start();
        MediaController mediaController = this.O;
        if (mediaController != null) {
            mediaController.setVisibility(8);
        }
    }

    void M0(ForumData.ForumUserFavoritesData data) {
        if (data == null) {
            return;
        }
        this.f68590h.add(new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.FAVORITE_ITEM_HEADER, new ForumProfileFavoritesAdapter.k0.a(false, data.getType(), data.getFav_time())));
    }

    void N0(ForumData.ForumUserFavoritesData data) {
        if (data == null || data.getGame() == null || TextUtils.isEmpty(data.getGame().getGame_id())) {
            return;
        }
        try {
            DownloadTask downloadTaskG = q5.f.M().G(data.getGame().getGame_id());
            data.setDownloadTask(downloadTaskG);
            Map<String, DownloadTask> map = this.Z;
            if (map == null || downloadTaskG == null || map.containsKey(downloadTaskG.getCrc_link_type_val())) {
                return;
            }
            this.Y.add(downloadTaskG);
            this.Z.put(downloadTaskG.getCrc_link_type_val(), downloadTaskG);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void O0(ForumData.ForumUserFavoritesData data) {
        N0(data);
        new ForumProfileFavoritesAdapter.k0(ForumProfileFavoritesAdapter.ViewType.GAME_ITEM, new ForumProfileFavoritesAdapter.k0.b(data));
    }

    void S0() {
        RelativeLayout relativeLayout = this.K;
        if (relativeLayout == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = i0(this.A);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.J.getLayoutParams();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mg_forum_post_item_padding);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_top);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_bottom);
        if (layoutParams2 != null) {
            layoutParams2.height = -2;
            this.J.setPadding(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize3);
        }
        this.K.postInvalidate();
    }

    public void T(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        if (this.f68611v1 != firstVisibleItem || firstVisibleItem == 0) {
            this.f68611v1 = firstVisibleItem;
            this.L1 = visibleItemCount;
            this.R1 = totalItemCount;
        }
    }

    @UiThread
    void T0() {
        XListView2 xListView2 = this.f68593j;
        if (xListView2 != null) {
            xListView2.setNoMore();
        }
    }

    public void U(AbsListView view, int scrollState) {
        if (scrollState != 0) {
            return;
        }
        V(view);
    }

    void U0(ForumBean.ForumPostsBean bean) {
        if (bean == null) {
            return;
        }
        if (this.H == null) {
            this.H = getActivity().findViewById(R.id.bottom);
        }
        if (this.G == null) {
            this.G = com.join.mgps.customview.f.z(this.A);
        }
        this.G.m(this.F);
        com.join.mgps.customview.e eVar = this.G;
        if (eVar == null || eVar.isShowing()) {
            return;
        }
        this.G.p(this.H, bean);
    }

    public void V(AbsListView view) {
        try {
            if (!com.join.mgps.pref.h.n(this.A).a()) {
                if (com.papa.gsyvideoplayer.d.e0().l() >= 0) {
                    com.papa.gsyvideoplayer.d.j0();
                    return;
                }
                return;
            }
            for (int i10 = 0; i10 < this.L1; i10++) {
                if (view != null && view.getChildAt(i10) != null && view.getChildAt(i10).findViewById(R.id.videoPlayer) != null) {
                    StandardVideoView standardVideoView = (StandardVideoView) view.getChildAt(i10).findViewById(R.id.videoPlayer);
                    Rect rect = new Rect();
                    standardVideoView.getLocalVisibleRect(rect);
                    int height = standardVideoView.getHeight();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("child=");
                    sb2.append(i10);
                    sb2.append(", videoHeight=");
                    sb2.append(height);
                    sb2.append(", rect.top:");
                    sb2.append(rect.top);
                    sb2.append(", rect.bottom:");
                    sb2.append(rect.bottom);
                    if (rect.top == 0 && rect.bottom == height) {
                        int currentState = standardVideoView.getCurrentState();
                        if (currentState == 0 || currentState == 7) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("currentState=");
                            sb3.append(currentState);
                            sb3.append(" -->performClick");
                            if (com.join.android.app.common.utils.m.k(this.A)) {
                                standardVideoView.startPlayLogic();
                                this.f68606r1 = view;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
            }
            com.papa.gsyvideoplayer.d.j0();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void V0() {
        com.join.mgps.Util.h0.h0(this.A).m(this.A);
    }

    @Click
    void W() {
        getActivity().finish();
    }

    @UiThread
    void W0() {
    }

    public void X(Bundle arg) {
        if (arg == null) {
            return;
        }
        String string = arg.getString("key_mediacmd");
        Object[] objArr = (Object[]) arg.get("key_mediacmd_params");
        com.join.mgps.Util.h1.e("callbackPlayVideo", "cmd=" + string, "params=" + objArr.toString());
        if (string.equals(ForumProfileFavoritesActivity.MediaCmd.CMD_PLAY.name())) {
            String str = null;
            String str2 = null;
            for (int i10 = 0; i10 < objArr.length; i10++) {
                String str3 = (String) objArr[i10];
                if (i10 == 0) {
                    int i11 = Integer.parseInt(str3);
                    if (i11 == this.P) {
                        return;
                    }
                    b1();
                    this.P = i11;
                } else if (i10 == 1) {
                    str = str3;
                } else if (i10 == 2) {
                    str2 = str3;
                }
            }
            com.join.mgps.Util.h1.e("CMD_PLAY", "videoUrl=" + str, "coverUrl=" + str2);
            this.J.setVisibility(0);
            this.S = true;
            S0();
            B0(str, str2);
            return;
        }
        if (string.equals(ForumProfileFavoritesActivity.MediaCmd.CMD_PLAY_BACKGROUND.name())) {
            if (this.P == -1) {
                return;
            }
            if (Boolean.parseBoolean((String) objArr[0])) {
                this.J.setVisibility(8);
                this.S = false;
                b1();
                return;
            } else {
                if (this.P == -1) {
                    return;
                }
                this.J.setVisibility(0);
                this.S = true;
                return;
            }
        }
        if (string.equals(ForumProfileFavoritesActivity.MediaCmd.CMD_PAUSE.name())) {
            A0();
            return;
        }
        if (string.equals(ForumProfileFavoritesActivity.MediaCmd.CMD_STOP.name())) {
            b1();
            return;
        }
        if (string.equals(ForumProfileFavoritesActivity.MediaCmd.CMD_FULLSCREEN.name())) {
            String str4 = "false";
            for (int i12 = 0; i12 < objArr.length; i12++) {
                if (i12 == 0) {
                    str4 = (String) objArr[0];
                }
                if (i12 == 1) {
                }
            }
            Boolean.parseBoolean(str4);
            f0();
            return;
        }
        if (string.equals(ForumProfileFavoritesActivity.MediaCmd.CMD_TRANSLATE_Y.name())) {
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
            x0(i14, i15);
        }
    }

    @Background
    void Y(int type, String gameId) {
        int uid;
        String str;
        ResultMainBean resultMainBeanJ1;
        if (!com.join.android.app.common.utils.m.j(this.A)) {
            com.join.mgps.Util.a3.b(this.A).d(getString(R.string.network_conn_failed));
            return;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this.A).getAccountData();
        if (accountData != null) {
            uid = this.B;
            if (uid == 0) {
                uid = accountData.getUid();
            }
        } else {
            uid = 0;
        }
        try {
            PackageInfo packageInfo = this.A.getPackageManager().getPackageInfo(this.A.getPackageName(), 0);
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
        CommonRequestBean<RequestGameIdArgs> detialFollowAnd = RequestBeanUtil.getInstance(this.A).getDetialFollowAnd(requestdetialFolowAndBeSpeak);
        if (type == 1) {
            resultMainBeanJ1 = this.D.j1(detialFollowAnd);
        } else if (type == 2) {
            resultMainBeanJ1 = this.D.n(detialFollowAnd);
        } else if (type != 3) {
            resultMainBeanJ1 = type != 4 ? null : this.D.M0(detialFollowAnd);
        } else {
            resultMainBeanJ1 = this.D.g(detialFollowAnd);
        }
        if (resultMainBeanJ1 != null) {
            g1(resultMainBeanJ1, type, gameId);
        } else {
            com.join.mgps.Util.a3.b(this.A).d(getString(R.string.game_unfollow_failed));
        }
    }

    void Y0(final String gameId) {
        if (this.E == null) {
            this.E = com.join.mgps.Util.h0.h0(this.A).d(this.A, "取消收藏", "确定要取消收藏吗？", "取消", "确定", new u(gameId));
        }
        ((Button) this.E.findViewById(R.id.dialog_button_ok)).setOnClickListener(new v(gameId));
        Dialog dialog = this.E;
        if (dialog == null || dialog.isShowing()) {
            return;
        }
        this.E.show();
    }

    @UiThread
    void Z(int state) {
        int i10;
        ForumLoadingView forumLoadingView = this.f68587f;
        if (forumLoadingView == null || (i10 = this.f68614y) == 32) {
            return;
        }
        if (state == 32) {
            this.f68614y = 32;
            forumLoadingView.j(2);
            return;
        }
        if (state == 0) {
            this.f68614y = 0;
            forumLoadingView.m();
            this.f68587f.j(1);
            return;
        }
        this.f68614y = state | i10;
        if (a0(-11)) {
            this.f68614y = 16;
            this.f68587f.setFailedMsg("网络连接失败，再试试吧~");
            ForumLoadingView forumLoadingView2 = this.f68587f;
            forumLoadingView2.setListener(new c(forumLoadingView2));
            this.f68587f.j(9);
            return;
        }
        if (a0(22)) {
            this.f68614y = 16;
            this.f68587f.setFailedMsg("还没有收藏内容~");
            ForumLoadingView forumLoadingView3 = this.f68587f;
            forumLoadingView3.setListener(new d(forumLoadingView3));
            this.f68587f.j(10);
            this.f68587f.setReloadingVisibility(0);
            this.f68587f.setFailedReloadingRes(R.drawable.papa_loading_null);
            return;
        }
        if (a0(31) || a0(26)) {
            this.f68614y = 16;
            this.f68587f.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView4 = this.f68587f;
            forumLoadingView4.setListener(new e(forumLoadingView4));
            this.f68587f.j(16);
            return;
        }
        if (a0(17)) {
            this.f68614y = 16;
            this.f68587f.setFailedMsg("网络连接失败，再试试吧~");
            ForumLoadingView forumLoadingView5 = this.f68587f;
            forumLoadingView5.setListener(new f(forumLoadingView5));
            this.f68587f.j(9);
        }
    }

    boolean a0(int val) {
        return (this.f68614y & val) == val;
    }

    @UiThread
    void a1(DetailResultBean detialResultBean) {
        DownloadTask downloadtaskDown;
        if (detialResultBean == null || (downloadtaskDown = detialResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        w0(downloadtaskDown, 0);
        if (UtilsMy.y0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.z4(this.A, downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.A1(downloadtaskDown, detialResultBean);
        if (UtilsMy.o1(this.A, downloadtaskDown)) {
            return;
        }
        if (detialResultBean.getDown_status() == 5) {
            UtilsMy.l1(this.A, downloadtaskDown);
        } else {
            UtilsMy.U0(this.A, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    @AfterViews
    void afterViews() {
        this.f68595l = com.join.mgps.rpc.impl.g.A0();
        this.D = com.join.mgps.rpc.impl.d.O1();
        this.A = getActivity();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.B = arguments.getInt("uid", 0);
        }
        f68578a2 = getResources().getConfiguration().orientation;
        this.f68615z = AccountUtil_.getInstance_(this.A).getAccountData();
        try {
            k0();
            m0();
            loading();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void b0() {
        if (this.f68590h == null) {
            return;
        }
        System.gc();
    }

    void b1() {
        MyVideoView myVideoView = f68581d2;
        if (myVideoView != null) {
            myVideoView.seekTo(0);
            f68581d2.I();
            this.P = -1;
            f68581d2.G();
            this.N.setVisibility(8);
            MediaController mediaController = this.O;
            if (mediaController != null) {
                mediaController.setVisibility(8);
            }
            this.M.setVisibility(0);
            if (getResources().getConfiguration().orientation != 1) {
                d1();
            } else {
                this.J.setVisibility(8);
                this.S = false;
            }
        }
    }

    @Background
    void c0(Context context, int pid) {
        try {
            if (com.join.mgps.Util.r0.c0(context, pid) != null) {
                ForumResponse<ForumData.ForumPostsDeleteData> forumResponseI = this.f68595l.I(com.join.mgps.Util.r0.c0(context, pid).getParams());
                ForumData.ForumPostsDeleteData data = forumResponseI != null ? forumResponseI.getData() : null;
                u0(pid, data != null && data.isResult());
            }
        } catch (Exception unused) {
            u0(pid, false);
        }
    }

    @UiThread
    void c1() {
        XListView2 xListView2 = this.f68593j;
        if (xListView2 != null) {
            if (xListView2.j()) {
                this.f68599o.sendEmptyMessageDelayed(0, 2000L);
            } else {
                this.f68599o.sendEmptyMessage(0);
            }
        }
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.f68601p0.containsKey(crc_link_type_val)) {
                this.f68601p0.put(crc_link_type_val, task);
            }
            if (!this.f68583b1.containsKey(crc_link_type_val)) {
                this.f68583b1.put(crc_link_type_val, task);
            }
        } else if (from != 3) {
            if (from != 5) {
                if (from != 6) {
                    if (from == 7) {
                        if (this.f68601p0.containsKey(crc_link_type_val)) {
                            this.f68601p0.remove(crc_link_type_val);
                        }
                        if (this.f68583b1.containsKey(crc_link_type_val)) {
                            this.f68583b1.remove(crc_link_type_val);
                        }
                    } else if (from == 10) {
                        if (!this.f68601p0.containsKey(crc_link_type_val)) {
                            this.f68601p0.put(crc_link_type_val, task);
                        }
                        if (!this.f68583b1.containsKey(crc_link_type_val)) {
                            this.f68583b1.put(crc_link_type_val, task);
                        }
                    } else if (from == 11) {
                    }
                } else if (this.f68583b1.containsKey(crc_link_type_val)) {
                    this.f68583b1.remove(crc_link_type_val);
                }
            } else if (this.f68601p0.containsKey(crc_link_type_val)) {
                this.f68601p0.remove(crc_link_type_val);
            }
            if (this.f68583b1.containsKey(crc_link_type_val)) {
                this.f68583b1.remove(crc_link_type_val);
            }
        } else if (this.f68583b1.containsKey(crc_link_type_val)) {
            this.f68583b1.remove(crc_link_type_val);
        }
        updateDownloadView();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Background
    void e0(String str) {
        int uid;
        if (!com.join.android.app.common.utils.m.j(this.A)) {
            showToast("获取游戏信息失败");
            return;
        }
        if (this.f68602p1 == 1) {
            return;
        }
        try {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this.A).getAccountData();
                if (accountData != null) {
                    uid = this.B;
                    if (uid == 0) {
                        uid = accountData.getUid();
                    }
                } else {
                    uid = 0;
                }
                ResultMainBean<List<DetailResultBean>> resultMainBeanI0 = this.f68596l1.I0(RequestBeanUtil.getInstance(this.A).getAppDetialBean(str, uid, null));
                if (resultMainBeanI0 != null && resultMainBeanI0.getFlag() != 0) {
                    List<DetailResultBean> data = resultMainBeanI0.getMessages().getData();
                    if (data.size() != 0) {
                        DetailResultBean detailResultBean = data.get(0);
                        if (this.f68604q1) {
                            a1(detailResultBean);
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
            this.f68602p1 = 0;
            this.f68604q1 = false;
        }
    }

    void e1(DownloadTask downloadTask, int event) {
        com.join.mgps.Util.h1.e(V1, "event=" + event, "downloadTask=" + downloadTask.toString());
        ForumData.ForumUserFavoritesData forumUserFavoritesDataH0 = h0(downloadTask.getCrc_link_type_val());
        if (forumUserFavoritesDataH0 == null) {
            return;
        }
        if (event == 0 || event == 1) {
            forumUserFavoritesDataH0.setDownloadTask(downloadTask);
            return;
        }
        if (event == 2) {
            forumUserFavoritesDataH0.setDownloadTask(null);
        } else if (event == 3 || event == 4) {
            forumUserFavoritesDataH0.setDownloadTask(downloadTask);
        }
    }

    void f0() {
        if (!(getResources().getConfiguration().orientation == 2)) {
            f68582e2 = true;
            j0();
            K0();
        } else {
            f68582e2 = false;
            Z0();
            S0();
            x0(0, 0);
        }
    }

    void f1(ForumProfileFavoritesAdapter.w holder, DownloadTask downloadTask, DownloadTask taskProgress) {
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

    ForumBean.ForumPostsBean g0(int pid) {
        List<ForumData.ForumUserFavoritesData> list = this.f68589g;
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

    @UiThread
    void g1(ResultMainBean result, int type, String gameId) {
        if (type != 1) {
            return;
        }
        if (result.getFlag() != 1) {
            com.join.mgps.Util.a3.b(this.A).d(result.getError_info());
            return;
        }
        ForumData.ForumUserFavoritesData forumUserFavoritesDataH0 = h0(gameId);
        List<ForumData.ForumUserFavoritesData> list = this.f68589g;
        if (list != null && list.contains(forumUserFavoritesDataH0)) {
            this.f68589g.remove(forumUserFavoritesDataH0);
            com.join.mgps.Util.r0.h1(forumUserFavoritesDataH0);
        }
        t0();
    }

    @Background
    void getDownloadTaskInfo() {
        List<DownloadTask> listR = q5.f.M().r();
        List<DownloadTask> listQ = q5.f.M().q();
        if (listQ != null && listQ.size() > 0) {
            for (DownloadTask downloadTask : listQ) {
                this.f68601p0.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.f68583b1.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    ForumData.ForumUserFavoritesData h0(String crcLinkTypeVal) {
        for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.f68589g) {
            if (forumUserFavoritesData.getType() == 1 && forumUserFavoritesData.getGame() != null && !TextUtils.isEmpty(forumUserFavoritesData.getGame().getGame_id()) && forumUserFavoritesData.getGame().getGame_id().equals(crcLinkTypeVal)) {
                return forumUserFavoritesData;
            }
        }
        return null;
    }

    boolean h1() {
        if (S(this.A) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this.A).isTourist();
    }

    int i0(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.V == 0) {
            Resources resources = context.getResources();
            this.V = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.V;
    }

    public void i1(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (newConfig.orientation == 2) {
            this.f68594k.setVisibility(4);
        } else {
            this.f68594k.setVisibility(0);
        }
    }

    @UiThread
    void j1(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        v0();
    }

    void k0() {
        try {
            com.join.mgps.Util.j0.a().d(this);
            getDownloadTaskInfo();
            List<DownloadTask> listD = q5.f.M().d();
            this.Y = listD;
            if (listD != null && listD.size() > 0) {
                for (DownloadTask downloadTask : this.Y) {
                    this.Z.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
            this.f68596l1 = com.join.mgps.rpc.impl.d.O1();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void k1(AbsListView view, int scrollState) {
        if (scrollState == 0) {
            C0(!n0());
            if (Fresco.getImagePipeline().P()) {
                Fresco.getImagePipeline().c0();
            }
        }
    }

    public void l0() {
    }

    boolean n0() {
        if (this.I == -1) {
            return false;
        }
        int firstVisiblePosition = this.f68593j.getFirstVisiblePosition();
        int lastVisiblePosition = this.f68593j.getLastVisiblePosition();
        int i10 = this.I;
        return i10 >= firstVisiblePosition - 0 && i10 <= lastVisiblePosition;
    }

    @Background
    void o0() {
        p0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == 3) {
            I0(data);
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        i1(newConfig);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        com.join.android.app.component.video.c cVar = this.C;
        if (cVar != null) {
            cVar.F();
        }
        b0();
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        changeDownloadTaskNumber(downloadTaskA, downloadTaskEvent.c());
        switch (downloadTaskEvent.c()) {
            case 2:
                updateUI(downloadTaskA, 1);
                break;
            case 3:
                updateUI(downloadTaskA, 2);
                break;
            case 5:
            case 11:
                updateUI(downloadTaskA, 5);
                break;
            case 6:
                updateUI(downloadTaskA, 6);
                break;
            case 7:
                updateUI(downloadTaskA, 3);
                break;
            case 8:
                Map<String, DownloadTask> map = this.Z;
                if (map != null && !map.isEmpty()) {
                    updateProgressPartly();
                    break;
                }
                break;
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
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        b1();
        com.join.android.app.component.video.c cVar = this.C;
        if (cVar != null) {
            cVar.G();
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.c cVar = this.C;
        if (cVar != null) {
            cVar.H();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f68588f1 = (firstVisibleItem + visibleItemCount) - 1;
        this.f68592i1 = firstVisibleItem;
        j1(view, firstVisibleItem, visibleItemCount, totalItemCount);
        this.C.e(view, firstVisibleItem, visibleItemCount, totalItemCount);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        k1(view, scrollState);
        this.C.i(view, scrollState);
    }

    @Background
    void p0() {
        try {
            ForumTable forumTableO = t6.t.p().o(ForumBean.ForumEvent.MyProfileFavorites);
            if (com.join.mgps.Util.t2.h(forumTableO.getArgs1())) {
                Z(18);
                return;
            }
            ForumData.ForumUserFavoritesDatas forumUserFavoritesDatasJ = com.join.mgps.Util.r0.J(forumTableO.getArgs1());
            List<ForumData.ForumUserFavoritesData> favorites_list = forumUserFavoritesDatasJ != null ? forumUserFavoritesDatasJ.getFavorites_list() : null;
            if (favorites_list == null || favorites_list.size() == 0) {
                Z(18);
                return;
            }
            int iCeil = (int) Math.ceil((favorites_list.size() * 1.0f) / com.join.mgps.Util.r0.f49989d);
            this.f68600p = iCeil;
            F0(favorites_list, iCeil);
            Z(32);
        } catch (Exception e10) {
            Z(18);
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003f A[Catch: all -> 0x0021, Exception -> 0x0024, TryCatch #1 {Exception -> 0x0024, blocks: (B:11:0x001d, B:21:0x0037, B:23:0x003f, B:25:0x0043, B:26:0x0049, B:28:0x005c, B:30:0x0064, B:32:0x0069, B:34:0x006f, B:36:0x0075, B:38:0x007d, B:41:0x0085, B:42:0x008b, B:37:0x007b, B:49:0x009b, B:52:0x00a3, B:20:0x0033), top: B:72:0x001d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0043 A[Catch: all -> 0x0021, Exception -> 0x0024, TryCatch #1 {Exception -> 0x0024, blocks: (B:11:0x001d, B:21:0x0037, B:23:0x003f, B:25:0x0043, B:26:0x0049, B:28:0x005c, B:30:0x0064, B:32:0x0069, B:34:0x006f, B:36:0x0075, B:38:0x007d, B:41:0x0085, B:42:0x008b, B:37:0x007b, B:49:0x009b, B:52:0x00a3, B:20:0x0033), top: B:72:0x001d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x005c A[Catch: all -> 0x0021, Exception -> 0x0024, TryCatch #1 {Exception -> 0x0024, blocks: (B:11:0x001d, B:21:0x0037, B:23:0x003f, B:25:0x0043, B:26:0x0049, B:28:0x005c, B:30:0x0064, B:32:0x0069, B:34:0x006f, B:36:0x0075, B:38:0x007d, B:41:0x0085, B:42:0x008b, B:37:0x007b, B:49:0x009b, B:52:0x00a3, B:20:0x0033), top: B:72:0x001d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0064 A[Catch: all -> 0x0021, Exception -> 0x0024, TryCatch #1 {Exception -> 0x0024, blocks: (B:11:0x001d, B:21:0x0037, B:23:0x003f, B:25:0x0043, B:26:0x0049, B:28:0x005c, B:30:0x0064, B:32:0x0069, B:34:0x006f, B:36:0x0075, B:38:0x007d, B:41:0x0085, B:42:0x008b, B:37:0x007b, B:49:0x009b, B:52:0x00a3, B:20:0x0033), top: B:72:0x001d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0069 A[Catch: all -> 0x0021, Exception -> 0x0024, TryCatch #1 {Exception -> 0x0024, blocks: (B:11:0x001d, B:21:0x0037, B:23:0x003f, B:25:0x0043, B:26:0x0049, B:28:0x005c, B:30:0x0064, B:32:0x0069, B:34:0x006f, B:36:0x0075, B:38:0x007d, B:41:0x0085, B:42:0x008b, B:37:0x007b, B:49:0x009b, B:52:0x00a3, B:20:0x0033), top: B:72:0x001d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x007b A[Catch: all -> 0x0021, Exception -> 0x0024, TryCatch #1 {Exception -> 0x0024, blocks: (B:11:0x001d, B:21:0x0037, B:23:0x003f, B:25:0x0043, B:26:0x0049, B:28:0x005c, B:30:0x0064, B:32:0x0069, B:34:0x006f, B:36:0x0075, B:38:0x007d, B:41:0x0085, B:42:0x008b, B:37:0x007b, B:49:0x009b, B:52:0x00a3, B:20:0x0033), top: B:72:0x001d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x008b A[Catch: all -> 0x0021, Exception -> 0x0024, TRY_LEAVE, TryCatch #1 {Exception -> 0x0024, blocks: (B:11:0x001d, B:21:0x0037, B:23:0x003f, B:25:0x0043, B:26:0x0049, B:28:0x005c, B:30:0x0064, B:32:0x0069, B:34:0x006f, B:36:0x0075, B:38:0x007d, B:41:0x0085, B:42:0x008b, B:37:0x007b, B:49:0x009b, B:52:0x00a3, B:20:0x0033), top: B:72:0x001d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0091  */
    /* JADX WARN: Code duplicated, block: B:46:0x0095  */
    /* JADX WARN: Code duplicated, block: B:49:0x009b A[Catch: all -> 0x0021, Exception -> 0x0024, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0024, blocks: (B:11:0x001d, B:21:0x0037, B:23:0x003f, B:25:0x0043, B:26:0x0049, B:28:0x005c, B:30:0x0064, B:32:0x0069, B:34:0x006f, B:36:0x0075, B:38:0x007d, B:41:0x0085, B:42:0x008b, B:37:0x007b, B:49:0x009b, B:52:0x00a3, B:20:0x0033), top: B:72:0x001d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00a3 A[Catch: all -> 0x0021, Exception -> 0x0024, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0024, blocks: (B:11:0x001d, B:21:0x0037, B:23:0x003f, B:25:0x0043, B:26:0x0049, B:28:0x005c, B:30:0x0064, B:32:0x0069, B:34:0x006f, B:36:0x0075, B:38:0x007d, B:41:0x0085, B:42:0x008b, B:37:0x007b, B:49:0x009b, B:52:0x00a3, B:20:0x0033), top: B:72:0x001d, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00b5  */
    @Background
    void q0(int page) {
        String versionAndVersionName;
        int uid;
        ForumResponse<ForumData.ForumUserFavoritesDatas> forumResponseX;
        ForumData.ForumUserFavoritesDatas data;
        List<ForumData.ForumUserFavoritesData> favorites_list;
        if (!com.join.android.app.common.utils.m.j(this.A)) {
            if (this.f68603q != -1) {
                this.f68603q = 0;
            }
            showToast(getString(R.string.net_connect_failed));
            Z(17);
            c1();
            return;
        }
        int i10 = this.f68603q;
        if (page == i10) {
            return;
        }
        if (i10 == -1) {
            c1();
        }
        this.f68603q = page;
        try {
            if (page > 1) {
                try {
                    W0();
                    try {
                        RequestBeanUtil.getInstance(this.A);
                        versionAndVersionName = RequestBeanUtil.getVersionAndVersionName();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        versionAndVersionName = "";
                    }
                    if (com.join.mgps.Util.r0.Y0(this.A)) {
                        uid = this.B;
                        if (uid == 0) {
                            uid = this.f68615z.getUid();
                        }
                        forumResponseX = this.f68595l.X(uid, this.f68615z.getToken(), page, com.join.mgps.Util.r0.f49989d, "", versionAndVersionName, 2);
                        if (forumResponseX != null) {
                            this.f68603q = 0;
                            this.f68603q = 0;
                            c1();
                            return;
                        }
                        data = forumResponseX.getData();
                        if (page == 1) {
                            com.join.mgps.Util.r0.s1(data);
                        }
                        if (data != null) {
                            if (this.f68603q != -1) {
                                this.f68603q = 0;
                            }
                            c1();
                            return;
                        }
                        favorites_list = data.getFavorites_list();
                        if (favorites_list != null || favorites_list.size() == 0) {
                            this.f68603q = -1;
                        } else {
                            this.f68600p = page;
                            F0(favorites_list, page);
                        }
                        if (favorites_list.size() == 0 || page != 1) {
                            Z(32);
                        } else {
                            Z(20);
                        }
                    } else {
                        Z(24);
                    }
                    if (this.f68603q != -1) {
                        this.f68603q = 0;
                    }
                } catch (Exception e11) {
                    Z(24);
                    e11.printStackTrace();
                    if (this.f68603q != -1) {
                    }
                    c1();
                }
            } else {
                RequestBeanUtil.getInstance(this.A);
                versionAndVersionName = RequestBeanUtil.getVersionAndVersionName();
                if (com.join.mgps.Util.r0.Y0(this.A)) {
                    uid = this.B;
                    if (uid == 0) {
                        uid = this.f68615z.getUid();
                    }
                    forumResponseX = this.f68595l.X(uid, this.f68615z.getToken(), page, com.join.mgps.Util.r0.f49989d, "", versionAndVersionName, 2);
                    if (forumResponseX != null) {
                        this.f68603q = 0;
                        this.f68603q = 0;
                        c1();
                        return;
                    }
                    data = forumResponseX.getData();
                    if (page == 1) {
                        com.join.mgps.Util.r0.s1(data);
                    }
                    if (data != null) {
                        if (this.f68603q != -1) {
                            this.f68603q = 0;
                        }
                        c1();
                        return;
                    } else {
                        favorites_list = data.getFavorites_list();
                        if (favorites_list != null) {
                            this.f68603q = -1;
                        } else {
                            this.f68603q = -1;
                        }
                        if (favorites_list.size() == 0) {
                            Z(32);
                        } else {
                            Z(32);
                        }
                    }
                } else {
                    Z(24);
                }
                if (this.f68603q != -1) {
                    this.f68603q = 0;
                }
            }
            c1();
        } catch (Throwable th) {
            if (this.f68603q != -1) {
                this.f68603q = 0;
            }
            c1();
            throw th;
        }
    }

    @UiThread
    void s0() {
        ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = this.f68591i;
        if (forumProfileFavoritesAdapter != null) {
            forumProfileFavoritesAdapter.P(this.f68590h);
            this.f68591i.notifyDataSetChanged();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (isVisibleToUser) {
            return;
        }
        getActivity();
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.A).d(message);
    }

    @UiThread
    void showToast(String msg) {
        com.join.mgps.Util.a3.b(this.A).d(msg);
    }

    synchronized void t0() {
        if (this.f68590h == null) {
            this.f68590h = new ArrayList();
        }
        this.f68590h.clear();
        R0(this.f68589g);
        s0();
        List<ForumData.ForumUserFavoritesData> list = this.f68589g;
        if (list == null || list.size() == 0) {
            this.f68614y = 0;
            ForumLoadingView forumLoadingView = this.f68587f;
            if (forumLoadingView != null) {
                forumLoadingView.m();
            }
            Z(22);
        }
    }

    @UiThread
    void u0(int pid, boolean success) {
        if (!success) {
            com.join.mgps.Util.a3.b(this.A).d("删除失败");
            return;
        }
        List<ForumData.ForumUserFavoritesData> list = this.f68589g;
        if (list != null && list.size() != 0) {
            for (ForumData.ForumUserFavoritesData forumUserFavoritesData : this.f68589g) {
                if (forumUserFavoritesData.getType() == 2 && forumUserFavoritesData.getPost() != null && forumUserFavoritesData.getPost().getPid() == pid) {
                    this.f68589g.remove(forumUserFavoritesData);
                    c1();
                    t0();
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
        com.join.mgps.Util.a3.b(this.A).d("删除成功");
    }

    @UiThread
    void updateDownloadView() {
    }

    @UiThread
    void updateUI(DownloadTask downloadTask, int from) {
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
                    G0();
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

    void v0() {
        int i10;
        XListView2 xListView2 = this.f68593j;
        if (xListView2 == null || (i10 = this.I) == -1) {
            return;
        }
        int firstVisiblePosition = xListView2.getFirstVisiblePosition();
        int lastVisiblePosition = this.f68593j.getLastVisiblePosition();
        int i11 = this.I;
        if (i11 < firstVisiblePosition + 0 || i11 > lastVisiblePosition) {
            C0(true);
        } else {
            C0(false);
            i10 = 0 + (this.I - firstVisiblePosition);
        }
        View childAt = this.f68593j.getChildAt(i10);
        if (childAt != null) {
            int bottom = this.f68584c.getBottom();
            this.f68593j.getTop();
            int top = childAt.getTop();
            Bundle bundle = new Bundle();
            bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_TRANSLATE_Y.name());
            bundle.putStringArray("key_mediacmd_params", new String[]{bottom + "", top + ""});
            X(bundle);
        }
    }

    void w0(DownloadTask downloadTask, int event) {
        ForumBean.ForumPostsBean post;
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f68589g.size(); i10++) {
            ForumData.ForumUserFavoritesData forumUserFavoritesData = this.f68589g.get(i10);
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
            t0();
        }
    }

    void x0(int top, int offsetY) {
        if (getResources().getConfiguration().orientation == 2) {
            ViewCompat.setTranslationY(this.J, -this.J.getTop());
            return;
        }
        this.T = top;
        this.U = offsetY;
        com.join.mgps.Util.h1.e("offsetContainer", "mTop=" + this.T, "mOffsetY=" + this.U);
        ViewCompat.setTranslationY(this.J, (float) this.U);
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void z0(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        ForumProfileFavoritesAdapter forumProfileFavoritesAdapter = this.f68591i;
        if (forumProfileFavoritesAdapter != null) {
            forumProfileFavoritesAdapter.notifyDataSetChanged();
        }
    }
}
