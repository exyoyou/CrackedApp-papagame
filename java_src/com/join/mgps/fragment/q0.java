package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.kotlin.quark.SourceShareActivity;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.DiscoveryPaiweiActivity_;
import com.join.mgps.activity.EndGameActivity_;
import com.join.mgps.activity.ForumIndexActivity_;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.DiscoveryHeaderArgs;
import com.join.mgps.dto.DiscoveryHeaderBean;
import com.join.mgps.dto.DiscoveryHeaderMenuBean;
import com.join.mgps.dto.DiscoveryHeaderMenuClickArgs;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.EndGameNameListBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
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
public class q0 extends Fragment implements View.OnClickListener, AbsListView.OnScrollListener {
    private boolean H;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    RelativeLayout f70544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    RelativeLayout f70545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f70547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f70548g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    XListView2 f70549h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    ImageView f70550i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    View f70551j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    CustomerDownloadView f70552k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Bean
    com.join.mgps.Util.b f70553l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.join.mgps.rpc.i f70554m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ForumBaseAdapter f70556o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private View f70558q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.join.mgps.rpc.l f70559r;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private List<DownloadTask> f70563v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    com.join.android.app.component.video.c f70564w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    MGMainActivity f70565x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private LinearLayout f70567z;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f70555n = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f70557p = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.join.mgps.adapter.b0 f70560s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.join.mgps.adapter.a0 f70561t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f70562u = "";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    String f70566y = "DiscoveryFragmentV4";
    private String A = null;
    private List<ForumBean.ForumPostsBean> B = new ArrayList();
    private int C = 0;
    private SparseArray D = new SparseArray(0);
    private int E = -1;
    Map<String, DownloadTask> F = new HashMap();
    Map<String, DownloadTask> G = new HashMap();

    class a implements w6.f {
        a() {
        }

