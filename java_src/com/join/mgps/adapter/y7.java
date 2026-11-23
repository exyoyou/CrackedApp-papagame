package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.EverdayNewGameActivity;
import com.join.kotlin.ui.findgame.CategoryDetailListActivity;
import com.join.kotlin.ui.nostalgia.NostalgiaGameActivity;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.customview.CirclePageIndicator;
import com.join.mgps.customview.HorizontalRecyclerView;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.SimulatorFastEntryBean;
import com.join.mgps.dto.SimulatorFastEntryListBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class y7 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f63989h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f63990i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f63991j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f63992k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f63993l = 4;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f63994m = 5;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f63995n = 6;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f63996o = 7;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<SimulatorFastEntryListBean> f63997e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f63998f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b8 f63999g;

    class a implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f64000b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ RecyclerView.ViewHolder f64001c;

        a(final List val$fastList, final RecyclerView.ViewHolder val$holder) {
            this.f64000b = val$fastList;
            this.f64001c = val$holder;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            for (SimulatorFastEntryBean.FastEntryBean fastEntryBean : (List) this.f64000b.get(position)) {
                if (fastEntryBean.getExtBean() != null && !fastEntryBean.getExtBean().hasExplore()) {
                    com.papa.sim.statistic.t.l(this.f64001c.itemView.getContext()).R1(Event.commonExp, fastEntryBean.getExtBean().buildScene().toExt());
                    fastEntryBean.getExtBean().setHasExplore(true);
                }
            }
        }
    }

    class b extends GridLayoutManager {
        b(Context context, int spanCount) {
            super(context, spanCount);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean canScrollVertically() {
            return false;
        }
    }

    class c extends RecyclerView.OnScrollListener {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ g8 f64004t;

        c(final g8 val$mAdapter) {
            this.f64004t = val$mAdapter;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 0) {
                int[] iArrM = com.join.android.app.component.video.h.m(recyclerView);
                for (int i10 = iArrM[0]; i10 <= iArrM[1]; i10++) {
                    SimulatorFastEntryBean.GameInfo item = this.f64004t.getItem(i10);
                    if (item != null && !item.getExtBean().hasExplore()) {
                        com.papa.sim.statistic.t.l(recyclerView.getContext()).R1(Event.expGameAdPage, item.getExtBean().buildScene().toExt());
                        item.getExtBean().setHasExplore(true);
                    }
                }
            }
        }
    }

    class d extends GridLayoutManager {
        d(Context context, int spanCount) {
            super(context, spanCount);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean canScrollVertically() {
            return false;
        }
    }

    class e extends GridLayoutManager {
        e(Context context, int spanCount) {
            super(context, spanCount);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean canScrollVertically() {
            return false;
        }
    }

    private class f extends RecyclerView.OnScrollListener {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private LinearLayoutManager f64008t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private SimulatorFastEntryListBean f64009u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private int f64010v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private int f64011w;

        public f(SimulatorFastEntryListBean shopItem, LinearLayoutManager layoutManager) {
            this.f64008t = layoutManager;
            this.f64009u = shopItem;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
            int i10;
            View viewFindViewByPosition;
            super.onScrollStateChanged(recyclerView, newState);
            if (newState != 0) {
                return;
            }
            int iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
            this.f64009u.setScrollPosition(this.f64008t.findFirstVisibleItemPosition() < 0 ? this.f64009u.getScrollPosition() : this.f64008t.findFirstVisibleItemPosition() + 1);
            if (this.f64010v <= 0 && (viewFindViewByPosition = this.f64008t.findViewByPosition(this.f64009u.getScrollPosition())) != null) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewFindViewByPosition.getLayoutParams();
                this.f64010v = viewFindViewByPosition.getWidth();
                this.f64011w = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            }
            if (iComputeHorizontalScrollOffset > 0 && (i10 = this.f64010v) > 0) {
                SimulatorFastEntryListBean simulatorFastEntryListBean = this.f64009u;
                simulatorFastEntryListBean.setScrollOffset((i10 - (iComputeHorizontalScrollOffset % i10)) + (simulatorFastEntryListBean.getScrollPosition() * this.f64011w));
            }
            int[] iArrM = com.join.android.app.component.video.h.m(recyclerView);
            a8 a8Var = (a8) recyclerView.getAdapter();
            for (int i11 = iArrM[0]; i11 <= iArrM[1]; i11++) {
                if (a8Var != null) {
                    SimulatorFastEntryBean.GameInfo item = a8Var.getItem(i11);
                    if (item.getExtBean() != null && !item.getExtBean().hasExplore()) {
                        com.papa.sim.statistic.t.l(recyclerView.getContext()).R1(Event.expGameAdPage, item.getExtBean().buildScene().toExt());
                        item.getExtBean().setHasExplore(true);
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
        }
    }

    class g extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private RecyclerView f64013d;

        public g(View itemView) {
            super(itemView);
            this.f64013d = (RecyclerView) itemView.findViewById(R.id.recyclerview);
        }
    }

    class h extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private LinearLayout f64015d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private RecyclerView f64016e;

        public h(View itemView) {
            super(itemView);
            this.f64015d = (LinearLayout) itemView.findViewById(R.id.llMore);
            this.f64016e = (RecyclerView) itemView.findViewById(R.id.rvClassicGame);
        }
    }

    class i extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ViewPager f64018d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CirclePageIndicator f64019e;

        public i(View itemView) {
            super(itemView);
            this.f64018d = (ViewPager) itemView.findViewById(R.id.viewpager);
            this.f64019e = (CirclePageIndicator) itemView.findViewById(R.id.indicator);
        }
    }

    class j extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private LinearLayout f64021d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private RecyclerView f64022e;

        public j(View itemView) {
            super(itemView);
            this.f64021d = (LinearLayout) itemView.findViewById(R.id.llMore);
            this.f64022e = (RecyclerView) itemView.findViewById(R.id.rv_list);
        }
    }

    class k extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private LinearLayout f64024d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private RecyclerView f64025e;

        public k(View itemView) {
            super(itemView);
            this.f64024d = (LinearLayout) itemView.findViewById(R.id.llMore);
            this.f64025e = (RecyclerView) itemView.findViewById(R.id.rvNewGame);
        }
    }

    class l extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f64027d;

        public l(View itemView) {
            super(itemView);
            this.f64027d = (TextView) itemView.findViewById(R.id.spacingView);
        }
    }

    class m extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private HorizontalRecyclerView f64029d;

        public m(View itemView) {
            super(itemView);
            this.f64029d = (HorizontalRecyclerView) itemView.findViewById(R.id.recyclerview);
        }
    }

    class n extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f64031d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private LinearLayout f64032e;

        public n(View itemView) {
            super(itemView);
            this.f64031d = (TextView) itemView.findViewById(R.id.title);
            this.f64032e = (LinearLayout) itemView.findViewById(R.id.llMore);
        }
    }

    public y7(Context context, List<SimulatorFastEntryListBean> datas) {
        this.f63998f = context;
        this.f63997e = datas == null ? new ArrayList<>() : datas;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(SimulatorFastEntryListBean simulatorFastEntryListBean, String str, View view) {
        Intent intent = new Intent(this.f63998f, (Class<?>) CategoryDetailListActivity.class);
        intent.putExtra("typeId", 1);
        intent.putExtra("tagId", simulatorFastEntryListBean.getTagId());
        intent.putExtra("tagName", str);
        intent.putExtra("from", 207);
        this.f63998f.startActivity(intent);
        com.papa.sim.statistic.t.l(view.getContext()).R1(Event.commonClick, simulatorFastEntryListBean.getExtBean().setTypeCode(EventP.TypeCode.btnMore.name()).buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(i iVar, List list) {
        iVar.f64019e.setVisibility(list.size() <= 1 ? 8 : 0);
        iVar.f64019e.setViewPager(iVar.f64018d, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(k kVar, SimulatorFastEntryListBean simulatorFastEntryListBean, View view) {
        Intent intent = new Intent(new Intent(this.f63998f, (Class<?>) EverdayNewGameActivity.class));
        intent.putExtra("default_position", 3);
        this.f63998f.startActivity(intent);
        com.papa.sim.statistic.t.l(kVar.itemView.getContext()).R1(Event.commonClick, simulatorFastEntryListBean.getExtBean().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(SimulatorFastEntryListBean simulatorFastEntryListBean, j jVar, View view) {
        NostalgiaGameActivity.start(this.f63998f, simulatorFastEntryListBean.getExtBean());
        com.papa.sim.statistic.t.l(jVar.itemView.getContext()).R1(Event.commonClick, simulatorFastEntryListBean.getExtBean().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(SimulatorFastEntryBean.WillPlay willPlay, SimulatorFastEntryListBean simulatorFastEntryListBean, View view) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(2);
        intentDateBean.setTpl_type("4");
        intentDateBean.setCrc_link_type_val(willPlay.getColl_id());
        ExtBean extBean = new ExtBean();
        extBean.set_from_type(207);
        extBean.setFrom("207");
        intentDateBean.setExtBean(extBean);
        IntentUtil.getInstance().intentActivity(this.f63998f, intentDateBean);
        com.papa.sim.statistic.t.l(view.getContext()).R1(Event.commonClick, simulatorFastEntryListBean.getExtBean().setTypeCode(EventP.TypeCode.btnMore.name()).setScenesCode("更多").buildScene().toExt());
    }

    public List<SimulatorFastEntryListBean> getData() {
        List<SimulatorFastEntryListBean> list = this.f63997e;
        return list == null ? new ArrayList() : list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f63997e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        List<SimulatorFastEntryListBean> list;
        if (position >= 0 && (list = this.f63997e) != null && list.size() > position) {
            return this.f63997e.get(position).getType();
        }
        return 0;
    }

    public void k(List<SimulatorFastEntryListBean> datas) {
        this.f63997e = datas;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, int position) {
        int itemViewType = getItemViewType(position);
        final SimulatorFastEntryListBean simulatorFastEntryListBean = this.f63997e.get(position);
        switch (itemViewType) {
            case 0:
                n nVar = (n) holder;
                final String str = (String) simulatorFastEntryListBean.getData();
                nVar.f64031d.setText(str);
                nVar.f64032e.setVisibility(TextUtils.isEmpty(simulatorFastEntryListBean.getTagId()) ? 8 : 0);
                nVar.f64032e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.t7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63210b.f(simulatorFastEntryListBean, str, view);
                    }
                });
                break;
            case 1:
                if (this.f63999g == null) {
                    final i iVar = (i) holder;
                    final List list = (List) simulatorFastEntryListBean.getData();
                    this.f63999g = new b8(this.f63998f, list);
                    iVar.f64018d.setAdapter(this.f63999g);
                    iVar.f64018d.addOnPageChangeListener(new a(list, holder));
                    iVar.f64018d.post(new Runnable() { // from class: com.join.mgps.adapter.u7
                        @Override // java.lang.Runnable
                        public final void run() {
                            y7.g(iVar, list);
                        }
                    });
                }
                break;
            case 2:
                final k kVar = (k) holder;
                List list2 = (List) simulatorFastEntryListBean.getData();
                b bVar = new b(this.f63998f, 4);
                kVar.f64025e.setNestedScrollingEnabled(false);
                kVar.f64025e.setHasFixedSize(true);
                kVar.f64025e.setLayoutManager(bVar);
                kVar.f64025e.setAdapter(new e8(list2, false));
                kVar.f64024d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.v7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63325b.h(kVar, simulatorFastEntryListBean, view);
                    }
                });
                break;
            case 3:
                h hVar = (h) holder;
                final SimulatorFastEntryBean.WillPlay willPlay = (SimulatorFastEntryBean.WillPlay) simulatorFastEntryListBean.getData();
                if (willPlay != null && willPlay.getGames() != null && willPlay.getGames().size() > 0) {
                    d dVar = new d(this.f63998f, 4);
                    hVar.f64016e.setNestedScrollingEnabled(false);
                    hVar.f64016e.setHasFixedSize(true);
                    hVar.f64016e.setLayoutManager(dVar);
                    hVar.f64016e.setAdapter(new e8(willPlay.getGames(), true));
                    hVar.f64015d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.x7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f63958b.j(willPlay, simulatorFastEntryListBean, view);
                        }
                    });
                    break;
                }
                break;
            case 4:
                g gVar = (g) holder;
                List list3 = (List) simulatorFastEntryListBean.getData();
                gVar.f64013d.setLayoutManager(new e(this.f63998f, 2));
                gVar.f64013d.setAdapter(new s7(list3));
                break;
            case 5:
                m mVar = (m) holder;
                List list4 = (List) simulatorFastEntryListBean.getData();
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f63998f, 0, false);
                mVar.f64029d.setLayoutManager(linearLayoutManager);
                mVar.f64029d.setAdapter(new a8(list4));
                if (simulatorFastEntryListBean.getScrollOffset() > 0) {
                    linearLayoutManager.scrollToPositionWithOffset(simulatorFastEntryListBean.getScrollPosition(), simulatorFastEntryListBean.getScrollOffset());
                }
                mVar.f64029d.addOnScrollListener(new f(simulatorFastEntryListBean, linearLayoutManager));
                break;
            case 6:
                l lVar = (l) holder;
                float fFloatValue = ((Float) simulatorFastEntryListBean.getData()).floatValue();
                ViewGroup.LayoutParams layoutParams = lVar.f64027d.getLayoutParams();
                layoutParams.height = (int) fFloatValue;
                lVar.f64027d.setLayoutParams(layoutParams);
                break;
            case 7:
                final j jVar = (j) holder;
                List list5 = (List) simulatorFastEntryListBean.getData();
                LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(this.f63998f, 0, false);
                jVar.f64022e.setNestedScrollingEnabled(false);
                jVar.f64022e.setHasFixedSize(true);
                jVar.f64022e.setLayoutManager(linearLayoutManager2);
                g8 g8Var = new g8(list5, false);
                jVar.f64022e.setAdapter(g8Var);
                jVar.f64021d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.w7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f63360b.i(simulatorFastEntryListBean, jVar, view);
                    }
                });
                jVar.f64022e.addOnScrollListener(new c(g8Var));
                break;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        switch (viewType) {
            case 0:
                return new n(LayoutInflater.from(this.f63998f).inflate(R.layout.layout_simulator_title, parent, false));
            case 1:
                return new i(LayoutInflater.from(this.f63998f).inflate(R.layout.layout_simulator_viewpager, parent, false));
            case 2:
                return new k(LayoutInflater.from(this.f63998f).inflate(R.layout.layout_simulator_new_game, parent, false));
            case 3:
                return new h(LayoutInflater.from(this.f63998f).inflate(R.layout.layout_simulator_classic_game, parent, false));
            case 4:
                return new g(LayoutInflater.from(this.f63998f).inflate(R.layout.layout_simulator_change_game, parent, false));
            case 5:
                return new m(LayoutInflater.from(this.f63998f).inflate(R.layout.layout_simulator_tag_game, parent, false));
            case 6:
                return new l(LayoutInflater.from(this.f63998f).inflate(R.layout.papamain_item_spacing_layout, parent, false));
            case 7:
                return new j(LayoutInflater.from(this.f63998f).inflate(R.layout.layout_simulator_classic_hj, parent, false));
            default:
                return null;
        }
    }
}
