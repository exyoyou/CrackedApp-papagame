package com.join.mgps.fragment;

import android.content.Context;
import android.graphics.Color;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameMainActivity4_;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestSimulatorAchievementListArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SimulatorAchievementBean;
import com.join.mgps.dto.UnlockBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_simulator_launch_achievement)
public class r5 extends Fragment {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f70703k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f70704l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f70705m = 3;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    LinearLayout f70706c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f70707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f70708e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    NestedScrollView f70709f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    RecyclerView f70710g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f70711h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.join.mgps.rpc.k f70712i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ArrayList<UnlockBean> f70713j;

    class a extends LinearSmoothScroller {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return super.calculateSpeedPerPixel(displayMetrics);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected int getVerticalSnapPreference() {
            return -1;
        }
    }

    class b extends BaseQuickAdapter<SimulatorAchievementBean.AchievementInfo, com.join.mgps.base.b> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f70715e;

        public b(List<SimulatorAchievementBean.AchievementInfo> data, boolean isLocked) {
            super(R.layout.layout_simulator_launch_achievement_item_horizontal, data);
            this.f70715e = isLocked;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, SimulatorAchievementBean.AchievementInfo item) {
            StringBuilder sb2;
            String str;
            String string;
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivAchievement), item.getIcon());
            if (this.f70715e) {
                if (item.getUnlock_rate() <= 0) {
                    string = "还没人解锁\n快来挑战吧";
                } else {
                    sb2 = new StringBuilder();
                    sb2.append(item.getUnlock_rate());
                    str = "%\n玩家已解锁";
                }
                helper.setText(R.id.tvAchievementDesc, string);
            }
            sb2 = new StringBuilder();
            sb2.append(item.getUnlock_date());
            sb2.append("\n");
            sb2.append(item.getUnlock_time());
            str = "解锁";
            sb2.append(str);
            string = sb2.toString();
            helper.setText(R.id.tvAchievementDesc, string);
        }
    }

    class c extends BaseQuickAdapter<SimulatorAchievementBean.AchievementInfo, com.join.mgps.base.b> {
        public c(List<SimulatorAchievementBean.AchievementInfo> data) {
            super(R.layout.layout_simulator_launch_achievement_item_list, data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, SimulatorAchievementBean.AchievementInfo item) {
            String str;
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivAchievement), item.getIcon());
            com.join.mgps.base.b text = helper.setText(R.id.tvAchievementName, item.getName()).setText(R.id.tvAchievementDesc, item.getCondition());
            if (item.getUnlock_rate() > 0) {
                str = item.getUnlock_rate() + "%玩家已解锁";
            } else {
                str = "还没人解锁,快来挑战";
            }
            text.setText(R.id.tvAchievementUnlockPercent, str).setText(R.id.tvProgress, item.getDone() + net.lingala.zip4j.util.e.F0 + item.getTarget()).setGone(R.id.progressGroup, item.getTarget() > 1).setProgress(R.id.progressBar, item.getDone(), item.getTarget());
        }
    }

    class d extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<UnlockBean> f70718e;

        public d(List<UnlockBean> list) {
            this.f70718e = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(View view) {
            r5.this.O(1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(View view) {
            for (int size = this.f70718e.size() - 1; size >= 0; size--) {
                if (this.f70718e.get(size).getType() == 2) {
                    r5.this.O(size);
                    return;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f70718e.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return this.f70718e.get(position).getType();
        }

        /* JADX WARN: Code duplicated, block: B:45:0x0205  */
        /* JADX WARN: Code duplicated, block: B:46:0x0208  */
        /* JADX WARN: Code duplicated, block: B:49:0x021b  */
        /* JADX WARN: Code duplicated, block: B:50:0x021d  */
        /* JADX WARN: Code duplicated, block: B:53:0x0263  */
        /* JADX WARN: Code duplicated, block: B:54:0x0266  */
        /* JADX WARN: Code duplicated, block: B:58:0x0275  */
        /* JADX WARN: Code duplicated, block: B:71:0x02b0  */
        /* JADX WARN: Code duplicated, block: B:72:0x02bb  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, int position) {
            StringBuilder sb2;
            String str;
            String string;
            String str2;
            int i10;
            int i11;
            int itemViewType = getItemViewType(position);
            UnlockBean unlockBean = this.f70718e.get(position);
            if (itemViewType != 1) {
                if (itemViewType == 2) {
                    g gVar = (g) holder;
                    gVar.f70743d.setText(unlockBean.getTimeDesc());
                    gVar.f70744e.setVisibility(8);
                    gVar.f70745f.setCardBackgroundColor(Color.parseColor(unlockBean.isLockTitle() ? "#4E5B65" : "#2892EC"));
                    return;
                }
                if (itemViewType != 3) {
                    return;
                }
                e eVar = (e) holder;
                SimulatorAchievementBean achievementBean = unlockBean.getAchievementBean();
                eVar.f70722f.setText("您已完成" + achievementBean.getDone() + net.lingala.zip4j.util.e.F0 + achievementBean.getTarget());
                eVar.f70723g.setMax(achievementBean.getTarget());
                eVar.f70723g.setProgress(achievementBean.getDone());
                if (achievementBean.getUnlock_achievements() == null || achievementBean.getUnlock_achievements().size() <= 0) {
                    eVar.f70724h.setVisibility(8);
                } else {
                    eVar.f70724h.setVisibility(0);
                    eVar.f70725i.setLayoutManager(new LinearLayoutManager(r5.this.getContext(), 0, false));
                    eVar.f70725i.setAdapter(r5.this.new b(achievementBean.getUnlock_achievements(), false));
                    eVar.f70725i.setNestedScrollingEnabled(false);
                    eVar.f70726j.setText("+" + achievementBean.getUnlock_achievements_num());
                    eVar.f70726j.setVisibility(achievementBean.getUnlock_achievements_num() <= 0 ? 8 : 0);
                }
                if (achievementBean.getLock_achievements() == null || achievementBean.getLock_achievements().size() <= 0) {
                    eVar.f70727k.setVisibility(8);
                } else {
                    eVar.f70727k.setVisibility(0);
                    eVar.f70728l.setLayoutManager(new LinearLayoutManager(r5.this.getContext(), 0, false));
                    eVar.f70728l.setAdapter(r5.this.new b(achievementBean.getLock_achievements(), true));
                    eVar.f70728l.setNestedScrollingEnabled(false);
                    eVar.f70729m.setText("+" + achievementBean.getLock_achievements_num());
                    eVar.f70729m.setVisibility(achievementBean.getLock_achievements_num() > 0 ? 0 : 8);
                }
                eVar.f70729m.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.s5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f70885b.lambda$onBindViewHolder$0(view);
                    }
                });
                eVar.f70726j.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.t5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f70987b.c(view);
                    }
                });
                return;
            }
            f fVar = (f) holder;
            SimulatorAchievementBean.AchievementInfo info = unlockBean.getInfo();
            com.join.android.app.common.utils.l.h(fVar.f70731d, info.getIcon());
            fVar.f70732e.setText(info.getName());
            fVar.f70734g.setText(info.getCondition());
            TextView textView = fVar.f70733f;
            if (unlockBean.isLock()) {
                if (info.getUnlock_rate() > 0) {
                    sb2 = new StringBuilder();
                    sb2.append(info.getUnlock_rate());
                    str = "%玩家已解锁";
                } else {
                    string = "还没人解锁,快来挑战";
                }
                textView.setText(string);
                TextView textView2 = fVar.f70733f;
                if (unlockBean.isLock()) {
                    str2 = "#A4C2E0";
                } else {
                    str2 = "#82888E";
                }
                textView2.setTextColor(Color.parseColor(str2));
                Group group = fVar.f70737j;
                if (info.getTarget() > 1) {
                    i10 = 0;
                } else {
                    i10 = 8;
                }
                group.setVisibility(i10);
                fVar.f70735h.setText(info.getDone() + net.lingala.zip4j.util.e.F0 + info.getTarget());
                fVar.f70736i.setMax(info.getTarget());
                fVar.f70736i.setProgress(info.getDone());
                View view = fVar.f70740m;
                if (unlockBean.isFirst()) {
                    i11 = 8;
                } else {
                    i11 = 0;
                }
                view.setVisibility(i11);
                fVar.f70739l.setVisibility(unlockBean.isLast() ? 8 : 0);
                if (unlockBean.isFirst() && !unlockBean.isLast()) {
                    fVar.f70741n.setBackgroundColor(Color.parseColor("#212832"));
                    return;
                }
                if (!unlockBean.isFirst() && unlockBean.isLast()) {
                    fVar.f70741n.setBackgroundResource(R.drawable.shape_212832_r8);
                    return;
                } else if (unlockBean.isFirst()) {
                    fVar.f70741n.setBackgroundResource(R.drawable.shape_212832_r8_top);
                } else {
                    fVar.f70741n.setBackgroundResource(R.drawable.shape_212832_r8_bottom);
                }
            }
            sb2 = new StringBuilder();
            sb2.append(info.getUnlock_date());
            sb2.append(" ");
            sb2.append(info.getUnlock_time());
            str = "完成";
            sb2.append(str);
            string = sb2.toString();
            textView.setText(string);
            TextView textView3 = fVar.f70733f;
            if (unlockBean.isLock()) {
                str2 = "#A4C2E0";
            } else {
                str2 = "#82888E";
            }
            textView3.setTextColor(Color.parseColor(str2));
            Group group2 = fVar.f70737j;
            if (info.getTarget() > 1) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            group2.setVisibility(i10);
            fVar.f70735h.setText(info.getDone() + net.lingala.zip4j.util.e.F0 + info.getTarget());
            fVar.f70736i.setMax(info.getTarget());
            fVar.f70736i.setProgress(info.getDone());
            View view2 = fVar.f70740m;
            if (unlockBean.isFirst()) {
                i11 = 8;
            } else {
                i11 = 0;
            }
            view2.setVisibility(i11);
            fVar.f70739l.setVisibility(unlockBean.isLast() ? 8 : 0);
            if (unlockBean.isFirst()) {
            }
            if (!unlockBean.isFirst()) {
            }
            if (unlockBean.isFirst()) {
                fVar.f70741n.setBackgroundResource(R.drawable.shape_212832_r8_top);
            } else {
                fVar.f70741n.setBackgroundResource(R.drawable.shape_212832_r8_bottom);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            RecyclerView.ViewHolder fVar;
            if (viewType == 1) {
                fVar = r5.this.new f(LayoutInflater.from(r5.this.getContext()).inflate(R.layout.layout_simulator_launch_achievement_item_list, parent, false));
            } else if (viewType == 2) {
                fVar = r5.this.new g(LayoutInflater.from(r5.this.getContext()).inflate(R.layout.layout_simulator_launch_achievement_item_time, parent, false));
            } else {
                if (viewType != 3) {
                    return null;
                }
                fVar = r5.this.new e(LayoutInflater.from(r5.this.getContext()).inflate(R.layout.layout_simulator_launch_achievement_header, parent, false));
            }
            return fVar;
        }
    }

    class e extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f70720d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private LinearLayout f70721e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f70722f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ProgressBar f70723g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private LinearLayout f70724h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private RecyclerView f70725i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private TextView f70726j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private LinearLayout f70727k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private RecyclerView f70728l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private TextView f70729m;

        public e(View itemView) {
            super(itemView);
            this.f70720d = (TextView) itemView.findViewById(R.id.tvTips);
            this.f70721e = (LinearLayout) itemView.findViewById(R.id.llProgress);
            this.f70722f = (TextView) itemView.findViewById(R.id.tvProgress);
            this.f70723g = (ProgressBar) itemView.findViewById(R.id.progressBar);
            this.f70724h = (LinearLayout) itemView.findViewById(R.id.llUnlocked);
            this.f70725i = (RecyclerView) itemView.findViewById(R.id.rvAchievementUnlocked);
            this.f70726j = (TextView) itemView.findViewById(R.id.tvUnlockCount);
            this.f70727k = (LinearLayout) itemView.findViewById(R.id.llLocked);
            this.f70728l = (RecyclerView) itemView.findViewById(R.id.rvAchievementLocked);
            this.f70729m = (TextView) itemView.findViewById(R.id.tvLockCount);
        }
    }

    class f extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private SimpleDraweeView f70731d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f70732e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f70733f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f70734g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f70735h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private ProgressBar f70736i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Group f70737j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private View f70738k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private View f70739l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private View f70740m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private ConstraintLayout f70741n;

        public f(View itemView) {
            super(itemView);
            this.f70731d = (SimpleDraweeView) itemView.findViewById(R.id.ivAchievement);
            this.f70732e = (TextView) itemView.findViewById(R.id.tvAchievementName);
            this.f70733f = (TextView) itemView.findViewById(R.id.tvAchievementUnlockPercent);
            this.f70734g = (TextView) itemView.findViewById(R.id.tvAchievementDesc);
            this.f70735h = (TextView) itemView.findViewById(R.id.tvProgress);
            this.f70736i = (ProgressBar) itemView.findViewById(R.id.progressBar);
            this.f70737j = (Group) itemView.findViewById(R.id.progressGroup);
            this.f70738k = itemView.findViewById(R.id.treeBall);
            this.f70739l = itemView.findViewById(R.id.treeLineBottom);
            this.f70740m = itemView.findViewById(R.id.treeLineTop);
            this.f70741n = (ConstraintLayout) itemView.findViewById(R.id.clContainer);
        }
    }

    class g extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f70743d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ImageView f70744e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CardView f70745f;

        public g(View itemView) {
            super(itemView);
            this.f70743d = (TextView) itemView.findViewById(R.id.tvTimeDesc);
            this.f70744e = (ImageView) itemView.findViewById(R.id.chooseType);
            this.f70745f = (CardView) itemView.findViewById(R.id.tagView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(int position) {
        a aVar = new a(getContext());
        aVar.setTargetPosition(position);
        this.f70710g.getLayoutManager().startSmoothScroll(aVar);
    }

    @Background
    void N() {
        try {
            if (!com.join.android.app.common.utils.m.j(getContext())) {
                showLodingFailed();
                showTost(getResources().getString(R.string.net_connect_failed));
                return;
            }
            RequestSimulatorAchievementListArgs requestSimulatorAchievementListArgs = new RequestSimulatorAchievementListArgs();
            EMUApkTable eMUApkTableN = t6.p.o().n(q5.f.M().G(this.f70711h).getPlugin_num());
            requestSimulatorAchievementListArgs.setUid(AccountUtil_.getInstance_(getContext()).getUid());
            requestSimulatorAchievementListArgs.setPlugVersion(String.valueOf(eMUApkTableN == null ? 0 : eMUApkTableN.getVerCode()));
            requestSimulatorAchievementListArgs.setGameId(this.f70711h);
            requestSimulatorAchievementListArgs.setToken(AccountUtil_.getInstance_(getContext()).getToken());
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(requestSimulatorAchievementListArgs);
            requestModel.setDefault(getContext());
            ResponseModel<SimulatorAchievementBean> responseModelA0 = this.f70712i.A0(requestModel.makeSign());
            if (responseModelA0 == null || responseModelA0.getData() == null) {
                showLodingFailed();
            } else {
                P(responseModelA0.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    @UiThread
    void P(SimulatorAchievementBean data) {
        if (data == null || data.getTarget() == 0) {
            showEmpty();
            ((GameMainActivity4_) getActivity()).removeAchievementFragment();
            return;
        }
        showMain();
        ArrayList<UnlockBean> arrayList = new ArrayList<>();
        this.f70713j = arrayList;
        arrayList.add(new UnlockBean(3, data));
        if (data.getHistory_unlock_achievements() != null && data.getHistory_unlock_achievements().size() > 0) {
            data.getHistory_unlock_achievements();
            this.f70713j.add(new UnlockBean(2, "已解锁", false));
            int i10 = 0;
            while (i10 < data.getHistory_unlock_achievements().size()) {
                List<SimulatorAchievementBean.AchievementInfo> unlockAchievements = data.getHistory_unlock_achievements().get(i10).getUnlockAchievements();
                int i11 = 0;
                while (i11 < unlockAchievements.size()) {
                    UnlockBean unlockBean = new UnlockBean(1, unlockAchievements.get(i11), false);
                    unlockBean.setFirst(i10 == 0 && i11 == 0);
                    unlockBean.setLast(i10 >= data.getHistory_unlock_achievements().size() - 1 && i11 >= unlockAchievements.size() - 1);
                    this.f70713j.add(unlockBean);
                    i11++;
                }
                i10++;
            }
        }
        if (data.getAll_lock_achievements() != null && data.getAll_lock_achievements().size() > 0) {
            this.f70713j.add(new UnlockBean(2, "未解锁", true));
            int i12 = 0;
            while (i12 < data.getAll_lock_achievements().size()) {
                UnlockBean unlockBean2 = new UnlockBean(1, data.getAll_lock_achievements().get(i12), true);
                unlockBean2.setFirst(i12 == 0);
                unlockBean2.setLast(i12 >= data.getAll_lock_achievements().size() - 1);
                this.f70713j.add(unlockBean2);
                i12++;
            }
        }
        this.f70710g.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f70710g.setAdapter(new d(this.f70713j));
    }

    @AfterViews
    void afterviews() {
        if (getArguments() != null) {
            this.f70711h = getArguments().getString("gameId");
        }
        this.f70712i = com.join.mgps.rpc.impl.i.P0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        showLoding();
        N();
    }

    @Click
    void relodingimag() {
        showLoding();
        N();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getContext());
    }

    @UiThread
    void showEmpty() {
        NestedScrollView nestedScrollView = this.f70709f;
        if (nestedScrollView != null) {
            nestedScrollView.setVisibility(0);
        }
        LinearLayout linearLayout = this.f70707d;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f70706c;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.f70710g;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f70708e;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(0);
        }
    }

    @UiThread
    void showLoding() {
        com.join.mgps.Util.g1.c("显示加载中");
        NestedScrollView nestedScrollView = this.f70709f;
        if (nestedScrollView != null) {
            nestedScrollView.setVisibility(0);
        }
        LinearLayout linearLayout = this.f70706c;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f70707d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.f70710g;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f70708e;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    @UiThread
    void showLodingFailed() {
        NestedScrollView nestedScrollView = this.f70709f;
        if (nestedScrollView != null) {
            nestedScrollView.setVisibility(0);
        }
        LinearLayout linearLayout = this.f70707d;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f70706c;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.f70710g;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f70708e;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    @UiThread
    void showMain() {
        com.join.mgps.Util.g1.c("显示主界面main");
        NestedScrollView nestedScrollView = this.f70709f;
        if (nestedScrollView != null) {
            nestedScrollView.setVisibility(8);
        }
        LinearLayout linearLayout = this.f70707d;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f70706c;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.f70710g;
        if (recyclerView != null) {
            recyclerView.setVisibility(0);
        }
        LinearLayout linearLayout3 = this.f70708e;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    @UiThread
    void showTost(String message) {
        com.join.mgps.Util.a3.b(getActivity()).d(message);
    }
}
