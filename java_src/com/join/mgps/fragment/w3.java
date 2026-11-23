package com.join.mgps.fragment;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.adapter.GameTopicAdapter;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.GameTopicBean;
import com.join.mgps.dto.ResultMainBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_game_topic)
public class w3 extends com.join.mgps.basefragment.a implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.join.mgps.rpc.e f71428d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f71429e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    XListView2 f71430f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    GameTopicAdapter f71431g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f71432h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f71433i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    volatile List<GameTopicAdapter.g> f71434j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    volatile List<GameTopicBean> f71435k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Handler f71436l = new a();

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            XListView2 xListView2;
            super.handleMessage(msg);
            if (msg.what == 0 && (xListView2 = w3.this.f71430f) != null) {
                xListView2.v();
                w3.this.f71430f.u();
                w3 w3Var = w3.this;
                if (w3Var.f71433i == -1) {
                    w3Var.f71430f.setNoMore();
                }
            }
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (w3.this.a0()) {
                w3.this.e0();
            }
        }
    }

    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (w3.this.a0()) {
                w3.this.f0();
            }
        }
    }

    private void Z() {
        this.f71430f.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.f71430f.setPullLoadEnable(new b());
        this.f71430f.setPullRefreshEnable(new c());
        this.f71434j = new ArrayList();
        GameTopicAdapter gameTopicAdapter = new GameTopicAdapter(this.f71429e);
        this.f71431g = gameTopicAdapter;
        this.f71430f.setAdapter((ListAdapter) gameTopicAdapter);
        this.f71430f.setOnScrollListener(this);
        Y();
    }

    private void d0(int page, List<GameTopicBean> obj) {
        if (this.f71435k == null) {
            this.f71435k = new ArrayList();
        }
        if (obj != null && obj.size() != 0) {
            if (page == 1) {
                this.f71435k.clear();
                this.f71432h = 1;
            }
            this.f71432h = page;
            this.f71435k.addAll(obj);
            S();
        }
        i0();
        c0();
        b0();
    }

    private void g0(List<GameTopicBean> posts) {
        if (posts == null || posts.size() == 0) {
            return;
        }
        int size = posts.size();
        for (int i10 = 0; i10 < size; i10++) {
            h0(posts.get(i10));
        }
    }

    private void h0(GameTopicBean posts) {
        this.f71434j.add(new GameTopicAdapter.g(GameTopicAdapter.ViewType.POST_HEADER, new GameTopicAdapter.g.b(posts.getId(), posts.getCollection_id(), posts.getNick_name(), posts.getHead_portrait(), posts.getUid())));
        this.f71434j.add(new GameTopicAdapter.g(GameTopicAdapter.ViewType.POST_VIDEO_THUMBNAIL, new GameTopicAdapter.g.f(posts.getId(), posts.getCollection_id(), posts.getPic_cover())));
        this.f71434j.add(new GameTopicAdapter.g(GameTopicAdapter.ViewType.POST_SUBJECT, new GameTopicAdapter.g.e(posts.getId(), posts.getCollection_id(), posts.getTitle())));
        this.f71434j.add(new GameTopicAdapter.g(GameTopicAdapter.ViewType.POST_FOOTER, new GameTopicAdapter.g.a(posts.getId(), posts.getCollection_id(), posts.getDescribe(), posts.getView(), posts.getComment_count())));
    }

    @Override // com.join.mgps.basefragment.a
    protected int P() {
        return R.layout.fragment_game_topic;
    }

    @Override // com.join.mgps.basefragment.a
    protected int Q() {
        return R.id.fragment_game_topic;
    }

    void Y() {
        View view = new View(this.f71429e);
        view.setLayoutParams(new AbsListView.LayoutParams(2, com.join.mgps.Util.i0.a(this.f71429e, 14.0f)));
        this.f71430f.addFooterView(view);
    }

    boolean a0() {
        if (com.join.android.app.common.utils.m.j(this.f71429e)) {
            return true;
        }
        showToast(getString(R.string.net_connect_failed));
        i0();
        return false;
    }

    @AfterViews
    void afterViews() {
        this.f71428d = com.join.mgps.rpc.impl.d.O1();
        this.f71429e = getContext();
        Z();
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0() {
        GameTopicAdapter gameTopicAdapter = this.f71431g;
        if (gameTopicAdapter == null) {
            return;
        }
        gameTopicAdapter.l(this.f71434j);
        this.f71431g.notifyDataSetChanged();
    }

    synchronized void c0() {
        if (this.f71434j == null) {
            this.f71434j = new ArrayList();
        }
        this.f71434j.clear();
        g0(this.f71435k);
    }

    void e0() {
        if (this.f71433i == -1) {
            i0();
        } else {
            loadData(this.f71432h + 1);
        }
    }

    void f0() {
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void i0() {
        this.f71436l.sendEmptyMessageDelayed(0, 1500L);
    }

    @Override // com.join.mgps.basefragment.a
    protected void loadData() {
        loadData(1);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String msg) {
        com.join.mgps.Util.a3.b(this.f71429e).d(msg);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:37:0x0073  */
    @Background
    public void loadData(int pn) {
        if (!com.join.android.app.common.utils.m.j(this.f71429e.getApplicationContext())) {
            if (this.f71432h < 1) {
                V();
            }
            i0();
            return;
        }
        try {
            try {
                int i10 = this.f71433i;
                if (i10 == pn) {
                    if (i10 != -1) {
                        this.f71433i = 0;
                    }
                    i0();
                    return;
                }
                this.f71433i = pn;
                ResultMainBean<List<GameTopicBean>> resultMainBeanD0 = this.f71428d.D0(RequestBeanUtil.getInstance(this.f71429e).getGameTopicRequestBean(pn));
                if (resultMainBeanD0 != null && resultMainBeanD0.getFlag() == 1 && resultMainBeanD0.getMessages() != null) {
                    List<GameTopicBean> data = resultMainBeanD0.getMessages().getData();
                    if (data == null || data.size() <= 0) {
                        if (pn == 1) {
                            X();
                        }
                        this.f71433i = -1;
                    } else {
                        d0(pn, data);
                    }
                } else if (pn == 1) {
                    V();
                } else {
                    this.f71433i = -1;
                }
                if (this.f71433i != -1) {
                    this.f71433i = 0;
                }
                i0();
            } catch (Exception e10) {
                V();
                e10.printStackTrace();
                if (this.f71433i != -1) {
                    this.f71433i = 0;
                }
            }
        } catch (Throwable th) {
            if (this.f71433i != -1) {
                this.f71433i = 0;
            }
            i0();
            throw th;
        }
    }
}
