package com.join.mgps.fragment;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.ForumActivity;
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
public class s1 extends v1 implements AbsListView.OnScrollListener {
    private static final String E = "key_groups_data";
    private static final String F = "key_groups_id";
    private static final String G = "key_groups_name";
    private static final String H = "key_fragment_pos";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f70830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RecommenGroupClassify f70831d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f70832e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f70833f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<RecommendLabelTag> f70834g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<ForumBean.ForumPostsBean> f70835h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.join.mgps.customview.j f70836i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ForumBaseAdapter f70837j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f70838k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f70839l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    ForumLoadingView f70840m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    XListView2 f70841n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    com.join.android.app.component.video.c f70843p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    com.join.mgps.rpc.i f70844q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f70845r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f70846s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    MyFlowLayout f70847t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.join.mgps.rpc.e f70849v;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    String f70842o = "ForumGroupPostsFragment";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    List<Integer> f70848u = new ArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Map<String, DownloadTask> f70850w = new ConcurrentHashMap();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    Map<String, DownloadTask> f70851x = new HashMap();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    Map<String, DownloadTask> f70852y = new HashMap();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private List<DownloadTask> f70853z = new ArrayList();
    int A = 0;
    boolean B = false;
    boolean C = true;
    com.join.mgps.customview.t D = null;

    class a extends ForumLoadingView.e {
        a(ForumLoadingView loadingView) {
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

    class b extends ForumLoadingView.e {
        b(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
        }
    }

    class c implements com.join.mgps.customview.i {
        c() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (s1.this.c0()) {
                s1 s1Var = s1.this;
                s1Var.Y(s1Var.f70845r + 1);
            }
        }
    }

    class d implements com.join.mgps.customview.j {
        d() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (s1.this.c0()) {
                if ((s1.this.getActivity() instanceof ForumActivity) && ((ForumActivity) s1.this.getActivity()).isRefresh()) {
                    s1.this.t0();
                }
                s1 s1Var = s1.this;
                s1Var.f70846s = 0;
                s1Var.f70845r = 0;
                s1Var.Y(1);
            }
        }
    }

    class e implements w6.f {
        e() {
        }

        @Override // w6.f
        public void a(int position) {
            s1 s1Var = s1.this;
            s1Var.f70841n.smoothScrollToPositionFromTop(position, s1Var.f70832e.getResources().getDimensionPixelOffset(R.dimen.wdp100));
        }
    }

