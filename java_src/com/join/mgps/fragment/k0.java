package com.join.mgps.fragment;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Outline;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.EndGameActivity_;
import com.join.mgps.activity.ForumIndexActivity_;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.DiscoveryBannerBean;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.EndGameNameBean;
import com.join.mgps.dto.EndGameNameListBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.RequestEndGameNameListArgs;
import com.join.mgps.dto.RequestInfoArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa91.arc.view.GlideImageLoader;
import com.wufan.user.service.protobuf.UserInfo;
import com.youth.banner.Banner;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_discovery)
public class k0 extends Fragment implements View.OnClickListener, AbsListView.OnScrollListener {
    private com.join.mgps.rpc.l A;
    private List<DownloadTask> E;
    com.join.android.app.component.video.c F;
    MGMainActivity G;
    private j I;
    private k J;
    private View K;
    private ArrayList<Boolean> L;
    private ArrayList<String> M;
    private l N;
    private boolean V;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    RelativeLayout f69936c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    RelativeLayout f69937d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f69938e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f69939f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f69940g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    XListView2 f69941h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    ImageView f69942i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    TextView f69943j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    View f69944k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    CustomerDownloadView f69945l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Bean
    com.join.mgps.Util.b f69946m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.join.mgps.rpc.i f69947n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ForumBaseAdapter f69949p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View f69951r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ViewPager2 f69952s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Group f69953t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private TextView f69954u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private TextView f69955v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Banner f69956w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private RecyclerView f69957x;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f69948o = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f69950q = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f69958y = 1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private List<EndGameNameListBean> f69959z = new ArrayList();
    private com.join.mgps.adapter.b0 B = null;
    private com.join.mgps.adapter.a0 C = null;
    private String D = "";
    String H = "DiscoveryFragmentV3";
    private List<ForumBean.ForumPostsBean> O = new ArrayList();
    private List<DiscoveryMainDataBean.BattleGameBean> P = null;
    private int Q = 0;
    private SparseArray R = new SparseArray(0);
    private int S = -1;
    Map<String, DownloadTask> T = new HashMap();
    Map<String, DownloadTask> U = new HashMap();

    class a implements w6.f {
        a() {
        }

