package com.join.mgps.fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.EndGameDetailActivity_;
import com.join.mgps.activity.EndGameLaunchActivity_;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.EndGameBean;
import com.join.mgps.dto.EndGameNameListBean;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_end_game_discovery)
public class b1 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    RecyclerView f69065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @FragmentArg
    int f69066d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @FragmentArg
    EndGameNameListBean f69067e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.join.android.app.component.video.c f69068f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f69069g;

    class a implements BaseQuickAdapter.j {
        a() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.j
        public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
            List<EndGameBean> gameEndgameVo = b1.this.f69067e.getGameEndgameVo();
            EndGameDetailActivity_.intent(b1.this.getContext()).a(gameEndgameVo.get(position).getEndgameId()).b(gameEndgameVo.get(position).getGameId()).start();
            b1.this.O(gameEndgameVo.get(position).getEndgameId());
        }
    }

    class b extends RecyclerView.OnScrollListener {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 0) {
                b1.this.autoPlay();
            }
        }
    }

    class c extends BaseQuickAdapter<EndGameBean, com.join.mgps.base.b> {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.join.mgps.base.b f69073b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ EndGameBean f69074c;

            a(final com.join.mgps.base.b val$helper, final EndGameBean val$item) {
                this.f69073b = val$helper;
                this.f69074c = val$item;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                b1.this.f69068f.E(this.f69073b.getLayoutPosition());
                b1.this.O(this.f69074c.getEndgameId());
            }
        }

        public c(List<EndGameBean> data) {
            super(R.layout.item_end_game_discovery_list, data);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(EndGameBean endGameBean, View view) {
            if (AccountUtil_.getInstance_(b1.this.getContext()).isTourist()) {
                IntentUtil.getInstance().goLogin(b1.this.getContext());
                return;
            }
            EndGameLaunchActivity_.intent(b1.this.getContext()).a(endGameBean).b(endGameBean.getGameId()).d(16).start();
            try {
                Ext ext = new Ext();
                ext.setPosition("1");
                ext.setEndId(endGameBean.getEndgameId());
                Data data = new Data();
                data.setGameId(endGameBean.getGameId());
                com.papa.sim.statistic.t.l(b1.this.getContext()).i0(Event.gameStartVS, ext, data);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, final EndGameBean item) {
            String str;
            try {
                Double.parseDouble(item.getChallengeSucRateStr());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            com.join.mgps.base.b text = helper.setText(R.id.tvName, item.getTitle());
            if (item.getChallenge() <= 0) {
                str = "0";
            } else {
                str = item.getChallenge() + "";
            }
            text.setText(R.id.tvHot, str).setText(R.id.tvPassRatio, item.getChallengeSucRate()).setText(R.id.tvGameName, item.getGameName());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("convert: ");
            sb2.append(item.getGameName());
            if (com.join.mgps.Util.t2.i(item.getVideo())) {
                com.join.android.app.common.utils.l.d((SimpleDraweeView) helper.getView(R.id.bannerView), R.drawable.banner_normal_icon, item.getCover());
                helper.getView(R.id.bannerView).setTag(Integer.valueOf(helper.getLayoutPosition()));
                b1.this.f69068f.d(helper.getLayoutPosition(), new com.join.android.app.component.video.c.l(helper.getLayoutPosition(), item.getVideo(), item.getCover(), item.getGameId(), item.getEndgameId(), ""), new boolean[0]);
                helper.getView(R.id.videoContner).setOnClickListener(new a(helper, item));
            }
            helper.getView(R.id.btnPlay).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.c1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f69139b.t(item, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(String endGameId) {
        try {
            Ext ext = new Ext();
            ext.setEndId(endGameId);
            Data data = new Data();
            data.setGameId(this.f69067e.getGameId());
            com.papa.sim.statistic.t.l(getContext()).i0(Event.clickEndGameDetail, ext, data);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void P() {
        com.join.android.app.component.video.c cVar = this.f69068f;
        if (cVar != null) {
            cVar.H();
        }
    }

    @AfterViews
    void afterviews() {
        this.f69068f = new com.join.android.app.component.video.c(getContext(), "EndGameDiscoveryFragment" + this.f69066d);
        this.f69065c.setLayoutManager(new GridLayoutManager(getContext(), 2));
        c cVar = new c(this.f69067e.getGameEndgameVo());
        this.f69069g = cVar;
        this.f69065c.setAdapter(cVar);
        this.f69065c.setNestedScrollingEnabled(false);
        this.f69069g.setEmptyView(LayoutInflater.from(getContext()).inflate(R.layout.empty_layout_include, (ViewGroup) null, false));
        this.f69069g.setOnItemClickListener(new a());
        this.f69065c.addOnScrollListener(new b());
        autoPlay();
    }

    @UiThread(delay = 500)
    void autoPlay() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
        com.join.android.app.component.video.c cVar = this.f69068f;
        if (cVar != null) {
            cVar.F();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.join.android.app.component.video.c cVar = this.f69068f;
        if (cVar != null) {
            cVar.G();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        P();
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (isVisibleToUser) {
            P();
            return;
        }
        com.join.android.app.component.video.c cVar = this.f69068f;
        if (cVar != null) {
            cVar.G();
        }
    }

    @UiThread
    void showTost(String message) {
        com.join.mgps.Util.a3.b(getContext()).d(message);
    }
}