        @Override // w6.f
        public void a(int position) {
            int height = q0.this.f70545d.getHeight();
            if (height < q0.this.f70549h.getResources().getDimensionPixelOffset(R.dimen.wdp80)) {
                height = q0.this.f70549h.getResources().getDimensionPixelOffset(R.dimen.wdp140);
            }
            q0.this.f70549h.smoothScrollToPositionFromTop(position, height);
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (q0.this.f70557p) {
                return;
            }
            q0.this.a0();
        }
    }

    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (q0.this.f70557p) {
                return;
            }
            q0.this.f70555n = 1;
            com.join.android.app.component.video.c cVar = q0.this.f70564w;
            if (cVar != null) {
                cVar.G();
                q0.this.f70564w.K(1);
            }
            q0.this.B.clear();
            q0.this.a0();
            q0.this.b0();
        }
    }

    class d extends ForumBaseAdapter.b1 {
        d() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void a(int pid) {
            q0 q0Var = q0.this;
            if (!q0Var.isLogined(q0Var.getActivity())) {
                q0 q0Var2 = q0.this;
                q0Var2.showMessage(q0Var2.getActivity().getString(R.string.forum_user_not_login));
            } else if (!q0.this.p0()) {
                q0.this.j0();
            } else {
                q0.this.f0(pid);
                q0.this.d0(pid);
            }
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void d(int fid) {
            super.d(fid);
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(fid);
            com.join.mgps.Util.r0.v0(q0.this.getActivity(), forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void e(String gameId) {
        }
    }

    class e extends BaseQuickAdapter<DiscoveryMainDataBean.BattleGameBean, com.join.mgps.base.b> {
        public e(List<DiscoveryMainDataBean.BattleGameBean> data) {
            super(R.layout.item_end_game_icon, data);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(DiscoveryMainDataBean.BattleGameBean battleGameBean, View view) {
            com.papa.sim.statistic.t.l(q0.this.getActivity()).q2(AccountUtil_.getInstance_(q0.this.getActivity()).getUid(), "gameEnter");
            GameInfoBean gameInfoBean = new GameInfoBean();
            gameInfoBean.setGame_name(battleGameBean.getGame_name());
            gameInfoBean.setGame_ico(battleGameBean.getGame_ico());
            gameInfoBean.setGame_id(battleGameBean.getGame_id());
            GameRoomListActivity_.intent(q0.this.getActivity()).c(gameInfoBean).start();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, final DiscoveryMainDataBean.BattleGameBean item) {
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivIcon), item.getGame_ico());
            helper.getView(R.id.selector).setVisibility(8);
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.r0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f70659b.t(item, view);
                }
            });
        }
    }

    class f extends BaseQuickAdapter<DiscoveryMainDataBean.ForumListBean, com.join.mgps.base.b> {
        public f(List<DiscoveryMainDataBean.ForumListBean> data) {
            super(R.layout.item_end_game_icon, data);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(DiscoveryMainDataBean.ForumListBean forumListBean, View view) {
            com.papa.sim.statistic.t.l(q0.this.getActivity()).q2(AccountUtil_.getInstance_(q0.this.getActivity()).getUid(), "groupEnter");
            IntentUtil.getInstance().goForumGroupActivity(q0.this.getContext(), forumListBean.getFid(), "discovery");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, final DiscoveryMainDataBean.ForumListBean item) {
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivIcon), item.getIcon_src());
            helper.getView(R.id.selector).setVisibility(8);
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.s0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f70828b.t(item, view);
                }
            });
        }
    }

    class g extends BaseQuickAdapter<EndGameNameListBean, com.join.mgps.base.b> {
        public g(List<EndGameNameListBean> data) {
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

    class h extends FragmentStateAdapter {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<EndGameNameListBean> f70575e;

        public h(FragmentActivity fragmentActivity, List<EndGameNameListBean> datas) {
            super(fragmentActivity);
            this.f70575e = datas;
        }

        private d1 a(int position) {
            Fragment fragmentFindFragmentByTag = q0.this.getParentFragmentManager().findFragmentByTag(com.xinzhu.overmind.server.os.f.TAG + position);
            if (fragmentFindFragmentByTag == null || !(fragmentFindFragmentByTag instanceof d1)) {
                return null;
            }
            return (d1) fragmentFindFragmentByTag;
        }

        private void b(List<EndGameNameListBean> datas) {
            this.f70575e = datas;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NonNull
        public Fragment createFragment(int position) {
            return d1.S().b(this.f70575e.get(position)).c(position).build();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f70575e.size();
        }
    }

    class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f70577a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f70578b = 0;

        i() {
        }
    }

    private UserInfo T(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void V() {
        this.f70562u = "";
        List<DownloadTask> listT = q5.f.M().T(null);
        this.f70563v = listT;
        if (listT == null || listT.size() <= 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f70563v) {
            if (downloadTask.isIs_fight() == 1) {
                if ("".equals(this.f70562u)) {
                    this.f70562u += downloadTask.getCrc_link_type_val();
                } else {
                    this.f70562u += "," + downloadTask.getCrc_link_type_val();
                }
            }
        }
    }

    private List<DiscoveryHeaderMenuBean> W(List<DiscoveryHeaderMenuBean> menu, int moduleId) {
        ArrayList arrayList = new ArrayList();
        if (menu != null) {
            for (DiscoveryHeaderMenuBean discoveryHeaderMenuBean : menu) {
                if (moduleId == discoveryHeaderMenuBean.getModule_id()) {
                    arrayList.add(discoveryHeaderMenuBean);
                }
            }
        }
        return arrayList;
    }

    private int X() {
        int i10;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.C;
            if (i11 >= i10) {
                break;
            }
            i iVar = (i) this.D.get(i11);
            if (iVar != null) {
                i12 += iVar.f70577a;
            }
            i11++;
        }
        i iVar2 = (i) this.D.get(i10);
        if (iVar2 == null) {
            iVar2 = new i();
        }
        return i12 - iVar2.f70578b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit Y() {
        updateDownloadView();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z(View view, View view2, View view3, DiscoveryHeaderMenuBean discoveryHeaderMenuBean, SimpleDraweeView simpleDraweeView, TextView textView, View view4) {
        view.setVisibility(8);
        view2.setVisibility(8);
        view3.setVisibility(8);
        g0(discoveryHeaderMenuBean);
        com.papa.sim.statistic.t.l(this.f70565x).R1(Event.clickEveryFindPageEnter, new Ext().setFrom(String.valueOf(discoveryHeaderMenuBean.getFrom())));
        IntentDateBean intentDataBean = discoveryHeaderMenuBean.getJump_model_dto() != null ? discoveryHeaderMenuBean.getJump_model_dto().getIntentDataBean() : null;
        if (intentDataBean != null && intentDataBean.getObject() == null && discoveryHeaderMenuBean.getJump_model_dto() != null && discoveryHeaderMenuBean.getJump_model_dto().getSub_title() != null) {
            intentDataBean.setObject(discoveryHeaderMenuBean.getJump_model_dto().getSub_title());
        }
        if (!discoveryHeaderMenuBean.isSystem()) {
            if (discoveryHeaderMenuBean.getJump_model_dto() != null) {
                IntentUtil.getInstance().intentActivity(this.f70565x, intentDataBean);
                return;
            }
            return;
        }
        switch (discoveryHeaderMenuBean.getEnter_type()) {
            case 1:
                NewArenaMainActivty_.intent(getActivity()).start();
                com.papa.sim.statistic.t.l(getActivity()).q2(AccountUtil_.getInstance_(getActivity()).getUid(), "enterLobby");
                break;
            case 2:
                simpleDraweeView.setVisibility(8);
                textView.setVisibility(8);
                this.A = discoveryHeaderMenuBean.getSub_title();
                EndGameActivity_.intent(this.f70565x).a(discoveryHeaderMenuBean.getExtData()).start();
                break;
            case 3:
                DiscoveryPaiweiActivity_.intent(this.f70565x).a(discoveryHeaderMenuBean.getExtData()).start();
                break;
            case 4:
                startActivity(new Intent(this.f70565x, (Class<?>) SourceShareActivity.class));
                break;
            case 5:
                Intent intent = new Intent();
                intent.setClass(this.f70565x, MGMainActivity_.class);
                intent.setFlags(603979776);
                Bundle bundle = new Bundle();
                bundle.putInt("MainPos", 7);
                bundle.putInt("currTabNumber", 4);
                bundle.putString("currTabTagId", "0");
                if (discoveryHeaderMenuBean.getExtData() != null) {
                    bundle.putString("currGameId", discoveryHeaderMenuBean.getExtData());
                }
                intent.putExtras(bundle);
                this.f70565x.startActivity(intent);
                break;
            case 6:
                com.papa.sim.statistic.t.l(getActivity()).q2(AccountUtil_.getInstance_(getActivity()).getUid(), "communityEnter");
                ForumIndexActivity_.intent(getContext()).start();
                break;
            default:
                if (discoveryHeaderMenuBean.getJump_model_dto() != null) {
                    IntentUtil.getInstance().intentActivity(this.f70565x, intentDataBean);
                }
                break;
        }
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
    private void h0(ForumBean.ForumPostsBean posts, int num) {
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
        q0 q0Var = this;
        boolean z12 = num != 0;
        if (com.join.mgps.Util.t2.h(posts.getSubject()) || com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            z10 = false;
        } else {
            q0Var = this;
            q0Var.f70556o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT, new ForumBaseAdapter.r1.p(z12, posts.getBest() > 0, posts.getFirst() > 0, posts.getSubject(), posts.getPid(), posts.getFid(), posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
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
                q0Var.f70556o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_MESSAGE, oVar));
                if (getActivity() != null && isAdded()) {
                    q0Var.f70556o.y().j(com.join.mgps.Util.i0.c(getActivity(), getResources().getDimensionPixelOffset(R.dimen.mg_forum_post_message_text_size))).e(oVar);
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
                    q0Var.f70556o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, message)));
                } else if (small_thumb_pic_list != null && small_thumb_pic_list.size() != 0) {
                    q0Var.f70556o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(small_thumb_pic_list, arrayList, posts.getPid())));
                }
            }
            if (z11) {
                q0Var.e0(posts.getRelation_game());
                viewType = ForumBaseAdapter.ViewType.POST_GAME;
                if (!TextUtils.isEmpty(posts.getResource_url())) {
                    viewType = ForumBaseAdapter.ViewType.POST_GAME_RES_LINK;
                }
                q0Var.f70556o.f(new ForumBaseAdapter.r1(viewType, new ForumBaseAdapter.r1.w(true, posts.getPid() + str2, posts.getRelation_game(), posts.getResource_url())));
            }
            q0Var.f70556o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(posts.getAvatar_src(), posts.getForum_name(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
        }
        str = "";
        q0Var = this;
        q0Var.f70556o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_SUBJECT, new ForumBaseAdapter.r1.p(z12, posts.getBest() > 0, posts.getFirst() > 0, posts.getMessage(), posts.getPid(), 0, posts.getHelp() > 0, posts.getHelp_money() + "", posts.getTag_info(), posts.getTags(), posts.getFname(), posts.getSolve_flg())));
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
                q0Var.f70556o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_VIDEO, new ForumBaseAdapter.r1.q(thumb, raw, message)));
            } else if (small_thumb_pic_list != null) {
                q0Var.f70556o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_IMGS, new ForumBaseAdapter.r1.n(small_thumb_pic_list, arrayList, posts.getPid())));
            }
        }
        if (z11) {
            q0Var.e0(posts.getRelation_game());
            viewType = ForumBaseAdapter.ViewType.POST_GAME;
            if (!TextUtils.isEmpty(posts.getResource_url())) {
                viewType = ForumBaseAdapter.ViewType.POST_GAME_RES_LINK;
            }
            q0Var.f70556o.f(new ForumBaseAdapter.r1(viewType, new ForumBaseAdapter.r1.w(true, posts.getPid() + str2, posts.getRelation_game(), posts.getResource_url())));
        }
        q0Var.f70556o.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.P_FOOTER, new ForumBaseAdapter.r1.m(posts.getAvatar_src(), posts.getForum_name(), posts.getNickname(), posts.getPraise(), posts.getCommit(), posts.getPid(), posts.getView(), posts.is_praise(), posts.getUid())));
    }

    private void i0(boolean isLight) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("setStatusBarLight: ");
        sb2.append(isLight);
        View decorView = getActivity().getWindow().getDecorView();
        if (decorView != null) {
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(isLight ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isLogined(Context context) {
        UserInfo userInfoT = T(getActivity());
        return userInfoT != null && com.join.mgps.Util.t2.i(userInfoT.getToken());
    }

    @Click
    void O() {
    }

    public void U() {
        V();
        b0();
        List<ForumBean.ForumPostsBean> list = this.B;
        if (list != null && list.size() == 0) {
            a0();
        }
        updateDownloadView();
    }

    @Background
    void a0() {
        if (!com.join.android.app.common.utils.m.j(getActivity())) {
            l0();
            return;
        }
        if (this.f70554m == null) {
            this.f70554m = com.join.mgps.rpc.impl.g.A0();
        }
        String uid = AccountUtil_.getInstance_(getActivity()).getUid();
        String token = AccountUtil_.getInstance_(getActivity()).getToken();
        if (this.f70557p) {
            return;
        }
        this.f70557p = true;
        try {
            ForumResponse<List<ForumBean.ForumPostsBean>> forumResponseX = this.f70554m.x(uid, token, this.f70555n);
            if (forumResponseX == null || forumResponseX.getError() != 0) {
                l0();
            } else {
                m0(forumResponseX.getData());
            }
        } catch (Exception unused) {
            l0();
        }
    }

    @AfterViews
    void afterViews() {
        org.greenrobot.eventbus.c.f().v(this);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f70551j.getLayoutParams();
        layoutParams.height = com.join.android.app.common.utils.q.v(getContext());
        this.f70551j.setLayoutParams(layoutParams);
        this.f70564w = new com.join.android.app.component.video.c(getContext(), this.f70566y);
        this.f70565x = (MGMainActivity) getActivity();
        this.f70559r = com.join.mgps.rpc.impl.k.n0();
        View viewInflate = LayoutInflater.from(getActivity()).inflate(R.layout.part_discovery_header_v4, (ViewGroup) null);
        this.f70558q = viewInflate;
        this.f70567z = (LinearLayout) viewInflate.findViewById(R.id.llHeader);
        this.f70550i.setOnClickListener(this);
        this.f70549h.addHeaderView(this.f70558q);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(getActivity(), this.f70564w);
        this.f70556o = forumBaseAdapter;
        forumBaseAdapter.f1(new a());
        this.f70556o.C0(this.f70566y);
        this.f70549h.setAdapter((ListAdapter) this.f70556o);
        this.f70549h.setPreLoadCount(10);
        this.f70549h.setVerticalScrollBarEnabled(false);
        this.f70549h.setPullLoadEnable(new b());
        this.f70549h.setPullRefreshEnable(new c());
        this.f70549h.setOnScrollListener(this);
        U();
        this.f70556o.I0(new d());
        i0(true);
        getDownloadTaskInfo();
    }

    public void autoPlay() {
        com.join.android.app.component.video.c cVar = this.f70564w;
        if (cVar != null) {
            cVar.K(1);
            this.f70564w.m(this.f70549h);
        }
    }

    @Background
    void b0() {
        if (!com.join.android.app.common.utils.m.j(getActivity())) {
            k0();
            return;
        }
        try {
            DiscoveryHeaderArgs discoveryHeaderArgs = new DiscoveryHeaderArgs();
            discoveryHeaderArgs.setUid(String.valueOf(this.f70553l.getAccountData().getUid()));
            discoveryHeaderArgs.setDownloadGameIdList(q5.f.M().C());
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(discoveryHeaderArgs);
            requestModel.setDefault(getContext());
            ResponseModel<DiscoveryHeaderBean> responseModelV = com.join.mgps.rpc.impl.i.P0().V(requestModel.makeSign());
            if (getActivity() == null) {
                return;
            }
            if (responseModelV == null || responseModelV.getData() == null || responseModelV.getData().getMenu() == null || responseModelV.getData().getMenu().size() <= 0) {
                k0();
            } else {
                showMain();
                o0(responseModelV.getData().getMenu());
            }
        } catch (Exception unused) {
            k0();
        }
    }

    @Click
    void c0() {
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.F.containsKey(crc_link_type_val)) {
                this.F.put(crc_link_type_val, task);
            }
            if (this.G.containsKey(crc_link_type_val)) {
                return;
            }
            this.G.put(crc_link_type_val, task);
            return;
        }
        if (from == 3) {
            if (this.G.containsKey(crc_link_type_val)) {
                this.G.remove(crc_link_type_val);
                return;
            }
            return;
        }
        if (from != 5) {
            if (from == 6) {
                if (this.G.containsKey(crc_link_type_val)) {
                    this.G.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 7) {
                if (this.F.containsKey(crc_link_type_val)) {
                    this.F.remove(crc_link_type_val);
                }
                if (this.G.containsKey(crc_link_type_val)) {
                    this.G.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 10) {
                if (!this.F.containsKey(crc_link_type_val)) {
                    this.F.put(crc_link_type_val, task);
                }
                if (this.G.containsKey(crc_link_type_val)) {
                    return;
                }
                this.G.put(crc_link_type_val, task);
                return;
            }
            if (from != 11) {
                return;
            }
        } else if (this.F.containsKey(crc_link_type_val)) {
            this.F.remove(crc_link_type_val);
        }
        if (this.G.containsKey(crc_link_type_val)) {
            this.G.remove(crc_link_type_val);
        }
    }

    @Background
    void d0(int curPid) {
        try {
            if (!com.join.mgps.Util.r0.Y0(getActivity())) {
                com.join.mgps.Util.r0.L0(getActivity());
                com.join.mgps.Util.a3.b(getActivity()).d("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanE0 = com.join.mgps.Util.r0.e0(getActivity(), curPid);
            forumPostsPraiseRequestBeanE0.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> forumResponseR = this.f70554m.R(forumPostsPraiseRequestBeanE0.getParams());
            if (forumResponseR == null) {
                return;
            }
            if (forumResponseR.getError() == 706) {
                f0(curPid);
                j0();
            } else {
                ForumData.ForumPostsPraiseData data = forumResponseR.getData();
                data.isResult();
                com.join.mgps.Util.r0.m1(forumPostsPraiseRequestBeanE0, data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void downloadView1() {
        IntentUtil.getInstance().goMyGameManagerActivity(getContext());
    }

    void e0(ForumBean.GameInfo gameInfo) {
    }

    void f0(int pid) {
        List<ForumBean.ForumPostsBean> list = this.B;
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < this.B.size(); i10++) {
            ForumBean.ForumPostsBean forumPostsBean = this.B.get(i10);
            if (forumPostsBean.getPid() == pid) {
                this.B.get(i10).setPraise(forumPostsBean.is_praise() ? forumPostsBean.getPraise() - 1 : forumPostsBean.getPraise() + 1);
                this.B.get(i10).setIs_praise(!forumPostsBean.is_praise());
                break;
            }
        }
        this.f70556o.x().clear();
        for (int i11 = 0; i11 < this.B.size(); i11++) {
            h0(this.B.get(i11), i11);
        }
        this.f70556o.notifyDataSetChanged();
    }

    @Background
    void g0(DiscoveryHeaderMenuBean menu) {
        if (com.join.android.app.common.utils.m.j(getActivity())) {
            try {
                DiscoveryHeaderMenuClickArgs discoveryHeaderMenuClickArgs = new DiscoveryHeaderMenuClickArgs();
                discoveryHeaderMenuClickArgs.setUid(String.valueOf(AccountUtil_.getInstance_(this.f70565x).getAccountData().getUid()));
                discoveryHeaderMenuClickArgs.setExtData(menu.getExtData());
                discoveryHeaderMenuClickArgs.setMenuId(String.valueOf(menu.getMenu_id()));
                RequestModel requestModel = new RequestModel();
                requestModel.setArgs(discoveryHeaderMenuClickArgs);
                requestModel.setDefault(getContext());
                com.join.mgps.rpc.impl.i.P0().X(requestModel.makeSign());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Background
    void getDownloadTaskInfo() {
        List<DownloadTask> listR = q5.f.M().r();
        List<DownloadTask> listQ = q5.f.M().q();
        if (listQ != null && listQ.size() > 0) {
            for (DownloadTask downloadTask : listQ) {
                this.F.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.G.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    @UiThread
    void j0() {
        com.join.mgps.Util.h0.h0(getActivity()).m(getActivity());
    }

    @UiThread
    void k0() {
        try {
            this.f70548g.setVisibility(0);
            this.f70547f.setVisibility(8);
            this.f70546e.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void l0() {
        XListView2 xListView2 = this.f70549h;
        if (xListView2 != null) {
            xListView2.u();
            this.f70549h.v();
        }
        this.f70557p = false;
    }

    @Background
    void loadData() {
        if (!com.join.android.app.common.utils.m.j(getActivity())) {
            k0();
            return;
        }
        try {
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            linkedMultiValueMap.put("uid", this.f70553l.getUid());
            linkedMultiValueMap.put(Constants.TOKEN, this.f70553l.getToken());
            linkedMultiValueMap.put("game_ids", this.f70562u);
            GameWorldResponse<DiscoveryMainDataBean> gameWorldResponseC = this.f70559r.C(linkedMultiValueMap);
            if (gameWorldResponseC == null || gameWorldResponseC.getData() == null || gameWorldResponseC.getError() != 0) {
                k0();
            } else {
                n0(gameWorldResponseC.getData());
            }
        } catch (Exception unused) {
            k0();
        }
    }

    @Click
    void loding_faile() {
        this.f70548g.setVisibility(8);
        this.f70547f.setVisibility(0);
        this.f70546e.setVisibility(8);
        U();
    }

    @UiThread
    void m0(List<ForumBean.ForumPostsBean> posts) {
        if (posts == null) {
            return;
        }
        if (this.f70555n == 1) {
            this.f70556o.x().clear();
            this.B.clear();
        }
        this.B.addAll(posts);
        for (int size = this.B.size(); size < this.B.size(); size++) {
            h0(this.B.get(size), size);
        }
        this.f70556o.notifyDataSetChanged();
        if (this.f70549h != null) {
            if (posts.size() < 10 || posts.size() == 0) {
                this.f70549h.setNoMore();
                this.f70549h.v();
            } else {
                this.f70555n++;
                this.f70549h.u();
                this.f70549h.v();
            }
        }
        this.f70557p = false;
        this.f70556o.notifyDataSetChanged();
    }

    @UiThread
    void n0(DiscoveryMainDataBean results) {
        LinearLayout linearLayout = this.f70548g;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setVisibility(8);
        this.f70547f.setVisibility(8);
        this.f70546e.setVisibility(0);
    }

    @UiThread
    void o0(List<DiscoveryHeaderMenuBean> menu) {
        LinearLayout linearLayout;
        q0 q0Var;
        Context context;
        int i10;
        q0 q0Var2 = this;
        Context context2 = getContext();
        if (context2 == null || !isAdded() || (linearLayout = q0Var2.f70567z) == null) {
            return;
        }
        linearLayout.removeAllViews();
        int i11 = 1;
        int i12 = 101;
        int i13 = 1;
        while (i13 <= 4) {
            List<DiscoveryHeaderMenuBean> listW = q0Var2.W(menu, i13);
            if (listW == null || listW.size() <= 0) {
                q0Var = q0Var2;
                context = context2;
                i10 = i13;
            } else {
                CornersLinearLayout cornersLinearLayout = new CornersLinearLayout(context2);
                cornersLinearLayout.setOrientation(i11);
                if (i13 != i11) {
                    cornersLinearLayout.setConner_top_left((int) context2.getResources().getDimension(R.dimen.wdp20));
                    cornersLinearLayout.setConner_top_right((int) context2.getResources().getDimension(R.dimen.wdp20));
                }
                cornersLinearLayout.setConner_bottom_left((int) context2.getResources().getDimension(R.dimen.wdp20));
                cornersLinearLayout.setConner_bottom_right((int) context2.getResources().getDimension(R.dimen.wdp20));
                cornersLinearLayout.setBackgroundColor(context2.getResources().getColor(R.color.white));
                Iterator<DiscoveryHeaderMenuBean> it2 = listW.iterator();
                int i14 = i12;
                int i15 = 0;
                while (it2.hasNext()) {
                    final DiscoveryHeaderMenuBean next = it2.next();
                    next.setFrom(i14);
                    View viewInflate = LayoutInflater.from(q0Var2.f70565x).inflate(R.layout.layout_discovery_header_include, (ViewGroup) null);
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate.findViewById(R.id.icon);
                    TextView textView = (TextView) viewInflate.findViewById(R.id.title);
                    final SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) viewInflate.findViewById(R.id.subIcon);
                    final TextView textView2 = (TextView) viewInflate.findViewById(R.id.desc);
                    final View viewFindViewById = viewInflate.findViewById(R.id.redPointTitle);
                    int i16 = i15;
                    final View viewFindViewById2 = viewInflate.findViewById(R.id.redPointDesc);
                    int i17 = i14;
                    final View viewFindViewById3 = viewInflate.findViewById(R.id.redPointSubIcon);
                    Context context3 = context2;
                    View viewFindViewById4 = viewInflate.findViewById(R.id.v_line);
                    com.join.android.app.common.utils.l.o(simpleDraweeView, next.getIcon());
                    textView.setText(next.getTitle());
                    if (!TextUtils.isEmpty(next.getSub_icon()) && (next.getMenu_id() != 2 || !TextUtils.equals(q0Var2.A, next.getSub_title()))) {
                        simpleDraweeView2.setVisibility(0);
                        com.join.android.app.common.utils.l.o(simpleDraweeView2, next.getSub_icon());
                    }
                    if (!TextUtils.isEmpty(next.getSub_title()) && (next.getMenu_id() != 2 || !TextUtils.equals(q0Var2.A, next.getSub_title()))) {
                        textView2.setVisibility(0);
                        textView2.setText(next.getSub_title());
                    }
                    if (next.isRedBot() && (next.getMenu_id() != 2 || !TextUtils.equals(q0Var2.A, next.getSub_title()))) {
                        if (!TextUtils.isEmpty(next.getSub_icon())) {
                            viewFindViewById3.setVisibility(0);
                        } else if (TextUtils.isEmpty(next.getSub_title())) {
                            viewFindViewById.setVisibility(0);
                        } else {
                            viewFindViewById2.setVisibility(0);
                        }
                    }
                    Iterator<DiscoveryHeaderMenuBean> it3 = it2;
                    int i18 = i13;
                    viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.o0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f70379b.Z(viewFindViewById, viewFindViewById2, viewFindViewById3, next, simpleDraweeView2, textView2, view);
                        }
                    });
                    cornersLinearLayout.addView(viewInflate);
                    i14 = i17 + 1;
                    if (listW.size() > 1 && i16 != listW.size() - 1) {
                        viewFindViewById4.setVisibility(0);
                    }
                    i15 = i16 + 1;
                    q0Var2 = this;
                    i13 = i18;
                    it2 = it3;
                    context2 = context3;
                }
                q0Var = q0Var2;
                context = context2;
                i10 = i13;
                q0Var.f70567z.addView(cornersLinearLayout);
                q0Var.f70567z.addView(LayoutInflater.from(q0Var.f70565x).inflate(R.layout.layout_discovery_header_divider, (ViewGroup) null));
                i12 = i14;
            }
            i13 = i10 + 1;
            q0Var2 = q0Var;
            context2 = context;
            i11 = 1;
        }
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
        com.join.android.app.component.video.c cVar = this.f70564w;
        if (cVar != null) {
            cVar.F();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        changeDownloadTaskNumber(downloadTaskEvent.a(), downloadTaskEvent.c());
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.fragment.p0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f70461b.Y();
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            com.join.android.app.component.video.c cVar = this.f70564w;
            if (cVar != null) {
                cVar.G();
                return;
            }
            return;
        }
        U();
        com.join.android.app.component.video.c cVar2 = this.f70564w;
        if (cVar2 != null) {
            cVar2.H();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        com.join.android.app.component.video.c cVar;
        if (this.f70565x.getPositionNum() == 4 && (cVar = this.f70564w) != null) {
            cVar.G();
        }
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        com.join.android.app.component.video.c cVar;
        super.onResume();
        U();
        if (this.f70565x.getPositionNum() != 4 || (cVar = this.f70564w) == null) {
            return;
        }
        cVar.H();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        com.join.android.app.component.video.c cVar = this.f70564w;
        if (cVar != null) {
            cVar.e(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onScrollStateChanged: ");
        sb2.append(scrollState);
        this.f70564w.i(view, scrollState);
        if (scrollState == 0 && Fresco.getImagePipeline().P()) {
            Fresco.getImagePipeline().c0();
        }
    }

    boolean p0() {
        if (T(getActivity()) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(getActivity()).isTourist();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(getActivity());
    }

    @UiThread
    void showMain() {
        LinearLayout linearLayout = this.f70548g;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setVisibility(8);
        this.f70547f.setVisibility(8);
        this.f70546e.setVisibility(0);
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(getActivity()).d(message);
    }

    @UiThread
    void updateDownloadView() {
        CustomerDownloadView customerDownloadView = this.f70552k;
        if (customerDownloadView != null) {
            customerDownloadView.setDownloadGameNum();
        }
    }
}