        @Override // w6.f
        public void a(int position) {
            int height = k0.this.f69937d.getHeight();
            if (height < k0.this.f69941h.getResources().getDimensionPixelOffset(R.dimen.wdp80)) {
                height = k0.this.f69941h.getResources().getDimensionPixelOffset(R.dimen.wdp140);
            }
            k0.this.f69941h.smoothScrollToPositionFromTop(position, height);
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (k0.this.f69950q) {
                return;
            }
            k0.this.k0();
        }
    }

    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (k0.this.f69950q) {
                return;
            }
            k0.this.f69948o = 1;
            com.join.android.app.component.video.c cVar = k0.this.F;
            if (cVar != null) {
                cVar.G();
                k0.this.F.K(1);
            }
            k0.this.O.clear();
            k0.this.k0();
            k0.this.f69958y = 1;
            k0.this.f69959z.clear();
            k0 k0Var = k0.this;
            k0Var.l0(k0Var.f69958y);
            k0.this.j0();
        }
    }

    class d extends ForumBaseAdapter.b1 {
        d() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void a(int pid) {
            k0 k0Var = k0.this;
            if (!k0Var.isLogined(k0Var.getActivity())) {
                k0 k0Var2 = k0.this;
                k0Var2.showMessage(k0Var2.getActivity().getString(R.string.forum_user_not_login));
            } else if (!k0.this.C0()) {
                k0.this.v0();
            } else {
                k0.this.s0(pid);
                k0.this.q0(pid);
            }
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void d(int fid) {
            super.d(fid);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(fid);
            com.join.mgps.Util.r0.v0(k0.this.getActivity(), forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void e(String gameId) {
        }
    }

    class e extends ViewOutlineProvider {
        e() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), k0.this.getResources().getDimension(R.dimen.wdp16));
        }
    }

    class f implements ViewPager.OnPageChangeListener {
        f() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (k0.this.L != null) {
                int i10 = 0;
                while (i10 < k0.this.L.size()) {
                    k0.this.L.set(i10, Boolean.valueOf(i10 == position % k0.this.L.size()));
                    if (k0.this.N != null) {
                        k0.this.N.notifyDataSetChanged();
                    }
                    i10++;
                }
            }
        }
    }

    class g implements ya.b {
        g() {
        }

        @Override // ya.b
        public void OnBannerClick(int i10) {
        }
    }

    class h extends BaseQuickAdapter<DiscoveryMainDataBean.BattleGameBean, com.join.mgps.base.b> {
        public h(List<DiscoveryMainDataBean.BattleGameBean> data) {
            super(R.layout.item_end_game_icon, data);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(DiscoveryMainDataBean.BattleGameBean battleGameBean, View view) {
            com.papa.sim.statistic.t.l(k0.this.getActivity()).q2(AccountUtil_.getInstance_(k0.this.getActivity()).getUid(), "gameEnter");
            GameInfoBean gameInfoBean = new GameInfoBean();
            gameInfoBean.setGame_name(battleGameBean.getGame_name());
            gameInfoBean.setGame_ico(battleGameBean.getGame_ico());
            gameInfoBean.setGame_id(battleGameBean.getGame_id());
            GameRoomListActivity_.intent(k0.this.getActivity()).c(gameInfoBean).start();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, final DiscoveryMainDataBean.BattleGameBean item) {
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivIcon), item.getGame_ico());
            helper.getView(R.id.selector).setVisibility(8);
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.l0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f70061b.t(item, view);
                }
            });
        }
    }

    class i extends BaseQuickAdapter<DiscoveryMainDataBean.ForumListBean, com.join.mgps.base.b> {
        public i(List<DiscoveryMainDataBean.ForumListBean> data) {
            super(R.layout.item_end_game_icon, data);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(DiscoveryMainDataBean.ForumListBean forumListBean, View view) {
            com.papa.sim.statistic.t.l(k0.this.getActivity()).q2(AccountUtil_.getInstance_(k0.this.getActivity()).getUid(), "groupEnter");
            IntentUtil.getInstance().goForumGroupActivity(k0.this.getContext(), forumListBean.getFid(), "discovery");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, final DiscoveryMainDataBean.ForumListBean item) {
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivIcon), item.getIcon_src());
            helper.getView(R.id.selector).setVisibility(8);
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.m0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f70178b.t(item, view);
                }
            });
        }
    }

    class j extends BaseQuickAdapter<EndGameNameListBean, com.join.mgps.base.b> {
        public j(List<EndGameNameListBean> data) {
            super(R.layout.item_header_discovery_list, data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, EndGameNameListBean item) {
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivIcon), item.getGameIcon());
            helper.setText(R.id.tvGameName, item.getGameName());
            helper.setGone(R.id.selectMask, item.isSelected());
            helper.setTextColor(R.id.tvGameName, Color.parseColor(item.isSelected() ? "#3FABFF" : "#A1A0A0"));
        }
    }

    class k extends FragmentStateAdapter {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<EndGameNameListBean> f69970e;

        public k(FragmentActivity fragmentActivity, List<EndGameNameListBean> datas) {
            super(fragmentActivity);
            this.f69970e = datas;
        }

        private d1 b(int position) {
            Fragment fragmentFindFragmentByTag = k0.this.getParentFragmentManager().findFragmentByTag(com.xinzhu.overmind.server.os.f.TAG + position);
            if (fragmentFindFragmentByTag == null || !(fragmentFindFragmentByTag instanceof d1)) {
                return null;
            }
            return (d1) fragmentFindFragmentByTag;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(List<EndGameNameListBean> datas) {
            this.f69970e = datas;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NonNull
        public Fragment createFragment(int position) {
            return d1.S().b(this.f69970e.get(position)).c(position).build();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f69970e.size();
        }
    }

    class l extends BaseQuickAdapter<Boolean, com.join.mgps.base.b> {
        public l() {
            super(R.layout.item_discovery_banner_indicator, k0.this.L);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, Boolean item) {
            helper.setGone(R.id.viewUnselected, !item.booleanValue()).setGone(R.id.viewSelected, item.booleanValue());
        }
    }

    class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f69973a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f69974b = 0;

        m() {
        }
    }

    private UserInfo a0(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void c0() {
        this.D = "";
        List<DownloadTask> listT = q5.f.M().T(null);
        this.E = listT;
        if (listT == null || listT.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.E) {
            if (downloadTask.isIs_fight() == 1) {
                if ("".equals(this.D)) {
                    this.D += downloadTask.getCrc_link_type_val();
                } else {
                    this.D += "," + downloadTask.getCrc_link_type_val();
                }
            }
        }
    }

    private int d0() {
        int i10;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.Q;
            if (i11 >= i10) {
                break;
            }
            m mVar = (m) this.R.get(i11);
            if (mVar != null) {
                i12 += mVar.f69973a;
            }
            i11++;
        }
        m mVar2 = (m) this.R.get(i10);
        if (mVar2 == null) {
            mVar2 = new m();
        }
        return i12 - mVar2.f69974b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0(View view) {
        NewArenaMainActivty_.intent(getActivity()).start();
        com.papa.sim.statistic.t.l(getActivity()).q2(AccountUtil_.getInstance_(getActivity()).getUid(), "enterLobby");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0(View view) {
        com.papa.sim.statistic.t.l(getActivity()).q2(AccountUtil_.getInstance_(getActivity()).getUid(), "communityEnter");
        ForumIndexActivity_.intent(getContext()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0(View view) {
        EndGameActivity_.intent(getContext()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit i0() {
        updateDownloadView();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        UserInfo userInfoA0 = a0(getActivity());
        return userInfoA0 != null && com.join.mgps.Util.t2.i(userInfoA0.getToken());
    }

    /* JADX WARN: Code duplicated, block: B:103:0x027d  */
    /* JADX WARN: Code duplicated, block: B:104:0x0285  */
    /* JADX WARN: Code duplicated, block: B:112:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:113:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:115:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:116:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:118:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:119:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:124:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:126:0x0307  */
    /* JADX WARN: Code duplicated, block: B:95:0x0251  */
    /* JADX WARN: Code duplicated, block: B:97:0x0254  */
    private void t0(ForumBean.ForumPostsBean posts, int num) {
        boolean z10;
        String str;
        int i10;
        String str2;
        boolean z11;
        ForumBaseAdapter.ViewType viewType;
        List<ForumBean.ForumPostsBean.ResBean> small_thumb_pic_list;
        ArrayList arrayList;
        boolean zIsAttach_video;
        String thumb;
        String raw;
        String message;
        ForumBean.ForumPostsBean.ResBean resBean;
        k0 k0Var = this;
        boolean z12 = num != 0;
        if (com.join.mgps.Util.t2.h(posts.getSubject()) || com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            z10 = false;
        } else {
            k0Var = this;
            k0Var.f69949p.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT, new ForumBaseAdapter.r1.p(z12, posts.getBest() > 0, posts.getFirst() > 0, posts.getSubject(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
            z10 = true;
        }
        if (z10) {
            str = r15;
            boolean z13 = posts.getSubject() == null || com.join.mgps.Util.t2.h(posts.getSubject().trim());
            if (!com.join.mgps.Util.t2.h(posts.getMessage()) && !com.join.mgps.Util.t2.h(posts.getMessage().trim())) {
                ArrayList arrayList2 = new ArrayList();
                if (posts.getBest() > 0) {
                    ForumBean.ForumPostsBean.TagInfo tagInfo = new ForumBean.ForumPostsBean.TagInfo();
                    tagInfo.setName("精");
                    tagInfo.setColor("#00FFFFFF");
                    tagInfo.setFont_color("#FF8378FF");
                    tagInfo.setBorder_color("#FF8378FF");
                    arrayList2.add(0, tagInfo);
                }
                if (posts.getFirst() > 0) {
                    ForumBean.ForumPostsBean.TagInfo tagInfo2 = new ForumBean.ForumPostsBean.TagInfo();
                    tagInfo2.setName("顶");
                    tagInfo2.setColor("#00FFFFFF");
                    tagInfo2.setFont_color("#FFFF6464");
                    tagInfo2.setBorder_color("#FFFF6464");
                    i10 = 0;
                    arrayList2.add(0, tagInfo2);
                } else {
                    i10 = 0;
                }
                if (posts.getTag_info() != null) {
                    arrayList2.addAll(posts.getTag_info());
                }
                FragmentActivity activity = getActivity();
                String message2 = posts.getMessage();
                boolean z14 = posts.getHelp() > 0;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(posts.getHelp_money());
                str2 = str;
                sb2.append(str2);
                SpannableStringBuilder spannableStringBuilderM0 = com.join.mgps.Util.r0.m0(activity, message2, z13, z14, sb2.toString(), arrayList2);
                ForumBaseAdapter.r1.o oVar = new ForumBaseAdapter.r1.o(false, z13 && posts.getBest() > 0, z13 && posts.getFirst() > 0, posts.getMessage(), posts.getPid(), 0, z13 && posts.getHelp() > 0, posts.getHelp_money() + str2, z13 ? posts.getTag_info() : null, z13, spannableStringBuilderM0);
                k0Var.f69949p.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_MESSAGE, oVar));
                if (getActivity() != null && isAdded()) {
                    k0Var.f69949p.y().j(com.join.mgps.Util.i0.c(getActivity(), getResources().getDimensionPixelOffset(R.dimen.mg_forum_post_message_text_size))).e(oVar);
                }
            }
            if (posts.getRelation_game() != null || TextUtils.isEmpty(posts.getRelation_game().getGame_id())) {
                z11 = false;
            } else {
                z11 = true;
            }
            if (!z11) {
                small_thumb_pic_list = posts.getSmall_thumb_pic_list();
                arrayList = new ArrayList();
                zIsAttach_video = posts.isAttach_video();
                thumb = str2;
                raw = thumb;
                while (small_thumb_pic_list != null && i10 < small_thumb_pic_list.size()) {
                    resBean = small_thumb_pic_list.get(i10);
                    if (resBean.getType().equals("pic")) {
                        arrayList.add(resBean.getRaw());
                    } else if (!resBean.getType().equals("video") && com.join.mgps.Util.t2.h(raw)) {
                        thumb = resBean.getThumb();
                        raw = resBean.getRaw();
                    }
                    i10++;
                }
                if (com.join.mgps.Util.t2.i(posts.getSubject())) {
                    message = posts.getSubject();
                } else if (com.join.mgps.Util.t2.i(posts.getMessage())) {
                    message = posts.getMessage();
                } else {
                    message = str2;
                }
                if (zIsAttach_video) {
                    k0Var.f69949p.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, message)));
                } else if (small_thumb_pic_list != null && small_thumb_pic_list.size() != 0) {
                    k0Var.f69949p.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(small_thumb_pic_list, arrayList, posts.getPid())));
                }
            }
            if (z11) {
                k0Var.r0(posts.getRelation_game());
                viewType = ForumBaseAdapter.ViewType.POST_GAME;
                if (!TextUtils.isEmpty(posts.getResource_url())) {
                    viewType = ForumBaseAdapter.ViewType.POST_GAME_RES_LINK;
                }
                k0Var.f69949p.f(new ForumBaseAdapter.r1(viewType, new ForumBaseAdapter.r1.w(true, posts.getPid() + str2, posts.getRelation_game(), posts.getResource_url())));
            }
            k0Var.f69949p.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(posts.getAvatar_src(), posts.getForum_name(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
        }
        str = "";
        k0Var = this;
        k0Var.f69949p.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT, new ForumBaseAdapter.r1.p(z12, posts.getBest() > 0, posts.getFirst() > 0, posts.getMessage(), posts.getPid(), 0, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
        str2 = str;
        i10 = 0;
        if (posts.getRelation_game() != null) {
            z11 = false;
        } else {
            z11 = false;
        }
        if (!z11) {
            small_thumb_pic_list = posts.getSmall_thumb_pic_list();
            arrayList = new ArrayList();
            zIsAttach_video = posts.isAttach_video();
            thumb = str2;
            raw = thumb;
            while (small_thumb_pic_list != null) {
                resBean = small_thumb_pic_list.get(i10);
                if (resBean.getType().equals("pic")) {
                    arrayList.add(resBean.getRaw());
                } else if (!resBean.getType().equals("video")) {
                }
                i10++;
            }
            if (com.join.mgps.Util.t2.i(posts.getSubject())) {
                message = posts.getSubject();
            } else if (com.join.mgps.Util.t2.i(posts.getMessage())) {
                message = posts.getMessage();
            } else {
                message = str2;
            }
            if (zIsAttach_video) {
                k0Var.f69949p.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, message)));
            } else if (small_thumb_pic_list != null) {
                k0Var.f69949p.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(small_thumb_pic_list, arrayList, posts.getPid())));
            }
        }
        if (z11) {
            k0Var.r0(posts.getRelation_game());
            viewType = ForumBaseAdapter.ViewType.POST_GAME;
            if (!TextUtils.isEmpty(posts.getResource_url())) {
                viewType = ForumBaseAdapter.ViewType.POST_GAME_RES_LINK;
            }
            k0Var.f69949p.f(new ForumBaseAdapter.r1(viewType, new ForumBaseAdapter.r1.w(true, posts.getPid() + str2, posts.getRelation_game(), posts.getResource_url())));
        }
        k0Var.f69949p.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(posts.getAvatar_src(), posts.getForum_name(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
    }

    private void u0(boolean isLight) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setStatusBarLight: ");
        sb2.append(isLight);
        View decorView = getActivity().getWindow().getDecorView();
        if (decorView != null) {
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(isLight ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
    }

    @UiThread
    void A0(List<CommonGameInfoBean> list) {
        this.L = new ArrayList<>();
        this.M = new ArrayList<>();
        int i10 = 0;
        while (true) {
            boolean z10 = true;
            if (i10 >= list.size()) {
                break;
            }
            ArrayList<Boolean> arrayList = this.L;
            if (i10 != 0) {
                z10 = false;
            }
            arrayList.add(Boolean.valueOf(z10));
            this.M.add(list.get(i10).getBig_pic());
            i10++;
        }
        this.f69956w.setOutlineProvider(new e());
        this.f69956w.setClipToOutline(true);
        if (TextUtils.equals((CharSequence) this.f69956w.getTag(), this.H)) {
            this.f69956w.update(this.M);
        } else {
            this.f69956w.z(this.M).y(new GlideImageLoader()).q(true).x(5000).t(0).D(new g()).setOnPageChangeListener(new f());
            this.f69956w.setTag(this.H);
            this.f69956w.I();
        }
        e0();
    }

    @UiThread
    void B0(EndGameNameBean data, int page) {
        if (data == null) {
            return;
        }
        Group group = this.f69953t;
        if (group != null) {
            group.setVisibility(0);
        }
        if (this.f69959z == null) {
            this.f69959z = new ArrayList();
        }
        this.f69959z.addAll(data.getGameList());
        TextView textView = this.f69954u;
        if (textView != null) {
            textView.setText(data.getRoom() + "房");
        }
        TextView textView2 = this.f69955v;
        if (textView2 != null) {
            textView2.setText(data.getPost() + "贴");
        }
        if (page == 1) {
            int i10 = 0;
            while (i10 < this.f69959z.size()) {
                this.f69959z.get(i10).setSelected(i10 == 0);
                i10++;
            }
        }
        j jVar = this.I;
        if (jVar != null) {
            jVar.loadMoreComplete();
            this.I.replaceData(this.f69959z);
        }
        if (this.J != null) {
            if (page == 1) {
                this.f69952s.setCurrentItem(0);
            }
            this.J.c(this.f69959z);
            this.J.notifyDataSetChanged();
        }
    }

    boolean C0() {
        if (a0(getActivity()) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(getActivity()).isTourist();
    }

    @Click
    void Q() {
    }

    @AfterViews
    void afterViews() {
        org.greenrobot.eventbus.c.f().v(this);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f69937d.getLayoutParams();
        layoutParams.topMargin = com.join.android.app.common.utils.q.v(getContext());
        this.f69937d.setLayoutParams(layoutParams);
        this.F = new com.join.android.app.component.video.c(getContext(), this.H);
        this.G = (MGMainActivity) getActivity();
        this.A = com.join.mgps.rpc.impl.k.n0();
        View viewInflate = LayoutInflater.from(getActivity()).inflate(R.layout.part_discovery_header_v3, (ViewGroup) null);
        this.f69951r = viewInflate;
        this.f69952s = (ViewPager2) viewInflate.findViewById(R.id.vpEndGame);
        this.f69953t = (Group) this.f69951r.findViewById(R.id.groupEndGame);
        this.f69954u = (TextView) this.f69951r.findViewById(R.id.tvBattleRoomCount);
        this.f69955v = (TextView) this.f69951r.findViewById(R.id.tvCommunityCount);
        this.f69956w = (Banner) this.f69951r.findViewById(R.id.banner);
        this.f69957x = (RecyclerView) this.f69951r.findViewById(R.id.indicator);
        View viewFindViewById = this.f69951r.findViewById(R.id.bgBattle);
        this.K = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f69732b.f0(view);
            }
        });
        this.f69951r.findViewById(R.id.bgCommunity).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f69809b.g0(view);
            }
        });
        this.f69951r.findViewById(R.id.tvMore).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f69848b.h0(view);
            }
        });
        k kVar = new k(getActivity(), this.f69959z);
        this.J = kVar;
        this.f69952s.setAdapter(kVar);
        View viewFindViewById2 = this.f69951r.findViewById(R.id.statubar);
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) viewFindViewById2.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams2).height = com.join.android.app.common.utils.q.v(getContext());
        viewFindViewById2.setLayoutParams(layoutParams2);
        this.f69942i.setOnClickListener(this);
        this.f69941h.addHeaderView(this.f69951r);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(getActivity(), this.F);
        this.f69949p = forumBaseAdapter;
        forumBaseAdapter.f1(new a());
        this.f69949p.C0(this.H);
        this.f69941h.setAdapter((ListAdapter) this.f69949p);
        this.f69941h.setPreLoadCount(10);
        this.f69941h.setVerticalScrollBarEnabled(false);
        this.f69941h.setPullLoadEnable(new b());
        this.f69941h.setPullRefreshEnable(new c());
        this.f69941h.setOnScrollListener(this);
        b0();
        l0(this.f69958y);
        j0();
        this.f69949p.I0(new d());
        u0(true);
        getDownloadTaskInfo();
    }

    public void autoPlay() {
        com.join.android.app.component.video.c cVar = this.F;
        if (cVar != null) {
            cVar.K(1);
            this.F.m(this.f69941h);
        }
    }

    public void b0() {
        c0();
        loadData();
        List<ForumBean.ForumPostsBean> list = this.O;
        if (list != null && list.size() == 0) {
            k0();
        }
        updateDownloadView();
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.T.containsKey(crc_link_type_val)) {
                this.T.put(crc_link_type_val, task);
            }
            if (this.U.containsKey(crc_link_type_val)) {
                return;
            }
            this.U.put(crc_link_type_val, task);
            return;
        }
        if (from == 3) {
            if (this.U.containsKey(crc_link_type_val)) {
                this.U.remove(crc_link_type_val);
                return;
            }
            return;
        }
        if (from != 5) {
            if (from == 6) {
                if (this.U.containsKey(crc_link_type_val)) {
                    this.U.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 7) {
                if (this.T.containsKey(crc_link_type_val)) {
                    this.T.remove(crc_link_type_val);
                }
                if (this.U.containsKey(crc_link_type_val)) {
                    this.U.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 10) {
                if (!this.T.containsKey(crc_link_type_val)) {
                    this.T.put(crc_link_type_val, task);
                }
                if (this.U.containsKey(crc_link_type_val)) {
                    return;
                }
                this.U.put(crc_link_type_val, task);
                return;
            }
            if (from != 11) {
                return;
            }
        } else if (this.T.containsKey(crc_link_type_val)) {
            this.T.remove(crc_link_type_val);
        }
        if (this.U.containsKey(crc_link_type_val)) {
            this.U.remove(crc_link_type_val);
        }
    }

    @Click
    void downloadView1() {
        IntentUtil.getInstance().goMyGameManagerActivity(getContext());
    }

    @UiThread
    void e0() {
        this.f69957x.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        l lVar = new l();
        this.N = lVar;
        this.f69957x.setAdapter(lVar);
    }

    @Background
    void getDownloadTaskInfo() {
        List<DownloadTask> listR = q5.f.M().r();
        List<DownloadTask> listQ = q5.f.M().q();
        if (listQ != null && listQ.size() > 0) {
            for (DownloadTask downloadTask : listQ) {
                this.T.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.U.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @Background
    void j0() {
        if (com.join.android.app.common.utils.m.j(getActivity())) {
            try {
                RequestInfoArgs requestInfoArgs = new RequestInfoArgs();
                RequestModel requestModel = new RequestModel();
                requestModel.setArgs(requestInfoArgs);
                requestModel.setDefault(getContext());
                ResponseModel<DiscoveryBannerBean> responseModelE0 = com.join.mgps.rpc.impl.i.P0().E0(requestModel.makeSign());
                if (responseModelE0 == null || responseModelE0.getData() == null || responseModelE0.getData().getBanner() == null || responseModelE0.getData().getBanner().size() <= 0) {
                    o0();
                } else {
                    A0(responseModelE0.getData().getBanner());
                }
            } catch (Exception unused) {
                o0();
            }
        }
    }

    @Background
    void k0() {
        if (!com.join.android.app.common.utils.m.j(getActivity())) {
            x0();
            return;
        }
        if (this.f69947n == null) {
            this.f69947n = com.join.mgps.rpc.impl.g.A0();
        }
        String uid = AccountUtil_.getInstance_(getActivity()).getUid();
        String token = AccountUtil_.getInstance_(getActivity()).getToken();
        if (this.f69950q) {
            return;
        }
        this.f69950q = true;
        try {
            ForumResponse<List<ForumBean.ForumPostsBean>> forumResponseX = this.f69947n.x(uid, token, this.f69948o);
            if (forumResponseX == null || forumResponseX.getError() != 0) {
                x0();
            } else {
                y0(forumResponseX.getData());
            }
        } catch (Exception unused) {
            x0();
        }
    }

    @Background
    void l0(int page) {
        if (!com.join.android.app.common.utils.m.j(getActivity())) {
            m0();
            return;
        }
        try {
            RequestEndGameNameListArgs requestEndGameNameListArgs = new RequestEndGameNameListArgs();
            requestEndGameNameListArgs.setWithEndGame(true);
            requestEndGameNameListArgs.setUid(AccountUtil_.getInstance_(getContext()).getUid());
            requestEndGameNameListArgs.setPage(page);
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(requestEndGameNameListArgs);
            requestModel.setDefault(getContext());
            ResponseModel<EndGameNameBean> responseModelS = com.join.mgps.rpc.impl.i.P0().S(requestModel.makeSign());
            if (responseModelS == null || responseModelS.getCode() != 200) {
                if (page == 1) {
                    m0();
                }
            } else if (responseModelS.getData() == null || responseModelS.getData().getGameList() == null || responseModelS.getData().getGameList().size() <= 0) {
                p0();
            } else {
                B0(responseModelS.getData(), page);
            }
        } catch (Exception unused) {
            m0();
        }
    }

    @Background
    void loadData() {
        if (!com.join.android.app.common.utils.m.j(getActivity())) {
            w0();
            return;
        }
        try {
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.put("uid", this.f69946m.getUid());
            linkedMultiValueMap.put(Constants.TOKEN, this.f69946m.getToken());
            linkedMultiValueMap.put("game_ids", this.D);
            GameWorldResponse<DiscoveryMainDataBean> gameWorldResponseC = this.A.C(linkedMultiValueMap);
            if (gameWorldResponseC == null || gameWorldResponseC.getData() == null || gameWorldResponseC.getError() != 0) {
                w0();
            } else {
                z0(gameWorldResponseC.getData());
            }
        } catch (Exception unused) {
            w0();
        }
    }

    @Click
    void loding_faile() {
        this.f69940g.setVisibility(8);
        this.f69939f.setVisibility(0);
        this.f69938e.setVisibility(8);
        b0();
        this.f69958y = 1;
        this.f69959z.clear();
        l0(this.f69958y);
    }

    @UiThread
    void m0() {
        Group group = this.f69953t;
        if (group != null) {
            group.setVisibility(8);
        }
    }

    @Click
    void n0() {
    }

    @UiThread
    void o0() {
        this.f69956w.setVisibility(8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.discoverySearchIv || id2 == R.id.discoveryTitleSearchIv) {
            SearchHintActivity_.intent(getActivity()).start();
        }
        switch (id2) {
            case R.id.toCommunityLl /* 2131367833 */:
            case R.id.toCommunityTx /* 2131367834 */:
                com.papa.sim.statistic.t.l(getActivity()).q2(AccountUtil_.getInstance_(getActivity()).getUid(), "communityEnter");
                ForumIndexActivity_.intent(getContext()).start();
                break;
            case R.id.toFightRl /* 2131367835 */:
                NewArenaMainActivty_.intent(getActivity()).start();
                com.papa.sim.statistic.t.l(getActivity()).q2(AccountUtil_.getInstance_(getActivity()).getUid(), "enterLobby");
                break;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
        com.join.android.app.component.video.c cVar = this.F;
        if (cVar != null) {
            cVar.F();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        changeDownloadTaskNumber(downloadTaskEvent.a(), downloadTaskEvent.c());
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.fragment.g0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f69642b.i0();
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            com.join.android.app.component.video.c cVar = this.F;
            if (cVar != null) {
                cVar.G();
                return;
            }
            return;
        }
        b0();
        com.join.android.app.component.video.c cVar2 = this.F;
        if (cVar2 != null) {
            cVar2.H();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        com.join.android.app.component.video.c cVar;
        if (this.G.getPositionNum() == 4 && (cVar = this.F) != null) {
            cVar.G();
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        com.join.android.app.component.video.c cVar;
        super.onResume();
        if (this.B != null) {
            b0();
            if (this.G.getPositionNum() != 4 || (cVar = this.F) == null) {
                return;
            }
            cVar.H();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        com.join.android.app.component.video.c cVar = this.F;
        if (cVar != null) {
            cVar.e(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onScrollStateChanged: ");
        sb2.append(scrollState);
        this.F.i(view, scrollState);
        if (scrollState == 0 && Fresco.getImagePipeline().P()) {
            Fresco.getImagePipeline().c0();
        }
    }

    @UiThread
    void p0() {
        j jVar = this.I;
        if (jVar != null) {
            jVar.loadMoreComplete();
            this.I.loadMoreEnd(true);
        }
    }

    @Background
    void q0(int curPid) {
        try {
            if (!com.join.mgps.Util.r0.Y0(getActivity())) {
                com.join.mgps.Util.r0.L0(getActivity());
                com.join.mgps.Util.a3.b(getActivity()).d("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanE0 = com.join.mgps.Util.r0.e0(getActivity(), curPid);
            forumPostsPraiseRequestBeanE0.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> forumResponseR = this.f69947n.R(forumPostsPraiseRequestBeanE0.getParams());
            if (forumResponseR == null) {
                return;
            }
            if (forumResponseR.getError() == 706) {
                s0(curPid);
                v0();
            } else {
                ForumData.ForumPostsPraiseData data = forumResponseR.getData();
                data.isResult();
                com.join.mgps.Util.r0.m1(forumPostsPraiseRequestBeanE0, data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void r0(ForumBean.GameInfo gameInfo) {
    }

    void s0(int pid) {
        List<ForumBean.ForumPostsBean> list = this.O;
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < this.O.size(); i10++) {
            ForumBean.ForumPostsBean forumPostsBean = this.O.get(i10);
            if (forumPostsBean.getPid() == pid) {
                this.O.get(i10).setPraise(forumPostsBean.is_praise() ? forumPostsBean.getPraise() - 1 : forumPostsBean.getPraise() + 1);
                this.O.get(i10).setIs_praise(!forumPostsBean.is_praise());
                break;
            }
        }
        this.f69949p.x().clear();
        for (int i11 = 0; i11 < this.O.size(); i11++) {
            t0(this.O.get(i11), i11);
        }
        this.f69949p.notifyDataSetChanged();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getActivity());
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(getActivity()).d(message);
    }

    @UiThread
    void updateDownloadView() {
        CustomerDownloadView customerDownloadView = this.f69945l;
        if (customerDownloadView != null) {
            customerDownloadView.setDownloadGameNum();
        }
    }

    @UiThread
    void v0() {
        com.join.mgps.Util.h0.h0(getActivity()).m(getActivity());
    }

    @UiThread
    void w0() {
        try {
            this.f69940g.setVisibility(0);
            this.f69939f.setVisibility(8);
            this.f69938e.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void x0() {
        XListView2 xListView2 = this.f69941h;
        if (xListView2 != null) {
            xListView2.u();
            this.f69941h.v();
        }
        this.f69950q = false;
    }

    @UiThread
    void y0(List<ForumBean.ForumPostsBean> posts) {
        if (posts == null) {
            return;
        }
        if (this.f69948o == 1) {
            this.f69949p.x().clear();
            this.O.clear();
        }
        this.O.addAll(posts);
        for (int size = this.O.size(); size < this.O.size(); size++) {
            t0(this.O.get(size), size);
        }
        this.f69949p.notifyDataSetChanged();
        if (this.f69941h != null) {
            if (posts.size() < 10 || posts.size() == 0) {
                this.f69941h.setNoMore();
                this.f69941h.v();
            } else {
                this.f69948o++;
                this.f69941h.u();
                this.f69941h.v();
            }
        }
        this.f69950q = false;
        this.f69949p.notifyDataSetChanged();
    }

    @UiThread
    void z0(DiscoveryMainDataBean results) {
        LinearLayout linearLayout = this.f69940g;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setVisibility(8);
        this.f69939f.setVisibility(8);
        this.f69938e.setVisibility(0);
    }
}
