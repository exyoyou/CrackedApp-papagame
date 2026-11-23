package com.join.mgps.fragment;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.Group;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameMainActivity4_;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestSimulatorMomentLikeArgs;
import com.join.mgps.dto.RequestSimulatorMomentListArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SimulatorMomentBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_simulator_launch_moment)
public class v5 extends Fragment {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f71354q = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f71355r = 2;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f71356s = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    XRecyclerView f71357c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f71358d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f71359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f71360f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    NestedScrollView f71361g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f71362h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.join.mgps.rpc.k f71363i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f71364j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private d f71365k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f71369o;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ArrayList<e> f71366l = new ArrayList<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ArrayList<String> f71367m = new ArrayList<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f71368n = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f71370p = 1;

    class a implements XRecyclerView.f {
        a() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            v5.N(v5.this);
            v5 v5Var = v5.this;
            v5Var.P(v5Var.f71368n);
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
        }
    }

    class b implements Comparator<SimulatorMomentBean.UpdatesInfo> {
        b() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(SimulatorMomentBean.UpdatesInfo o10, SimulatorMomentBean.UpdatesInfo o11) {
            try {
                if (Integer.parseInt(o10.getDateStr()) > Integer.parseInt(o11.getDateStr())) {
                    return -1;
                }
                if (Integer.parseInt(o10.getDateStr()) < Integer.parseInt(o11.getDateStr())) {
                    return 1;
                }
                return (!TextUtils.equals(o10.getUid(), AccountUtil_.getInstance_(v5.this.getContext()).getUid()) || TextUtils.equals(o11.getUid(), AccountUtil_.getInstance_(v5.this.getContext()).getUid())) ? 0 : -1;
            } catch (Exception e10) {
                e10.printStackTrace();
                return 0;
            }
        }
    }

    class c extends BaseQuickAdapter<SimulatorMomentBean.Achievement, com.join.mgps.base.b> {
        public c(List<SimulatorMomentBean.Achievement> data) {
            super(R.layout.layout_simulator_achievement_list_item, data);
        }

        @Override // com.join.mgps.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int position) {
            return position;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, SimulatorMomentBean.Achievement item) {
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivAchievement), item.getIcon());
            helper.setText(R.id.tvAchievement, item.getName());
            helper.setText(R.id.tvUnlockPercent, item.getUnlockRate());
        }
    }

    class d extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<e> f71374e;

        public d(List<e> list) {
            this.f71374e = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(SimulatorMomentBean.UpdatesInfo updatesInfo, e eVar, int i10, View view) {
            updatesInfo.setExpand(!updatesInfo.isExpand());
            eVar.l(updatesInfo);
            this.f71374e.set(i10, eVar);
            notifyItemChanged(i10);
            if (updatesInfo.isExpand()) {
                return;
            }
            v5.this.f71357c.smoothScrollToPosition(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(SimulatorMomentBean.UpdatesInfo updatesInfo, int i10, View view) {
            if (updatesInfo.isPraised()) {
                v5.this.S(i10);
            } else {
                v5.this.R(i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(View view) {
            if (v5.this.getContext() instanceof GameMainActivity4_) {
                ((GameMainActivity4_) v5.this.getContext()).showBattle();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return v5.this.f71366l.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return this.f71374e.get(position).getType();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, final int position) {
            int itemViewType = getItemViewType(position);
            final e eVar = this.f71374e.get(position);
            if (itemViewType == 1) {
                f fVar = (f) holder;
                List<SimulatorMomentBean.BasicInfo> listB = eVar.b();
                if (listB == null || listB.size() <= 0) {
                    fVar.itemView.setVisibility(8);
                    return;
                }
                fVar.itemView.setVisibility(0);
                if (listB.size() > 0) {
                    fVar.f71383d.setText(listB.get(0).getTitle());
                    fVar.f71384e.setText(TextUtils.isEmpty(listB.get(0).getDesc()) ? "暂无统计" : listB.get(0).getDesc());
                }
                if (listB.size() > 1) {
                    fVar.f71385f.setText(listB.get(1).getTitle());
                    fVar.f71386g.setText(TextUtils.isEmpty(listB.get(1).getDesc()) ? "暂无统计" : listB.get(1).getDesc());
                }
                if (listB.size() > 2) {
                    fVar.f71387h.setText(listB.get(2).getTitle());
                    fVar.f71388i.setText(TextUtils.isEmpty(listB.get(2).getDesc()) ? "0人" : listB.get(2).getDesc());
                }
                fVar.f71389j.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.w5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f71441b.lambda$onBindViewHolder$0(view);
                    }
                });
                return;
            }
            if (itemViewType != 2) {
                if (itemViewType != 3) {
                    return;
                }
                h hVar = (h) holder;
                hVar.f71402d.setText(eVar.c());
                hVar.f71403e.setVisibility(8);
                hVar.f71404f.setBackgroundResource(R.drawable.shape_oval_achievement_tree_yellow);
                hVar.f71406h.setVisibility(eVar.e() ? 8 : 0);
                hVar.f71405g.setVisibility(eVar.f() ? 8 : 0);
                return;
            }
            g gVar = (g) holder;
            final SimulatorMomentBean.UpdatesInfo updatesInfoD = eVar.d();
            com.join.android.app.common.utils.l.h(gVar.f71391d, updatesInfoD.getAvatar());
            gVar.f71392e.setText(updatesInfoD.getNickname());
            if (updatesInfoD.getAchievements() == null || updatesInfoD.getAchievements().size() <= 0) {
                gVar.f71393f.setVisibility(0);
                gVar.f71394g.setVisibility(8);
                gVar.f71393f.setText(updatesInfoD.getDescribe());
            } else {
                gVar.f71393f.setVisibility(8);
                gVar.f71394g.setVisibility(0);
                gVar.f71395h.setText(updatesInfoD.getDescribe());
                gVar.f71398k.setHasFixedSize(true);
                gVar.f71398k.setNestedScrollingEnabled(false);
                gVar.f71398k.setLayoutManager(new LinearLayoutManager(v5.this.getContext()));
                List<SimulatorMomentBean.Achievement> achievements = updatesInfoD.getAchievements();
                new ArrayList();
                c cVar = v5.this.new c((achievements.size() <= 3 || updatesInfoD.isExpand()) ? achievements : achievements.subList(0, 3));
                cVar.setHasStableIds(true);
                gVar.f71398k.setItemAnimator(null);
                if (achievements.size() > 3) {
                    View viewInflate = LayoutInflater.from(v5.this.getContext()).inflate(R.layout.item_simulator_moment_footer, (ViewGroup) null);
                    TextView textView = (TextView) viewInflate.findViewById(R.id.tvFooter);
                    textView.setText(updatesInfoD.isExpand() ? "收起" : "查看全部");
                    textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.x5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f71468b.d(updatesInfoD, eVar, position, view);
                        }
                    });
                    cVar.addFooterView(viewInflate);
                }
                gVar.f71398k.setAdapter(cVar);
            }
            gVar.f71396i.setVisibility(updatesInfoD.isSupportPraise() ? 0 : 8);
            gVar.f71397j.setVisibility(updatesInfoD.isSupportPraise() ? 0 : 8);
            gVar.f71396i.setImageResource(updatesInfoD.isPraised() ? R.drawable.like_blue : R.drawable.like_grey);
            gVar.f71397j.setText(String.valueOf(updatesInfoD.getPraiseCount()));
            gVar.f71399l.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.y5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f71536b.e(updatesInfoD, position, view);
                }
            });
            gVar.f71400m.setVisibility(eVar.f() ? 8 : 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            RecyclerView.ViewHolder fVar;
            if (viewType == 1) {
                fVar = v5.this.new f(LayoutInflater.from(v5.this.getContext()).inflate(R.layout.layout_simulator_launch_moment_item_header, parent, false));
            } else if (viewType == 2) {
                fVar = v5.this.new g(LayoutInflater.from(v5.this.getContext()).inflate(R.layout.layout_simulator_launch_moment_item_list, parent, false));
            } else {
                if (viewType != 3) {
                    return null;
                }
                fVar = v5.this.new h(LayoutInflater.from(v5.this.getContext()).inflate(R.layout.layout_simulator_launch_moment_item_time, parent, false));
            }
            return fVar;
        }
    }

    class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f71376a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<SimulatorMomentBean.BasicInfo> f71377b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private SimulatorMomentBean.UpdatesInfo f71378c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f71379d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f71380e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f71381f;

        public e(int type, List<SimulatorMomentBean.BasicInfo> basicInfos, SimulatorMomentBean.UpdatesInfo updatesInfo, String timeDesc) {
            this.f71376a = type;
            this.f71377b = basicInfos;
            this.f71378c = updatesInfo;
            this.f71379d = timeDesc;
        }

        public List<SimulatorMomentBean.BasicInfo> b() {
            return this.f71377b;
        }

        public String c() {
            return this.f71379d;
        }

        public SimulatorMomentBean.UpdatesInfo d() {
            return this.f71378c;
        }

        public boolean e() {
            return this.f71380e;
        }

        public boolean f() {
            return this.f71381f;
        }

        public void g(List<SimulatorMomentBean.BasicInfo> basicInfos) {
            this.f71377b = basicInfos;
        }

        public int getType() {
            return this.f71376a;
        }

        public void h(boolean firstItem) {
            this.f71380e = firstItem;
        }

        public void i(boolean lastItem) {
            this.f71381f = lastItem;
        }

        public void j(String timeDesc) {
            this.f71379d = timeDesc;
        }

        public void k(int type) {
            this.f71376a = type;
        }

        public void l(SimulatorMomentBean.UpdatesInfo updatesInfo) {
            this.f71378c = updatesInfo;
        }
    }

    class f extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f71383d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f71384e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f71385f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f71386g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f71387h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f71388i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private TextView f71389j;

        public f(View itemView) {
            super(itemView);
            this.f71383d = (TextView) itemView.findViewById(R.id.tvTitle1);
            this.f71384e = (TextView) itemView.findViewById(R.id.tvTotalPlayTime);
            this.f71385f = (TextView) itemView.findViewById(R.id.tvTitle2);
            this.f71386g = (TextView) itemView.findViewById(R.id.tvLastPlayTime);
            this.f71387h = (TextView) itemView.findViewById(R.id.tvTitle3);
            this.f71388i = (TextView) itemView.findViewById(R.id.tvOnlinePlayerCount);
            this.f71389j = (TextView) itemView.findViewById(R.id.tvBattle);
        }
    }

    class g extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private SimpleDraweeView f71391d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f71392e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f71393f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Group f71394g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f71395h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private ImageView f71396i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private TextView f71397j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private RecyclerView f71398k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private LinearLayout f71399l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private View f71400m;

        public g(View itemView) {
            super(itemView);
            this.f71391d = (SimpleDraweeView) itemView.findViewById(R.id.ivAvatar);
            this.f71392e = (TextView) itemView.findViewById(R.id.tvName);
            this.f71393f = (TextView) itemView.findViewById(R.id.tvDesc);
            this.f71394g = (Group) itemView.findViewById(R.id.groupAchievement);
            this.f71395h = (TextView) itemView.findViewById(R.id.tvAchievementTitle);
            this.f71396i = (ImageView) itemView.findViewById(R.id.ivLike);
            this.f71397j = (TextView) itemView.findViewById(R.id.tvLikeCount);
            this.f71398k = (RecyclerView) itemView.findViewById(R.id.rvAchievement);
            this.f71399l = (LinearLayout) itemView.findViewById(R.id.llLike);
            this.f71400m = itemView.findViewById(R.id.treeLine);
        }
    }

    class h extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f71402d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ImageView f71403e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private View f71404f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private View f71405g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private View f71406h;

        public h(View itemView) {
            super(itemView);
            this.f71402d = (TextView) itemView.findViewById(R.id.tvTimeDesc);
            this.f71403e = (ImageView) itemView.findViewById(R.id.chooseType);
            this.f71404f = itemView.findViewById(R.id.treeBall);
            this.f71405g = itemView.findViewById(R.id.treeLineBottom);
            this.f71406h = itemView.findViewById(R.id.treeLineTop);
        }
    }

    static /* synthetic */ int N(v5 v5Var) {
        int i10 = v5Var.f71368n;
        v5Var.f71368n = i10 + 1;
        return i10;
    }

    @Background
    void P(int page) {
        try {
            try {
                if (this.f71364j || !com.join.android.app.common.utils.m.j(getContext())) {
                    if (page == 1) {
                        showLodingFailed();
                    }
                    showTost(getResources().getString(R.string.net_connect_failed));
                } else {
                    this.f71364j = true;
                    RequestSimulatorMomentListArgs requestSimulatorMomentListArgs = new RequestSimulatorMomentListArgs();
                    EMUApkTable eMUApkTableN = t6.p.o().n(q5.f.M().G(this.f71362h).getPlugin_num());
                    requestSimulatorMomentListArgs.setPage(page);
                    requestSimulatorMomentListArgs.setUid(AccountUtil_.getInstance_(getContext()).getUid());
                    requestSimulatorMomentListArgs.setSelectCondition(this.f71370p);
                    requestSimulatorMomentListArgs.setGameId(this.f71362h);
                    requestSimulatorMomentListArgs.setPlugVersion(String.valueOf(eMUApkTableN == null ? 0 : eMUApkTableN.getVerCode()));
                    RequestModel requestModel = new RequestModel();
                    requestModel.setArgs(requestSimulatorMomentListArgs);
                    requestModel.setDefault(getContext());
                    ResponseModel<SimulatorMomentBean> responseModelE = this.f71363i.e(requestModel.makeSign());
                    if (responseModelE != null && responseModelE.getData() != null) {
                        W(responseModelE.getData(), page);
                    } else if (page == 1) {
                        showLodingFailed();
                    }
                    this.f71364j = false;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                this.f71364j = false;
                if (page == 1) {
                    showLodingFailed();
                }
            }
        } finally {
            V();
        }
    }

    public int Q() {
        return this.f71370p;
    }

    @Background
    void R(int position) {
        try {
            if (!com.join.android.app.common.utils.m.j(getContext())) {
                showTost(getResources().getString(R.string.net_connect_failed));
            } else {
                if (System.currentTimeMillis() - this.f71369o < 1000) {
                    return;
                }
                this.f71369o = System.currentTimeMillis();
                e eVar = this.f71366l.get(position);
                SimulatorMomentBean.UpdatesInfo updatesInfoD = eVar.d();
                RequestSimulatorMomentLikeArgs requestSimulatorMomentLikeArgs = new RequestSimulatorMomentLikeArgs();
                requestSimulatorMomentLikeArgs.setDs(updatesInfoD.getDateStr());
                requestSimulatorMomentLikeArgs.setUid(AccountUtil_.getInstance_(getContext()).getUid());
                requestSimulatorMomentLikeArgs.setRuid(updatesInfoD.getUid());
                requestSimulatorMomentLikeArgs.setGameId(this.f71362h);
                RequestModel requestModel = new RequestModel();
                requestModel.setArgs(requestSimulatorMomentLikeArgs);
                requestModel.setDefault(getContext());
                ResponseModel<Boolean> responseModelI0 = this.f71363i.I0(requestModel.makeSign());
                if (responseModelI0 != null && responseModelI0.getData() != null) {
                    updatesInfoD.setPraised(true);
                    updatesInfoD.setPraiseCount(updatesInfoD.getPraiseCount() + 1);
                    eVar.l(updatesInfoD);
                    this.f71366l.set(position, eVar);
                    T(position);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void S(int position) {
        try {
            if (!com.join.android.app.common.utils.m.j(getContext())) {
                showTost(getResources().getString(R.string.net_connect_failed));
            } else {
                if (System.currentTimeMillis() - this.f71369o < 1000) {
                    return;
                }
                this.f71369o = System.currentTimeMillis();
                e eVar = this.f71366l.get(position);
                SimulatorMomentBean.UpdatesInfo updatesInfoD = eVar.d();
                RequestSimulatorMomentLikeArgs requestSimulatorMomentLikeArgs = new RequestSimulatorMomentLikeArgs();
                requestSimulatorMomentLikeArgs.setUid(AccountUtil_.getInstance_(getContext()).getUid());
                requestSimulatorMomentLikeArgs.setPraiseId(updatesInfoD.getPraiseId());
                requestSimulatorMomentLikeArgs.setRuid(updatesInfoD.getUid());
                requestSimulatorMomentLikeArgs.setGameId(this.f71362h);
                requestSimulatorMomentLikeArgs.setDs(updatesInfoD.getDateStr());
                RequestModel requestModel = new RequestModel();
                requestModel.setArgs(requestSimulatorMomentLikeArgs);
                requestModel.setDefault(getContext());
                ResponseModel<Boolean> responseModelH0 = this.f71363i.h0(requestModel.makeSign());
                if (responseModelH0 != null && responseModelH0.getData() != null) {
                    updatesInfoD.setPraised(false);
                    updatesInfoD.setPraiseCount(Math.max(updatesInfoD.getPraiseCount() - 1, 0));
                    eVar.l(updatesInfoD);
                    this.f71366l.set(position, eVar);
                    T(position);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void T(int position) {
        d dVar = this.f71365k;
        if (dVar != null) {
            dVar.notifyItemChanged(position);
        }
    }

    public void U(int chooseType) {
        if (this.f71370p == chooseType) {
            return;
        }
        this.f71370p = chooseType;
        this.f71357c.reset();
        this.f71368n = 1;
        P(1);
    }

    @UiThread
    void V() {
        XRecyclerView xRecyclerView = this.f71357c;
        if (xRecyclerView != null) {
            xRecyclerView.stopRefresh();
            this.f71357c.stopLoadMore();
        }
    }

    @UiThread
    void W(SimulatorMomentBean data, int page) {
        if (data == null) {
            return;
        }
        if (page == 1 && (data.getUpdatesInfos() == null || data.getUpdatesInfos().size() <= 0)) {
            showEmpty();
            return;
        }
        showMain();
        if (data.getUpdatesInfos() == null || data.getUpdatesInfos().size() <= 0) {
            this.f71357c.setNoMore();
        }
        if (getActivity() != null && (getActivity() instanceof GameMainActivity4_)) {
            ((GameMainActivity4_) getActivity()).setHeaderData(data.getBasicInfos());
        }
        if (page == 1) {
            this.f71366l.clear();
            this.f71367m.clear();
            this.f71366l.add(new e(1, data.getBasicInfos(), null, null));
        }
        if (data.getUpdatesInfos() != null && data.getUpdatesInfos().size() > 0) {
            if (page == 1) {
                Collections.sort(data.getUpdatesInfos(), new b());
            }
            int i10 = 0;
            while (i10 < data.getUpdatesInfos().size()) {
                SimulatorMomentBean.UpdatesInfo updatesInfo = data.getUpdatesInfos().get(i10);
                if (!this.f71367m.contains(updatesInfo.getFeDate())) {
                    e eVar = new e(3, null, null, updatesInfo.getFeDate());
                    eVar.h(i10 == 0);
                    this.f71366l.add(eVar);
                    this.f71367m.add(updatesInfo.getFeDate());
                }
                this.f71366l.add(new e(2, null, updatesInfo, null));
                i10++;
            }
        }
        if (data.getUpdatesInfos() == null || data.getUpdatesInfos().size() <= 0) {
            boolean z10 = false;
            for (int size = this.f71366l.size() - 1; size >= 0; size--) {
                if (this.f71366l.get(size).f71376a == 2 && !z10) {
                    this.f71366l.get(size).i(true);
                } else if (this.f71366l.get(size).f71376a != 3 || z10) {
                    this.f71366l.get(size).i(false);
                } else {
                    this.f71366l.get(size).i(true);
                    z10 = true;
                }
            }
        }
        this.f71365k.notifyDataSetChanged();
    }

    @AfterViews
    void afterviews() {
        if (getArguments() != null) {
            this.f71362h = getArguments().getString("gameId");
        }
        this.f71363i = com.join.mgps.rpc.impl.i.P0();
        this.f71357c.setLayoutManager(new LinearLayoutManager(getContext()));
        d dVar = new d(this.f71366l);
        this.f71365k = dVar;
        dVar.setHasStableIds(true);
        this.f71357c.setAdapter(this.f71365k);
        this.f71357c.setItemAnimator(null);
        this.f71357c.setLoadingListener(new a());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f71368n = 1;
        this.f71357c.reset();
        showLoding();
        P(this.f71368n);
    }

    @Click
    void relodingimag() {
        showLoding();
        P(this.f71368n);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getContext());
    }

    @UiThread
    void showEmpty() {
        NestedScrollView nestedScrollView = this.f71361g;
        if (nestedScrollView != null) {
            nestedScrollView.setVisibility(0);
        }
        LinearLayout linearLayout = this.f71359e;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f71358d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f71357c;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f71360f;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(0);
        }
    }

    @UiThread
    void showLoding() {
        com.join.mgps.Util.g1.c("显示加载中");
        NestedScrollView nestedScrollView = this.f71361g;
        if (nestedScrollView != null) {
            nestedScrollView.setVisibility(0);
        }
        LinearLayout linearLayout = this.f71358d;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f71359e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f71357c;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f71360f;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    @UiThread
    void showLodingFailed() {
        NestedScrollView nestedScrollView = this.f71361g;
        if (nestedScrollView != null) {
            nestedScrollView.setVisibility(0);
        }
        LinearLayout linearLayout = this.f71359e;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f71358d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f71357c;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f71360f;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    @UiThread
    void showMain() {
        com.join.mgps.Util.g1.c("显示主界面main");
        NestedScrollView nestedScrollView = this.f71361g;
        if (nestedScrollView != null) {
            nestedScrollView.setVisibility(8);
        }
        LinearLayout linearLayout = this.f71359e;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f71358d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f71357c;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(0);
        }
        LinearLayout linearLayout3 = this.f71360f;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    @UiThread
    void showTost(String message) {
        com.join.mgps.Util.a3.b(getActivity()).d(message);
    }
}
