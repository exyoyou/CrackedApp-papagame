package com.join.android.app.component.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.g1;
import com.join.mgps.activity.EndGameDetailActivity_;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.ExtFrom;
import com.papa.sim.statistic.t;
import it.sephiroth.android.library.widget.AbsHListView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f35184v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f35185w = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f35186a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    StandardVideoView f35189d;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AbsListView f35196k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public AbsHListView f35197l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public RecyclerView f35198m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.join.mgps.recycler.c f35199n;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    AlphaAnimation f35205t;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f35187b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f35188c = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f35190e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Map<Integer, l> f35191f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f35192g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f35193h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f35194i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f35195j = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f35200o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    long f35201p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    SimpleDraweeView f35202q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    SimpleDraweeView f35203r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    FrameLayout f35204s = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f35206u = 1;

    class a implements StandardVideoView.i {
        a() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int visible) {
            if (visible != 0) {
                c.this.f35203r.setVisibility(4);
                g1.d("MyListViewVideoHelper", "aaaaaaaaaaa ");
            } else {
                g1.d("MyListViewVideoHelper", "099999 ");
                com.join.android.app.common.utils.l.n(c.this.f35203r, Uri.parse("res:///2131235672"));
                c.this.f35203r.setVisibility(0);
            }
        }
    }

    class b implements Animation.AnimationListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f35208b;

        b(final View val$view) {
            this.f35208b = val$view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            try {
                int iIntValue = ((Integer) this.f35208b.getTag()).intValue();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onAnimationEnd ");
                sb2.append(iIntValue == c.this.z());
                sb2.append(" tag= ");
                sb2.append(iIntValue);
                sb2.append(" getPlayPosition()=");
                sb2.append(c.this.z());
                sb2.append(" ");
                sb2.append(c.this.f35189d.getCurrentState());
                g1.d("MyListViewVideoHelper", sb2.toString());
                if (iIntValue == c.this.z() && c.this.f35189d.getCurrentState() == 2) {
                    this.f35208b.setVisibility(4);
                    c.this.f35202q.setVisibility(4);
                } else {
                    this.f35208b.setVisibility(0);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: renamed from: com.join.android.app.component.video.c$c, reason: collision with other inner class name */
    class C0648c implements StandardVideoView.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f35210a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f35211b;

        C0648c(final Context val$context, final String val$playTag) {
            this.f35210a = val$context;
            this.f35211b = val$playTag;
        }

        @Override // com.join.android.app.component.video.StandardVideoView.j
        public void a(StandardVideoView standardVideoView) {
            try {
                c cVar = c.this;
                IntentDateBean intentDateBean = cVar.f35191f.get(Integer.valueOf(cVar.z())).f35225d;
                if (intentDateBean == null) {
                    return;
                }
                if (standardVideoView.isInPlayingState()) {
                    BaseAppCompatActivity baseAppCompatActivity = (BaseAppCompatActivity) this.f35210a;
                    com.join.android.app.component.video.j.f(standardVideoView);
                    c.this.f35190e = true;
                    standardVideoView.getGSYVideoManager().z(standardVideoView);
                    GamedetailVideoMainActivity.startTActivity(baseAppCompatActivity, standardVideoView, intentDateBean.getCrc_link_type_val(), false, intentDateBean.getExtBean());
                } else {
                    IntentUtil.getInstance().intentActivity(this.f35210a, intentDateBean);
                }
                if ((this.f35210a instanceof MGMainActivity) && TextUtils.equals("PapaMainAdapter", this.f35211b)) {
                    c cVar2 = c.this;
                    cVar2.J(cVar2.f35191f.get(Integer.valueOf(cVar2.z())).f());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class d implements StandardVideoView.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f35213a;

        d(final Context val$context) {
            this.f35213a = val$context;
        }

        @Override // com.join.android.app.component.video.StandardVideoView.j
        public void a(StandardVideoView standardVideoView) {
            try {
                c cVar = c.this;
                l lVar = cVar.f35191f.get(Integer.valueOf(cVar.z()));
                if (lVar == null) {
                    return;
                }
                if (standardVideoView.isInPlayingState()) {
                    c.this.f35190e = true;
                    com.join.android.app.component.video.j.f(standardVideoView);
                    standardVideoView.getGSYVideoManager().z(standardVideoView);
                    EndGameDetailActivity_.intent(this.f35213a).b(lVar.c()).a(lVar.b()).d(lVar.g()).c(true).start();
                } else {
                    EndGameDetailActivity_.intent(this.f35213a).b(lVar.c()).a(lVar.b()).d(lVar.g()).start();
                }
                Ext ext = new Ext();
                ext.setEndId(lVar.b());
                Data data = new Data();
                data.setGameId(lVar.c());
                t.l(c.this.f35186a).i0(Event.clickEndGameDetail, ext, data);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class e implements StandardVideoView.i {
        e() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int visible) {
            g1.d("MyListViewVideoHelper", "onCoverShowChange " + visible + "  " + c.this.f35189d.getCurrentState());
            if (visible != 0) {
                c cVar = c.this;
                cVar.M(cVar.f35202q);
                return;
            }
            if (c.this.f35189d.getCurrentState() != 2) {
                g1.d("MyListViewVideoHelper", "onCoverShowChange " + visible + "  " + c.this.f35189d.getCurrentState());
                c.this.f35202q.setVisibility(0);
            }
            try {
                Animation animation = c.this.f35202q.getAnimation();
                if (animation != null) {
                    animation.setAnimationListener(null);
                }
                c.this.f35202q.clearAnimation();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class f implements StandardVideoView.i {
        f() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int visible) {
            if (visible != 0) {
                c.this.f35203r.setVisibility(4);
                g1.d("MyListViewVideoHelper", "aaaaaaaaaaa ");
            } else {
                g1.d("MyListViewVideoHelper", "099999 ");
                com.join.android.app.common.utils.l.n(c.this.f35203r, Uri.parse("res:///2131235672"));
                c.this.f35203r.setVisibility(0);
            }
        }
    }

    class g implements StandardVideoView.i {
        g() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int visible) {
            g1.d("MyListViewVideoHelper", "onCoverShowChange " + visible + "  " + c.this.f35189d.getCurrentState());
            if (visible != 0) {
                c cVar = c.this;
                cVar.M(cVar.f35202q);
                return;
            }
            if (c.this.f35189d.getCurrentState() != 2) {
                g1.d("MyListViewVideoHelper", "onCoverShowChange " + visible + "  " + c.this.f35189d.getCurrentState());
                c.this.f35202q.setVisibility(0);
            }
            try {
                Animation animation = c.this.f35202q.getAnimation();
                if (animation != null) {
                    animation.setAnimationListener(null);
                }
                c.this.f35202q.clearAnimation();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class h implements StandardVideoView.i {
        h() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int visible) {
            if (visible == 0) {
                g1.d("MyListViewVideoHelper", "099999 ");
                com.join.android.app.common.utils.l.n(c.this.f35203r, Uri.parse("res:///2131235672"));
                c.this.f35203r.setVisibility(0);
            } else {
                c.this.f35203r.setVisibility(4);
                g1.d("MyListViewVideoHelper" + c.this.f35188c, "aaaaaaaaaaa ");
            }
        }
    }

    class i implements StandardVideoView.i {
        i() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int visible) {
            g1.d("MyListViewVideoHelper", "onCoverShowChange " + visible + "  " + c.this.f35189d.getCurrentState());
            if (visible != 0) {
                c cVar = c.this;
                cVar.M(cVar.f35202q);
                return;
            }
            if (c.this.f35189d.getCurrentState() != 2) {
                g1.d("MyListViewVideoHelper", "onCoverShowChange " + visible + "  " + c.this.f35189d.getCurrentState());
                c.this.f35202q.setVisibility(0);
            }
            try {
                Animation animation = c.this.f35202q.getAnimation();
                if (animation != null) {
                    animation.setAnimationListener(null);
                }
                c.this.f35202q.clearAnimation();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class j implements StandardVideoView.i {
        j() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int visible) {
            if (visible != 0) {
                c.this.f35203r.setVisibility(4);
                g1.d("MyListViewVideoHelper", "aaaaaaaaaaa ");
            } else {
                g1.d("MyListViewVideoHelper", "099999 ");
                com.join.android.app.common.utils.l.n(c.this.f35203r, Uri.parse("res:///2131235672"));
                c.this.f35203r.setVisibility(0);
            }
        }
    }

    class k implements StandardVideoView.i {
        k() {
        }

        @Override // com.join.android.app.component.video.StandardVideoView.i
        public void a(int visible) {
            g1.d("MyListViewVideoHelper", "onCoverShowChange " + visible + "  " + c.this.f35189d.getCurrentState());
            if (visible != 0) {
                c cVar = c.this;
                cVar.M(cVar.f35202q);
                return;
            }
            if (c.this.f35189d.getCurrentState() != 2) {
                g1.d("MyListViewVideoHelper", "onCoverShowChange " + visible + "  " + c.this.f35189d.getCurrentState());
                c.this.f35202q.setVisibility(0);
            }
            try {
                Animation animation = c.this.f35202q.getAnimation();
                if (animation != null) {
                    animation.setAnimationListener(null);
                }
                c.this.f35202q.clearAnimation();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public c(Context context) {
        this.f35186a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(String position) {
        t.l(this.f35186a).t(ExtFrom.home.name(), position, AccountUtil_.getInstance_(this.f35186a).getUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(View view) {
        try {
            g1.d("MyListViewVideoHelper", "startAnim ");
            if (this.f35205t == null) {
                this.f35205t = new AlphaAnimation(1.0f, 0.1f);
            }
            this.f35205t.setDuration(600L);
            this.f35205t.setInterpolator(new AccelerateInterpolator());
            this.f35205t.setAnimationListener(new b(view));
            view.startAnimation(this.f35205t);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static int t(int[] lastPositions) {
        int i10 = lastPositions[0];
        for (int i11 : lastPositions) {
            if (i11 > i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    private static int u(int[] lastPositions) {
        int i10 = lastPositions[0];
        for (int i11 : lastPositions) {
            if (i11 < i10) {
                i10 = i11;
            }
        }
        return i10;
    }

    public static int v(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findFirstCompletelyVisibleItemPositions(iArr);
        return u(iArr);
    }

    public static int w(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findFirstVisibleItemPositions(iArr);
        return u(iArr);
    }

    public static int x(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(iArr);
        return t(iArr);
    }

    public static int y(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return 0;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastVisibleItemPositions(iArr);
        return t(iArr);
    }

    public String A() {
        return this.f35188c;
    }

    public Map<Integer, l> B() {
        return this.f35191f;
    }

    public int C() {
        StandardVideoView standardVideoView = this.f35189d;
        if (standardVideoView != null) {
            return standardVideoView.getCurrentState();
        }
        return 0;
    }

    public void D(Context context, String playTag, boolean alowClickIntent) {
        this.f35186a = context;
        this.f35188c = playTag;
        StandardVideoView standardVideoView = new StandardVideoView(this.f35186a);
        this.f35189d = standardVideoView;
        standardVideoView.setPlayTag(playTag);
        if (playTag.equals("PapaMainAdapter") || alowClickIntent) {
            this.f35189d.setAutoPlayConfig(alowClickIntent);
            this.f35189d.setOnclickVideoListener(new C0648c(context, playTag));
        } else if (playTag.contains("EndGameListFragmentVideoHelper") || playTag.contains("EndGameDiscoveryFragment")) {
            this.f35189d.setAutoPlayConfig(true);
            this.f35189d.setOnclickVideoListener(new d(context));
        }
    }

    public void E(int position) {
        try {
            if (position == z()) {
                return;
            }
            try {
                if (this.f35188c.contains("EndGameListFragmentVideoHelper") || this.f35188c.contains("EndGameDiscoveryFragment")) {
                    l lVar = this.f35191f.get(Integer.valueOf(position));
                    if (lVar == null) {
                        return;
                    }
                    EndGameDetailActivity_.intent(this.f35186a).b(lVar.c()).a(lVar.b()).d(lVar.g()).start();
                    Ext ext = new Ext();
                    ext.setEndId(lVar.b());
                    Data data = new Data();
                    data.setGameId(lVar.c());
                    t.l(this.f35186a).i0(Event.clickEndGameDetail, ext, data);
                } else {
                    IntentUtil.getInstance().intentActivity(this.f35186a, this.f35191f.get(Integer.valueOf(position)).f35225d);
                    if ((this.f35186a instanceof MGMainActivity) && TextUtils.equals("PapaMainAdapter", this.f35188c)) {
                        J(this.f35191f.get(Integer.valueOf(z())).f());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void F() {
        try {
            this.f35189d.release();
            com.join.android.app.component.video.a.n0(this.f35188c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void G() {
        try {
            if (this.f35190e) {
                return;
            }
            K(2);
            this.f35189d.onVideoPause();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void H() {
        try {
            g1.d("MyListViewVideoHelper", "onResume ");
            if (this.f35190e) {
                Bitmap bitmapB = com.join.android.app.component.video.i.b();
                this.f35189d.setThumbVisibleM();
                this.f35189d.l(bitmapB);
            } else {
                K(1);
                AbsListView absListView = this.f35196k;
                if (absListView != null) {
                    m(absListView);
                } else {
                    RecyclerView recyclerView = this.f35198m;
                    if (recyclerView != null) {
                        n(recyclerView);
                    } else {
                        AbsHListView absHListView = this.f35197l;
                        if (absHListView != null) {
                            o(absHListView);
                        } else {
                            this.f35189d.onVideoResume();
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void I(boolean isForGround) {
        try {
            g1.d("MyListViewVideoHelper", "onResumeDelayForMain " + this.f35189d.getCurrentState());
            if (this.f35190e) {
                com.join.android.app.component.video.i.c(this.f35189d, "", true, "");
                com.join.android.app.component.video.i.a(this.f35189d);
                g1.d("MyListViewVideoHelper", "onResumeDelayForMain2 " + this.f35189d.getCurrentState());
                this.f35189d.setSurfaceToPlay();
                this.f35189d.setMute(true);
                if (isForGround) {
                    this.f35189d.onVideoResume();
                } else {
                    this.f35189d.onVideoPause();
                }
                com.join.android.app.component.video.i.d();
                this.f35190e = false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void K(int s10) {
        this.f35206u = s10;
    }

    public void L(int p10) {
        this.f35187b = p10;
    }

    public void N() {
    }

    public void O(RecyclerView recyclerView) {
        if (this.f35204s != null) {
            this.f35189d.releaseVideos();
            this.f35204s.removeAllViews();
            this.f35187b = -1;
            j(recyclerView, 0);
        }
    }

    public void P(int position, FrameLayout videoContner) {
        if (this.f35189d.getCurrentState() == 2 && position == z()) {
            ViewGroup viewGroup = (ViewGroup) this.f35189d.getParent();
            if (viewGroup != null) {
                if (viewGroup == videoContner) {
                    return;
                } else {
                    viewGroup.removeAllViews();
                }
            }
            this.f35204s = videoContner;
            this.f35202q.setVisibility(4);
            this.f35204s.removeAllViews();
            this.f35204s.addView(this.f35189d);
        }
    }

    public void Q(int position, SimpleDraweeView bannerView) {
        if (this.f35189d.getCurrentState() == 2 && position == z()) {
            this.f35202q = bannerView;
            bannerView.setVisibility(0);
            M(this.f35202q);
        }
    }

    public void d(int position, l videoData, boolean... bools) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("addVideoData: ");
        sb2.append(position);
        sb2.append("  ");
        sb2.append(videoData.f());
        sb2.append("   ");
        sb2.append(videoData.h());
        if (bools.length > 0) {
            this.f35189d.setShowCoverWhenPause(bools[0]);
        }
        this.f35191f.put(Integer.valueOf(position), videoData);
    }

    public void e(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f35193h = firstVisibleItem;
        this.f35194i = visibleItemCount;
        this.f35195j = totalItemCount;
        if (visibleItemCount == 0 || firstVisibleItem != 0) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.f35201p > BaseCloudFileManager.ACK_TIMEOUT) {
                    this.f35201p = jCurrentTimeMillis;
                    this.f35200o = this.f35193h;
                    StandardVideoView standardVideoView = this.f35189d;
                    if (standardVideoView != null && standardVideoView.getCurrentState() != 2 && this.f35189d.getCurrentState() != 6 && !this.f35189d.isIfCurrentIsFullscreen()) {
                        m(view);
                    }
                }
                int iZ = z();
                if (iZ != -22 && iZ <= totalItemCount && this.f35192g != iZ) {
                    if (iZ < firstVisibleItem || iZ > this.f35194i + firstVisibleItem) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("autoPlayScroll  -->onPauseAll ");
                        sb2.append(this.f35193h);
                        sb2.append("  ");
                        sb2.append(this.f35194i);
                        sb2.append("  ");
                        sb2.append(iZ);
                        this.f35192g = iZ;
                        StandardVideoView standardVideoView2 = this.f35189d;
                        if (standardVideoView2 == null || standardVideoView2.isIfCurrentIsFullscreen()) {
                            return;
                        }
                        this.f35189d.onVideoPause();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void f(RecyclerView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        int i10;
        try {
            if (this.f35193h == firstVisibleItem && (i10 = this.f35194i) != 0 && firstVisibleItem == 0 && i10 == visibleItemCount) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f35201p > BaseCloudFileManager.ACK_TIMEOUT) {
                this.f35201p = jCurrentTimeMillis;
                this.f35200o = this.f35193h;
                StandardVideoView standardVideoView = this.f35189d;
                if (standardVideoView != null && standardVideoView.getCurrentState() != 2 && this.f35189d.getCurrentState() != 6 && !this.f35189d.isIfCurrentIsFullscreen()) {
                    n(view);
                }
            }
            this.f35193h = firstVisibleItem;
            this.f35194i = visibleItemCount;
            this.f35195j = totalItemCount;
            int iZ = z();
            if (iZ != -22 && iZ <= totalItemCount && this.f35192g != iZ) {
                if (iZ < firstVisibleItem || iZ > this.f35194i + firstVisibleItem) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("autoPlayScroll  -->onPauseAll ");
                    sb2.append(this.f35193h);
                    sb2.append("  ");
                    sb2.append(this.f35194i);
                    sb2.append("  ");
                    sb2.append(iZ);
                    this.f35192g = iZ;
                    StandardVideoView standardVideoView2 = this.f35189d;
                    if (standardVideoView2 == null || standardVideoView2.isIfCurrentIsFullscreen()) {
                        return;
                    }
                    this.f35189d.onVideoPause();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void g(AbsHListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f35193h = firstVisibleItem;
        this.f35194i = visibleItemCount;
        this.f35195j = totalItemCount;
        if (visibleItemCount != 0 && firstVisibleItem == 0) {
            try {
                StandardVideoView standardVideoView = this.f35189d;
                if (standardVideoView != null && standardVideoView.getCurrentState() != 2) {
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f35201p > BaseCloudFileManager.ACK_TIMEOUT) {
            this.f35201p = jCurrentTimeMillis;
            this.f35200o = this.f35193h;
            StandardVideoView standardVideoView2 = this.f35189d;
            if (standardVideoView2 != null && standardVideoView2.getCurrentState() != 2 && this.f35189d.getCurrentState() != 6 && !this.f35189d.isIfCurrentIsFullscreen()) {
                o(view);
            }
        }
        int iZ = z();
        if (iZ != -22 && iZ <= totalItemCount && this.f35192g != iZ) {
            if (iZ < firstVisibleItem || iZ > this.f35194i + firstVisibleItem) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("autoPlayScroll  -->onPauseAll ");
                sb2.append(this.f35193h);
                sb2.append("  ");
                sb2.append(this.f35194i);
                sb2.append("  ");
                sb2.append(iZ);
                this.f35192g = iZ;
                StandardVideoView standardVideoView3 = this.f35189d;
                if (standardVideoView3 == null || standardVideoView3.isIfCurrentIsFullscreen()) {
                    return;
                }
                this.f35189d.onVideoPause();
            }
        }
    }

    public void h(RecyclerView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.f35193h = firstVisibleItem;
        this.f35194i = visibleItemCount;
        this.f35195j = totalItemCount;
        if (visibleItemCount == 0 || firstVisibleItem != 0) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.f35201p > BaseCloudFileManager.ACK_TIMEOUT) {
                    this.f35201p = jCurrentTimeMillis;
                    this.f35200o = this.f35193h;
                    StandardVideoView standardVideoView = this.f35189d;
                    if (standardVideoView != null && standardVideoView.getCurrentState() != 2 && this.f35189d.getCurrentState() != 6 && !this.f35189d.isIfCurrentIsFullscreen()) {
                        n(view);
                    }
                }
                int iZ = z();
                if (iZ != -22 && iZ <= totalItemCount && this.f35192g != iZ) {
                    if (iZ < firstVisibleItem || iZ > this.f35194i + firstVisibleItem) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("autoPlayScroll  -->onPauseAll ");
                        sb2.append(this.f35193h);
                        sb2.append("  ");
                        sb2.append(this.f35194i);
                        sb2.append("  ");
                        sb2.append(iZ);
                        this.f35192g = iZ;
                        StandardVideoView standardVideoView2 = this.f35189d;
                        if (standardVideoView2 == null || standardVideoView2.isIfCurrentIsFullscreen()) {
                            return;
                        }
                        this.f35189d.onVideoPause();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void i(AbsListView view, int scrollState) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("autoPlayScrollStateChanged= ");
        sb2.append(scrollState);
        if (this.f35206u != 2 && scrollState == 0) {
            this.f35192g = -1;
            m(view);
        }
    }

    public void j(RecyclerView view, int scrollState) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("autoPlayScrollStateChanged= ");
        sb2.append(scrollState);
        if (this.f35206u != 2 && scrollState == 0) {
            this.f35192g = -1;
            n(view);
        }
    }

    public void k(AbsHListView view, int scrollState) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("autoPlayScrollStateChanged= ");
        sb2.append(scrollState);
        if (this.f35206u != 2 && scrollState == 0) {
            this.f35192g = -1;
            o(view);
        }
    }

    public void l(RecyclerView view, int scrollState) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("autoPlayScrollStateChanged= ");
        sb2.append(scrollState);
        if (this.f35206u != 2 && scrollState == 0) {
            this.f35192g = -1;
            p(view);
        }
    }

    public synchronized void m(AbsListView view) {
        int i10;
        this.f35196k = view;
        if (view != null && ((i10 = this.f35194i) <= 0 || i10 > view.getChildCount())) {
            this.f35194i = view.getChildCount();
            this.f35193h = view.getFirstVisiblePosition();
            this.f35195j = view.getCount();
        }
        SimpleDraweeView simpleDraweeView = null;
        SimpleDraweeView simpleDraweeView2 = null;
        boolean z10 = false;
        for (int i11 = 0; i11 < this.f35194i; i11++) {
            try {
                if (view != null && view.getChildAt(i11) != null && view.getChildAt(i11).findViewById(R.id.videoContner) != null) {
                    this.f35204s = (FrameLayout) view.getChildAt(i11).findViewById(R.id.videoContner);
                    if (view.getChildAt(i11) != null && view.getChildAt(i11).findViewById(R.id.bannerView) != null) {
                        simpleDraweeView = (SimpleDraweeView) view.getChildAt(i11).findViewById(R.id.bannerView);
                    }
                    if (view.getChildAt(i11) != null && view.getChildAt(i11).findViewById(R.id.loading) != null) {
                        simpleDraweeView2 = (SimpleDraweeView) view.getChildAt(i11).findViewById(R.id.loading);
                    }
                    Rect rect = new Rect();
                    this.f35204s.getLocalVisibleRect(rect);
                    int height = this.f35204s.getHeight();
                    if (simpleDraweeView != null && simpleDraweeView.getTag() != null) {
                        if (rect.top == 0 && rect.bottom == height && !z10) {
                            g1.d("MyListViewVideoHelper", "2222222 ");
                            if (((Integer) simpleDraweeView.getTag()).intValue() != z() || this.f35189d.getCurrentState() == 6) {
                                g1.d("MyListViewVideoHelper", "66666666 ");
                                l lVar = this.f35191f.get(simpleDraweeView.getTag());
                                ViewGroup viewGroup = (ViewGroup) this.f35189d.getParent();
                                if (viewGroup != null) {
                                    viewGroup.removeAllViews();
                                    SimpleDraweeView simpleDraweeView3 = this.f35202q;
                                    if (simpleDraweeView3 != null) {
                                        simpleDraweeView3.setVisibility(0);
                                    }
                                    g1.d("MyListViewVideoHelper", "7777777 ");
                                }
                                this.f35189d.setPlayTag(this.f35188c);
                                this.f35189d.setPlayPosition(((Integer) simpleDraweeView.getTag()).intValue());
                                this.f35189d.setSwitchUrl(lVar.h());
                                this.f35189d.setUp(lVar.h(), StandardVideoView.D, "", lVar.a());
                                this.f35204s.addView(this.f35189d);
                                L(((Integer) simpleDraweeView.getTag()).intValue());
                                SimpleDraweeView simpleDraweeView4 = this.f35202q;
                                if (simpleDraweeView4 != null) {
                                    Animation animation = simpleDraweeView4.getAnimation();
                                    if (animation != null) {
                                        animation.setAnimationListener(null);
                                    }
                                    g1.d("MyListViewVideoHelper", "lastBannerView tag =" + this.f35202q.getTag());
                                    this.f35202q.clearAnimation();
                                }
                                this.f35202q = simpleDraweeView;
                                g1.d("MyListViewVideoHelper", "lastBannerViewNew tag =" + this.f35202q.getTag());
                                this.f35203r = simpleDraweeView2;
                                this.f35189d.setChangeCoverShowListener(new e());
                                this.f35189d.setChangeCoverShowLoadingListener(new f());
                                if (this.f35189d.i()) {
                                    g1.d("MyListViewVideoHelper", "888888888 " + simpleDraweeView.getTag());
                                    this.f35189d.startPlayLogic();
                                }
                                g1.d("MyListViewVideoHelper", "startplaylogic ");
                            } else {
                                g1.d("MyListViewVideoHelper", "333333 ");
                                if (this.f35189d.getCurrentState() == 5) {
                                    this.f35204s.removeAllViews();
                                    this.f35204s.addView(this.f35189d);
                                    this.f35189d.onVideoResume(false);
                                    g1.d("MyListViewVideoHelper", "444444 ");
                                } else if (this.f35204s.getChildAt(0) == null) {
                                    this.f35204s.removeAllViews();
                                    g1.d("MyListViewVideoHelper", "55555555 ");
                                    this.f35204s.addView(this.f35189d);
                                }
                            }
                            z10 = true;
                        } else {
                            g1.d("MyListViewVideoHelper", "out to play Are   standardVideoView status  " + this.f35189d.getCurrentState() + "  " + simpleDraweeView.getTag());
                            if (((Integer) simpleDraweeView.getTag()).intValue() == z() && (this.f35189d.getCurrentState() == 2 || this.f35189d.getCurrentState() == 1)) {
                                this.f35189d.onVideoPause();
                                g1.d("MyListViewVideoHelper", "out to play Are   onVideoPause  ");
                            }
                            this.f35204s.removeAllViews();
                            simpleDraweeView.setVisibility(0);
                            g1.d("MyListViewVideoHelper", "out to play Are ");
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public synchronized void n(RecyclerView view) {
        this.f35198m = view;
        try {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) view.getLayoutManager();
            this.f35194i = (linearLayoutManager.findLastVisibleItemPosition() - linearLayoutManager.findFirstVisibleItemPosition()) + 1;
            SimpleDraweeView simpleDraweeView = null;
            SimpleDraweeView simpleDraweeView2 = null;
            boolean z10 = false;
            for (int i10 = 0; i10 < this.f35194i; i10++) {
                if (linearLayoutManager.getChildAt(i10) != null && linearLayoutManager.getChildAt(i10).findViewById(R.id.videoContner) != null) {
                    this.f35204s = (FrameLayout) linearLayoutManager.getChildAt(i10).findViewById(R.id.videoContner);
                    if (linearLayoutManager.getChildAt(i10) != null && linearLayoutManager.getChildAt(i10).findViewById(R.id.bannerView) != null) {
                        simpleDraweeView = (SimpleDraweeView) linearLayoutManager.getChildAt(i10).findViewById(R.id.bannerView);
                    }
                    if (linearLayoutManager.getChildAt(i10) != null && linearLayoutManager.getChildAt(i10).findViewById(R.id.loading) != null) {
                        simpleDraweeView2 = (SimpleDraweeView) linearLayoutManager.getChildAt(i10).findViewById(R.id.loading);
                    }
                    Rect rect = new Rect();
                    this.f35204s.getLocalVisibleRect(rect);
                    int height = this.f35204s.getHeight();
                    if (rect.top == 0 && rect.bottom == height && !z10) {
                        g1.d("MyListViewVideoHelper", "2222222 ");
                        if (((Integer) simpleDraweeView.getTag()).intValue() != z() || this.f35189d.getCurrentState() == 6) {
                            g1.d("MyListViewVideoHelper", "66666666 ");
                            l lVar = this.f35191f.get(simpleDraweeView.getTag());
                            if (lVar != null && lVar.h() != null) {
                                ViewGroup viewGroup = (ViewGroup) this.f35189d.getParent();
                                if (viewGroup != null) {
                                    viewGroup.removeAllViews();
                                    SimpleDraweeView simpleDraweeView3 = this.f35202q;
                                    if (simpleDraweeView3 != null) {
                                        simpleDraweeView3.setVisibility(0);
                                    }
                                    g1.d("MyListViewVideoHelper", "7777777 ");
                                }
                                this.f35189d.setPlayTag(this.f35188c);
                                this.f35189d.setPlayPosition(((Integer) simpleDraweeView.getTag()).intValue());
                                this.f35189d.setSwitchUrl(lVar.h());
                                this.f35189d.setUp(lVar.h(), StandardVideoView.D, "", lVar.a());
                                this.f35204s.addView(this.f35189d);
                                L(((Integer) simpleDraweeView.getTag()).intValue());
                                SimpleDraweeView simpleDraweeView4 = this.f35202q;
                                if (simpleDraweeView4 != null) {
                                    Animation animation = simpleDraweeView4.getAnimation();
                                    if (animation != null) {
                                        animation.setAnimationListener(null);
                                    }
                                    g1.d("MyListViewVideoHelper", "lastBannerView tag =" + this.f35202q.getTag());
                                    this.f35202q.clearAnimation();
                                }
                                this.f35202q = simpleDraweeView;
                                g1.d("MyListViewVideoHelper", "lastBannerViewNew tag =" + this.f35202q.getTag());
                                this.f35203r = simpleDraweeView2;
                                this.f35189d.setChangeCoverShowListener(new i());
                                this.f35189d.setChangeCoverShowLoadingListener(new j());
                                if (this.f35189d.i()) {
                                    g1.d("MyListViewVideoHelper", "888888888 " + simpleDraweeView.getTag());
                                    this.f35189d.startPlayLogic();
                                }
                                g1.d("MyListViewVideoHelper", "startplaylogic ");
                            }
                        } else {
                            g1.d("MyListViewVideoHelper", "333333 ");
                            if (this.f35189d.getCurrentState() == 5) {
                                this.f35204s.removeAllViews();
                                this.f35204s.addView(this.f35189d);
                                this.f35189d.onVideoResume(false);
                                g1.d("MyListViewVideoHelper", "444444 ");
                            } else if (this.f35204s.getChildAt(0) == null) {
                                this.f35204s.removeAllViews();
                                g1.d("MyListViewVideoHelper", "55555555 ");
                                this.f35204s.addView(this.f35189d);
                            }
                        }
                        z10 = true;
                    } else {
                        g1.d("MyListViewVideoHelper", "out to play Are   standardVideoView status  " + this.f35189d.getCurrentState() + "  " + simpleDraweeView.getTag());
                        if (((Integer) simpleDraweeView.getTag()).intValue() == z() && (this.f35189d.getCurrentState() == 2 || this.f35189d.getCurrentState() == 1)) {
                            this.f35189d.onVideoPause();
                            g1.d("MyListViewVideoHelper", "out to play Are   onVideoPause  ");
                        }
                        this.f35204s.removeAllViews();
                        simpleDraweeView.setVisibility(0);
                        g1.d("MyListViewVideoHelper", "out to play Are ");
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public synchronized void o(AbsHListView view) {
        this.f35197l = view;
        try {
            SimpleDraweeView simpleDraweeView = null;
            SimpleDraweeView simpleDraweeView2 = null;
            boolean z10 = false;
            for (int i10 = this.f35193h; i10 < this.f35194i; i10++) {
                if (view != null && view.getChildAt(i10) != null && view.getChildAt(i10).findViewById(R.id.videoContner) != null) {
                    this.f35204s = (FrameLayout) view.getChildAt(i10).findViewById(R.id.videoContner);
                    if (view.getChildAt(i10) != null && view.getChildAt(i10).findViewById(R.id.bannerView) != null) {
                        simpleDraweeView = (SimpleDraweeView) view.getChildAt(i10).findViewById(R.id.bannerView);
                    }
                    if (view.getChildAt(i10) != null && view.getChildAt(i10).findViewById(R.id.loading) != null) {
                        simpleDraweeView2 = (SimpleDraweeView) view.getChildAt(i10).findViewById(R.id.loading);
                    }
                    Rect rect = new Rect();
                    this.f35204s.getLocalVisibleRect(rect);
                    int width = this.f35204s.getWidth();
                    this.f35202q = simpleDraweeView;
                    g1.d("MyListViewVideoHelper", "lastBannerViewNew tag =" + this.f35202q.getTag());
                    this.f35203r = simpleDraweeView2;
                    StandardVideoView standardVideoView = this.f35189d;
                    if (standardVideoView != null) {
                        standardVideoView.setChangeCoverShowListener(new g());
                        this.f35189d.setChangeCoverShowLoadingListener(new h());
                    }
                    g1.d("MyListViewVideoHelper" + this.f35188c, "1111111111111    " + simpleDraweeView.getTag() + "rect.left:" + rect.left + "rect.right:" + rect.right + "videoHeight:" + width);
                    if (rect.left == 0 && rect.right == width && !z10) {
                        g1.d("MyListViewVideoHelper" + this.f35188c, "2222222 ");
                        if (simpleDraweeView.getTag() == null || ((Integer) simpleDraweeView.getTag()).intValue() != z() || this.f35189d.getCurrentState() == 6) {
                            g1.d("MyListViewVideoHelper" + this.f35188c, "66666666 ");
                            l lVar = this.f35191f.get(simpleDraweeView.getTag());
                            if (lVar == null) {
                                return;
                            }
                            ViewGroup viewGroup = (ViewGroup) this.f35189d.getParent();
                            if (viewGroup != null) {
                                viewGroup.removeAllViews();
                                SimpleDraweeView simpleDraweeView3 = this.f35202q;
                                if (simpleDraweeView3 != null) {
                                    simpleDraweeView3.setVisibility(0);
                                }
                                g1.d("MyListViewVideoHelper" + this.f35188c, "7777777 ");
                            }
                            this.f35189d.setPlayTag(this.f35188c);
                            this.f35189d.setPlayPosition(((Integer) simpleDraweeView.getTag()).intValue());
                            this.f35189d.setSwitchUrl(lVar.h());
                            this.f35189d.setUp(lVar.h(), StandardVideoView.D, "", lVar.a());
                            ViewParent parent = this.f35189d.getParent();
                            if (parent != null && (parent instanceof ViewGroup)) {
                                ((ViewGroup) this.f35189d.getParent()).removeView(this.f35189d);
                            }
                            this.f35204s.addView(this.f35189d);
                            L(((Integer) simpleDraweeView.getTag()).intValue());
                            SimpleDraweeView simpleDraweeView4 = this.f35202q;
                            if (simpleDraweeView4 != null) {
                                Animation animation = simpleDraweeView4.getAnimation();
                                if (animation != null) {
                                    animation.setAnimationListener(null);
                                }
                                g1.d("MyListViewVideoHelper" + this.f35188c, "lastBannerView tag =" + this.f35202q.getTag());
                                this.f35202q.clearAnimation();
                            }
                            if (this.f35189d.i()) {
                                g1.d("MyListViewVideoHelper" + this.f35188c, "888888888 " + simpleDraweeView.getTag());
                                this.f35189d.startPlayLogic();
                            }
                            g1.d("MyListViewVideoHelper" + this.f35188c, "startplaylogic ");
                        } else {
                            g1.d("MyListViewVideoHelper" + this.f35188c, "333333 ");
                            if (this.f35189d.getCurrentState() == 5) {
                                ViewParent parent2 = this.f35189d.getParent();
                                if (parent2 != null && (parent2 instanceof ViewGroup)) {
                                    ((ViewGroup) this.f35189d.getParent()).removeView(this.f35189d);
                                }
                                this.f35204s.removeAllViews();
                                this.f35204s.addView(this.f35189d);
                                this.f35189d.onVideoResume(false);
                                g1.d("MyListViewVideoHelper" + this.f35188c, "444444 ");
                            } else if (this.f35204s.getChildAt(0) == null) {
                                this.f35204s.removeAllViews();
                                g1.d("MyListViewVideoHelper" + this.f35188c, "55555555 ");
                                ViewGroup viewGroup2 = (ViewGroup) this.f35189d.getParent();
                                if (viewGroup2 != null) {
                                    viewGroup2.removeView(this.f35189d);
                                }
                                this.f35204s.addView(this.f35189d);
                            }
                        }
                        z10 = true;
                    } else {
                        g1.d("MyListViewVideoHelper" + this.f35188c, "out to play Are   standardVideoView status  " + this.f35189d.getCurrentState() + "  " + simpleDraweeView.getTag());
                        if (simpleDraweeView.getTag() != null && ((Integer) simpleDraweeView.getTag()).intValue() == z() && (this.f35189d.getCurrentState() == 2 || this.f35189d.getCurrentState() == 1)) {
                            this.f35189d.onVideoPause();
                            g1.d("MyListViewVideoHelper" + this.f35188c, "out to play Are   onVideoPause  ");
                        }
                        this.f35204s.removeAllViews();
                        simpleDraweeView.setVisibility(0);
                        g1.d("MyListViewVideoHelper" + this.f35188c, "out to play Are ");
                        z10 = false;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public synchronized void p(RecyclerView view) {
        try {
            this.f35198m = view;
            try {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) view.getLayoutManager();
                this.f35194i = linearLayoutManager.findLastVisibleItemPosition() - linearLayoutManager.findFirstVisibleItemPosition();
                SimpleDraweeView simpleDraweeView = null;
                SimpleDraweeView simpleDraweeView2 = null;
                boolean z10 = false;
                for (int i10 = this.f35193h; i10 < this.f35194i; i10++) {
                    if (linearLayoutManager.getChildAt(i10) != null && linearLayoutManager.getChildAt(i10).findViewById(R.id.videoContner) != null) {
                        this.f35204s = (FrameLayout) linearLayoutManager.getChildAt(i10).findViewById(R.id.videoContner);
                        if (linearLayoutManager.getChildAt(i10) != null && linearLayoutManager.getChildAt(i10).findViewById(R.id.bannerView) != null) {
                            simpleDraweeView = (SimpleDraweeView) linearLayoutManager.getChildAt(i10).findViewById(R.id.bannerView);
                        }
                        if (linearLayoutManager.getChildAt(i10) != null && linearLayoutManager.getChildAt(i10).findViewById(R.id.loading) != null) {
                            simpleDraweeView2 = (SimpleDraweeView) linearLayoutManager.getChildAt(i10).findViewById(R.id.loading);
                        }
                        Rect rect = new Rect();
                        this.f35204s.getLocalVisibleRect(rect);
                        int height = this.f35204s.getHeight();
                        this.f35202q = simpleDraweeView;
                        this.f35203r = simpleDraweeView2;
                        StandardVideoView standardVideoView = this.f35189d;
                        if (standardVideoView != null) {
                            standardVideoView.setChangeCoverShowListener(new k());
                            this.f35189d.setChangeCoverShowLoadingListener(new a());
                        }
                        g1.d("MyListViewVideoHelper", "1111111111111    " + simpleDraweeView.getTag());
                        if (rect.top == 0 && rect.bottom == height && !z10) {
                            g1.d("MyListViewVideoHelper", "2222222 ");
                            if (((Integer) simpleDraweeView.getTag()).intValue() != z() || this.f35189d.getCurrentState() == 6) {
                                g1.d("MyListViewVideoHelper", "66666666 ");
                                l lVar = this.f35191f.get(simpleDraweeView.getTag());
                                if (lVar != null && lVar.h() != null) {
                                    ViewGroup viewGroup = (ViewGroup) this.f35189d.getParent();
                                    if (viewGroup != null) {
                                        viewGroup.removeAllViews();
                                        SimpleDraweeView simpleDraweeView3 = this.f35202q;
                                        if (simpleDraweeView3 != null) {
                                            simpleDraweeView3.setVisibility(0);
                                        }
                                        g1.d("MyListViewVideoHelper", "7777777 ");
                                    }
                                    this.f35189d.setPlayTag(this.f35188c);
                                    this.f35189d.setPlayPosition(((Integer) simpleDraweeView.getTag()).intValue());
                                    this.f35189d.setSwitchUrl(lVar.h());
                                    this.f35189d.setUp(lVar.h(), StandardVideoView.D, "", lVar.a());
                                    this.f35204s.addView(this.f35189d);
                                    L(((Integer) simpleDraweeView.getTag()).intValue());
                                    SimpleDraweeView simpleDraweeView4 = this.f35202q;
                                    if (simpleDraweeView4 != null) {
                                        Animation animation = simpleDraweeView4.getAnimation();
                                        if (animation != null) {
                                            animation.setAnimationListener(null);
                                        }
                                        g1.d("MyListViewVideoHelper", "lastBannerView tag =" + this.f35202q.getTag());
                                        this.f35202q.clearAnimation();
                                    }
                                    if (this.f35189d.i()) {
                                        g1.d("MyListViewVideoHelper", "888888888 " + simpleDraweeView.getTag());
                                        this.f35189d.startPlayLogic();
                                    }
                                    g1.d("MyListViewVideoHelper", "startplaylogic ");
                                }
                            } else {
                                g1.d("MyListViewVideoHelper", "333333 ");
                                if (this.f35189d.getCurrentState() == 5) {
                                    this.f35204s.removeAllViews();
                                    ViewParent parent = this.f35189d.getParent();
                                    if (parent != null && (parent instanceof ViewGroup)) {
                                        ((ViewGroup) this.f35189d.getParent()).removeView(this.f35189d);
                                    }
                                    this.f35204s.addView(this.f35189d);
                                    this.f35189d.onVideoResume(false);
                                    g1.d("MyListViewVideoHelper", "444444 ");
                                } else if (this.f35204s.getChildAt(0) == null) {
                                    this.f35204s.removeAllViews();
                                    g1.d("MyListViewVideoHelper", "55555555 ");
                                    ViewParent parent2 = this.f35189d.getParent();
                                    if (parent2 != null && (parent2 instanceof ViewGroup)) {
                                        ((ViewGroup) this.f35189d.getParent()).removeView(this.f35189d);
                                    }
                                    this.f35204s.addView(this.f35189d);
                                }
                            }
                            z10 = true;
                        } else {
                            g1.d("MyListViewVideoHelper", "out to play Are   standardVideoView status  " + this.f35189d.getCurrentState() + "  " + simpleDraweeView.getTag());
                            if (((Integer) simpleDraweeView.getTag()).intValue() == z() && (this.f35189d.getCurrentState() == 2 || this.f35189d.getCurrentState() == 1)) {
                                this.f35189d.onVideoPause();
                                g1.d("MyListViewVideoHelper", "out to play Are   onVideoPause  ");
                            }
                            this.f35204s.removeAllViews();
                            ViewParent parent3 = this.f35189d.getParent();
                            if (parent3 != null && (parent3 instanceof ViewGroup)) {
                                ((ViewGroup) this.f35189d.getParent()).removeView(this.f35189d);
                            }
                            simpleDraweeView.setVisibility(0);
                            g1.d("MyListViewVideoHelper", "out to play Are ");
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean q() {
        return this.f35190e;
    }

    public void r() {
        this.f35191f.clear();
    }

    public void s() {
        StandardVideoView standardVideoView = this.f35189d;
        if (standardVideoView != null) {
            if (standardVideoView.i() || this.f35189d.getCurrentState() != 0) {
                this.f35189d.startWindowFullscreen(this.f35186a, false, true);
            } else {
                this.f35189d.startPlayLogic();
            }
        }
    }

    public int z() {
        return this.f35187b;
    }

    public static class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f35222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f35223b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f35224c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        IntentDateBean f35225d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f35226e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f35227f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        String f35228g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        String f35229h;

        public l(int position, String url, String cover, IntentDateBean intentDateBean) {
            this.f35222a = position;
            this.f35223b = url;
            this.f35224c = cover;
            this.f35225d = intentDateBean;
        }

        public String a() {
            return this.f35224c;
        }

        public String b() {
            return this.f35228g;
        }

        public String c() {
            return this.f35227f;
        }

        public IntentDateBean d() {
            return this.f35225d;
        }

        public int e() {
            return this.f35222a;
        }

        public String f() {
            return this.f35226e;
        }

        public String g() {
            return this.f35229h;
        }

        public String h() {
            return this.f35223b;
        }

        public void i(String cover) {
            this.f35224c = cover;
        }

        public void j(String endGameId) {
            this.f35228g = endGameId;
        }

        public void k(String gameId) {
            this.f35227f = gameId;
        }

        public void l(IntentDateBean intentDateBean) {
            this.f35225d = intentDateBean;
        }

        public void m(int position) {
            this.f35222a = position;
        }

        public void n(String positionDesc) {
            this.f35226e = positionDesc;
        }

        public void o(String rules) {
            this.f35229h = rules;
        }

        public void p(String url) {
            this.f35223b = url;
        }

        public l(int position, String url, String cover) {
            this.f35222a = position;
            this.f35223b = url;
            this.f35224c = cover;
        }

        public l(int position, String url, String cover, String gameId, String endGameId, String rules) {
            this.f35222a = position;
            this.f35223b = url;
            this.f35224c = cover;
            this.f35227f = gameId;
            this.f35228g = endGameId;
            this.f35229h = rules;
        }
    }

    public c(Context context, String playTag) {
        D(context, playTag, false);
    }

    public c(Context context, String playTag, boolean alowClickIntent) {
        D(context, playTag, alowClickIntent);
    }
}
