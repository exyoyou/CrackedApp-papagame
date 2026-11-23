package com.join.mgps.fragment;

import android.content.Context;
import android.graphics.Color;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.MyFlowLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.RecommenGroupClassify;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.ResultMainBean;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.mg_forum_all_fragment)
public class u1 extends v1 implements AbsListView.OnScrollListener {
    private static final String E = "key_groups_data";
    private static final String F = "key_fragment_pos";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f71037c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RecommenGroupClassify f71038d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f71039e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f71040f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<RecommendLabelTag> f71041g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<ForumBean.ForumPostsBean> f71042h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.join.mgps.customview.j f71043i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ForumBaseAdapter f71044j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    com.join.android.app.component.video.c f71046l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    ForumLoadingView f71047m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    XListView2 f71048n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    com.join.mgps.rpc.i f71049o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f71050p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f71051q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    ConnectivityManager f71053s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    MyFlowLayout f71054t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.join.mgps.rpc.e f71056v;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f71045k = "ForumPostsFragment";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f71052r = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    List<Integer> f71055u = new ArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f71057w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Map<String, DownloadTask> f71058x = new ConcurrentHashMap();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    Map<String, DownloadTask> f71059y = new HashMap();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    Map<String, DownloadTask> f71060z = new HashMap();
    private List<DownloadTask> A = new ArrayList();
    int B = 0;
    boolean C = false;
    com.join.mgps.customview.t D = null;