    class f extends ForumBaseAdapter.b1 {
        f() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void a(int pid) {
            s1 s1Var = s1.this;
            if (!s1Var.isLogined(s1Var.f70832e)) {
                s1 s1Var2 = s1.this;
                s1Var2.showMessage(s1Var2.f70832e.getString(R.string.forum_user_not_login));
            } else if (!s1.this.u0()) {
                s1.this.q0();
            } else {
                s1.this.l0(pid);
                s1.this.i0(pid);
            }
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void d(int fid) {
            super.d(fid);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(fid);
            com.join.mgps.Util.r0.v0(s1.this.f70832e, forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void e(String gameId) {
            s1 s1Var = s1.this;
            s1Var.B = true;
            s1Var.W(gameId);
        }
    }

    class g implements XListView2.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f70860a;

        g() {
        }

        @Override // com.join.mgps.customview.XListView2.e
        public void a(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
            if (this.f70860a != scrollY) {
                boolean z10 = s1.this.getActivity() instanceof ForumActivity;
                this.f70860a = scrollY;
            }
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XListView2 xListView2 = s1.this.f70841n;
            if (xListView2 == null) {
                return;
            }
            xListView2.v();
            s1.this.f70841n.u();
            if ((s1.this.getActivity() instanceof ForumActivity) && ((ForumActivity) s1.this.getActivity()).getCurrentItem() == s1.this.f70830c) {
                ((ForumActivity) s1.this.getActivity()).stopRefresh();
            }
            s1 s1Var = s1.this;
            if (s1Var.f70846s != -1) {
                s1Var.U(2);
            } else {
                s1Var.f70841n.setNoMore();
                s1.this.U(10);
            }
        }
    }

    class i implements com.join.mgps.customview.i {
        i() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (s1.this.c0()) {
                s1 s1Var = s1.this;
                s1Var.Y(s1Var.f70845r + 1);
            }
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecommendLabelTag f70864b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ TextView f70865c;

        j(final RecommendLabelTag val$tag, final TextView val$tagTv) {
            this.f70864b = val$tag;
            this.f70865c = val$tagTv;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean zIsSelected = view.isSelected();
            view.setSelected(!zIsSelected);
            if (!zIsSelected) {
                s1.this.f70848u.add(Integer.valueOf(this.f70864b.getTag_id()));
            } else if (s1.this.f70848u.contains(Integer.valueOf(this.f70864b.getTag_id()))) {
                s1.this.f70848u.remove(Integer.valueOf(this.f70864b.getTag_id()));
            }
            this.f70865c.getPaint().setFakeBoldText(!zIsSelected);
            this.f70865c.invalidate();
        }
    }

    class k extends ForumLoadingView.e {
        k(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            s1.this.U(1);
            s1.this.loading();
        }
    }

    private UserInfo R(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void V() {
        com.join.mgps.customview.t tVar = this.D;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.D.dismiss();
    }

    private void X() {
        String string = getArguments().getString(E);
        int i10 = getArguments().getInt(H);
        int i11 = getArguments().getInt(F);
        String string2 = getArguments().getString(G);
        if (com.join.mgps.Util.t2.i(string)) {
            this.f70831d = (RecommenGroupClassify) JsonMapper.getInstance().fromJson(string, RecommenGroupClassify.class);
        }
        this.f70830c = i10;
        this.f70838k = i11;
        this.f70839l = string2;
    }

    public static Fragment Z(int fid, String fname, RecommenGroupClassify data, int pos) {
        ForumGroupPostsFragment_ forumGroupPostsFragment_ = new ForumGroupPostsFragment_();
        Bundle bundle = new Bundle();
        bundle.putCharSequence(E, JsonMapper.toJsonString(data));
        bundle.putInt(H, pos);
        bundle.putInt(F, fid);
        bundle.putString(G, fname);
        forumGroupPostsFragment_.setArguments(bundle);
        return forumGroupPostsFragment_;
    }

    private void b0() {
        XListView2 xListView2 = this.f70841n;
        if (xListView2 == null) {
            return;
        }
        xListView2.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.f70841n.setPullLoadEnable(new c());
        d dVar = new d();
        this.f70836i = dVar;
        this.f70841n.setPullRefreshEnable(dVar);
        this.f70843p = new com.join.android.app.component.video.c(this.f70832e, this.f70842o + this.f70830c);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(this.f70832e, this.f70843p);
        this.f70837j = forumBaseAdapter;
        forumBaseAdapter.f1(new e());
        this.f70837j.C0(this.f70842o + this.f70830c);
        this.f70837j.I0(new f());
        this.f70841n.setOnScrollListener(this);
        this.f70841n.setOnOverScrolled(new g());
        this.f70841n.setAdapter((ListAdapter) this.f70837j);
        U(1);
    }

    private View e0(final RecommendLabelTag tag) {
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
        textView.setOnClickListener(new j(tag, textView));
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        UserInfo userInfoR = R(context);
        return userInfoR != null && com.join.mgps.Util.t2.i(userInfoR.getToken());
    }

    private void k0() {
        int i10 = 0;
        while (true) {
            List<DownloadTask> list = this.f70853z;
            if (list == null || i10 >= list.size()) {
                return;
            }
            g0(q5.f.M().G(this.f70853z.get(i10).getCrc_link_type_val()), 4);
            i10++;
        }
    }

    private void m0() {
        List<RecommendLabelTag> list = this.f70834g;
        if (list == null || list.size() < 1) {
            if (this.f70841n.getHeaderViewsCount() > 0) {
                this.f70841n.removeHeaderView(this.f70847t);
                return;
            }
            return;
        }
        if (this.f70847t == null) {
            MyFlowLayout myFlowLayout = new MyFlowLayout(this.f70832e);
            this.f70847t = myFlowLayout;
            this.f70841n.addHeaderView(myFlowLayout);
        }
        this.f70847t.removeAllViews();
        Iterator<RecommendLabelTag> it2 = this.f70834g.iterator();
        while (it2.hasNext()) {
            View viewE0 = e0(it2.next());
            if (viewE0 != null) {
                this.f70847t.addView(viewE0);
            }
        }
    }

    private void n0() {
        List<RecommendLabelTag> list = this.f70834g;
        if (list == null || list.size() < 1) {
            return;
        }
        this.f70837j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.TAG_FLOW_LAYOUT, new ForumBaseAdapter.r1.f0(this.f70838k, this.f70839l, this.f70834g)));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0270  */
    /* JADX WARN: Code duplicated, block: B:108:0x0297  */
    /* JADX WARN: Code duplicated, block: B:109:0x029c  */
    /* JADX WARN: Code duplicated, block: B:111:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:112:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:114:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:115:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:120:0x02df  */
    /* JADX WARN: Code duplicated, block: B:91:0x023c  */
    /* JADX WARN: Code duplicated, block: B:93:0x023f  */
    /* JADX WARN: Code duplicated, block: B:99:0x0268  */
    /* JADX WARN: Instruction removed from duplicated block: B:120:0x02df, please report this as an issue */
    private void o0(ForumBean.ForumPostsBean posts) {
        boolean z10;
        boolean z11;
        int i10;
        boolean z12;
        List<ForumBean.ForumPostsBean.ResBean> small_thumb_pic_list;
        ArrayList arrayList;
        boolean zIsAttach_video;
        String thumb;
        String raw;
        String message;
        ForumBean.ForumPostsBean.ResBean resBean;
        if (com.join.mgps.Util.t2.h(posts.getSubject()) || com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            z10 = false;
            z11 = false;
        } else {
            z11 = true;
            this.f70837j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT, new ForumBaseAdapter.r1.p(true, posts.getBest() > 0, posts.getFirst() > 0, posts.getSubject(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
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
                SpannableStringBuilder spannableStringBuilderM0 = com.join.mgps.Util.r0.m0(this.f70832e, posts.getMessage(), z13, posts.getHelp() > 0, posts.getHelp_money() + "", arrayList2);
                ForumBaseAdapter.r1.o oVar = new ForumBaseAdapter.r1.o(z11 ^ true, z13 && posts.getBest() > 0, z13 && posts.getFirst() > 0, posts.getMessage(), posts.getPid(), posts.getFid(), z13 && posts.getHelp() > 0, posts.getHelp_money() + "", z13 ? posts.getTag_info() : null, z13, spannableStringBuilderM0);
                this.f70837j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_MESSAGE, oVar));
                if (this.f70832e != null && isAdded()) {
                    this.f70837j.y().j(com.join.mgps.Util.i0.c(this.f70832e, getResources().getDimensionPixelOffset(R.dimen.mg_forum_post_message_text_size))).e(oVar);
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
                    this.f70837j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, message)));
                } else if (small_thumb_pic_list != null && small_thumb_pic_list.size() != 0) {
                    this.f70837j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(small_thumb_pic_list, arrayList, posts.getPid())));
                }
            }
            if (z12) {
                j0(posts.getRelation_game());
                this.f70837j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.POST_GAME, new ForumBaseAdapter.r1.w(true, posts.getPid() + "", posts.getRelation_game(), posts.getResource_url())));
            }
            this.f70837j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(1, posts.getAvatar_src(), posts.getLast_comment_time(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
        }
        this.f70837j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT, new ForumBaseAdapter.r1.p(true, posts.getBest() > 0, posts.getFirst() > 0, posts.getMessage(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
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
                this.f70837j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, message)));
            } else if (small_thumb_pic_list != null) {
                this.f70837j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(small_thumb_pic_list, arrayList, posts.getPid())));
            }
        }
        if (z12) {
            j0(posts.getRelation_game());
            this.f70837j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.POST_GAME, new ForumBaseAdapter.r1.w(true, posts.getPid() + "", posts.getRelation_game(), posts.getResource_url())));
        }
        this.f70837j.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(1, posts.getAvatar_src(), posts.getLast_comment_time(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
    }

    private void p0() {
        for (int i10 = 0; i10 < this.f70835h.size(); i10++) {
            o0(this.f70835h.get(i10));
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.f70853z.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f70850w.remove(next.getCrc_link_type_val());
                    it2.remove();
                    break;
                }
            }
            g0(downloadTask, 2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f70850w;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            g0(downloadTask, 3);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.f70853z, downloadTask);
        if (!this.f70850w.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70853z.add(downloadTask);
            this.f70850w.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        g0(downloadTask, 0);
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f70850w;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.f70853z.add(downloadTask);
            this.f70850w.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f70850w.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        g0(downloadTask, 1);
    }

    @Override // ru.noties.scrollable.j
    public void C(int y10, long duration) {
        XListView2 xListView2 = this.f70841n;
        if (xListView2 != null) {
            xListView2.smoothScrollBy(y10, (int) duration);
        }
    }

    public void S() {
        try {
            com.join.android.app.component.video.c cVar = this.f70843p;
            if (cVar != null) {
                cVar.K(1);
                this.f70843p.m(this.f70841n);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void U(int state) {
        ForumLoadingView forumLoadingView = this.f70840m;
        if (forumLoadingView == null) {
            return;
        }
        if (state == 1) {
            if (forumLoadingView != null) {
                forumLoadingView.m();
                this.f70840m.j(1);
                return;
            }
            return;
        }
        if (state == 2) {
            if (forumLoadingView != null) {
                forumLoadingView.m();
                this.f70840m.j(2);
                return;
            }
            return;
        }
        if (state == 4) {
            forumLoadingView.j(4);
            return;
        }
        if (state == 16) {
            forumLoadingView.setFailedMsg("加载失败~");
            ForumLoadingView forumLoadingView2 = this.f70840m;
            forumLoadingView2.setListener(new b(forumLoadingView2));
            this.f70840m.j(16);
            return;
        }
        if (state == 9) {
            forumLoadingView.j(9);
            ForumLoadingView forumLoadingView3 = this.f70840m;
            forumLoadingView3.setListener(new k(forumLoadingView3));
            this.f70840m.j(9);
            return;
        }
        if (state != 10) {
            return;
        }
        RecommenGroupClassify recommenGroupClassify = this.f70831d;
        String gname = recommenGroupClassify != null ? recommenGroupClassify.getGname() : "";
        if (com.join.mgps.Util.t2.h(gname)) {
            gname = "帖子";
        }
        this.f70840m.setFailedMsg("没有更多" + gname + "帖哦~");
        ForumLoadingView forumLoadingView4 = this.f70840m;
        forumLoadingView4.setListener(new a(forumLoadingView4));
        this.f70840m.setReloadingVisibility(0);
        this.f70840m.j(10);
        this.f70840m.setFailedImgVisibility(8);
        this.f70840m.setReloadingVisibility(0);
        this.f70840m.setFailedReloadingRes(R.drawable.papa_loading_null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Background
    public void W(String str) {
        Context context = getContext();
        if (!com.join.android.app.common.utils.m.j(context)) {
            T("获取游戏信息失败");
            return;
        }
        if (this.A == 1) {
            return;
        }
        try {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
                ResultMainBean<List<DetailResultBean>> resultMainBeanI0 = this.f70849v.I0(RequestBeanUtil.getInstance(context).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                if (resultMainBeanI0 != null && resultMainBeanI0.getFlag() != 0) {
                    List<DetailResultBean> data = resultMainBeanI0.getMessages().getData();
                    if (data.size() != 0) {
                        DetailResultBean detailResultBean = data.get(0);
                        if (this.B) {
                            s0(detailResultBean);
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
            this.A = 0;
            this.B = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:54:0x00b6  */
    @Background
    public void Y(int page) {
        ForumLoadingView forumLoadingView;
        if (!com.join.android.app.common.utils.m.j(this.f70832e)) {
            T(getString(R.string.net_connect_failed));
            U(9);
            return;
        }
        try {
            try {
                int i10 = this.f70846s;
                if (i10 == -1) {
                    if (i10 != -1) {
                        this.f70846s = 0;
                    }
                    t0();
                    return;
                }
                if (i10 == page) {
                    if (i10 != -1) {
                        this.f70846s = 0;
                    }
                    t0();
                    return;
                }
                this.f70846s = page;
                ForumResponse<ForumData.HomepageRecommendLabel> forumResponseE0 = this.f70844q.e0(this.f70838k, this.f70831d.getGid(), page, ForumActivity.orderBy, com.join.mgps.Util.r0.f49989d, AccountUtil_.getInstance_(this.f70832e).getUid(), AccountUtil_.getInstance_(this.f70832e).getToken());
                if (forumResponseE0 != null && forumResponseE0.getError() == 0) {
                    if (forumResponseE0.getData() == null) {
                        U(4);
                        if (this.f70846s != -1) {
                            this.f70846s = 0;
                        }
                        t0();
                        return;
                    }
                    ForumData.HomepageRecommendLabel data = forumResponseE0.getData();
                    if (data.getPost_list() != null && data.getPost_list().size() != 0) {
                        r0(page, data);
                        this.f70845r = page;
                        U(2);
                    }
                    this.f70846s = -1;
                    U(10);
                    if (this.f70846s != -1) {
                        this.f70846s = 0;
                    }
                    t0();
                    return;
                }
                if (this.f70846s != -1) {
                    this.f70846s = 0;
                }
                t0();
            } catch (Exception e10) {
                e10.printStackTrace();
                t0();
                if (page == 1 && (forumLoadingView = this.f70840m) != null) {
                    forumLoadingView.m();
                }
                U(4);
                if (this.f70846s != -1) {
                    this.f70846s = 0;
                }
            }
        } catch (Throwable th) {
            if (this.f70846s != -1) {
                this.f70846s = 0;
            }
            t0();
            throw th;
        }
    }

    public void a0() {
        this.f70849v = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.Util.j0.a().d(this);
    }

    @AfterViews
    void afterViews() {
        this.f70844q = com.join.mgps.rpc.impl.g.A0();
        this.f70832e = getActivity();
        X();
        a0();
        b0();
        this.f70846s = 0;
        this.f70845r = 0;
        loading();
    }

    boolean c0() {
        if (com.join.android.app.common.utils.m.j(this.f70832e)) {
            return true;
        }
        T(getString(R.string.net_connect_failed));
        U(9);
        t0();
        return false;
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.f70851x.containsKey(crc_link_type_val)) {
                this.f70851x.put(crc_link_type_val, task);
            }
            if (this.f70852y.containsKey(crc_link_type_val)) {
                return;
            }
            this.f70852y.put(crc_link_type_val, task);
            return;
        }
        if (from == 3) {
            if (this.f70852y.containsKey(crc_link_type_val)) {
                this.f70852y.remove(crc_link_type_val);
                return;
            }
            return;
        }
        if (from != 5) {
            if (from == 6) {
                if (this.f70852y.containsKey(crc_link_type_val)) {
                    this.f70852y.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 7) {
                if (this.f70851x.containsKey(crc_link_type_val)) {
                    this.f70851x.remove(crc_link_type_val);
                }
                if (this.f70852y.containsKey(crc_link_type_val)) {
                    this.f70852y.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 10) {
                if (!this.f70851x.containsKey(crc_link_type_val)) {
                    this.f70851x.put(crc_link_type_val, task);
                }
                if (this.f70852y.containsKey(crc_link_type_val)) {
                    return;
                }
                this.f70852y.put(crc_link_type_val, task);
                return;
            }
            if (from != 11) {
                return;
            }
        } else if (this.f70851x.containsKey(crc_link_type_val)) {
            this.f70851x.remove(crc_link_type_val);
        }
        if (this.f70852y.containsKey(crc_link_type_val)) {
            this.f70852y.remove(crc_link_type_val);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void d0() {
        this.f70843p.K(1);
        this.f70843p.m(this.f70841n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void f0() {
        ForumBaseAdapter forumBaseAdapter = this.f70837j;
        if (forumBaseAdapter != null && forumBaseAdapter.x() != null) {
            this.f70837j.x().clear();
        }
        n0();
        p0();
        this.f70837j.notifyDataSetChanged();
        d0();
    }

    void g0(DownloadTask downloadTask, int event) {
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f70835h.size(); i10++) {
            ForumBean.ForumPostsBean forumPostsBean = this.f70835h.get(i10);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadTask);
                z10 |= true;
            }
        }
        if (z10) {
            f0();
        }
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void h0(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        ForumBaseAdapter forumBaseAdapter = this.f70837j;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    @Override // ru.noties.scrollable.b
    public boolean i(int direction) {
        XListView2 xListView2 = this.f70841n;
        return xListView2 != null && xListView2.canScrollVertically(direction);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void i0(int curPid) {
        try {
            if (!com.join.mgps.Util.r0.Y0(this.f70832e)) {
                com.join.mgps.Util.r0.L0(this.f70832e);
                com.join.mgps.Util.a3.b(this.f70832e).d("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanE0 = com.join.mgps.Util.r0.e0(this.f70832e, curPid);
            forumPostsPraiseRequestBeanE0.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> forumResponseR = this.f70844q.R(forumPostsPraiseRequestBeanE0.getParams());
            if (forumResponseR == null) {
                return;
            }
            if (forumResponseR.getError() == 706) {
                l0(curPid);
                q0();
            } else {
                ForumData.ForumPostsPraiseData data = forumResponseR.getData();
                data.isResult();
                com.join.mgps.Util.r0.m1(forumPostsPraiseRequestBeanE0, data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void j0(ForumBean.GameInfo gameInfo) {
        if (gameInfo != null) {
            try {
                DownloadTask downloadTaskG = q5.f.M().G(gameInfo.getGame_id());
                gameInfo.setDownloadTask(downloadTaskG);
                Map<String, DownloadTask> map = this.f70850w;
                if (map == null || downloadTaskG == null || map.containsKey(downloadTaskG.getCrc_link_type_val())) {
                    return;
                }
                this.f70853z.add(downloadTaskG);
                this.f70850w.put(downloadTaskG.getCrc_link_type_val(), downloadTaskG);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void l0(int pid) {
        ForumBean.ForumPostsBean next;
        List<ForumBean.ForumPostsBean> list = this.f70835h;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<ForumBean.ForumPostsBean> it2 = this.f70835h.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getPid() == pid) {
                next.setPraise(next.is_praise() ? next.getPraise() - 1 : next.getPraise() + 1);
                next.setIs_praise(!next.is_praise());
                f0();
                return;
            }
        }
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    void loading() {
        Y(1);
    }

    public boolean onBackPressedMy() {
        return com.join.android.app.component.video.a.c0(this.f70832e, this.f70842o + this.f70830c);
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.android.app.component.video.c cVar = this.f70843p;
        if (cVar != null) {
            cVar.F();
        }
        com.join.mgps.Util.j0.a().e(this);
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
        super.onPause();
        this.C = false;
        com.join.android.app.component.video.c cVar = this.f70843p;
        if (cVar != null) {
            cVar.G();
        }
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentActivity activity = getActivity();
        if (activity instanceof ForumActivity) {
            if (((ForumActivity) activity).getCurrentItem() == this.f70830c) {
                this.C = true;
                if (this.f70841n != null) {
                    d0();
                }
            } else {
                this.C = false;
            }
        }
        U(this.f70840m.getLoadingState());
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        if (getActivity() == null || !this.C) {
            return;
        }
        this.f70843p.e(view, firstVisibleItem, visibleItemCount, totalItemCount);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        if (this.C) {
            if (scrollState == 0 && Fresco.getImagePipeline().P()) {
                Fresco.getImagePipeline().c0();
            }
            if (getActivity() != null) {
                this.f70843p.i(view, scrollState);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void q0() {
        com.join.mgps.Util.h0.h0(this.f70832e).m(this.f70832e);
    }

    void r0(int page, ForumData.HomepageRecommendLabel data) {
        List<RecommendLabelTag> recommend_tags = data.getRecommend_tags();
        List<ForumBean.ForumPostsBean> post_list = data.getPost_list();
        if (this.f70834g == null) {
            this.f70834g = new ArrayList();
        }
        if (this.f70835h == null) {
            this.f70835h = new ArrayList();
        }
        if (page == 1) {
            this.f70834g.clear();
            this.f70835h.clear();
            if (recommend_tags != null && recommend_tags.size() > 0) {
                RecommendLabelTag recommendLabelTag = new RecommendLabelTag();
                recommendLabelTag.setTag_id(-1);
                recommendLabelTag.setTag_name(this.f70832e.getResources().getString(R.string.mg_f_all_tag));
                this.f70834g.add(recommendLabelTag);
                this.f70834g.addAll(recommend_tags);
            }
        }
        this.f70835h.addAll(post_list);
        f0();
    }

    public void refresh() {
        XListView2 xListView2 = this.f70841n;
        if (xListView2 != null) {
            xListView2.setPullLoadEnable(new i());
        }
        com.join.mgps.customview.j jVar = this.f70836i;
        if (jVar != null) {
            jVar.onRefresh();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s0(DetailResultBean detialResultBean) {
        DownloadTask downloadtaskDown;
        if (detialResultBean == null || (downloadtaskDown = detialResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f70835h.size(); i10++) {
            ForumBean.ForumPostsBean forumPostsBean = this.f70835h.get(i10);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadtaskDown.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadtaskDown);
                z10 |= true;
            }
        }
        if (z10) {
            f0();
        }
        if (UtilsMy.y0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.z4(this.f70832e, downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.A1(downloadtaskDown, detialResultBean);
        if (UtilsMy.o1(this.f70832e, downloadtaskDown)) {
            return;
        }
        if (detialResultBean.getDown_status() == 5) {
            UtilsMy.l1(this.f70832e, downloadtaskDown);
        } else {
            UtilsMy.U0(this.f70832e, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.f70832e).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void t0() {
        this.mHandler.postDelayed(new h(), 1500L);
    }

    boolean u0() {
        if (R(this.f70832e) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this.f70832e).isTourist();
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask == null) {
            if (from != 4) {
                return;
            }
            k0();
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
                k0();
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
