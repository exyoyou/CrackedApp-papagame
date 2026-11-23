package com.join.mgps.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.NewArenaGameListBean;
import com.join.mgps.dto.ResultResMainBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_gamelist)
public class b extends com.join.mgps.basefragment.a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f69052n = 10;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.join.mgps.rpc.l f69053d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    XRecyclerView f69054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f69055f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f69056g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f69057h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.join.mgps.adapter.f2 f69058i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Activity f69060k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f69061l;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<GameInfoBean> f69059j = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f69062m = false;

    class a implements com.join.mgps.adapter.f2.e {
        a() {
        }

        @Override // com.join.mgps.adapter.f2.e
        public void a(int positon) {
            if (b.this.f69061l != 2) {
                GameRoomListActivity_.intent(b.this.f69060k).c((GameInfoBean) b.this.f69059j.get(positon)).a(true).b(true).start();
                return;
            }
            Intent intent = new Intent();
            intent.putExtra("mGameInfo", (GameInfoBean) b.this.f69059j.get(positon));
            b.this.getActivity().setResult(10001, intent);
            b.this.getActivity().finish();
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.fragment.b$b, reason: collision with other inner class name */
    class C0723b implements XRecyclerView.f {
        C0723b() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            if (b.this.f69062m) {
                if (com.join.android.app.common.utils.m.j(b.this.f69060k)) {
                    b.this.loadData();
                } else {
                    b.this.f69054e.stopLoadMore();
                    b.this.d0();
                }
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    @Override // com.join.mgps.basefragment.a
    protected int P() {
        return R.layout.fragment_gamelist;
    }

    @Override // com.join.mgps.basefragment.a
    protected int Q() {
        return R.id.fragment_gamelist;
    }

    @AfterViews
    void afterViews() {
        this.f69053d = com.join.mgps.rpc.impl.l.n0();
        if (!this.f69062m) {
            this.f69054e.setNoMore();
        }
        this.f69058i = new com.join.mgps.adapter.f2(this.f69060k, false);
        this.f69054e.setPreLoadCount(5);
        this.f69054e.setLayoutManager(new GridLayoutManager(this.f69060k, ((double) com.join.android.app.common.utils.q.n(getActivity()).j(this.f69060k)) >= 1.9d ? 3 : 2));
        this.f69054e.setAdapter(this.f69058i);
        this.f69058i.f(new a());
        this.f69054e.setLoadingMoreEnabled(true);
        this.f69054e.setPullRefreshEnabled(false);
        this.f69054e.setLoadingListener(new C0723b());
        if (this.f69057h == 2) {
            boolean z10 = this.f69059j.size() >= 10;
            this.f69062m = z10;
            if (!z10) {
                this.f69054e.setNoMore();
            }
        } else {
            W();
            loadData();
        }
        this.f64133c.setLoadingLayoutBGColor(0);
        this.f69058i.notifyDataSetChanged();
    }

    public void c0(int room_type) {
        this.f69056g = room_type;
        this.f69057h = 1;
        loadData();
    }

    @UiThread
    void d0() {
        Activity activity = this.f69060k;
        if (activity != null) {
            com.join.mgps.Util.a3.b(activity).d(getString(R.string.net_connect_failed));
        }
    }

    @UiThread
    void e0(List<GameInfoBean> datas) {
        if (this.f69054e.getVisibility() == 8) {
            this.f69054e.setVisibility(0);
        }
        if (datas != null && datas.size() >= 0) {
            if (this.f69057h == 2) {
                this.f69059j.clear();
            }
            this.f69059j.addAll(datas);
        }
        this.f69058i.e(this.f69059j);
        this.f69054e.stopLoadMore();
        this.f69054e.stopRefresh();
        if (!this.f69062m) {
            this.f69054e.setNoMore();
            if (this.f69059j.size() <= 0) {
                this.f69054e.setVisibility(8);
                return;
            }
        }
        this.f69058i.notifyDataSetChanged();
    }

    @Override // com.join.mgps.basefragment.a
    @Background
    protected void loadData() {
        if (!com.join.android.app.common.utils.m.j(this.f69060k)) {
            if (this.f69057h <= 1) {
                showLodingFailed();
                d0();
                return;
            }
            return;
        }
        try {
            ResultResMainBean<NewArenaGameListBean> resultResMainBeanM = this.f69053d.M(this.f69056g, this.f69055f, this.f69057h);
            Activity activity = this.f69060k;
            if (activity != null && !activity.isFinishing() && !this.f69060k.isDestroyed()) {
                if (resultResMainBeanM != null && resultResMainBeanM.getData() != null) {
                    List<GameInfoBean> game_list = resultResMainBeanM.getData().getGame_list();
                    if (game_list == null || game_list.size() <= 0) {
                        this.f69062m = false;
                    } else {
                        this.f69062m = game_list.size() >= 10;
                    }
                    if (this.f69057h <= 1) {
                        S();
                    }
                    if (this.f69062m) {
                        this.f69057h++;
                    }
                    e0(game_list);
                    return;
                }
                if (this.f69057h <= 1) {
                    showLodingFailed();
                }
            }
        } catch (Exception unused) {
            if (this.f69057h <= 1) {
                showLodingFailed();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f69060k = (Activity) context;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.f69055f = arguments.getInt("game_type");
        this.f69056g = arguments.getInt("room_type");
        this.f69061l = arguments.getInt("from");
        int i10 = arguments.getInt("pn");
        this.f69057h = i10;
        if (i10 == 2) {
            ArrayList arrayList = (ArrayList) arguments.getSerializable("datas");
            if (arrayList == null || arrayList.size() <= 0) {
                this.f69057h = 1;
            } else {
                this.f69059j.addAll(arrayList);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f69060k = null;
        this.f69059j.clear();
    }

    @UiThread
    void showLodingFailed() {
        XRecyclerView xRecyclerView = this.f69054e;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        List<GameInfoBean> list = this.f69059j;
        if (list == null || list.size() == 0) {
            V();
        }
    }
}
