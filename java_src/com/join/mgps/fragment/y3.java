package com.join.mgps.fragment;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.HtmlDocUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.label.MainLabelActivity;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_lable)
public class y3 extends v1 implements AbsListView.OnScrollListener {
    private static final int F = 10;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f71506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f71507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f71508f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    String f71509g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.join.mgps.rpc.i f71510h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f71511i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    LinearLayout f71512j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    XListView2 f71513k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f71514l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Activity f71515m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ForumBaseAdapter f71516n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f71518p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f71519q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    com.join.mgps.customview.j f71521s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    com.join.android.app.component.video.c f71523u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @ViewById
    ImageView f71524v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private com.join.mgps.rpc.e f71525w;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f71505c = "hot";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f71517o = true;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private List<ForumBean.ForumPostsBean> f71520r = new ArrayList();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    String f71522t = "LabelFragment";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Map<String, DownloadTask> f71526x = new ConcurrentHashMap();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    Map<String, DownloadTask> f71527y = new HashMap();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    Map<String, DownloadTask> f71528z = new HashMap();
    private List<DownloadTask> A = new ArrayList();
    int B = 0;
    boolean C = false;
    boolean D = true;
    com.join.mgps.customview.t E = null;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XListView2 xListView2 = y3.this.f71513k;
            if (xListView2 == null) {
                return;
            }
            xListView2.v();
            y3.this.f71513k.u();
            y3 y3Var = y3.this;
            if (y3Var.f71519q == -1) {
                y3Var.f71513k.setNoMore();
                y3 y3Var2 = y3.this;
                if (y3Var2.f71518p == 0) {
                    y3Var2.p0();
                }
            }
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (com.join.android.app.common.utils.m.j(y3.this.f71515m)) {
                y3.this.W();
            } else {
                y3.this.s0();
                y3.this.q0();
            }
        }
    }

    class c implements w6.f {
        c() {
        }

        @Override // w6.f
        public void a(int position) {
            XListView2 xListView2 = y3.this.f71513k;
            xListView2.smoothScrollToPositionFromTop(position, xListView2.getResources().getDimensionPixelOffset(R.dimen.wdp100));
        }
    }

    class d extends ForumBaseAdapter.b1 {
        d() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void a(int pid) {
            y3 y3Var = y3.this;
            if (!y3Var.isLogined(y3Var.f71515m)) {
                y3 y3Var2 = y3.this;
                y3Var2.showMessage(y3Var2.f71515m.getString(R.string.forum_user_not_login));
            } else if (!y3.this.v0()) {
                y3.this.m0();
            } else {
                y3.this.h0(pid);
                y3.this.c0(pid);
            }
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void d(int fid) {
            super.d(fid);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(fid);
            com.join.mgps.Util.r0.v0(y3.this.f71515m, forumPostsBean);
        }
    }

    class e implements com.join.mgps.customview.j {
        e() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (!com.join.android.app.common.utils.m.j(y3.this.f71515m)) {
                y3.this.s0();
                y3.this.q0();
            } else {
                y3 y3Var = y3.this;
                y3Var.f71519q = 0;
                y3Var.f71518p = 0;
                y3Var.W();
            }
        }
    }

    static /* synthetic */ class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f71534a;

        static {
            int[] iArr = new int[HtmlDocUtil.PostDetail.Type.values().length];
            f71534a = iArr;
            try {
                iArr[HtmlDocUtil.PostDetail.Type.Text.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f71534a[HtmlDocUtil.PostDetail.Type.Image.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f71534a[HtmlDocUtil.PostDetail.Type.Video.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f71534a[HtmlDocUtil.PostDetail.Type.RickText.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private UserInfo P(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void R() {
        com.join.mgps.customview.t tVar = this.E;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.E.dismiss();
    }

    private void V() {
        if (!com.join.android.app.common.utils.m.j(this.f71515m)) {
            n0();
        } else {
            o0();
            W();
        }
    }

    private void e0() {
        int i10 = 0;
        while (true) {
            List<DownloadTask> list = this.A;
            if (list == null || i10 >= list.size()) {
                return;
            }
            a0(q5.f.M().G(this.A.get(i10).getCrc_link_type_val()), 4);
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        UserInfo userInfoP = P(context);
        return userInfoP != null && com.join.mgps.Util.t2.i(userInfoP.getToken());
    }

    /* JADX WARN: Code duplicated, block: B:140:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:145:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:147:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:153:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:154:0x0400  */
    /* JADX WARN: Code duplicated, block: B:162:0x042c  */
    /* JADX WARN: Code duplicated, block: B:163:0x0431  */
    /* JADX WARN: Code duplicated, block: B:165:0x043b  */
    /* JADX WARN: Code duplicated, block: B:166:0x0440  */
    /* JADX WARN: Code duplicated, block: B:168:0x0443  */
    /* JADX WARN: Code duplicated, block: B:169:0x0455  */
    /* JADX WARN: Code duplicated, block: B:174:0x0474  */
    /* JADX WARN: Code duplicated, block: B:176:0x0487  */
    private void k0(ForumBean.ForumPostsBean posts, int page, int index) {
        boolean z10;
        boolean z11;
        String str;
        boolean z12;
        Object r1Var;
        boolean z13;
        ForumBaseAdapter.ViewType viewType;
        List<ForumBean.ForumPostsBean.ResBean> small_thumb_pic_list;
        ArrayList arrayList;
        boolean zIsAttach_video;
        String raw;
        String thumb;
        String message;
        ForumBean.ForumPostsBean.ResBean resBean;
        FragmentActivity activity = getActivity();
        int fid = (com.join.mgps.Util.t2.i(this.f71509g) && Integer.parseInt(this.f71509g) == posts.getFid()) ? posts.getFid() : 0;
        boolean z14 = true;
        if (com.join.mgps.Util.t2.h(posts.getSubject()) || com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            z10 = false;
            z11 = false;
        } else {
            this.f71516n.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT_LABEL, new ForumBaseAdapter.r1.p(page > 1 || (page == 1 && index > 0), posts.getBest() > 0, posts.getFirst() > 0, posts.getSubject(), posts.getPid(), fid, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
            z10 = true;
            z11 = true;
        }
        if (z10) {
            Html.ImageGetter imageGetter = null;
            if (!posts.isUi_expand() || com.join.mgps.Util.t2.h(posts.getPost_detail()) || com.join.mgps.Util.t2.h(posts.getPost_detail().trim())) {
                if (!com.join.mgps.Util.t2.h(posts.getMessage()) && !com.join.mgps.Util.t2.h(posts.getMessage().trim())) {
                    boolean z15 = posts.getSubject() == null || com.join.mgps.Util.t2.h(posts.getSubject().trim());
                    ArrayList arrayList2 = new ArrayList();
                    if (posts.getBest() > 0) {
                        ForumBean.ForumPostsBean.TagInfo tagInfo = new ForumBean.ForumPostsBean.TagInfo();
                        tagInfo.setName("精");
                        tagInfo.setColor("#00FFFFFF");
                        tagInfo.setFont_color("#FFFF6464");
                        tagInfo.setBorder_color("#FFFF6464");
                        arrayList2.add(0, tagInfo);
                    }
                    if (posts.getFirst() > 0) {
                        ForumBean.ForumPostsBean.TagInfo tagInfo2 = new ForumBean.ForumPostsBean.TagInfo();
                        tagInfo2.setName("顶");
                        tagInfo2.setColor("#00FFFFFF");
                        tagInfo2.setFont_color("#FFFF6464");
                        tagInfo2.setBorder_color("#FFFF6464");
                        arrayList2.add(0, tagInfo2);
                    }
                    if (posts.getTag_info() != null) {
                        arrayList2.addAll(posts.getTag_info());
                    }
                    str = "";
                    z12 = true;
                    ForumBaseAdapter.r1.o oVar = new ForumBaseAdapter.r1.o(!z11, z15 && posts.getBest() > 0, z15 && posts.getFirst() > 0, posts.getMessage(), posts.getPid(), fid, z15 && posts.getHelp() > 0, posts.getHelp_money() + str, z15 ? posts.getTag_info() : null, z15, com.join.mgps.Util.r0.m0(activity, posts.getMessage(), z15, posts.getHelp() > 0, posts.getHelp_money() + "", arrayList2));
                    this.f71516n.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_MESSAGE, oVar));
                    this.f71516n.y().j(com.join.mgps.Util.i0.c(activity, getResources().getDimensionPixelOffset(R.dimen.mg_forum_post_message_text_size))).e(oVar);
                }
                z14 = false;
            } else {
                try {
                    String subject = com.join.mgps.Util.t2.i(posts.getSubject()) ? posts.getSubject() : com.join.mgps.Util.t2.i(posts.getMessage()) ? posts.getMessage().substring(0, Math.min(10, posts.getMessage().length())) : "";
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    if (HtmlDocUtil.d(posts.getPost_detail())) {
                        List<HtmlDocUtil.PostDetail> listC = HtmlDocUtil.c(posts.getPost_detail());
                        int i10 = 0;
                        while (i10 < listC.size()) {
                            HtmlDocUtil.PostDetail postDetail = listC.get(i10);
                            int i11 = f.f71534a[postDetail.f49375a.ordinal()];
                            if (i11 == 1) {
                                r1Var = new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.POST_MESSAGE, new ForumBaseAdapter.r1.s(((HtmlDocUtil.c) postDetail.a()).d()));
                            } else if (i11 == 2) {
                                HtmlDocUtil.b bVar = (HtmlDocUtil.b) postDetail.a();
                                arrayList3.add(U(posts.getCdn_url(), bVar.e()));
                                r1Var = new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.POST_IMAGE, new ForumBaseAdapter.r1.r(U(posts.getCdn_url(), bVar.d()), arrayList3.size() - 1, arrayList3));
                            } else if (i11 == 3) {
                                HtmlDocUtil.d dVar = (HtmlDocUtil.d) postDetail.a();
                                r1Var = new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.POST_VIDEO, new ForumBaseAdapter.r1.u(U(posts.getCdn_url(), dVar.d()), dVar.f49382d, subject));
                            } else if (i11 != 4) {
                                r1Var = imageGetter;
                            } else {
                                r1Var = new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.POST_RICH_MESSAGE, new ForumBaseAdapter.r1.t(Html.fromHtml(((HtmlDocUtil.e) postDetail.a()).d().toString().trim().replace("span", "newSpan"), imageGetter, new com.join.mgps.customview.text.a("newSpan", getContext()))));
                            }
                            arrayList4.add(r1Var);
                            i10++;
                            imageGetter = null;
                        }
                    } else {
                        arrayList4.add(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.POST_MESSAGE, new ForumBaseAdapter.r1.s(new SpannableStringBuilder().append((CharSequence) posts.getMessage()))));
                    }
                    this.f71516n.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.RICH_MESSAGE, new ForumBaseAdapter.r1.e0(posts.getPid(), arrayList4)));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                str = "";
                z12 = true;
            }
            if (!z14) {
                if (posts.getRelation_game() != null || TextUtils.isEmpty(posts.getRelation_game().getGame_id())) {
                    z13 = false;
                } else {
                    z13 = true;
                }
                if (!z13) {
                    small_thumb_pic_list = posts.getSmall_thumb_pic_list();
                    arrayList = new ArrayList();
                    zIsAttach_video = posts.isAttach_video();
                    raw = str;
                    thumb = raw;
                    for (int i12 = 0; small_thumb_pic_list != null && i12 < small_thumb_pic_list.size(); i12++) {
                        resBean = small_thumb_pic_list.get(i12);
                        if (resBean.getType().equals("pic")) {
                            arrayList.add(resBean.getRaw());
                        } else if (!resBean.getType().equals("video") && com.join.mgps.Util.t2.h(raw)) {
                            thumb = resBean.getThumb();
                            raw = resBean.getRaw();
                        }
                    }
                    if (com.join.mgps.Util.t2.i(posts.getSubject())) {
                        message = posts.getSubject();
                    } else if (com.join.mgps.Util.t2.i(posts.getMessage())) {
                        message = posts.getMessage();
                    } else {
                        message = str;
                    }
                    if (zIsAttach_video) {
                        this.f71516n.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, message)));
                    } else if (small_thumb_pic_list != null && small_thumb_pic_list.size() != 0) {
                        this.f71516n.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(small_thumb_pic_list, arrayList, posts.getPid())));
                    }
                }
                if (z13) {
                    d0(posts.getRelation_game());
                    viewType = ForumBaseAdapter.ViewType.POST_GAME;
                    if (!TextUtils.isEmpty(posts.getResource_url())) {
                        viewType = ForumBaseAdapter.ViewType.POST_GAME_RES_LINK;
                    }
                    this.f71516n.f(new ForumBaseAdapter.r1(viewType, new ForumBaseAdapter.r1.w(z12, posts.getPid() + str, posts.getRelation_game(), posts.getResource_url())));
                }
            }
            this.f71516n.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(1, posts.getAvatar_src(), posts.getLast_comment_time(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
        }
        this.f71516n.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT_LABEL, new ForumBaseAdapter.r1.p(page > 1 || (page == 1 && index > 0), posts.getBest() > 0, posts.getFirst() > 0, posts.getMessage(), posts.getPid(), fid, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
        str = "";
        z12 = true;
        z14 = false;
        if (!z14) {
            if (posts.getRelation_game() != null) {
                z13 = false;
            } else {
                z13 = false;
            }
            if (!z13) {
                small_thumb_pic_list = posts.getSmall_thumb_pic_list();
                arrayList = new ArrayList();
                zIsAttach_video = posts.isAttach_video();
                raw = str;
                thumb = raw;
                while (small_thumb_pic_list != null) {
                    resBean = small_thumb_pic_list.get(i12);
                    if (resBean.getType().equals("pic")) {
                        arrayList.add(resBean.getRaw());
                    } else if (!resBean.getType().equals("video")) {
                    }
                }
                if (com.join.mgps.Util.t2.i(posts.getSubject())) {
                    message = posts.getSubject();
                } else if (com.join.mgps.Util.t2.i(posts.getMessage())) {
                    message = posts.getMessage();
                } else {
                    message = str;
                }
                if (zIsAttach_video) {
                    this.f71516n.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, message)));
                } else if (small_thumb_pic_list != null) {
                    this.f71516n.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(small_thumb_pic_list, arrayList, posts.getPid())));
                }
            }
            if (z13) {
                d0(posts.getRelation_game());
                viewType = ForumBaseAdapter.ViewType.POST_GAME;
                if (!TextUtils.isEmpty(posts.getResource_url())) {
                    viewType = ForumBaseAdapter.ViewType.POST_GAME_RES_LINK;
                }
                this.f71516n.f(new ForumBaseAdapter.r1(viewType, new ForumBaseAdapter.r1.w(z12, posts.getPid() + str, posts.getRelation_game(), posts.getResource_url())));
            }
        }
        this.f71516n.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(1, posts.getAvatar_src(), posts.getLast_comment_time(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
    }

    private void l0(int page) {
        for (int i10 = 0; i10 < this.f71520r.size(); i10++) {
            k0(this.f71520r.get(i10), page, i10);
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.A.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f71526x.remove(next.getCrc_link_type_val());
                    it2.remove();
                    break;
                }
            }
            a0(downloadTask, 2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f71526x;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            a0(downloadTask, 3);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.A, downloadTask);
        if (!this.f71526x.containsKey(downloadTask.getCrc_link_type_val())) {
            this.A.add(downloadTask);
            this.f71526x.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        a0(downloadTask, 0);
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.f71526x;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.A.add(downloadTask);
            this.f71526x.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.f71526x.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        a0(downloadTask, 1);
    }

    @Override // ru.noties.scrollable.j
    public void C(int y10, long duration) {
        XListView2 xListView2 = this.f71513k;
        if (xListView2 != null) {
            xListView2.smoothScrollBy(y10, (int) duration);
        }
    }

    public void Q() {
        try {
            com.join.android.app.component.video.c cVar = this.f71523u;
            if (cVar != null) {
                cVar.K(1);
                this.f71523u.m(this.f71513k);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Background
    void S(String str) {
        Context context = getContext();
        if (!com.join.android.app.common.utils.m.j(context)) {
            showToast("获取游戏信息失败");
            return;
        }
        if (this.B == 1) {
            return;
        }
        try {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
                ResultMainBean<List<DetailResultBean>> resultMainBeanI0 = this.f71525w.I0(RequestBeanUtil.getInstance(context).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                if (resultMainBeanI0 != null && resultMainBeanI0.getFlag() != 0) {
                    List<DetailResultBean> data = resultMainBeanI0.getMessages().getData();
                    if (data.size() != 0) {
                        DetailResultBean detailResultBean = data.get(0);
                        if (this.C) {
                            r0(detailResultBean);
                        }
                    }
                } else if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() != 0) {
                    showToast("获取游戏信息失败");
                } else {
                    showToast("获取游戏信息失败");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showToast("获取游戏信息失败");
            }
        } finally {
            this.B = 0;
            this.C = false;
        }
    }

    String U(String cdnUrl, String imgUrl) {
        if (com.join.mgps.Util.t2.h(imgUrl)) {
            return null;
        }
        if (imgUrl.startsWith("http") || imgUrl.startsWith(cdnUrl)) {
            return imgUrl;
        }
        return cdnUrl + imgUrl;
    }

    @Background
    void W() {
        int i10 = this.f71518p + 1;
        try {
            if (!com.join.android.app.common.utils.m.j(this.f71515m)) {
                if (i10 <= 1) {
                    n0();
                }
                q0();
                return;
            }
            try {
                int i11 = this.f71519q;
                if (i11 == -1) {
                    return;
                }
                if (i11 == i10) {
                    return;
                }
                this.f71519q = i10;
                ResultResMainBean<List<ForumBean.ForumPostsBean>> resultResMainBeanY = this.f71510h.y(AccountUtil_.getInstance_(this.f71515m).getUid(), this.f71506d, i10, 10, this.f71508f, this.f71505c, AccountUtil_.getInstance_(this.f71515m).getToken(), this.f71509g);
                Activity activity = this.f71515m;
                if (activity != null && !activity.isFinishing() && !this.f71515m.isDestroyed()) {
                    if (resultResMainBeanY != null && resultResMainBeanY.getData() != null) {
                        List<ForumBean.ForumPostsBean> data = resultResMainBeanY.getData();
                        if (data != null && data.size() != 0) {
                            this.f71518p = i10;
                            u0(data, i10);
                            if (i10 <= 1) {
                                hideLoading();
                            }
                        }
                        this.f71519q = -1;
                        return;
                    }
                    if (i10 <= 1) {
                        n0();
                    }
                }
            } catch (Exception e10) {
                com.join.mgps.Util.g1.b("Label", "getListData Exception:" + e10.getMessage());
                if (i10 <= 1) {
                    n0();
                }
            }
        } finally {
            s0();
        }
    }

    public void X() {
        this.f71525w = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.Util.j0.a().d(this);
    }

    public boolean Y() {
        return this.f71517o;
    }

    @UiThread(delay = 500)
    void Z() {
        this.f71523u.K(1);
        this.f71523u.m(this.f71513k);
    }

    void a0(DownloadTask downloadTask, int event) {
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f71520r.size(); i10++) {
            ForumBean.ForumPostsBean forumPostsBean = this.f71520r.get(i10);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadTask);
                z10 |= true;
            }
        }
        if (z10) {
            t0(this.f71520r);
        }
    }

    @AfterViews
    void afterViews() {
        this.f71510h = com.join.mgps.rpc.impl.g.A0();
        this.f71523u = new com.join.android.app.component.video.c(getContext(), this.f71522t + this.f71507e);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(this.f71515m, this.f71523u);
        this.f71516n = forumBaseAdapter;
        forumBaseAdapter.b1(false);
        this.f71516n.f1(new c());
        this.f71516n.C0(this.f71522t + this.f71507e);
        this.f71516n.I0(new d());
        this.f71513k.setAdapter((ListAdapter) this.f71516n);
        this.f71513k.setPreLoadCount(10);
        e eVar = new e();
        this.f71521s = eVar;
        this.f71513k.setPullRefreshEnable(eVar);
        i0();
        this.f71513k.setOnScrollListener(this);
        W();
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void b0(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        ForumBaseAdapter forumBaseAdapter = this.f71516n;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    @Background
    void c0(int curPid) {
        try {
            if (!com.join.mgps.Util.r0.Y0(this.f71515m)) {
                com.join.mgps.Util.r0.L0(this.f71515m);
                com.join.mgps.Util.a3.b(this.f71515m).d("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanE0 = com.join.mgps.Util.r0.e0(this.f71515m, curPid);
            forumPostsPraiseRequestBeanE0.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> forumResponseR = this.f71510h.R(forumPostsPraiseRequestBeanE0.getParams());
            if (forumResponseR == null) {
                return;
            }
            if (forumResponseR.getError() == 706) {
                h0(curPid);
                m0();
            } else {
                ForumData.ForumPostsPraiseData data = forumResponseR.getData();
                data.isResult();
                com.join.mgps.Util.r0.m1(forumPostsPraiseRequestBeanE0, data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.f71527y.containsKey(crc_link_type_val)) {
                this.f71527y.put(crc_link_type_val, task);
            }
            if (this.f71528z.containsKey(crc_link_type_val)) {
                return;
            }
            this.f71528z.put(crc_link_type_val, task);
            return;
        }
        if (from == 3) {
            if (this.f71528z.containsKey(crc_link_type_val)) {
                this.f71528z.remove(crc_link_type_val);
                return;
            }
            return;
        }
        if (from != 5) {
            if (from == 6) {
                if (this.f71528z.containsKey(crc_link_type_val)) {
                    this.f71528z.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 7) {
                if (this.f71527y.containsKey(crc_link_type_val)) {
                    this.f71527y.remove(crc_link_type_val);
                }
                if (this.f71528z.containsKey(crc_link_type_val)) {
                    this.f71528z.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 10) {
                if (!this.f71527y.containsKey(crc_link_type_val)) {
                    this.f71527y.put(crc_link_type_val, task);
                }
                if (this.f71528z.containsKey(crc_link_type_val)) {
                    return;
                }
                this.f71528z.put(crc_link_type_val, task);
                return;
            }
            if (from != 11) {
                return;
            }
        } else if (this.f71527y.containsKey(crc_link_type_val)) {
            this.f71527y.remove(crc_link_type_val);
        }
        if (this.f71528z.containsKey(crc_link_type_val)) {
            this.f71528z.remove(crc_link_type_val);
        }
    }

    void d0(ForumBean.GameInfo gameInfo) {
        if (gameInfo != null) {
            try {
                DownloadTask downloadTaskG = q5.f.M().G(gameInfo.getGame_id());
                gameInfo.setDownloadTask(downloadTaskG);
                Map<String, DownloadTask> map = this.f71526x;
                if (map == null || downloadTaskG == null || map.containsKey(downloadTaskG.getCrc_link_type_val())) {
                    return;
                }
                this.A.add(downloadTaskG);
                this.f71526x.put(downloadTaskG.getCrc_link_type_val(), downloadTaskG);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void f0(String fid) {
        this.f71509g = fid;
        if (!com.join.android.app.common.utils.m.j(this.f71515m)) {
            q0();
            return;
        }
        o0();
        com.join.mgps.customview.j jVar = this.f71521s;
        if (jVar != null) {
            jVar.onRefresh();
        }
    }

    public void g0(String order, boolean force) {
        if (!TextUtils.equals(this.f71505c, order) || force) {
            this.f71505c = order;
            if (!com.join.android.app.common.utils.m.j(this.f71515m)) {
                q0();
                return;
            }
            i0();
            o0();
            com.join.mgps.customview.j jVar = this.f71521s;
            if (jVar != null) {
                jVar.onRefresh();
            }
        }
    }

    void h0(int pid) {
        ForumBean.ForumPostsBean next;
        List<ForumBean.ForumPostsBean> list = this.f71520r;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<ForumBean.ForumPostsBean> it2 = this.f71520r.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.getPid() == pid) {
                next.setPraise(next.is_praise() ? next.getPraise() - 1 : next.getPraise() + 1);
                next.setIs_praise(!next.is_praise());
                notifyDataSetChanged();
                return;
            }
        }
    }

    @UiThread
    void hideLoading() {
        this.f71514l.setVisibility(0);
        this.f71512j.setVisibility(8);
        this.f71511i.setVisibility(8);
        this.f71524v.setVisibility(8);
    }

    @Override // ru.noties.scrollable.b
    public boolean i(int direction) {
        XListView2 xListView2 = this.f71513k;
        return xListView2 != null && xListView2.canScrollVertically(direction);
    }

    void i0() {
        this.f71513k.setPullLoadEnable(new b());
    }

    public void j0(boolean openPostsFilter) {
        this.f71517o = openPostsFilter;
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    @UiThread
    void m0() {
        com.join.mgps.Util.h0.h0(this.f71515m).m(this.f71515m);
    }

    @UiThread
    void n0() {
        this.f71514l.setVisibility(8);
        this.f71512j.setVisibility(8);
        this.f71511i.setVisibility(0);
        this.f71524v.setVisibility(8);
    }

    synchronized void notifyDataSetChanged() {
        ForumBaseAdapter forumBaseAdapter = this.f71516n;
        if (forumBaseAdapter != null && forumBaseAdapter.x() != null) {
            this.f71516n.x().clear();
        }
        l0(this.f71518p);
        this.f71516n.notifyDataSetChanged();
    }

    @UiThread
    void o0() {
        this.f71514l.setVisibility(8);
        this.f71512j.setVisibility(0);
        this.f71511i.setVisibility(8);
        this.f71524v.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f71515m = (Activity) context;
    }

    public boolean onBackPressedMy() {
        return com.join.android.app.component.video.a.c0(getContext(), this.f71522t + this.f71507e);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.f71506d = arguments.getInt("tag_id");
        this.f71508f = arguments.getInt("type");
        this.f71507e = arguments.getInt("position");
        this.f71509g = arguments.getString("fid");
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.android.app.component.video.c cVar = this.f71523u;
        if (cVar != null) {
            cVar.F();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f71515m = null;
        this.f71520r.clear();
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
        com.join.android.app.component.video.c cVar = this.f71523u;
        if (cVar != null) {
            cVar.G();
        }
        super.onPause();
        this.D = false;
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentActivity activity = getActivity();
        if (activity instanceof MainLabelActivity) {
            if (((MainLabelActivity) activity).getCurrentItem() != this.f71507e) {
                this.D = false;
                return;
            }
            this.D = true;
            if (this.f71513k != null) {
                Z();
            }
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        if (getActivity() == null || !this.D) {
            return;
        }
        this.f71523u.e(view, firstVisibleItem, visibleItemCount, totalItemCount);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        if (this.D && scrollState == 0) {
            if (Fresco.getImagePipeline().P()) {
                Fresco.getImagePipeline().c0();
            }
            if (getActivity() != null) {
                this.f71523u.i(view, scrollState);
            }
        }
    }

    @UiThread
    void p0() {
        this.f71514l.setVisibility(8);
        this.f71512j.setVisibility(8);
        this.f71511i.setVisibility(8);
        this.f71524v.setVisibility(0);
    }

    @UiThread
    void q0() {
        Activity activity = this.f71515m;
        if (activity != null) {
            com.join.mgps.Util.a3.b(activity).d(getString(R.string.net_connect_failed));
        }
    }

    @UiThread
    void r0(DetailResultBean detialResultBean) {
        DownloadTask downloadtaskDown;
        if (detialResultBean == null || (downloadtaskDown = detialResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f71520r.size(); i10++) {
            ForumBean.ForumPostsBean forumPostsBean = this.f71520r.get(i10);
            if (forumPostsBean != null && forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id()) && forumPostsBean.getRelation_game().getGame_id().equals(downloadtaskDown.getCrc_link_type_val())) {
                forumPostsBean.getRelation_game().setDownloadTask(downloadtaskDown);
                z10 |= true;
            }
        }
        if (z10) {
            t0(this.f71520r);
        }
        if (UtilsMy.y0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.z4(getContext(), downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.A1(downloadtaskDown, detialResultBean);
        if (UtilsMy.o1(getContext(), downloadtaskDown)) {
            return;
        }
        if (detialResultBean.getDown_status() == 5) {
            UtilsMy.l1(getContext(), downloadtaskDown);
        } else {
            UtilsMy.U0(getContext(), downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    @Click
    void relodingimag() {
        V();
    }

    @UiThread
    void s0() {
        this.mHandler.postDelayed(new a(), 100L);
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f71515m);
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.f71515m).d(message);
    }

    @UiThread
    void showToast(String msg) {
        com.join.mgps.Util.a3.b(getContext()).d(msg);
    }

    @UiThread
    void t0(List<ForumBean.ForumPostsBean> datas) {
        notifyDataSetChanged();
    }

    @UiThread
    void u0(List<ForumBean.ForumPostsBean> datas, int page) {
        if (page <= 1) {
            if (datas.size() <= 0) {
                p0();
                return;
            }
            this.f71520r.clear();
            i0();
            ForumBaseAdapter forumBaseAdapter = this.f71516n;
            if (forumBaseAdapter != null && forumBaseAdapter.x() != null) {
                this.f71516n.x().clear();
            }
        }
        if (datas == null || datas.size() < 0) {
            return;
        }
        this.f71520r.addAll(datas);
        for (int i10 = 0; i10 < datas.size(); i10++) {
            k0(datas.get(i10), page, i10);
        }
        this.f71516n.notifyDataSetChanged();
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask == null) {
            if (from != 4) {
                return;
            }
            e0();
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
                e0();
                break;
            case 5:
                receiveSuccess(downloadTask);
                break;
            case 6:
                receiveError(downloadTask);
                break;
        }
    }

    boolean v0() {
        if (P(this.f71515m) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this.f71515m).isTourist();
    }
}
