package com.join.mgps.fragment;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ForumIndexActivity_;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.customview.MyGridView;
import com.join.mgps.customview.ScrollTextViewLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_discovery)
public class e0 extends Fragment implements View.OnClickListener, AbsListView.OnScrollListener {
    private List<DownloadTask> C;
    private ScrollTextViewLayout D;
    private ImageView E;
    com.join.android.app.component.video.c F;
    MGMainActivity G;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    RelativeLayout f69351c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    RelativeLayout f69352d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f69353e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f69354f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f69355g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    XListView2 f69356h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    ImageView f69357i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    TextView f69358j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    View f69359k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bean
    com.join.mgps.Util.b f69360l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.join.mgps.rpc.i f69361m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ForumBaseAdapter f69363o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private View f69365q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private LinearLayout f69366r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private GridView f69367s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private MyGridView f69368t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ImageView f69369u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private RelativeLayout f69370v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private LinearLayout f69371w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private TextView f69372x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private com.join.mgps.rpc.l f69373y;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f69362n = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f69364p = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.join.mgps.adapter.b0 f69374z = null;
    private com.join.mgps.adapter.a0 A = null;
    private String B = "";
    String H = "DiscoveryFragment";
    private List<ForumBean.ForumPostsBean> I = new ArrayList();
    private List<DiscoveryMainDataBean.BattleGameBean> J = null;
    private int K = 0;
    private SparseArray L = new SparseArray(0);

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            com.papa.sim.statistic.t.l(e0.this.getActivity()).q2(AccountUtil_.getInstance_(e0.this.getActivity()).getUid(), "gameEnter");
            DiscoveryMainDataBean.BattleGameBean item = e0.this.f69374z.getItem(position);
            if (item == null) {
                return;
            }
            GameInfoBean gameInfoBean = new GameInfoBean();
            gameInfoBean.setGame_name(item.getGame_name());
            gameInfoBean.setGame_ico(item.getGame_ico());
            gameInfoBean.setGame_id(item.getGame_id());
            GameRoomListActivity_.intent(e0.this.getActivity()).c(gameInfoBean).start();
        }
    }

    class b implements AdapterView.OnItemClickListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            if (parent.getAdapter() == null || !(parent.getAdapter() instanceof com.join.mgps.adapter.a0)) {
                return;
            }
            com.papa.sim.statistic.t.l(e0.this.getActivity()).q2(AccountUtil_.getInstance_(e0.this.getActivity()).getUid(), "groupEnter");
            IntentUtil.getInstance().goForumGroupActivity(parent.getContext(), ((com.join.mgps.adapter.a0) parent.getAdapter()).getItem(position).getFid(), "discovery");
        }
    }

    class c implements w6.f {
        c() {
        }

        @Override // w6.f
        public void a(int position) {
            int height = e0.this.f69352d.getHeight();
            if (height < e0.this.f69356h.getResources().getDimensionPixelOffset(R.dimen.wdp80)) {
                height = e0.this.f69356h.getResources().getDimensionPixelOffset(R.dimen.wdp140);
            }
            e0.this.f69356h.smoothScrollToPositionFromTop(position, height);
        }
    }

    class d implements com.join.mgps.customview.i {
        d() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (e0.this.f69364p) {
                return;
            }
            e0.this.W();
        }
    }

    class e implements com.join.mgps.customview.j {
        e() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (e0.this.f69364p) {
                return;
            }
            e0.this.f69362n = 1;
            com.join.android.app.component.video.c cVar = e0.this.F;
            if (cVar != null) {
                cVar.G();
                e0.this.F.K(1);
            }
            e0.this.I.clear();
            e0.this.W();
        }
    }

    class f extends ForumBaseAdapter.b1 {
        f() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void a(int pid) {
            e0 e0Var = e0.this;
            if (!e0Var.isLogined(e0Var.getActivity())) {
                e0 e0Var2 = e0.this;
                e0Var2.showMessage(e0Var2.getActivity().getString(R.string.forum_user_not_login));
            } else if (!e0.this.h0()) {
                e0.this.c0();
            } else {
                e0.this.a0(pid);
                e0.this.Y(pid);
            }
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void d(int fid) {
            super.d(fid);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(fid);
            com.join.mgps.Util.r0.v0(e0.this.getActivity(), forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void e(String gameId) {
        }
    }

    class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f69381a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f69382b = 0;

        g() {
        }
    }

    private UserInfo S(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void U() {
        this.B = "";
        List<DownloadTask> listT = q5.f.M().T(null);
        this.C = listT;
        if (listT == null || listT.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.C) {
            if (downloadTask.isIs_fight() == 1) {
                if ("".equals(this.B)) {
                    this.B += downloadTask.getCrc_link_type_val();
                } else {
                    this.B += "," + downloadTask.getCrc_link_type_val();
                }
            }
        }
    }

    private int V() {
        int i10;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.K;
            if (i11 >= i10) {
                break;
            }
            g gVar = (g) this.L.get(i11);
            if (gVar != null) {
                i12 += gVar.f69381a;
            }
            i11++;
        }
        g gVar2 = (g) this.L.get(i10);
        if (gVar2 == null) {
            gVar2 = new g();
        }
        return i12 - gVar2.f69382b;
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
    private void b0(ForumBean.ForumPostsBean posts, int num) {
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
        e0 e0Var = this;
        boolean z12 = num != 0;
        if (com.join.mgps.Util.t2.h(posts.getSubject()) || com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            z10 = false;
        } else {
            e0Var = this;
            e0Var.f69363o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT, new ForumBaseAdapter.r1.p(z12, posts.getBest() > 0, posts.getFirst() > 0, posts.getSubject(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
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
                e0Var.f69363o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_MESSAGE, oVar));
                if (getActivity() != null && isAdded()) {
                    e0Var.f69363o.y().j(com.join.mgps.Util.i0.c(getActivity(), getResources().getDimensionPixelOffset(R.dimen.mg_forum_post_message_text_size))).e(oVar);
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
                    e0Var.f69363o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, message)));
                } else if (small_thumb_pic_list != null && small_thumb_pic_list.size() != 0) {
                    e0Var.f69363o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(small_thumb_pic_list, arrayList, posts.getPid())));
                }
            }
            if (z11) {
                e0Var.Z(posts.getRelation_game());
                viewType = ForumBaseAdapter.ViewType.POST_GAME;
                if (!TextUtils.isEmpty(posts.getResource_url())) {
                    viewType = ForumBaseAdapter.ViewType.POST_GAME_RES_LINK;
                }
                e0Var.f69363o.f(new ForumBaseAdapter.r1(viewType, new ForumBaseAdapter.r1.w(true, posts.getPid() + str2, posts.getRelation_game(), posts.getResource_url())));
            }
            e0Var.f69363o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(posts.getAvatar_src(), posts.getForum_name(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
        }
        str = "";
        e0Var = this;
        e0Var.f69363o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT, new ForumBaseAdapter.r1.p(z12, posts.getBest() > 0, posts.getFirst() > 0, posts.getMessage(), posts.getPid(), 0, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
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
                e0Var.f69363o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, message)));
            } else if (small_thumb_pic_list != null) {
                e0Var.f69363o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(small_thumb_pic_list, arrayList, posts.getPid())));
            }
        }
        if (z11) {
            e0Var.Z(posts.getRelation_game());
            viewType = ForumBaseAdapter.ViewType.POST_GAME;
            if (!TextUtils.isEmpty(posts.getResource_url())) {
                viewType = ForumBaseAdapter.ViewType.POST_GAME_RES_LINK;
            }
            e0Var.f69363o.f(new ForumBaseAdapter.r1(viewType, new ForumBaseAdapter.r1.w(true, posts.getPid() + str2, posts.getRelation_game(), posts.getResource_url())));
        }
        e0Var.f69363o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(posts.getAvatar_src(), posts.getForum_name(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        UserInfo userInfoS = S(getActivity());
        return userInfoS != null && com.join.mgps.Util.t2.i(userInfoS.getToken());
    }

    @Click
    void M() {
    }

    public void T() {
        U();
        loadData();
        List<ForumBean.ForumPostsBean> list = this.I;
        if (list == null || list.size() != 0) {
            return;
        }
        W();
    }

    @Background
    void W() {
        if (!com.join.android.app.common.utils.m.j(getActivity())) {
            e0();
            return;
        }
        if (this.f69361m == null) {
            this.f69361m = com.join.mgps.rpc.impl.g.A0();
        }
        String uid = AccountUtil_.getInstance_(getActivity()).getUid();
        String token = AccountUtil_.getInstance_(getActivity()).getToken();
        if (this.f69364p) {
            return;
        }
        this.f69364p = true;
        try {
            ForumResponse<List<ForumBean.ForumPostsBean>> forumResponseX = this.f69361m.x(uid, token, this.f69362n);
            if (forumResponseX == null || forumResponseX.getError() != 0) {
                e0();
            } else {
                f0(forumResponseX.getData());
            }
        } catch (Exception unused) {
            e0();
        }
    }

    @Click
    void X() {
    }

    @Background
    void Y(int curPid) {
        try {
            if (!com.join.mgps.Util.r0.Y0(getActivity())) {
                com.join.mgps.Util.r0.L0(getActivity());
                com.join.mgps.Util.a3.b(getActivity()).d("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanE0 = com.join.mgps.Util.r0.e0(getActivity(), curPid);
            forumPostsPraiseRequestBeanE0.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> forumResponseR = this.f69361m.R(forumPostsPraiseRequestBeanE0.getParams());
            if (forumResponseR == null) {
                return;
            }
            if (forumResponseR.getError() == 706) {
                a0(curPid);
                c0();
            } else {
                ForumData.ForumPostsPraiseData data = forumResponseR.getData();
                data.isResult();
                com.join.mgps.Util.r0.m1(forumPostsPraiseRequestBeanE0, data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void Z(ForumBean.GameInfo gameInfo) {
    }

    void a0(int pid) {
        List<ForumBean.ForumPostsBean> list = this.I;
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < this.I.size(); i10++) {
            ForumBean.ForumPostsBean forumPostsBean = this.I.get(i10);
            if (forumPostsBean.getPid() == pid) {
                this.I.get(i10).setPraise(forumPostsBean.is_praise() ? forumPostsBean.getPraise() - 1 : forumPostsBean.getPraise() + 1);
                this.I.get(i10).setIs_praise(!forumPostsBean.is_praise());
                break;
            }
        }
        this.f69363o.x().clear();
        for (int i11 = 0; i11 < this.I.size(); i11++) {
            b0(this.I.get(i11), i11);
        }
        this.f69363o.notifyDataSetChanged();
    }

    @AfterViews
    void afterViews() {
        this.D = ((MGMainActivity) getActivity()).scroll_text_layout;
        this.E = ((MGMainActivity) getActivity()).downloadLine;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f69359k.getLayoutParams();
        layoutParams.height = com.join.android.app.common.utils.q.v(getContext());
        this.f69359k.setLayoutParams(layoutParams);
        this.F = new com.join.android.app.component.video.c(getContext(), this.H);
        this.G = (MGMainActivity) getActivity();
        this.f69373y = com.join.mgps.rpc.impl.k.n0();
        View viewInflate = LayoutInflater.from(getActivity()).inflate(R.layout.part_discovery_header, (ViewGroup) null);
        this.f69365q = viewInflate;
        this.f69366r = (LinearLayout) viewInflate.findViewById(R.id.discoveryTopRl);
        this.f69367s = (GridView) this.f69365q.findViewById(R.id.discoveryTopGv);
        this.f69368t = (MyGridView) this.f69365q.findViewById(R.id.discoveryBottomGv);
        this.f69369u = (ImageView) this.f69365q.findViewById(R.id.discoverySearchIv);
        this.f69370v = (RelativeLayout) this.f69365q.findViewById(R.id.toFightRl);
        this.f69371w = (LinearLayout) this.f69365q.findViewById(R.id.toCommunityLl);
        this.f69372x = (TextView) this.f69365q.findViewById(R.id.toCommunityTx);
        View viewFindViewById = this.f69365q.findViewById(R.id.statubar);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) viewFindViewById.getLayoutParams();
        layoutParams2.height = com.join.android.app.common.utils.q.v(getContext());
        viewFindViewById.setLayoutParams(layoutParams2);
        this.f69369u.setOnClickListener(this);
        this.f69357i.setOnClickListener(this);
        this.f69370v.setOnClickListener(this);
        this.f69371w.setOnClickListener(this);
        this.f69372x.setOnClickListener(this);
        this.f69367s.setOnItemClickListener(new a());
        this.f69368t.setOnItemClickListener(new b());
        this.f69356h.addHeaderView(this.f69365q);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(getActivity(), this.F);
        this.f69363o = forumBaseAdapter;
        forumBaseAdapter.f1(new c());
        this.f69363o.C0(this.H);
        this.f69356h.setAdapter((ListAdapter) this.f69363o);
        this.f69356h.setPreLoadCount(10);
        this.f69356h.setVerticalScrollBarEnabled(false);
        this.f69356h.setPullLoadEnable(new d());
        this.f69356h.setPullRefreshEnable(new e());
        this.f69356h.setOnScrollListener(this);
        T();
        this.f69363o.I0(new f());
    }

    public void autoPlay() {
        com.join.android.app.component.video.c cVar = this.F;
        if (cVar != null) {
            cVar.K(1);
            this.F.m(this.f69356h);
        }
    }

    @UiThread
    void c0() {
        com.join.mgps.Util.h0.h0(getActivity()).m(getActivity());
    }

    @UiThread
    void d0() {
        try {
            this.f69355g.setVisibility(0);
            this.f69354f.setVisibility(8);
            this.f69353e.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void e0() {
        XListView2 xListView2 = this.f69356h;
        if (xListView2 != null) {
            xListView2.u();
            this.f69356h.v();
        }
        this.f69364p = false;
    }

    @UiThread
    void f0(List<ForumBean.ForumPostsBean> posts) {
        if (posts == null) {
            return;
        }
        if (this.f69362n == 1) {
            this.f69363o.x().clear();
            this.I.clear();
        }
        this.I.addAll(posts);
        for (int size = this.I.size(); size < this.I.size(); size++) {
            b0(this.I.get(size), size);
        }
        this.f69363o.notifyDataSetChanged();
        if (this.f69356h != null) {
            if (posts.size() < 10 || posts.size() == 0) {
                this.f69356h.setNoMore();
                this.f69356h.v();
            } else {
                this.f69362n++;
                this.f69356h.u();
                this.f69356h.v();
            }
        }
        this.f69364p = false;
        this.f69363o.notifyDataSetChanged();
    }

    @UiThread
    void g0(DiscoveryMainDataBean results) {
        LinearLayout linearLayout = this.f69355g;
        if (linearLayout == null || results == null) {
            return;
        }
        linearLayout.setVisibility(8);
        this.f69354f.setVisibility(8);
        this.f69353e.setVisibility(0);
        List<DiscoveryMainDataBean.BattleGameBean> battle_game = results.getBattle_game();
        this.J = battle_game;
        if (battle_game != null && battle_game.size() > 0) {
            if (this.J.size() <= 4) {
                this.f69367s.setColumnWidth(this.J.size());
            } else {
                this.f69367s.setColumnWidth(4);
            }
            com.join.mgps.adapter.b0 b0Var = this.f69374z;
            if (b0Var == null) {
                com.join.mgps.adapter.b0 b0Var2 = new com.join.mgps.adapter.b0(getActivity(), this.J, this.B);
                this.f69374z = b0Var2;
                this.f69367s.setAdapter((ListAdapter) b0Var2);
            } else {
                b0Var.c(this.J);
            }
            this.f69374z.b(this.B);
        }
        List<DiscoveryMainDataBean.ForumListBean> forum_list = results.getForum_list();
        if (forum_list == null || forum_list.size() <= 0) {
            return;
        }
        com.join.mgps.adapter.a0 a0Var = this.A;
        if (a0Var == null) {
            this.A = new com.join.mgps.adapter.a0(getActivity(), forum_list);
        } else {
            a0Var.b(forum_list);
        }
        this.f69368t.setAdapter((ListAdapter) this.A);
    }

    boolean h0() {
        if (S(getActivity()) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(getActivity()).isTourist();
    }

    @Background
    void loadData() {
        if (!com.join.android.app.common.utils.m.j(getActivity())) {
            d0();
            return;
        }
        try {
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.put("uid", this.f69360l.getUid());
            linkedMultiValueMap.put(Constants.TOKEN, this.f69360l.getToken());
            linkedMultiValueMap.put("game_ids", this.B);
            GameWorldResponse<DiscoveryMainDataBean> gameWorldResponseC = this.f69373y.C(linkedMultiValueMap);
            if (gameWorldResponseC == null || gameWorldResponseC.getData() == null || gameWorldResponseC.getError() != 0) {
                d0();
            } else {
                g0(gameWorldResponseC.getData());
            }
        } catch (Exception unused) {
            d0();
        }
    }

    @Click
    void loding_faile() {
        this.f69355g.setVisibility(8);
        this.f69354f.setVisibility(0);
        this.f69353e.setVisibility(8);
        T();
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
        com.join.android.app.component.video.c cVar = this.F;
        if (cVar != null) {
            cVar.F();
        }
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
        T();
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
        if (this.f69374z != null) {
            T();
            if (this.G.getPositionNum() != 4 || (cVar = this.F) == null) {
                return;
            }
            cVar.H();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.F.e(view, firstVisibleItem, visibleItemCount, totalItemCount);
        this.K = firstVisibleItem;
        View childAt = view.getChildAt(0);
        if (childAt != null) {
            g gVar = (g) this.L.get(firstVisibleItem);
            if (gVar == null) {
                gVar = new g();
            }
            gVar.f69381a = childAt.getHeight();
            gVar.f69382b = childAt.getTop();
            this.L.append(firstVisibleItem, gVar);
            int iV = V();
            if (iV <= 20) {
                this.f69352d.setVisibility(8);
                this.f69359k.setVisibility(8);
                this.D.setDrawable(getResources().getDrawable(R.drawable.papa_download_butn));
                this.E.setImageResource(R.drawable.line_white_bg);
                return;
            }
            if (iV > 10) {
                this.f69359k.setVisibility(0);
                this.f69352d.setVisibility(0);
                this.D.setDrawable(getResources().getDrawable(R.drawable.papa_download_selector));
                this.E.setImageResource(R.drawable.line_grey_bg);
                if (iV >= this.f69365q.getHeight()) {
                    this.f69358j.setText("悟饭头条");
                } else {
                    this.f69358j.setText("发现");
                }
            }
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        this.F.i(view, scrollState);
        if (scrollState == 0 && Fresco.getImagePipeline().P()) {
            Fresco.getImagePipeline().c0();
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getActivity());
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(getActivity()).d(message);
    }
}