    class a extends ForumLoadingView.e {
        a(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (u1.this.b0()) {
                u1 u1Var = u1.this;
                u1Var.X(u1Var.f71050p + 1);
            }
        }
    }

    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (u1.this.b0()) {
                if ((u1.this.getParentFragment() instanceof t1) && ((t1) u1.this.getParentFragment()).l0()) {
                    u1.this.s0();
                }
                u1 u1Var = u1.this;
                u1Var.f71051q = 0;
                u1Var.f71050p = 0;
                List<Integer> list = u1Var.f71055u;
                if (list != null) {
                    list.clear();
                }
                u1.this.X(1);
            }
        }
    }

    class d implements w6.f {
        d() {
        }

        @Override // w6.f
        public void a(int position) {
            u1 u1Var = u1.this;
            u1Var.f71048n.smoothScrollToPositionFromTop(position, u1Var.f71039e.getResources().getDimensionPixelOffset(R.dimen.wdp100));
        }
    }

    class e extends ForumBaseAdapter.b1 {
        e() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void a(int pid) {
            u1 u1Var = u1.this;
            if (!u1Var.isLogined(u1Var.f71039e)) {
                u1 u1Var2 = u1.this;
                u1Var2.showMessage(u1Var2.f71039e.getString(R.string.forum_user_not_login));
            } else if (!u1.this.u0()) {
                u1.this.p0();
            } else {
                u1.this.k0(pid);
                u1.this.h0(pid);
            }
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void d(int fid) {
            super.d(fid);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(fid);
            com.join.mgps.Util.r0.v0(u1.this.f71039e, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void e(String gameId) {
            u1 u1Var = u1.this;
            u1Var.C = true;
            u1Var.V(gameId);
        }
    }

    class f implements com.join.mgps.customview.i {
        f() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (u1.this.b0()) {
                u1 u1Var = u1.this;
                u1Var.X(u1Var.f71050p + 1);
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.join.mgps.Util.h1.e("XListView", "stopXlistRefreshAndLoadMore");
            XListView2 xListView2 = u1.this.f71048n;
            if (xListView2 == null) {
                return;
            }
            xListView2.v();
            u1.this.f71048n.u();
            com.join.mgps.Util.h1.e("XListView", "stopXlistRefreshAndLoadMore111111111111");
            if (u1.this.f71051q == -1) {
                com.join.mgps.Util.h1.e("XListView", "stopXlistRefreshAndLoadMore222222222");
                u1.this.f71048n.setNoMore();
            }
            if ((u1.this.getParentFragment() instanceof t1) && ((t1) u1.this.getParentFragment()).b0() == u1.this.f71037c) {
                ((t1) u1.this.getParentFragment()).D0();
            }
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecommendLabelTag f71068b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ TextView f71069c;

        h(final RecommendLabelTag val$tag, final TextView val$tagTv) {
            this.f71068b = val$tag;
            this.f71069c = val$tagTv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean zIsSelected = view.isSelected();
            view.setSelected(!zIsSelected);
            if (!zIsSelected) {
                u1.this.f71055u.add(Integer.valueOf(this.f71068b.getTag_id()));
            } else if (u1.this.f71055u.contains(Integer.valueOf(this.f71068b.getTag_id()))) {
                u1.this.f71055u.remove(Integer.valueOf(this.f71068b.getTag_id()));
            }
            this.f71069c.getPaint().setFakeBoldText(!zIsSelected);
            this.f71069c.invalidate();
        }
    }

    class i extends ForumLoadingView.e {
        i(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            u1.this.S(1);
            u1.this.loading();
        }
    }

    class j extends ForumLoadingView.e {
        j(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
        }
    }

    private UserInfo R(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void U() {
        com.join.mgps.customview.t tVar = this.D;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.D.dismiss();
    }

    private void W() {
        String string = getArguments().getString(E);
        int i10 = getArguments().getInt(F);
        if (com.join.mgps.Util.t2.i(string)) {
            this.f71038d = (RecommenGroupClassify) JsonMapper.getInstance().fromJson(string, RecommenGroupClassify.class);
        }
        this.f71037c = i10;
    }

    public static Fragment Y(RecommenGroupClassify data, int pos) {
        ForumPostsFragment_ forumPostsFragment_ = new ForumPostsFragment_();
        Bundle bundle = new Bundle();
        bundle.putCharSequence(E, JsonMapper.toJsonString(data));
        bundle.putInt(F, pos);
        forumPostsFragment_.setArguments(bundle);
        return forumPostsFragment_;
    }

    private void a0() {
        XListView2 xListView2 = this.f71048n;
        if (xListView2 == null) {
            return;
        }
        xListView2.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.f71048n.setPullLoadEnable(new b());
        c cVar = new c();
        this.f71043i = cVar;
        this.f71048n.setPullRefreshEnable(cVar);
        this.f71046l = new com.join.android.app.component.video.c(getContext(), this.f71045k);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(this.f71039e, this.f71046l);
        this.f71044j = forumBaseAdapter;
        forumBaseAdapter.f1(new d());
        this.f71044j.C0(this.f71045k);
        this.f71044j.I0(new e());
        this.f71048n.setOnScrollListener(this);
        this.f71048n.setAdapter((ListAdapter) this.f71044j);
        S(1);
    }

    private View d0(final RecommendLabelTag tag) {
        View viewInflate = View.inflate(getContext(), R.layout.forum_group_tag_item, null);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.rightMargin = (int) TypedValue.applyDimension(1, 20.0f, getResources().getDisplayMetrics());
        marginLayoutParams.bottomMargin = (int) TypedValue.applyDimension(1, 10.0f, getResources().getDisplayMetrics());
        viewInflate.setLayoutParams(marginLayoutParams);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tagTv);
        if (textView == null) {
            return null;
        }
        textView.setBackgroundResource(R.color.transparent);
        textView.setTextColor(Color.parseColor("#3CA4FD"));
        textView.setText("#" + tag.getTag_name() + "#");
        textView.setOnClickListener(new h(tag, textView));
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        UserInfo userInfoR = R(context);
        return userInfoR != null && com.join.mgps.Util.t2.i(userInfoR.getToken());
    }

    private void j0() {
        int i10 = 0;
        while (true) {
            List<DownloadTask> list = this.A;
            if (list == null || i10 >= list.size()) {
                return;
            }
            f0(q5.f.M().G(this.A.get(i10).getCrc_link_type_val()), 4);
            i10++;
        }
    }

    private void l0() {
        List<RecommendLabelTag> list = this.f71041g;
        if (list == null || list.size() < 1) {
            return;
        }
        if (this.f71054t == null) {
            MyFlowLayout myFlowLayout = new MyFlowLayout(this.f71039e);
            this.f71054t = myFlowLayout;
            this.f71048n.addHeaderView(myFlowLayout);
        }
        this.f71054t.removeAllViews();
        Iterator<RecommendLabelTag> it2 = this.f71041g.iterator();
        while (it2.hasNext()) {
            View viewD0 = d0(it2.next());
            if (viewD0 != null) {
                this.f71054t.addView(viewD0);
            }
        }
        if (this.f71048n.getHeaderViewsCount() > 0) {
            this.f71048n.removeHeaderView(this.f71054t);
        }
    }

    private void m0() {
        List<RecommendLabelTag> list = this.f71041g;
        if (list == null || list.size() < 1) {
            return;
        }
        this.f71044j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.TAG_FLOW_LAYOUT, new ForumBaseAdapter.r1.f0(this.f71041g)));
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0265  */
    /* JADX WARN: Code duplicated, block: B:103:0x026d  */
    /* JADX WARN: Code duplicated, block: B:111:0x0294  */
    /* JADX WARN: Code duplicated, block: B:112:0x0299  */
    /* JADX WARN: Code duplicated, block: B:114:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:115:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:117:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:118:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:123:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:125:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:94:0x0239  */
    /* JADX WARN: Code duplicated, block: B:96:0x023c  */
    private void n0(ForumBean.ForumPostsBean posts) {
        boolean z10;
        boolean z11;
        int i10;
        boolean z12;
        ForumBaseAdapter.ViewType viewType;
        List<ForumBean.ForumPostsBean.ResBean> small_thumb_pic_list;
        ArrayList arrayList;
        boolean zIsAttach_video;
        String thumb;
        String raw;
        String message;
        ForumBean.ForumPostsBean.ResBean resBean;
        if (posts == null) {
            return;
        }
        if (com.join.mgps.Util.t2.h(posts.getSubject()) || com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            z10 = false;
            z11 = false;
        } else {
            z11 = true;
            this.f71044j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT, new ForumBaseAdapter.r1.p(true, posts.getBest() > 0, posts.getFirst() > 0, posts.getSubject(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
            z10 = true;
        }
        if (z10) {
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
                SpannableStringBuilder spannableStringBuilderM0 = com.join.mgps.Util.r0.m0(this.f71039e, posts.getMessage(), z13, posts.getHelp() > 0, posts.getHelp_money() + "", arrayList2);
                ForumBaseAdapter.r1.o oVar = new ForumBaseAdapter.r1.o(z11 ^ true, z13 && posts.getBest() > 0, z13 && posts.getFirst() > 0, posts.getMessage(), posts.getPid(), 0, z13 && posts.getHelp() > 0, posts.getHelp_money() + "", z13 ? posts.getTag_info() : null, z13, spannableStringBuilderM0);
                this.f71044j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_MESSAGE, oVar));
                if (this.f71039e != null && isAdded()) {
                    this.f71044j.y().j(com.join.mgps.Util.i0.c(this.f71039e, getResources().getDimensionPixelOffset(R.dimen.mg_forum_post_message_text_size))).e(oVar);
                }
            }
            if (posts.getRelation_game() != null || TextUtils.isEmpty(posts.getRelation_game().getGame_id())) {
                z12 = false;
            } else {
                z12 = true;
            }
            if (!z12) {
                small_thumb_pic_list = posts.getSmall_thumb_pic_list();
                arrayList = new ArrayList();
                zIsAttach_video = posts.isAttach_video();
                thumb = "";
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
                    message = "";
                }
                if (zIsAttach_video) {
                    this.f71044j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, message)));
                } else if (small_thumb_pic_list != null && small_thumb_pic_list.size() != 0) {
                    this.f71044j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(small_thumb_pic_list, arrayList, posts.getPid())));
                }
            }
            if (z12) {
                i0(posts.getRelation_game());
                viewType = ForumBaseAdapter.ViewType.POST_GAME;
                if (!TextUtils.isEmpty(posts.getResource_url())) {
                    viewType = ForumBaseAdapter.ViewType.POST_GAME_RES_LINK;
                }
                this.f71044j.f(new ForumBaseAdapter.r1(viewType, new ForumBaseAdapter.r1.w(true, posts.getPid() + "", posts.getRelation_game(), posts.getResource_url())));
            }
            this.f71044j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(posts.getAvatar_src(), posts.getForum_name(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
        }
        this.f71044j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT, new ForumBaseAdapter.r1.p(true, posts.getBest() > 0, posts.getFirst() > 0, posts.getMessage(), posts.getPid(), 0, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
        i10 = 0;
        if (posts.getRelation_game() != null) {
            z12 = false;
        } else {
            z12 = false;
        }
        if (!z12) {
            small_thumb_pic_list = posts.getSmall_thumb_pic_list();
            arrayList = new ArrayList();
            zIsAttach_video = posts.isAttach_video();
            thumb = "";
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
                message = "";
            }
            if (zIsAttach_video) {
                this.f71044j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, message)));
            } else if (small_thumb_pic_list != null) {
                this.f71044j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(small_thumb_pic_list, arrayList, posts.getPid())));
            }
        }
        if (z12) {
            i0(posts.getRelation_game());
            viewType = ForumBaseAdapter.ViewType.POST_GAME;
            if (!TextUtils.isEmpty(posts.getResource_url())) {
                viewType = ForumBaseAdapter.ViewType.POST_GAME_RES_LINK;
            }
            this.f71044j.f(new ForumBaseAdapter.r1(viewType, new ForumBaseAdapter.r1.w(true, posts.getPid() + "", posts.getRelation_game(), posts.getResource_url())));
        }
        this.f71044j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(posts.getAvatar_src(), posts.getForum_name(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
    }

    private void o0() {
        for (int i10 = 0; i10 < this.f71042h.size(); i10++) {
            n0(this.f71042h.get(i10));
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.A.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f71058x.remove(next.getCrc_link_type_val());
                    it2.remove();
                    break;
                }
            }
            f0(downloadTask, 2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f71058x;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            f0(downloadTask, 3);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.A, downloadTask);
        if (!this.f71058x.containsKey(downloadTask.getCrc_link_type_val())) {
            this.A.add(downloadTask);
            this.f71058x.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        f0(downloadTask, 0);
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f71058x;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.A.add(downloadTask);
            this.f71058x.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f71058x.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        f0(downloadTask, 1);
    }

    @Override // ru.noties.scrollable.j
    public void C(int y10, long duration) {
        XListView2 xListView2 = this.f71048n;
        if (xListView2 != null) {
            xListView2.smoothScrollBy(y10, (int) duration);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S(int state) {
        ForumLoadingView forumLoadingView = this.f71047m;
        if (forumLoadingView == null) {
            return;
        }
        if (state == 1) {
            forumLoadingView.m();
            this.f71047m.j(1);
            return;
        }
        if (state == 2) {
            forumLoadingView.m();
            this.f71047m.j(2);
            return;
        }
        if (state == 4) {
            forumLoadingView.j(4);
            return;
        }
        if (state == 16) {
            forumLoadingView.setFailedMsg("加载失败~");
            ForumLoadingView forumLoadingView2 = this.f71047m;
            forumLoadingView2.setListener(new a(forumLoadingView2));
            this.f71047m.j(16);
            return;
        }
        if (state == 9) {
            forumLoadingView.j(9);
            ForumLoadingView forumLoadingView3 = this.f71047m;
            forumLoadingView3.setListener(new i(forumLoadingView3));
            this.f71047m.j(9);
            return;
        }
        if (state != 10) {
            return;
        }
        RecommenGroupClassify recommenGroupClassify = this.f71038d;
        String gname = recommenGroupClassify != null ? recommenGroupClassify.getGname() : "";
        if (com.join.mgps.Util.t2.h(gname)) {
            gname = "帖子";
        }
        this.f71047m.setFailedMsg("没有更多" + gname + "帖哦~");
        ForumLoadingView forumLoadingView4 = this.f71047m;
        forumLoadingView4.setListener(new j(forumLoadingView4));
        this.f71047m.setReloadingVisibility(0);
        this.f71047m.j(10);
        this.f71047m.setFailedImgVisibility(8);
        this.f71047m.setReloadingVisibility(0);
        this.f71047m.setFailedReloadingRes(R.drawable.papa_loading_null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Background
    public void V(String str) {
        Context context = getContext();
        if (!c0(context)) {
            T("获取游戏信息失败");
            return;
        }
        if (this.B == 1) {
            return;
        }
        try {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
                ResultMainBean<List<DetailResultBean>> resultMainBeanI0 = this.f71056v.I0(RequestBeanUtil.getInstance(context).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                if (resultMainBeanI0 != null && resultMainBeanI0.getFlag() != 0) {
                    List<DetailResultBean> data = resultMainBeanI0.getMessages().getData();
                    if (data.size() != 0) {
                        DetailResultBean detailResultBean = data.get(0);
                        if (this.C) {
                            r0(detailResultBean);
                        }
                    }
                } else if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() != 0) {
                    T("获取游戏信息失败");
                } else {
                    T("获取游戏信息失败");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                T("获取游戏信息失败");
            }
        } finally {
            this.B = 0;
            this.C = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:63:0x00d1  */
    @Background
    public void X(int page) {
        ForumLoadingView forumLoadingView;
        if (!c0(this.f71039e)) {
            if (isAdded()) {
                T(getString(R.string.net_connect_failed));
            }
            S(9);
            return;
        }
        try {
            try {
                int i10 = this.f71051q;
                if (i10 == -1) {
                    if (i10 != -1) {
                        this.f71051q = 0;
                    }
                    s0();
                    return;
                }
                if (i10 == page) {
                    if (i10 != -1) {
                        this.f71051q = 0;
                    }
                    s0();
                    return;
                }
                if (getParentFragment().isHidden()) {
                    if (this.f71051q != -1) {
                        this.f71051q = 0;
                    }
                    s0();
                    return;
                }
                this.f71051q = page;
                ForumResponse<ForumData.HomepageRecommendLabel> forumResponseG0 = this.f71049o.g0(this.f71038d.getGid(), page, AccountUtil_.getInstance_(this.f71039e).getUid(), AccountUtil_.getInstance_(this.f71039e).getToken());
                if (forumResponseG0 != null && forumResponseG0.getError() == 0) {
                    if (forumResponseG0.getData() == null) {
                        S(4);
                        if (this.f71051q != -1) {
                            this.f71051q = 0;
                        }
                        s0();
                        return;
                    }
                    ForumData.HomepageRecommendLabel data = forumResponseG0.getData();
                    this.f71040f = data.getFlag();
                    if (data.getPost_list() != null && data.getPost_list().size() != 0) {
                        q0(page, data);
                        this.f71050p = page;
                        S(2);
                    }
                    this.f71051q = -1;
                    S(10);
                    if (this.f71051q != -1) {
                        this.f71051q = 0;
                    }
                    s0();
                    return;
                }
                if (this.f71051q != -1) {
                    this.f71051q = 0;
                }
                s0();
            } catch (Exception e10) {
                e10.printStackTrace();
                s0();
                if (page == 1 && (forumLoadingView = this.f71047m) != null && forumLoadingView.getLoadingState() != 4) {
                    this.f71047m.m();
                }
                S(4);
                if (this.f71051q != -1) {
                    this.f71051q = 0;
                }
            }
        } catch (Throwable th) {
            if (this.f71051q != -1) {
                this.f71051q = 0;
            }
            s0();
            throw th;
        }
    }

    public void Z() {
        this.f71056v = com.join.mgps.rpc.impl.d.O1();
        try {
            com.join.mgps.Util.j0.a().d(this);
            this.f71057w = true;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    void afterViews() {
        this.f71049o = com.join.mgps.rpc.impl.g.A0();
        this.f71039e = getActivity();
        W();
        if (!this.f71057w) {
            Z();
        }
        a0();
        loading();
    }

    boolean b0() {
        if (c0(this.f71039e)) {
            return true;
        }
        if (isAdded() && this.f71039e != null) {
            T(getString(R.string.net_connect_failed));
        }
        S(9);
        s0();
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0011 A[Catch: Exception -> 0x0008, TryCatch #0 {Exception -> 0x0008, blocks: (B:4:0x0003, B:9:0x000d, B:11:0x0011, B:12:0x001b, B:15:0x0020, B:18:0x0027, B:20:0x002a), top: B:27:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:20:0x002a A[Catch: Exception -> 0x0008, TRY_LEAVE, TryCatch #0 {Exception -> 0x0008, blocks: (B:4:0x0003, B:9:0x000d, B:11:0x0011, B:12:0x001b, B:15:0x0020, B:18:0x0027, B:20:0x002a), top: B:27:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0036 A[LOOP:0: B:18:0x0027->B:24:0x0036, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x0034 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x000c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:9:0x000d A[Catch: Exception -> 0x0008, TryCatch #0 {Exception -> 0x0008, blocks: (B:4:0x0003, B:9:0x000d, B:11:0x0011, B:12:0x001b, B:15:0x0020, B:18:0x0027, B:20:0x002a), top: B:27:0x0003 }] */
    boolean c0(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo[] allNetworkInfo;
        int i10;
        if (context == null) {
            try {
                context = getActivity();
                if (context == null) {
                    return false;
                }
                if (this.f71053s == null) {
                    this.f71053s = (ConnectivityManager) context.getSystemService("connectivity");
                }
                connectivityManager = this.f71053s;
                if (connectivityManager == null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
                    for (NetworkInfo networkInfo : allNetworkInfo) {
                        if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                            return true;
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            if (context == null) {
                return false;
            }
            if (this.f71053s == null) {
                this.f71053s = (ConnectivityManager) context.getSystemService("connectivity");
            }
            connectivityManager = this.f71053s;
            if (connectivityManager == null) {
                return false;
            }
            while (i10 < allNetworkInfo.length) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        }
        return false;
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.f71059y.containsKey(crc_link_type_val)) {
                this.f71059y.put(crc_link_type_val, task);
            }
            if (this.f71060z.containsKey(crc_link_type_val)) {
                return;
            }
            this.f71060z.put(crc_link_type_val, task);
            return;
        }
        if (from == 3) {
            if (this.f71060z.containsKey(crc_link_type_val)) {
                this.f71060z.remove(crc_link_type_val);
                return;
            }
            return;
        }
        if (from != 5) {
            if (from == 6) {
                if (this.f71060z.containsKey(crc_link_type_val)) {
                    this.f71060z.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 7) {
                if (this.f71059y.containsKey(crc_link_type_val)) {
                    this.f71059y.remove(crc_link_type_val);
                }
                if (this.f71060z.containsKey(crc_link_type_val)) {
                    this.f71060z.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 10) {
                if (!this.f71059y.containsKey(crc_link_type_val)) {
                    this.f71059y.put(crc_link_type_val, task);
                }
                if (this.f71060z.containsKey(crc_link_type_val)) {
                    return;
                }
                this.f71060z.put(crc_link_type_val, task);
                return;
            }
            if (from != 11) {
                return;
            }
        } else if (this.f71059y.containsKey(crc_link_type_val)) {
            this.f71059y.remove(crc_link_type_val);
        }
        if (this.f71060z.containsKey(crc_link_type_val)) {
            this.f71060z.remove(crc_link_type_val);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void e0() {
        ForumBaseAdapter forumBaseAdapter = this.f71044j;
        if (forumBaseAdapter != null && forumBaseAdapter.x() != null) {
            this.f71044j.x().clear();
        }
        m0();
        o0();
        this.f71044j.notifyDataSetChanged();
    }

    void f0(DownloadTask downloadTask, int event) {
        if (downloadTask == null) {
            return;
        }
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<ForumBean.ForumPostsBean> list = this.f71042h;
            if (list == null || i10 >= list.size()) {
                break;
            }
            ForumBean.ForumPostsBean forumPostsBean = this.f71042h.get(i10);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadTask);
                z10 |= true;
            }
            i10++;
        }
        if (z10) {
            e0();
        }
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void g0(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        ForumBaseAdapter forumBaseAdapter = this.f71044j;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void h0(int curPid) {
        try {
            if (!com.join.mgps.Util.r0.Y0(this.f71039e)) {
                com.join.mgps.Util.r0.L0(this.f71039e);
                com.join.mgps.Util.a3.b(this.f71039e).d("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanE0 = com.join.mgps.Util.r0.e0(this.f71039e, curPid);
            forumPostsPraiseRequestBeanE0.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> forumResponseR = this.f71049o.R(forumPostsPraiseRequestBeanE0.getParams());
            if (forumResponseR == null) {
                return;
            }
            if (forumResponseR.getError() == 706) {
                k0(curPid);
                p0();
            } else {
                ForumData.ForumPostsPraiseData data = forumResponseR.getData();
                data.isResult();
                com.join.mgps.Util.r0.m1(forumPostsPraiseRequestBeanE0, data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // ru.noties.scrollable.b
    public boolean i(int direction) {
        XListView2 xListView2 = this.f71048n;
        return xListView2 != null && xListView2.canScrollVertically(direction);
    }

    void i0(ForumBean.GameInfo gameInfo) {
        if (gameInfo != null) {
            try {
                DownloadTask downloadTaskG = q5.f.M().G(gameInfo.getGame_id());
                gameInfo.setDownloadTask(downloadTaskG);
                Map<String, DownloadTask> map = this.f71058x;
                if (map == null || downloadTaskG == null || map.containsKey(downloadTaskG.getCrc_link_type_val())) {
                    return;
                }
                this.A.add(downloadTaskG);
                this.f71058x.put(downloadTaskG.getCrc_link_type_val(), downloadTaskG);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void k0(int pid) {
        ForumBean.ForumPostsBean next;
        List<ForumBean.ForumPostsBean> list = this.f71042h;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<ForumBean.ForumPostsBean> it2 = this.f71042h.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getPid() == pid) {
                next.setPraise(next.is_praise() ? next.getPraise() - 1 : next.getPraise() + 1);
                next.setIs_praise(!next.is_praise());
                e0();
                return;
            }
        }
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    synchronized void loading() {
        X(1);
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.android.app.component.video.c cVar = this.f71046l;
        if (cVar != null) {
            cVar.F();
        }
        com.join.mgps.Util.j0.a().e(this);
        this.f71057w = false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        changeDownloadTaskNumber(downloadTaskA, downloadTaskEvent.c());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("zip DownloadStatus =");
        sb2.append(downloadTaskEvent.c());
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
                updateUI(downloadTaskA, 4);
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
    public void onPause() {
        com.join.android.app.component.video.c cVar = this.f71046l;
        if (cVar != null) {
            cVar.G();
        }
        super.onPause();
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ForumLoadingView forumLoadingView = this.f71047m;
        if (forumLoadingView != null) {
            S(forumLoadingView.getLoadingState());
        }
        com.join.android.app.component.video.c cVar = this.f71046l;
        if (cVar != null) {
            cVar.H();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        if (getActivity() != null) {
            this.f71046l.e(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        if (scrollState == 0 && Fresco.getImagePipeline().P()) {
            Fresco.getImagePipeline().c0();
        }
        if (getActivity() != null) {
            this.f71046l.i(view, scrollState);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        com.join.mgps.Util.h1.e("ForumPostsFragment" + this.f71037c, "onViewCreated");
        this.f71052r = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p0() {
        com.join.mgps.Util.h0.h0(this.f71039e).m(this.f71039e);
    }

    void q0(int page, ForumData.HomepageRecommendLabel data) {
        List<RecommendLabelTag> recommend_tags = data.getRecommend_tags();
        List<ForumBean.ForumPostsBean> post_list = data.getPost_list();
        if (this.f71041g == null) {
            this.f71041g = new ArrayList();
        }
        if (this.f71042h == null) {
            this.f71042h = new ArrayList();
        }
        if (page == 1) {
            this.f71041g.clear();
            this.f71042h.clear();
            if (data.getLabel_switcher() == 1 && recommend_tags != null && recommend_tags.size() > 0) {
                RecommendLabelTag recommendLabelTag = new RecommendLabelTag();
                recommendLabelTag.setTag_id(-1);
                recommendLabelTag.setTag_name(this.f71039e.getResources().getString(R.string.mg_f_all_tag));
                this.f71041g.add(recommendLabelTag);
                this.f71041g.addAll(recommend_tags);
            }
        }
        if (post_list != null) {
            this.f71042h.addAll(post_list);
        }
        e0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void r0(DetailResultBean detialResultBean) {
        DownloadTask downloadtaskDown;
        if (detialResultBean == null || (downloadtaskDown = detialResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f71042h.size(); i10++) {
            ForumBean.ForumPostsBean forumPostsBean = this.f71042h.get(i10);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadtaskDown.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadtaskDown);
                z10 |= true;
            }
        }
        if (z10) {
            e0();
        }
        if (UtilsMy.y0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.z4(this.f71039e, downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.A1(downloadtaskDown, detialResultBean);
        if (UtilsMy.o1(this.f71039e, downloadtaskDown)) {
            return;
        }
        if (detialResultBean.getDown_status() == 5) {
            UtilsMy.l1(this.f71039e, downloadtaskDown);
        } else {
            UtilsMy.U0(this.f71039e, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    public void refresh() {
        XListView2 xListView2 = this.f71048n;
        if (xListView2 != null) {
            xListView2.setPullLoadEnable(new f());
        }
        com.join.mgps.customview.j jVar = this.f71043i;
        if (jVar != null) {
            jVar.onRefresh();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s0() {
        this.mHandler.postDelayed(new g(), 100L);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        com.join.mgps.Util.h1.e("ForumPostsFragment" + this.f71037c, "setUserVisibleHint--isVisibleToUser=" + isVisibleToUser + " isInit=" + this.f71052r);
        if (isVisibleToUser && this.f71050p < 1 && this.f71051q == 0) {
            loading();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.f71039e).d(message);
    }

    public void t0() {
        com.join.android.app.component.video.c cVar = this.f71046l;
        if (cVar != null) {
            cVar.K(1);
            this.f71046l.m(this.f71048n);
        }
    }

    boolean u0() {
        if (R(this.f71039e) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this.f71039e).isTourist();
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask == null) {
            if (from != 4) {
                return;
            }
            j0();
        }
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
                j0();
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
