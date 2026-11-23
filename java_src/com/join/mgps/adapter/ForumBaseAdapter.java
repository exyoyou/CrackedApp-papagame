package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TableRow;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.component.optimizetext.StaticLayoutView;
import com.join.android.app.component.video.MediaController;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.business.RecomDatabeanBusiness;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ConstantIntEnum;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Hashtable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumBaseAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.join.android.app.component.optimizetext.b f58839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.danikula.videocache.i f58840c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f58842e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.join.android.app.component.video.c f58844g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private w6.f f58846i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    Hashtable<String, u0> f58848k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    LinearLayout.LayoutParams f58849l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    LinearLayout.LayoutParams f58851n;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private MyVideoView f58859v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private MediaController f58860w;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f58841d = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f58845h = "ForumBaseAdapter";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f58847j = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f58850m = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private t0 f58852o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f58853p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f58854q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f58855r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f58856s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f58857t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f58858u = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f58861x = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f58862y = "";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f58863z = -1;
    private boolean A = false;
    private boolean B = false;
    List<Integer> C = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<r1> f58843f = new ArrayList();

    public enum ViewType {
        POST_HEADER,
        POST_SUBJECT,
        POST_MESSAGE,
        POST_IMAGE_THUMBNAIL,
        POST_VIDEO_THUMBNAIL,
        POST_FOOTER,
        POST_TOP,
        POST_GAME,
        MY_FORUM_HEADER,
        MY_FORUM_ITEM,
        MY_FORUM_FOOTER,
        MY_FORUM_MORE_FOOTER,
        HOT_FORUM_HEADER,
        HOT_FORUM_ITEM,
        HOT_FORUM_FOOTER,
        TOP_BLOCK,
        MID_BLOCK,
        AD_BLOCK,
        FORUM_TOPIC,
        BAIDUAD,
        LIVE,
        LIVE_ENTRY,
        GROUP_ITEM,
        GROUP_ITEM_2,
        P_SUBJECT,
        P_SUBJECT_LABEL,
        P_MESSAGE,
        P_IMGS,
        P_VIDEO,
        P_FOOTER,
        TAG_FLOW_LAYOUT,
        GROUP_MEMBER_SECTION_TITLE,
        GROUP_MEMBER_ITEM,
        TAG_ITEM,
        POST_GAME_RES_LINK,
        RICH_MESSAGE,
        POST_RICH_MESSAGE,
        POST_IMAGE,
        POST_VIDEO
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f58864b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f58865c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f58866d;

        a(final String val$postId, final String val$gameId, final ForumBean.GameInfo val$gameInfo) {
            this.f58864b = val$postId;
            this.f58865c = val$gameId;
            this.f58866d = val$gameInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Context context = v10.getContext();
            com.papa.sim.statistic.t.l(context).t0(this.f58864b, this.f58865c, AccountUtil_.getInstance_(context).getUid());
            com.join.mgps.Util.r0.J0(v10.getContext(), this.f58866d, 13203);
        }
    }

    class a0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ r1.x f58868b;

        a0(final r1.x val$item) {
            this.f58868b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f58868b.f59186m).start();
        }
    }

    class a1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f58870b;

        a1() {
            super();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f58872b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58873c;

        b(final IntentDateBean val$intentDateBean, final int val$pos) {
            this.f58872b = val$intentDateBean;
            this.f58873c = val$pos;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Context context = v10.getContext();
            if (this.f58872b == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(context, this.f58872b);
            int i10 = this.f58873c + 1;
            com.papa.sim.statistic.t.l(context).u0("banner3-" + i10, AccountUtil_.getInstance_(context).getUid());
        }
    }

    class b0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f58875b;

        b0(final int val$pid) {
            this.f58875b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.a(this.f58875b);
            }
        }
    }

    public static class b1 implements t0 {
        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void a(int pid) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void b(ForumBean forumBean) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void c(int position) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void d(int fid) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void e(String gameId) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void f(ForumBean forumBean) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void g(int fid) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void h(String title) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void i(RecommendLabelTag tag) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void j(ForumBean forumBean) {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void k() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void l() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void m() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.t0
        public void n(int gid) {
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f58877b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58878c;

        c(final List val$rawPicList, final int val$imgIndex) {
            this.f58877b = val$rawPicList;
            this.f58878c = val$imgIndex;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String[] strArr = new String[this.f58877b.size()];
            this.f58877b.toArray(strArr);
            com.join.mgps.Util.r0.G0(v10.getContext(), this.f58878c, strArr);
        }
    }

    class c0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ r1.m f58880b;

        c0(final r1.m val$item) {
            this.f58880b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f58880b.f59121h).start();
        }
    }

    class c1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f58882b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f58883c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f58884d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f58885e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f58886f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f58887g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f58888h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ImageView f58889i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public SimpleDraweeView f58890j;

        c1() {
            super();
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f58892b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58893c;

        d(final List val$rawPicList, final int val$imgIndex) {
            this.f58892b = val$rawPicList;
            this.f58893c = val$imgIndex;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String[] strArr = new String[this.f58892b.size()];
            this.f58892b.toArray(strArr);
            com.join.mgps.Util.r0.G0(v10.getContext(), this.f58893c, strArr);
        }
    }

    class d0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f58895b;

        d0(final int val$positionx) {
            this.f58895b = val$positionx;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumBaseAdapter.this.f58844g.z() != this.f58895b || ForumBaseAdapter.this.f58844g.C() == 5) {
                ForumBaseAdapter.this.f58846i.a(this.f58895b);
            } else {
                ForumBaseAdapter.this.f58844g.s();
            }
        }
    }

    class d1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f58897b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f58898c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f58899d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f58900e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleDraweeView f58901f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f58902g;

        d1() {
            super();
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f58904b;

        e(final String val$href) {
            this.f58904b = val$href;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.Util.r0.Q0(v10.getContext(), this.f58904b);
        }
    }

    class e0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f58906b;

        e0(final int val$finalPositionx) {
            this.f58906b = val$finalPositionx;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumBaseAdapter.this.f58844g.z() != this.f58906b || ForumBaseAdapter.this.f58844g.C() == 5) {
                ForumBaseAdapter.this.f58846i.a(this.f58906b);
            } else {
                ForumBaseAdapter.this.f58844g.s();
            }
        }
    }

    class e1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public StaticLayoutView f58908b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f58909c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f58910d;

        e1() {
            super();
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c1 f58912b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58913c;

        f(final c1 val$holder, final int val$pid) {
            this.f58912b = val$holder;
            this.f58913c = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f58912b.f58889i.startAnimation(AnimationUtils.loadAnimation(ForumBaseAdapter.this.f58842e, R.anim.scale_reset));
            if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.a(this.f58913c);
            }
        }
    }

    class f0 implements com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.g> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f58915b;

        f0(final SimpleDraweeView val$view) {
            this.f58915b = val$view;
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onFinalImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo, Animatable animatable) {
            try {
                ForumBaseAdapter.this.a1(id2, this.f58915b, imageInfo);
                if (imageInfo != null) {
                    u0 u0Var = ForumBaseAdapter.this.new u0();
                    u0Var.f59217a = imageInfo.getWidth();
                    u0Var.f59218b = imageInfo.getHeight();
                    ForumBaseAdapter.this.h(id2, u0Var);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.facebook.drawee.controller.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onIntermediateImageSet(String id2, com.facebook.imagepipeline.image.g imageInfo) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onFailure(String id2, Throwable throwable) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onIntermediateImageFailed(String id2, Throwable throwable) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onRelease(String id2) {
        }

        @Override // com.facebook.drawee.controller.c
        public void onSubmit(String id2, Object callerContext) {
            this.f58915b.setMinimumHeight(ForumBaseAdapter.this.f58847j);
        }
    }

    class f1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public FrameLayout f58917b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SimpleDraweeView f58918c;

        f1() {
            super();
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f58920b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58921c;

        g(final IntentDateBean val$intentDateBean, final int val$position) {
            this.f58920b = val$intentDateBean;
            this.f58921c = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Context context = v10.getContext();
            if (this.f58920b == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(context, this.f58920b);
            int i10 = this.f58921c + 1;
            com.papa.sim.statistic.t.l(context).u0("banner2-" + i10, AccountUtil_.getInstance_(context).getUid());
        }
    }

    class g0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.GameInfo f58923b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadTask f58924c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f58925d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f58926e;

        g0(final ForumBean.GameInfo val$gameInfo, final DownloadTask val$downloadTask, final String val$postId, final String val$gameId) {
            this.f58923b = val$gameInfo;
            this.f58924c = val$downloadTask;
            this.f58925d = val$postId;
            this.f58926e = val$gameId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if ((ConstantIntEnum.H5.value() + "").equals(this.f58923b.getPlugin_num())) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(this.f58923b.getGame_down_url_remote());
                UtilsMy.j3(this.f58924c, ForumBaseAdapter.this.f58842e);
                IntentUtil.getInstance().intentActivity(ForumBaseAdapter.this.f58842e, intentDateBean);
                return;
            }
            Context context = v10.getContext();
            com.papa.sim.statistic.t.l(context).s0(this.f58925d, this.f58926e, AccountUtil_.getInstance_(context).getUid());
            if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.e(this.f58926e);
            }
        }
    }

    class g1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f58928b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f58929c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f58930d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f58931e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f58932f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f58933g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ImageView f58934h;

        g1() {
            super();
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f58936b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58937c;

        h(final IntentDateBean val$intentDateBean, final int val$position) {
            this.f58936b = val$intentDateBean;
            this.f58937c = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Context context = v10.getContext();
            if (this.f58936b == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(context, this.f58936b);
            int i10 = this.f58937c + 1;
            com.papa.sim.statistic.t.l(context).u0("banner1-" + i10, AccountUtil_.getInstance_(context).getUid());
        }
    }

    class h0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f58939b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SimpleDraweeView f58940c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f58941d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f58942e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleDraweeView f58943f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public RelativeLayout f58944g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f58945h;

        h0() {
            super();
        }
    }

    class h1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f58947b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f58948c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Button f58949d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f58950e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f58951f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public LinearLayout f58952g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public LinearLayout f58953h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f58954i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f58955j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ProgressBar f58956k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ProgressBar f58957l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public View f58958m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public View f58959n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public View f58960o;

        h1() {
            super();
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f58962b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f58963c;

        i(final IntentDateBean val$intentDateBean, final int val$position) {
            this.f58962b = val$intentDateBean;
            this.f58963c = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Context context = v10.getContext();
            if (this.f58962b == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(context, this.f58962b);
            int i10 = this.f58963c + 1;
            com.papa.sim.statistic.t.l(context).u0("banner3-" + i10, AccountUtil_.getInstance_(context).getUid());
        }
    }

    class i0 extends ClickableSpan {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Context f58965b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f58966c;

        public i0(Context context, String url) {
            this.f58965b = context;
            this.f58966c = url;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            IntentUtil.getInstance().goShareWebActivity(this.f58965b, this.f58966c);
        }
    }

    class i1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f58968b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f58969c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f58970d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f58971e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f58972f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public RelativeLayout f58973g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ImageView f58974h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ImageView f58975i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public VipView f58976j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f58977k;

        i1() {
            super();
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f58979b;

        j(final String val$title) {
            this.f58979b = val$title;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.h(this.f58979b);
            }
        }
    }

    class j0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Object f58981b;

        public j0(Object business) {
            this.f58981b = business;
        }

        /* JADX WARN: Code duplicated, block: B:23:0x00ae  */
        /* JADX WARN: Code duplicated, block: B:25:0x00c9  */
        /* JADX WARN: Code duplicated, block: B:27:0x00d9  */
        /* JADX WARN: Code duplicated, block: B:30:0x00de  */
        /* JADX WARN: Code duplicated, block: B:32:0x00e2  */
        /* JADX WARN: Code duplicated, block: B:34:0x00e5  */
        /* JADX WARN: Code duplicated, block: B:36:0x00e8 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:37:0x00ea  */
        /* JADX WARN: Code duplicated, block: B:39:0x00ed  */
        /* JADX WARN: Code duplicated, block: B:41:0x00f0  */
        /* JADX WARN: Code duplicated, block: B:43:0x00f6 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:44:0x00f8  */
        /* JADX WARN: Code duplicated, block: B:46:0x00fd  */
        /* JADX WARN: Code duplicated, block: B:47:0x0102  */
        /* JADX WARN: Code duplicated, block: B:49:0x0108  */
        /* JADX WARN: Code duplicated, block: B:51:0x0110  */
        /* JADX WARN: Code duplicated, block: B:52:0x0115  */
        /* JADX WARN: Code duplicated, block: B:54:0x011b  */
        /* JADX WARN: Code duplicated, block: B:56:0x0123  */
        /* JADX WARN: Code duplicated, block: B:57:0x0128  */
        /* JADX WARN: Code duplicated, block: B:60:0x0135  */
        /* JADX WARN: Code duplicated, block: B:63:0x0143  */
        /* JADX WARN: Code duplicated, block: B:64:0x014b  */
        /* JADX WARN: Code duplicated, block: B:66:0x0151  */
        /* JADX WARN: Code duplicated, block: B:69:0x015d  */
        /* JADX WARN: Code duplicated, block: B:71:0x0163  */
        /* JADX WARN: Code duplicated, block: B:72:0x0167  */
        /* JADX WARN: Code duplicated, block: B:73:0x016b  */
        /* JADX WARN: Code duplicated, block: B:75:0x016f  */
        /* JADX WARN: Code duplicated, block: B:78:0x0189  */
        /* JADX WARN: Code duplicated, block: B:80:0x018f  */
        /* JADX WARN: Code duplicated, block: B:81:0x0193  */
        /* JADX WARN: Code duplicated, block: B:94:? A[ADDED_TO_REGION, REMOVE, RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:97:? A[ADDED_TO_REGION, REMOVE, RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:98:? A[ADDED_TO_REGION, REMOVE, RETURN, SYNTHETIC] */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i10;
            int pay_game_amount;
            int status;
            Object obj;
            AppBean game_info;
            CollectionBeanSub collectionBeanSub;
            int pay_game_amount2;
            Context context = view.getContext();
            DownloadTask downloadTask = (DownloadTask) this.f58981b;
            if (downloadTask != null) {
                downloadTask.getVer();
                downloadTask.getVer_name();
                downloadTask.getPackageName();
                downloadTask.getTipBeans();
                downloadTask.getSource_down_url();
                List<DownloadUrlBean> tp_down_url = downloadTask.getTp_down_url();
                int other_down_switch = downloadTask.getOther_down_switch();
                int cdn_down_switch = downloadTask.getCdn_down_switch();
                int pay_game_amount3 = downloadTask.getPay_game_amount();
                Object obj2 = this.f58981b;
                if (!(obj2 instanceof CollectionBeanSub)) {
                    if (obj2 instanceof RecomDatabeanBusiness) {
                        AppBean game_info2 = ((RecomDatabeanBusiness) obj2).getSub().get(0).getGame_info();
                        if (game_info2.getPay_tag_info() != null) {
                            pay_game_amount = game_info2.getPay_tag_info().getPay_game_amount();
                            i10 = pay_game_amount;
                        } else {
                            i10 = pay_game_amount3;
                            pay_game_amount = 0;
                        }
                        if (pay_game_amount > 0) {
                            t6.e0.o().p(game_info2.getCrc_sign_id());
                        }
                    }
                    if (downloadTask.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                        IntentDateBean intentDateBean = new IntentDateBean();
                        intentDateBean.setLink_type(4);
                        intentDateBean.setLink_type_val(downloadTask.getUrl());
                        UtilsMy.j3(downloadTask, context);
                        IntentUtil.getInstance().intentActivity(context, intentDateBean);
                        return;
                    }
                    status = downloadTask.getStatus();
                    if (UtilsMy.y0(pay_game_amount3, downloadTask.getCrc_link_type_val()) > 0) {
                        status = 43;
                    }
                    if (status != 0) {
                        if (status != 13) {
                            com.php25.PDownload.d.l(context, downloadTask);
                            return;
                        }
                        if (status != 2) {
                            if (status != 3) {
                                if (status != 5) {
                                    UtilsMy.k4(context, downloadTask);
                                    return;
                                }
                                if (status != 6) {
                                    if (status != 7) {
                                        if (status != 42) {
                                            if (com.join.android.app.common.utils.m.j(context)) {
                                                UtilsMy.O4(context, downloadTask);
                                                return;
                                            } else {
                                                com.join.mgps.Util.a3.b(context).d("无网络连接");
                                                return;
                                            }
                                        }
                                        if (status != 43) {
                                            switch (status) {
                                                case 9:
                                                    if (com.join.android.app.common.utils.m.j(context)) {
                                                        com.join.mgps.Util.a3.b(context).d("无网络连接");
                                                    } else {
                                                        UtilsMy.X2(context, downloadTask);
                                                    }
                                                    break;
                                                case 11:
                                                    UtilsMy.w4(downloadTask, context);
                                                    break;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                            com.php25.PDownload.d.c(downloadTask, context);
                            return;
                        }
                        com.php25.PDownload.d.i(downloadTask);
                        return;
                    }
                    if (UtilsMy.y0(pay_game_amount3, downloadTask.getCrc_link_type_val()) > 0) {
                        UtilsMy.z4(context, downloadTask.getCrc_link_type_val());
                        return;
                    }
                    obj = this.f58981b;
                    if (obj instanceof CollectionBeanSub) {
                        collectionBeanSub = (CollectionBeanSub) obj;
                        UtilsMy.z1(downloadTask, collectionBeanSub);
                        if (UtilsMy.o1(context, downloadTask)) {
                            return;
                        }
                        if (collectionBeanSub.getDown_status() == 5) {
                            UtilsMy.l1(context, downloadTask);
                            return;
                        } else {
                            UtilsMy.U0(context, downloadTask, tp_down_url, other_down_switch, cdn_down_switch);
                            return;
                        }
                    }
                    if (obj instanceof RecomDatabeanBusiness) {
                        game_info = ((RecomDatabeanBusiness) obj).getSub().get(0).getGame_info();
                        UtilsMy.y1(downloadTask, game_info);
                        if (UtilsMy.o1(context, downloadTask)) {
                            return;
                        }
                        if (game_info.getDown_status() == 5) {
                            UtilsMy.l1(context, downloadTask);
                        } else {
                            UtilsMy.U0(context, downloadTask, tp_down_url, other_down_switch, cdn_down_switch);
                        }
                    }
                }
                CollectionBeanSub collectionBeanSub2 = (CollectionBeanSub) obj2;
                downloadTask = collectionBeanSub2.getDownloadTask();
                collectionBeanSub2.getVer();
                if (collectionBeanSub2.getPay_tag_info() != null) {
                    pay_game_amount2 = collectionBeanSub2.getPay_tag_info().getPay_game_amount();
                    i10 = pay_game_amount2;
                } else {
                    i10 = pay_game_amount3;
                    pay_game_amount2 = 0;
                }
                if (pay_game_amount2 > 0) {
                    t6.e0.o().p(collectionBeanSub2.getCrc_sign_id());
                }
                pay_game_amount3 = i10;
                if (downloadTask.getPlugin_num().equals(ConstantIntEnum.H5.value() + "")) {
                    IntentDateBean intentDateBean2 = new IntentDateBean();
                    intentDateBean2.setLink_type(4);
                    intentDateBean2.setLink_type_val(downloadTask.getUrl());
                    UtilsMy.j3(downloadTask, context);
                    IntentUtil.getInstance().intentActivity(context, intentDateBean2);
                    return;
                }
                status = downloadTask.getStatus();
                if (UtilsMy.y0(pay_game_amount3, downloadTask.getCrc_link_type_val()) > 0) {
                    status = 43;
                }
                if (status != 0) {
                    if (status != 13) {
                        com.php25.PDownload.d.l(context, downloadTask);
                        return;
                    }
                    if (status != 2) {
                        if (status != 3) {
                            if (status != 5) {
                                UtilsMy.k4(context, downloadTask);
                                return;
                            }
                            if (status != 6) {
                                if (status != 7) {
                                    if (status != 42) {
                                        if (com.join.android.app.common.utils.m.j(context)) {
                                            com.join.mgps.Util.a3.b(context).d("无网络连接");
                                            return;
                                        } else {
                                            UtilsMy.O4(context, downloadTask);
                                            return;
                                        }
                                    }
                                    if (status != 43) {
                                        switch (status) {
                                            case 9:
                                                if (com.join.android.app.common.utils.m.j(context)) {
                                                    UtilsMy.X2(context, downloadTask);
                                                } else {
                                                    com.join.mgps.Util.a3.b(context).d("无网络连接");
                                                }
                                                break;
                                            case 11:
                                                UtilsMy.w4(downloadTask, context);
                                                break;
                                        }
                                        return;
                                    }
                                }
                            }
                        }
                        com.php25.PDownload.d.c(downloadTask, context);
                        return;
                    }
                    com.php25.PDownload.d.i(downloadTask);
                    return;
                }
                if (UtilsMy.y0(pay_game_amount3, downloadTask.getCrc_link_type_val()) > 0) {
                    UtilsMy.z4(context, downloadTask.getCrc_link_type_val());
                    return;
                }
                obj = this.f58981b;
                if (obj instanceof CollectionBeanSub) {
                    collectionBeanSub = (CollectionBeanSub) obj;
                    UtilsMy.z1(downloadTask, collectionBeanSub);
                    if (UtilsMy.o1(context, downloadTask)) {
                        return;
                    }
                    if (collectionBeanSub.getDown_status() == 5) {
                        UtilsMy.l1(context, downloadTask);
                        return;
                    } else {
                        UtilsMy.U0(context, downloadTask, tp_down_url, other_down_switch, cdn_down_switch);
                        return;
                    }
                }
                if (obj instanceof RecomDatabeanBusiness) {
                    game_info = ((RecomDatabeanBusiness) obj).getSub().get(0).getGame_info();
                    UtilsMy.y1(downloadTask, game_info);
                    if (UtilsMy.o1(context, downloadTask)) {
                        return;
                    }
                    if (game_info.getDown_status() == 5) {
                        UtilsMy.l1(context, downloadTask);
                    } else {
                        UtilsMy.U0(context, downloadTask, tp_down_url, other_down_switch, cdn_down_switch);
                    }
                }
            }
        }
    }

    class j1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f58983b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public RelativeLayout f58984c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f58985d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f58986e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleDraweeView f58987f;

        j1() {
            super();
        }
    }

    class k implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ r1.c f58989b;

        k(final r1.c val$item) {
            this.f58989b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f58989b.f59082i).start();
        }
    }

    class k0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f58991b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f58992c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Button f58993d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ImageView f58994e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ImageView f58995f;

        k0() {
            super();
        }
    }

    class k1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public StaticLayoutView f58997b;

        k1() {
            super();
        }
    }

    class l implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f58999b;

        l(final int val$pid) {
            this.f58999b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.d(this.f58999b);
            }
        }
    }

    public class l0 extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<ForumBean.ForumTopicBean> f59001b;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ForumBean.ForumTopicBean f59003b;

            a(final ForumBean.ForumTopicBean val$bean) {
                this.f59003b = val$bean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                com.join.mgps.Util.r0.D0(v10.getContext(), this.f59003b);
            }
        }

        class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public SimpleDraweeView f59005a;

            b() {
            }
        }

        public l0() {
        }

        private void c(ImageView v10, final ForumBean.ForumTopicBean bean) {
            v10.setOnClickListener(new a(bean));
        }

        public List<ForumBean.ForumTopicBean> a() {
            return this.f59001b;
        }

        public void b(List<ForumBean.ForumTopicBean> datas) {
            this.f59001b = datas;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<ForumBean.ForumTopicBean> list = this.f59001b;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            List<ForumBean.ForumTopicBean> list = this.f59001b;
            if (list == null) {
                return null;
            }
            return list.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            b bVar;
            try {
                if (convertView != null) {
                    bVar = (b) convertView.getTag();
                } else {
                    bVar = new b();
                    convertView = LayoutInflater.from(ForumBaseAdapter.this.f58842e).inflate(R.layout.mg_forum_welcome_item_forum_topic_item, (ViewGroup) null);
                    bVar.f59005a = (SimpleDraweeView) convertView.findViewById(R.id.itemImg);
                    convertView.setTag(bVar);
                }
                ForumBean.ForumTopicBean forumTopicBean = this.f59001b.get(position);
                com.join.android.app.common.utils.l.h(bVar.f59005a, forumTopicBean.getIcon_src());
                c(bVar.f59005a, forumTopicBean);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return convertView;
        }
    }

    class l1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f59007b;

        l1() {
            super();
        }
    }

    class m implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean f59009b;

        m(final ForumBean val$forumBean) {
            this.f59009b = val$forumBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.f(this.f59009b);
            }
        }
    }

    class m0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f59011b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public HListView f59012c;

        m0() {
            super();
        }
    }

    class m1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CornersLinearLayout f59014b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Button f59015c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f59016d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f59017e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f59018f;

        m1() {
            super();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.l();
            }
        }
    }

    class n0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f59021b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59022c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f59023d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f59024e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f59025f;

        n0() {
            super();
        }
    }

    class n1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Button f59027b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59028c;

        n1() {
            super();
        }
    }

    class o implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59030b;

        o(final int val$fid) {
            this.f59030b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.g(this.f59030b);
            }
        }
    }

    class o0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f59032b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59033c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f59034d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f59035e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f59036f;

        o0() {
            super();
        }
    }

    class o1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f59038b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public FrameLayout f59039c;

        o1() {
            super();
        }
    }

    class p implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59041b;

        p(final int val$pid) {
            this.f59041b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v10.findViewById(R.id.forum_post_praise_icon).startAnimation(AnimationUtils.loadAnimation(ForumBaseAdapter.this.f58842e, R.anim.scale_reset));
            if (ForumBaseAdapter.this.f58852o != null) {
                Context context = v10.getContext();
                if (com.join.mgps.Util.r0.Y0(context)) {
                    ForumBaseAdapter.this.f58852o.a(this.f59041b);
                } else {
                    com.join.mgps.Util.a3.b(context).d("用户未登录，请登录");
                    com.join.mgps.Util.r0.L0(context);
                }
            }
        }
    }

    class p0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f59043b;

        p0() {
            super();
        }
    }

    class p1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public FlowLayout f59045b;

        p1() {
            super();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.m();
            }
        }
    }

    class q0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f59048b;

        q0() {
            super();
        }
    }

    class q1 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f59050b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImageView f59051c;

        q1() {
            super();
        }
    }

    class r implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean f59053b;

        r(final ForumBean val$forumBean) {
            this.f59053b = val$forumBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Context context = v10.getContext();
            if (!com.join.mgps.Util.r0.Y0(context)) {
                com.join.mgps.Util.r0.L0(context);
                com.join.mgps.Util.a3.b(context).d(context.getString(R.string.forum_user_not_login));
            } else if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.b(this.f59053b);
            }
        }
    }

    class r0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f59055b;

        r0() {
            super();
        }
    }

    public static class r1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f59057a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f59058b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public ForumBean.ForumWelcomeAdBean f59059a;

            public a() {
            }

            public a(ForumBean.ForumWelcomeAdBean adBean) {
                this.f59059a = adBean;
            }
        }

        public static class a0 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59060a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59061b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59062c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59063d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59064e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f59065f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59066g;

            public a0() {
            }

            public a0(boolean isBest, String subject, int pid, int fid, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
                this.f59060a = isBest;
                this.f59061b = subject;
                this.f59062c = pid;
                this.f59063d = fid;
                this.f59064e = isAsk;
                this.f59065f = askMoney;
                this.f59066g = tagInfos;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<ForumBean.ForumTopicBean> f59067a;

            public b(List<ForumBean.ForumTopicBean> beans) {
                this.f59067a = beans;
            }
        }

        public static class b0 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59068a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59069b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f59070c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f59071d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59072e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private List<ForumBean.ForumPostsBean.TagInfo> f59073f;

            public b0() {
            }

            public b0(int pid, String subject, boolean isBest, boolean isAttachPic, boolean isAttachVideo, List<ForumBean.ForumPostsBean.TagInfo> stickieTag) {
                this.f59068a = pid;
                this.f59069b = subject;
                this.f59070c = isBest;
                this.f59071d = isAttachPic;
                this.f59072e = isAttachVideo;
                this.f59073f = stickieTag;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59074a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59075b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f59076c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59077d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f59078e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f59079f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59080g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f59081h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f59082i;

            public c() {
            }

            public c(String avatar, String nickName, boolean isManager, int grade, String addTime, boolean isSelf, boolean isJoined, int gid, int uid) {
                this.f59074a = avatar;
                this.f59075b = nickName;
                this.f59076c = isManager;
                this.f59077d = grade;
                this.f59078e = addTime;
                this.f59079f = isSelf;
                this.f59080g = isJoined;
                this.f59081h = gid;
                this.f59082i = uid;
            }
        }

        public static class c0 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59083a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59084b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59085c;

            public c0(String thumnailUrl, String videoSrc, String actionBarTitle) {
                this.f59083a = thumnailUrl;
                this.f59084b = videoSrc;
                this.f59085c = actionBarTitle;
            }
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59086a;

            public d() {
            }

            public d(String title) {
                this.f59086a = title;
            }
        }

        public static class d0 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59087a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59088b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59089c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f59090d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f59091e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59092f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59093g;

            public d0(String icon, String name, String desc, boolean isMyGroup, int users, int fid, boolean isMyFollow) {
                this.f59087a = icon;
                this.f59088b = name;
                this.f59089c = desc;
                this.f59090d = isMyGroup;
                this.f59091e = users;
                this.f59092f = fid;
                this.f59093g = isMyFollow;
            }
        }

        public static class e {
        }

        public static class e0 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59094a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<r1> f59095b;

            public e0(int pid, List<r1> items) {
                this.f59094a = pid;
                this.f59095b = items;
            }
        }

        public static class f {
        }

        public static class f0 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59096a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59097b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public List<RecommendLabelTag> f59098c;

            public f0() {
            }

            public f0(int fid, String fname, List<RecommendLabelTag> tags) {
                this.f59096a = fid;
                this.f59097b = fname;
                this.f59098c = tags;
            }

            public f0(List<RecommendLabelTag> tags) {
                this.f59098c = tags;
            }
        }

        public static class g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            ForumBean f59099a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            ForumBean f59100b;

            public g() {
            }

            public g(ForumBean item, ForumBean item1) {
                this.f59099a = item;
                this.f59100b = item1;
            }

            public g(ForumBean item) {
                this.f59099a = item;
            }
        }

        public static class g0 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public RecommendLabelTag f59101a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f59102b;

            public g0(RecommendLabelTag tag, boolean isSelected) {
                this.f59101a = tag;
                this.f59102b = isSelected;
            }
        }

        public static class h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59103a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59104b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59105c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59106d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f59107e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f59108f;

            public h(boolean removeDivider, String title, String desc, String avatar1Src, String avatar2Src, String avatar3Src) {
                this.f59103a = removeDivider;
                this.f59104b = title;
                this.f59105c = desc;
                this.f59106d = avatar1Src;
                this.f59107e = avatar2Src;
                this.f59108f = avatar3Src;
            }
        }

        public static class i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public ForumBean.ForumWelcomeAdBean f59109a;

            public i() {
            }

            public i(ForumBean.ForumWelcomeAdBean bean) {
                this.f59109a = bean;
            }
        }

        public static class j {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f59110a;

            public j() {
            }

            public j(int remain) {
                this.f59110a = remain;
            }
        }

        public static class k {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59111a;

            public k() {
            }

            public k(String title) {
                this.f59111a = title;
            }
        }

        public static class l {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            ForumBean f59112a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f59113b;

            public l() {
            }

            public l(ForumBean item, boolean allowFollow) {
                this.f59112a = item;
                this.f59113b = allowFollow;
            }
        }

        public static class m {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59114a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f59115b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59116c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59117d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f59118e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59119f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f59120g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f59121h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f59122i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f59123j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public String f59124k;

            public m() {
            }

            public m(String avatar, String groupName, String hostName, int likeCount, int commentCount, int pid, int view, boolean isPraise, int uid) {
                this.f59124k = avatar;
                this.f59116c = groupName;
                this.f59117d = hostName;
                this.f59118e = likeCount;
                this.f59119f = commentCount;
                this.f59120g = pid;
                this.f59122i = view;
                this.f59123j = isPraise;
                this.f59121h = uid;
            }

            public m(int type, String avatar, String groupName, String hostName, int likeCount, int commentCount, int pid, int view, boolean isPraise, int uid) {
                this.f59114a = type;
                this.f59124k = avatar;
                this.f59116c = groupName;
                this.f59117d = hostName;
                this.f59118e = likeCount;
                this.f59119f = commentCount;
                this.f59120g = pid;
                this.f59122i = view;
                this.f59123j = isPraise;
                this.f59121h = uid;
            }
        }

        public static class n {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f59125a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<String> f59126b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59127c;

            public n(List<ForumBean.ForumPostsBean.ResBean> resBeans, List<String> imgUrlLargeList, int pid) {
                this.f59125a = resBeans;
                this.f59126b = imgUrlLargeList;
                this.f59127c = pid;
            }
        }

        public static class o implements com.join.android.app.component.optimizetext.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59128a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f59129b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f59130c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59131d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f59132e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59133f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59134g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public String f59135h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59136i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f59137j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public SpannableStringBuilder f59138k;

            public o() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f59138k;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f59132e + "";
            }

            public o(boolean showDivider, boolean startWithBest, boolean startWithFirst, String message, int pid, int fid, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, boolean showTagInMessage, SpannableStringBuilder ssb) {
                this.f59128a = showDivider;
                this.f59129b = startWithBest;
                this.f59130c = startWithFirst;
                this.f59131d = message;
                this.f59132e = pid;
                this.f59133f = fid;
                this.f59134g = isAsk;
                this.f59135h = askMoney;
                this.f59136i = tagInfos;
                this.f59137j = showTagInMessage;
                this.f59138k = ssb;
            }
        }

        public static class p {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59139a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f59140b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f59141c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59142d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f59143e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59144f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59145g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public String f59146h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59147i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public List<RecommendLabelTag> f59148j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public String f59149k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f59150l;

            public p() {
            }

            public p(boolean showDivider, boolean isBest, boolean isFirst, String subject, int pid, int fid, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, List<RecommendLabelTag> tags, String fname, int solve_flg) {
                this.f59139a = showDivider;
                this.f59140b = isBest;
                this.f59141c = isFirst;
                this.f59142d = subject;
                this.f59143e = pid;
                this.f59144f = fid;
                this.f59145g = isAsk;
                this.f59146h = askMoney;
                this.f59147i = tagInfos;
                this.f59148j = tags;
                this.f59149k = fname;
                this.f59150l = solve_flg;
            }
        }

        public static class q {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59151a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59152b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59153c;

            public q(String thumnailUrl, String videoSrc, String actionBarTitle) {
                this.f59151a = thumnailUrl;
                this.f59152b = videoSrc;
                this.f59153c = actionBarTitle;
            }
        }

        public static class r {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59154a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f59155b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            List<String> f59156c;

            public r() {
            }

            public r(String imgUrl, int imgIndex, List<String> imgUrlLarge) {
                this.f59154a = imgUrl;
                this.f59155b = imgIndex;
                this.f59156c = imgUrlLarge;
            }
        }

        public static class s {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public SpannableStringBuilder f59157a;

            public s() {
            }

            public s(SpannableStringBuilder message) {
                this.f59157a = message;
            }
        }

        public static class t {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Spanned f59158a;

            public t(Spanned message) {
                this.f59158a = message;
            }
        }

        public static class u {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59159a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59160b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59161c;

            public u(String imgUrl, String videoUrl, String actionBarTitle) {
                this.f59159a = imgUrl;
                this.f59160b = videoUrl;
                this.f59161c = actionBarTitle;
            }
        }

        public static class v {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59162a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59163b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59164c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59165d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f59166e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59167f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59168g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59169h;

            public v() {
            }

            public v(int postId, int fid, String fname, int viewTotal, int commentTotal, int praiseTotal, boolean isPraise, boolean isShowFooterDivider) {
                this.f59162a = postId;
                this.f59167f = fid;
                this.f59163b = fname;
                this.f59164c = viewTotal;
                this.f59165d = commentTotal;
                this.f59166e = praiseTotal;
                this.f59168g = isPraise;
                this.f59169h = isShowFooterDivider;
            }
        }

        public static class w {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59170a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59171b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public ForumBean.GameInfo f59172c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f59173d;

            public w(boolean showDivider, String pid, ForumBean.GameInfo gameInfo, String resource_url) {
                this.f59170a = showDivider;
                this.f59171b = pid;
                this.f59172c = gameInfo;
                this.f59173d = resource_url;
            }
        }

        public static class x {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59174a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59175b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59176c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public long f59177d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59178e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59179f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f59180g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59181h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f59182i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f59183j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f59184k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f59185l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public int f59186m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public String f59187n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public String f59188o;

            public x() {
            }

            public x(boolean removeDivider, String avatarSrc, String nickName, long timestamps, boolean isTop, int pid, int fid, boolean showDelete, boolean isModerator, boolean isOfficial, int vip_level, int svip_level, String battleTitle, String battleColor, int uid) {
                this.f59174a = removeDivider;
                this.f59175b = avatarSrc;
                this.f59176c = nickName;
                this.f59177d = timestamps;
                this.f59178e = isTop;
                this.f59179f = pid;
                this.f59180g = fid;
                this.f59186m = uid;
                this.f59181h = showDelete;
                this.f59182i = isModerator;
                this.f59183j = isOfficial;
                this.f59184k = vip_level;
                this.f59185l = svip_level;
                this.f59188o = battleTitle;
                this.f59187n = battleColor;
            }
        }

        public static class y {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f59189a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<String> f59190b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59191c;

            public y(List<ForumBean.ForumPostsBean.ResBean> resBeans, List<String> imgUrlLargeList, int pid) {
                this.f59189a = resBeans;
                this.f59190b = imgUrlLargeList;
                this.f59191c = pid;
            }
        }

        public static class z implements com.join.android.app.component.optimizetext.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59192a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f59193b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59194c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59195d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f59196e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f59197f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public String f59198g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59199h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public SpannableStringBuilder f59200i;

            public z() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f59200i;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f59195d + "";
            }

            public z(boolean startWithBest, String message, int pid, int fid, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, boolean showTagInMessage, SpannableStringBuilder ssb) {
                this.f59193b = startWithBest;
                this.f59194c = message;
                this.f59195d = pid;
                this.f59196e = fid;
                this.f59197f = isAsk;
                this.f59198g = askMoney;
                this.f59199h = tagInfos;
                this.f59192a = showTagInMessage;
                this.f59200i = ssb;
            }
        }

        public r1() {
        }

        public <T> T a() {
            return (T) this.f59058b;
        }

        public ViewType b() {
            return this.f59057a;
        }

        public void c(Object obj) {
            this.f59058b = obj;
        }

        public void d(ViewType viewType) {
            this.f59057a = viewType;
        }

        public r1(ViewType viewType, Object obj) {
            this.f59057a = viewType;
            this.f59058b = obj;
        }
    }

    class s implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean f59201b;

        s(final ForumBean val$forumBean) {
            this.f59201b = val$forumBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            Context context = v10.getContext();
            if (!com.join.mgps.Util.r0.Y0(context)) {
                com.join.mgps.Util.r0.L0(context);
                com.join.mgps.Util.a3.b(context).d(context.getString(R.string.forum_user_not_login));
            } else if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.j(this.f59201b);
            }
        }
    }

    class s0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f59203b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SimpleDraweeView f59204c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f59205d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f59206e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f59207f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Button f59208g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public TextView f59209h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f59210i;

        s0() {
            super();
        }
    }

    class s1 {
        s1() {
        }
    }

    class t implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f59213b;

        t(final String val$position) {
            this.f59213b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = Integer.parseInt(this.f59213b);
            if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.c(i10);
            }
        }
    }

    public interface t0 {
        void a(int pid);

        void b(ForumBean forumBean);

        void c(int position);

        void d(int fid);

        void e(String gameId);

        void f(ForumBean forumBean);

        void g(int fid);

        void h(String title);

        void i(RecommendLabelTag tag);

        void j(ForumBean forumBean);

        void k();

        void l();

        void m();

        void n(int gid);
    }

    class u implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59215b;

        u(final int val$gid) {
            this.f59215b = val$gid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.n(this.f59215b);
            }
        }
    }

    public class u0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f59217a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59218b;

        public u0() {
        }
    }

    class v implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59220b;

        v(final int val$pid) {
            this.f59220b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(this.f59220b);
            com.join.mgps.Util.r0.v0(v10.getContext(), forumPostsBean);
        }
    }

    class v0 extends h0 {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public View f59222j;

        v0() {
            super();
        }
    }

    class w implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecommendLabelTag f59224b;

        w(final RecommendLabelTag val$tag) {
            this.f59224b = val$tag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.i(this.f59224b);
            }
        }
    }

    class w0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f59226b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SimpleDraweeView f59227c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f59228d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f59229e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f59230f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f59231g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ImageView f59232h;

        w0() {
            super();
        }
    }

    class x implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59234b;

        x(final int val$fid) {
            this.f59234b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goForumGroupActivity(view.getContext(), this.f59234b);
        }
    }

    class x0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f59236b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59237c;

        x0() {
            super();
        }
    }

    class y implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecommendLabelTag f59239b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f59240c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f59241d;

        y(final RecommendLabelTag val$tag, final int val$fid, final String val$fname) {
            this.f59239b = val$tag;
            this.f59240c = val$fid;
            this.f59241d = val$fname;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f59239b.getTag_id() != -1) {
                IntentUtil.getInstance().goMainLabelActivity(view.getContext(), this.f59239b.getTag_id(), this.f59240c, this.f59241d);
                return;
            }
            IntentUtil intentUtil = IntentUtil.getInstance();
            Context context = view.getContext();
            String str = "";
            if (this.f59240c != 0) {
                str = this.f59240c + "";
            }
            intentUtil.goLabelGroupActivity(context, str);
        }
    }

    class y0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f59243b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59244c;

        y0() {
            super();
        }
    }

    class z implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59246b;

        z(final int val$pid) {
            this.f59246b = val$pid;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            TextView textView = (TextView) v10;
            Spannable spannableNewSpannable = Spannable.Factory.getInstance().newSpannable(textView.getText());
            int action = event.getAction();
            boolean z10 = false;
            if (action == 1 || action == 0) {
                int x10 = (int) event.getX();
                int y10 = (int) event.getY();
                int totalPaddingLeft = x10 - textView.getTotalPaddingLeft();
                int totalPaddingTop = y10 - textView.getTotalPaddingTop();
                int scrollX = totalPaddingLeft + textView.getScrollX();
                int scrollY = totalPaddingTop + textView.getScrollY();
                Layout layout = textView.getLayout();
                int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
                ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannableNewSpannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
                if (clickableSpanArr.length != 0) {
                    if (action == 1) {
                        clickableSpanArr[0].onClick(textView);
                    }
                    z10 = true;
                }
            }
            if (action == 1 && !z10 && ForumBaseAdapter.this.f58852o != null) {
                ForumBaseAdapter.this.f58852o.d(this.f59246b);
            }
            return z10;
        }
    }

    class z0 extends s1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f59248b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SimpleDraweeView f59249c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f59250d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f59251e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f59252f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public LinearLayout f59253g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Button f59254h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f59255i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f59256j;

        z0() {
            super();
        }
    }

    public ForumBaseAdapter(Context context, com.join.android.app.component.video.c helper) {
        this.f58842e = context;
        this.f58844g = helper;
        this.f58839b = new com.join.android.app.component.optimizetext.b(context);
        this.f58840c = c0(this.f58842e);
        m();
        i0();
    }

    private View B(int position, View convertView, ViewGroup parent) {
        v0 v0Var;
        View viewInflate;
        if (convertView != null) {
            v0Var = (v0) convertView.getTag();
            viewInflate = convertView;
        } else {
            v0Var = new v0();
            viewInflate = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_live_entry, (ViewGroup) null);
            v0Var.f59222j = viewInflate.findViewById(R.id.forum_ad_container);
            v0Var.f58939b = (TextView) viewInflate.findViewById(R.id.forum_ad_title);
            v0Var.f58940c = (SimpleDraweeView) viewInflate.findViewById(R.id.layout_forum_ad_1);
            v0Var.f58941d = (SimpleDraweeView) viewInflate.findViewById(R.id.layout_forum_ad_2);
            v0Var.f58942e = (SimpleDraweeView) viewInflate.findViewById(R.id.layout_forum_ad_3);
            v0Var.f58943f = (SimpleDraweeView) viewInflate.findViewById(R.id.layout_forum_ad_4);
            viewInflate.setTag(v0Var);
        }
        v0 v0Var2 = v0Var;
        try {
            r1.i iVar = (r1.i) getItem(position);
            if (iVar != null && iVar.f59109a != null) {
                SimpleDraweeView[] simpleDraweeViewArr = {v0Var2.f58940c, v0Var2.f58941d, v0Var2.f58942e, v0Var2.f58943f};
                for (int i10 = 0; i10 < 4; i10++) {
                    simpleDraweeViewArr[i10].setVisibility(8);
                }
                for (int i11 = 0; iVar.f59109a.getAdBeans() != null && i11 < iVar.f59109a.getAdBeans().size(); i11++) {
                    BannerBean bannerBean = iVar.f59109a.getAdBeans().get(i11);
                    SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i11];
                    simpleDraweeView.setVisibility(0);
                    com.join.android.app.common.utils.l.h(simpleDraweeView, bannerBean.getPic_remote());
                    float f10 = this.f58842e.getResources().getDisplayMetrics().density;
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) simpleDraweeView.getLayoutParams();
                    int i12 = ((int) (this.f58842e.getResources().getDisplayMetrics().widthPixels - (f10 * 18.0f))) / 2;
                    layoutParams.width = i12;
                    layoutParams.height = (int) ((i12 * 1.0f) / 2.07f);
                    simpleDraweeView.setLayoutParams(layoutParams);
                    IntentDateBean intentDateBeanJ0 = com.join.mgps.Util.r0.j0(bannerBean);
                    ExtBean extBean = new ExtBean();
                    extBean.setFrom("forum");
                    extBean.setPosition("banner2" + (position + 1));
                    intentDateBeanJ0.setExtBean(extBean);
                    simpleDraweeView.setOnClickListener(new b(intentDateBeanJ0, i11));
                    if (i11 == 1 || i11 == 3) {
                        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(simpleDraweeView.getLayoutParams().width, simpleDraweeView.getLayoutParams().height);
                        layoutParams2.setMargins((int) (simpleDraweeView.getResources().getDisplayMetrics().density * 6.0f), 0, 0, 0);
                        simpleDraweeView.setLayoutParams(layoutParams2);
                    }
                    try {
                        if (iVar.f59109a.getAdBeans().size() == 1) {
                            v0Var2.f59222j.setPadding(0, this.f58842e.getResources().getDimensionPixelOffset(R.dimen.mg_forum_item_divider), 0, 0);
                            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) simpleDraweeView.getLayoutParams();
                            layoutParams3.width = -1;
                            layoutParams3.height = A();
                            layoutParams3.setMargins(0, 0, 0, 0);
                            simpleDraweeView.setLayoutParams(layoutParams3);
                            simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                if (iVar.f59109a.getAdBeans() == null || iVar.f59109a.getAdBeans().size() < 1) {
                    viewInflate.setVisibility(8);
                } else if (iVar.f59109a.getAdBeans().size() < 3) {
                    ViewGroup viewGroup = (ViewGroup) simpleDraweeViewArr[2].getParent();
                    viewGroup.setVisibility(8);
                    ((LinearLayout.LayoutParams) viewGroup.getLayoutParams()).topMargin = 0;
                }
                return viewInflate;
            }
            return viewInflate;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private View C(int position, View convertView, ViewGroup parent) {
        return convertView;
    }

    private View D(int position, View convertView, ViewGroup parent) {
        h0 h0Var;
        if (convertView != null) {
            h0Var = (h0) convertView.getTag();
        } else {
            h0Var = new h0();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_ad_block, (ViewGroup) null);
            h0Var.f58939b = (TextView) convertView.findViewById(R.id.forum_ad_title);
            h0Var.f58940c = (SimpleDraweeView) convertView.findViewById(R.id.layout_forum_ad_1);
            h0Var.f58941d = (SimpleDraweeView) convertView.findViewById(R.id.layout_forum_ad_2);
            h0Var.f58942e = (SimpleDraweeView) convertView.findViewById(R.id.layout_forum_ad_3);
            h0Var.f58943f = (SimpleDraweeView) convertView.findViewById(R.id.layout_forum_ad_4);
            convertView.setTag(h0Var);
        }
        try {
            r1.a aVar = (r1.a) getItem(position);
            if (aVar != null && aVar.f59059a != null) {
                SimpleDraweeView[] simpleDraweeViewArr = {h0Var.f58940c, h0Var.f58941d, h0Var.f58942e, h0Var.f58943f};
                for (int i10 = 0; aVar.f59059a.getAdBeans() != null && i10 < aVar.f59059a.getAdBeans().size(); i10++) {
                    BannerBean bannerBean = aVar.f59059a.getAdBeans().get(i10);
                    SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i10];
                    J0(simpleDraweeView, bannerBean, i10);
                    if (i10 == 1 || i10 == 3) {
                        try {
                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(simpleDraweeView.getLayoutParams().width, simpleDraweeView.getLayoutParams().height);
                            layoutParams.setMargins((int) (simpleDraweeView.getResources().getDisplayMetrics().density * 6.0f), 0, 0, 0);
                            simpleDraweeView.setLayoutParams(layoutParams);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }
                if (aVar.f59059a.getAdBeans() == null || aVar.f59059a.getAdBeans().size() < 2) {
                    convertView.setVisibility(8);
                } else if (aVar.f59059a.getAdBeans().size() < 4) {
                    ViewGroup viewGroup = (ViewGroup) simpleDraweeViewArr[2].getParent();
                    viewGroup.setVisibility(8);
                    ((LinearLayout.LayoutParams) viewGroup.getLayoutParams()).topMargin = 0;
                }
                return convertView;
            }
            return convertView;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void D0(View view, final String title) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new j(title));
    }

    private View E(int position, View convertView, ViewGroup parent) {
        x0 x0Var;
        if (convertView != null) {
            x0Var = (x0) convertView.getTag();
        } else {
            x0Var = new x0();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_my_forum_footer, (ViewGroup) null);
            x0Var.f59237c = (TextView) convertView.findViewById(R.id.my_forum_count_tv);
            convertView.setTag(x0Var);
        }
        try {
            r1.j jVar = (r1.j) getItem(position);
            x0Var.f59237c.setText(this.f58842e.getResources().getString(R.string.my_forum_count, jVar.f59110a + ""));
            V0(convertView);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View F(int position, View convertView, ViewGroup parent) {
        y0 y0Var;
        try {
            if (convertView != null) {
                y0Var = (y0) convertView.getTag();
            } else {
                y0Var = new y0();
                convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_my_forum_header, (ViewGroup) null);
                y0Var.f59243b = (LinearLayout) convertView.findViewById(R.id.forumMore);
                y0Var.f59244c = (TextView) convertView.findViewById(R.id.sectionTitle);
                convertView.setTag(y0Var);
            }
            r1.k kVar = (r1.k) getItem(position);
            if (kVar != null && com.join.mgps.Util.t2.i(kVar.f59111a)) {
                y0Var.f59244c.setText(kVar.f59111a);
            } else if (com.join.mgps.Util.r0.Y0(this.f58842e)) {
                y0Var.f59244c.setText("我的专区");
            } else {
                y0Var.f59244c.setText("推荐关注");
            }
            if (y0Var.f59243b != null) {
                P0(convertView);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View G(int position, View convertView, ViewGroup parent) {
        z0 z0Var;
        if (convertView != null) {
            z0Var = (z0) convertView.getTag();
        } else {
            z0Var = new z0();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_hot_forum_item, (ViewGroup) null);
            View viewFindViewById = convertView.findViewById(R.id.mg_forum_item);
            z0Var.f59248b = viewFindViewById;
            z0Var.f59249c = (SimpleDraweeView) viewFindViewById.findViewById(R.id.forum_icon);
            z0Var.f59250d = (TextView) z0Var.f59248b.findViewById(R.id.forum_name);
            z0Var.f59256j = (TextView) z0Var.f59248b.findViewById(R.id.forum_desc);
            z0Var.f59254h = (Button) z0Var.f59248b.findViewById(R.id.forum_follow);
            z0Var.f59253g = (LinearLayout) z0Var.f59248b.findViewById(R.id.forum_follow_layout);
            z0Var.f59255i = (TextView) z0Var.f59248b.findViewById(R.id.forum_today_posts_tv);
            convertView.setTag(z0Var);
        }
        try {
            r1.l lVar = (r1.l) getItem(position);
            if (lVar == null) {
                return convertView;
            }
            ForumBean forumBean = lVar.f59112a;
            com.join.android.app.common.utils.l.j(z0Var.f59249c, forumBean.getIcon_src(), com.join.android.app.common.utils.l.C(this.f58842e));
            com.join.mgps.Util.r0.D1(z0Var.f59250d, forumBean.getName() + "", "");
            com.join.mgps.Util.r0.D1(z0Var.f59256j, forumBean.getDescription(), "");
            O0(z0Var.f59248b, forumBean);
            Resources resources = z0Var.f59255i.getResources();
            com.join.mgps.Util.r0.D1(z0Var.f59255i, resources.getString(R.string.forum_info_today_posts, forumBean.getToday_posts() + ""), "今日 0");
            if (!lVar.f59113b || forumBean.is_follow()) {
                z0Var.f59253g.setVisibility(8);
            } else {
                z0Var.f59253g.setVisibility(0);
            }
            M0(z0Var.f59254h, lVar.f59112a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View H(int position, View convertView, ViewGroup parent) {
        a1 a1Var;
        if (convertView != null) {
            a1Var = (a1) convertView.getTag();
        } else {
            a1Var = new a1();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_my_forum_more_footer, (ViewGroup) null);
            a1Var.f58870b = convertView.findViewById(R.id.forums_hot_item_forum_all);
            convertView.setTag(a1Var);
        }
        try {
            if (a1Var.f58870b != null) {
                P0(convertView);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View I(int position, View convertView, ViewGroup parent) {
        c1 c1Var = null;
        if (convertView == null) {
            c1 c1Var2 = new c1();
            View viewInflate = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_f_item_post_footer, (ViewGroup) null);
            c1Var2.f58890j = (SimpleDraweeView) viewInflate.findViewById(R.id.avatar);
            c1Var2.f58887g = viewInflate.findViewById(R.id.indicator);
            c1Var2.f58882b = (TextView) viewInflate.findViewById(R.id.groupName);
            c1Var2.f58883c = (TextView) viewInflate.findViewById(R.id.hostName);
            c1Var2.f58884d = (TextView) viewInflate.findViewById(R.id.likeCount);
            c1Var2.f58885e = (TextView) viewInflate.findViewById(R.id.commentCount);
            c1Var2.f58888h = (TextView) viewInflate.findViewById(R.id.forum_post_view);
            c1Var2.f58889i = (ImageView) viewInflate.findViewById(R.id.forum_post_praise_icon);
            c1Var2.f58886f = viewInflate.findViewById(R.id.divider);
            viewInflate.setTag(c1Var2);
            c1Var = c1Var2;
            convertView = viewInflate;
        } else if (convertView.getTag() instanceof c1) {
            c1Var = (c1) convertView.getTag();
        }
        try {
            r1.m mVar = (r1.m) getItem(position);
            if (mVar != null && c1Var != null) {
                if (mVar.f59114a == 0) {
                    if (c1Var.f58887g.getVisibility() != 0) {
                        c1Var.f58887g.setVisibility(0);
                    }
                } else if (c1Var.f58887g.getVisibility() != 8) {
                    c1Var.f58887g.setVisibility(8);
                }
                c1Var.f58882b.setText(mVar.f59116c);
                c1Var.f58883c.setText(mVar.f59117d);
                c1Var.f58884d.setText(com.join.mgps.Util.r0.R(mVar.f59118e) + "");
                c1Var.f58885e.setText(com.join.mgps.Util.r0.R(mVar.f59119f) + "");
                c1Var.f58888h.setText(com.join.mgps.Util.r0.R(mVar.f59122i) + "");
                com.join.android.app.common.utils.l.y(c1Var.f58890j, mVar.f59124k);
                c1Var.f58890j.setOnClickListener(new c0(mVar));
                R0(convertView, mVar.f59120g);
                q0(c1Var, mVar.f59123j, mVar.f59118e, mVar.f59120g);
                return convertView;
            }
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private View J(int position, View convertView, ViewGroup parent) {
        View view;
        d1 d1Var;
        try {
            if (convertView != null) {
                d1Var = convertView.getTag() instanceof d1 ? (d1) convertView.getTag() : null;
                view = convertView;
            } else {
                d1 d1Var2 = new d1();
                View viewInflate = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_f_item_post_imgs, (ViewGroup) null);
                try {
                    d1Var2.f58897b = viewInflate.findViewById(R.id.spaceT);
                    d1Var2.f58898c = viewInflate.findViewById(R.id.imgsMain);
                    d1Var2.f58899d = (SimpleDraweeView) viewInflate.findViewById(R.id.img_m_1);
                    d1Var2.f58900e = (SimpleDraweeView) viewInflate.findViewById(R.id.img_m_2);
                    d1Var2.f58901f = (SimpleDraweeView) viewInflate.findViewById(R.id.img_m_3);
                    d1Var2.f58902g = (TextView) viewInflate.findViewById(R.id.images_count);
                    viewInflate.setTag(d1Var2);
                    d1Var = d1Var2;
                    view = viewInflate;
                } catch (Exception e10) {
                    e = e10;
                    view = viewInflate;
                    e.printStackTrace();
                    return view;
                }
            }
            try {
                r1.n nVar = (r1.n) getItem(position);
                if (nVar != null && d1Var != null) {
                    List<ForumBean.ForumPostsBean.ResBean> list = nVar.f59125a;
                    if (list != null && list.size() != 0) {
                        view.setVisibility(0);
                        List<String> list2 = nVar.f59126b;
                        TextView textView = d1Var.f58902g;
                        int size = list2 != null ? list2.size() : 0;
                        if (size > 3) {
                            textView.setVisibility(0);
                            textView.setText(list2.size() + "");
                        } else {
                            textView.setVisibility(8);
                        }
                        if (this.f58849l == null) {
                            this.f58849l = g0();
                        }
                        int i10 = 1;
                        SimpleDraweeView[] simpleDraweeViewArr = {d1Var.f58899d, d1Var.f58900e, d1Var.f58901f};
                        int i11 = 0;
                        int i12 = 0;
                        while (i11 < 3) {
                            SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i11];
                            if (i11 >= nVar.f59125a.size()) {
                                simpleDraweeView.setVisibility(8);
                            } else {
                                simpleDraweeView.setVisibility(0);
                                ForumBean.ForumPostsBean.ResBean resBean = nVar.f59125a.get(i11);
                                if (resBean.getType().equals("pic")) {
                                    String thumb = resBean.getThumb();
                                    Integer[] numArrI0 = com.join.mgps.Util.r0.i0(thumb);
                                    if (i11 != 0 || size != i10 || numArrI0 == null || numArrI0[0].intValue() == 0 || numArrI0[i10].intValue() == 0) {
                                        F0(simpleDraweeView, i11, thumb, i11 - i12, list2);
                                    } else {
                                        E0(simpleDraweeView, i11, thumb, i11 - i12, list2);
                                    }
                                } else if (resBean.getType().equals("video")) {
                                    i12++;
                                    g1(simpleDraweeView, i11, resBean.getThumb(), resBean.getRaw());
                                }
                            }
                            i11++;
                            i10 = 1;
                        }
                        R0(view, nVar.f59127c);
                        return view;
                    }
                    view.setVisibility(8);
                }
                return view;
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
            }
        } catch (Exception e12) {
            e = e12;
            view = convertView;
        }
    }

    private void J0(final SimpleDraweeView imageView, BannerBean bean, final int position) {
        if (bean == null || imageView == null) {
            return;
        }
        imageView.setVisibility(0);
        com.join.android.app.common.utils.l.j(imageView, bean.getPic_remote(), com.join.android.app.common.utils.l.A(imageView.getContext()));
        if (this.f58851n == null) {
            float f10 = this.f58842e.getResources().getDisplayMetrics().density;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
            int i10 = ((int) (this.f58842e.getResources().getDisplayMetrics().widthPixels - (f10 * 18.0f))) / 2;
            layoutParams.width = i10;
            layoutParams.height = (int) ((i10 * 1.0f) / 2.07f);
            this.f58851n = layoutParams;
        }
        imageView.setLayoutParams(this.f58851n);
        IntentDateBean intentDateBeanJ0 = com.join.mgps.Util.r0.j0(bean);
        ExtBean extBean = new ExtBean();
        extBean.setFrom("forum");
        extBean.setPosition("banner2" + (position + 1));
        intentDateBeanJ0.setExtBean(extBean);
        imageView.setOnClickListener(new i(intentDateBeanJ0, position));
    }

    private View K(int position, View convertView, ViewGroup parent) {
        e1 e1Var = null;
        try {
            if (convertView == null) {
                e1 e1Var2 = new e1();
                convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_f_item_post_message, (ViewGroup) null);
                e1Var2.f58908b = (StaticLayoutView) convertView.findViewById(R.id.msg);
                e1Var2.f58909c = convertView.findViewById(R.id.divider);
                e1Var2.f58910d = convertView.findViewById(R.id.spaceT);
                convertView.setTag(e1Var2);
                e1Var = e1Var2;
            } else if (convertView.getTag() instanceof e1) {
                e1Var = (e1) convertView.getTag();
            }
            r1.o oVar = (r1.o) getItem(position);
            if (oVar != null && e1Var != null) {
                if (this.f58839b.d(oVar.f59132e + "") == null) {
                    this.f58839b.e(oVar);
                }
                e1Var.f58908b.setLayout(this.f58839b.d(oVar.f59132e + ""));
                com.join.mgps.Util.r0.X0(e1Var.f58908b);
                if (oVar.f59128a) {
                    e1Var.f58909c.setVisibility(0);
                    e1Var.f58910d.setVisibility(0);
                } else {
                    e1Var.f58909c.setVisibility(8);
                    e1Var.f58910d.setVisibility(8);
                }
                R0(convertView, oVar.f59132e);
                return convertView;
            }
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private View L(final int position, View convertView, ViewGroup parent) {
        f1 f1Var = null;
        try {
            if (convertView == null) {
                f1 f1Var2 = new f1();
                convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_f_item_post_video, (ViewGroup) null);
                f1Var2.f58917b = (FrameLayout) convertView.findViewById(R.id.videoContner);
                f1Var2.f58918c = (SimpleDraweeView) convertView.findViewById(R.id.bannerView);
                convertView.setTag(f1Var2);
                f1Var = f1Var2;
            } else if (convertView.getTag() instanceof f1) {
                f1Var = (f1) convertView.getTag();
            }
            r1.q qVar = (r1.q) getItem(position);
            if (qVar != null && f1Var != null) {
                String str = qVar.f59152b;
                String str2 = qVar.f59151a;
                if (f1Var.f58917b != null) {
                    f1Var.f58917b.setLayoutParams(new RelativeLayout.LayoutParams(-1, this.f58858u));
                    com.join.android.app.common.utils.l.d(f1Var.f58918c, R.drawable.video_bg, str2);
                    int i10 = position + 1;
                    if (!this.f58844g.A().startsWith("ForumGroupPostsFragment") && !this.f58844g.A().startsWith("ForumGroupMemberActivity") && !this.f58844g.A().startsWith("LabelFragment") && !this.f58844g.A().startsWith("ForumPostsFragment")) {
                        position = i10;
                    }
                    f1Var.f58918c.setTag(Integer.valueOf(position));
                    if (com.join.mgps.Util.t2.i(str)) {
                        this.f58844g.d(position, new com.join.android.app.component.video.c.l(position, str, str2), new boolean[0]);
                    }
                    f1Var.f58918c.setOnClickListener(new e0(position));
                }
                return convertView;
            }
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private View P(int position, View convertView, ViewGroup parent) {
        g1 g1Var;
        if (convertView != null) {
            g1Var = (g1) convertView.getTag();
        } else {
            g1Var = new g1();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_post_footer, (ViewGroup) null);
            g1Var.f58928b = (TextView) convertView.findViewById(R.id.forum_name);
            g1Var.f58929c = (TextView) convertView.findViewById(R.id.forum_post_view);
            g1Var.f58930d = (TextView) convertView.findViewById(R.id.forum_post_commit);
            g1Var.f58931e = (TextView) convertView.findViewById(R.id.forum_post_praise);
            g1Var.f58934h = (ImageView) convertView.findViewById(R.id.forum_post_praise_icon);
            g1Var.f58932f = convertView.findViewById(R.id.post_footer_divider);
            g1Var.f58933g = convertView.findViewById(R.id.forum_name_parent);
            convertView.setTag(g1Var);
        }
        try {
            r1.v vVar = (r1.v) getItem(position);
            if (vVar == null) {
                return convertView;
            }
            if (vVar.f59169h) {
                g1Var.f58932f.setVisibility(0);
            } else {
                g1Var.f58932f.setVisibility(8);
            }
            g1Var.f58928b.setText(vVar.f59163b);
            if (com.join.mgps.Util.t2.h(vVar.f59163b)) {
                g1Var.f58933g.setVisibility(8);
            } else {
                g1Var.f58933g.setVisibility(0);
            }
            com.join.mgps.Util.r0.D1(g1Var.f58929c, vVar.f59164c + "", "0");
            com.join.mgps.Util.r0.D1(g1Var.f58930d, vVar.f59165d + "", "0");
            r0(g1Var, vVar.f59168g, vVar.f59166e);
            int i10 = vVar.f59162a;
            ((View) g1Var.f58931e.getParent()).setOnClickListener(new b0(i10));
            R0(convertView, i10);
            int i11 = vVar.f59167f;
            ForumBean forumBean = new ForumBean();
            forumBean.setFid(i11);
            O0((View) g1Var.f58928b.getParent(), forumBean);
            T0((View) g1Var.f58931e.getParent(), i10, vVar.f59168g, vVar.f59166e);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View Q(int position, View convertView, ViewGroup parent) {
        h1 h1Var = null;
        try {
            if (convertView == null) {
                h1 h1Var2 = new h1();
                convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_post_activity_item_post_game_res_link, (ViewGroup) null);
                h1Var2.f58947b = (SimpleDraweeView) convertView.findViewById(R.id.mgListviewItemIcon);
                h1Var2.f58948c = (TextView) convertView.findViewById(R.id.mgListviewItemAppname);
                h1Var2.f58949d = (Button) convertView.findViewById(R.id.mgListviewItemInstall);
                h1Var2.f58950e = (TextView) convertView.findViewById(R.id.mgListviewItemSize);
                h1Var2.f58951f = (TextView) convertView.findViewById(R.id.mgListviewItemDescribe);
                h1Var2.f58952g = (LinearLayout) convertView.findViewById(R.id.linearLayout2);
                h1Var2.f58953h = (LinearLayout) convertView.findViewById(R.id.tipsLayout);
                h1Var2.f58954i = (TextView) convertView.findViewById(R.id.appSize);
                h1Var2.f58955j = (TextView) convertView.findViewById(R.id.loding_info);
                h1Var2.f58956k = (ProgressBar) convertView.findViewById(R.id.progressBar);
                h1Var2.f58957l = (ProgressBar) convertView.findViewById(R.id.progressBarZip);
                h1Var2.f58958m = convertView.findViewById(R.id.line);
                h1Var2.f58959n = convertView.findViewById(R.id.relateLayoutApp);
                h1Var2.f58960o = convertView.findViewById(R.id.divider);
                convertView.setTag(h1Var2);
                h1Var = h1Var2;
            } else if (convertView.getTag() instanceof h1) {
                h1Var = (h1) convertView.getTag();
            }
            final r1.w wVar = (r1.w) getItem(position);
            if (wVar != null && h1Var != null) {
                ForumBean.GameInfo gameInfo = wVar.f59172c;
                gameInfo.getGame_id();
                if (wVar.f59170a) {
                    if (h1Var.f58960o.getVisibility() != 0) {
                        h1Var.f58960o.setVisibility(0);
                    }
                } else if (h1Var.f58960o.getVisibility() != 8) {
                    h1Var.f58960o.setVisibility(8);
                }
                h1Var.f58949d.setBackgroundResource(R.drawable.detial_fourm_butn_selector1);
                int dimensionPixelSize = this.f58842e.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_gameinfo_download_width);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) h1Var.f58949d.getLayoutParams();
                layoutParams.width = dimensionPixelSize;
                h1Var.f58949d.setLayoutParams(layoutParams);
                h1Var.f58949d.setText("打开");
                h1Var.f58948c.setText(gameInfo.getGame_name());
                com.join.android.app.common.utils.l.j(h1Var.f58947b, gameInfo.getGame_ico_remote(), com.join.android.app.common.utils.l.B(this.f58842e));
                View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.adapter.f0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f62073b.n0(wVar, view);
                    }
                };
                h1Var.f58949d.setOnClickListener(onClickListener);
                h1Var.f58959n.setOnClickListener(onClickListener);
                return convertView;
            }
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void Q0(View v10, final int fid) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new x(fid));
    }

    private View R(int position, View convertView, ViewGroup parent) {
        View view;
        h1 h1Var;
        try {
            if (convertView != null) {
                h1Var = convertView.getTag() instanceof h1 ? (h1) convertView.getTag() : null;
                view = convertView;
            } else {
                h1 h1Var2 = new h1();
                View viewInflate = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_post_activity_item_post_game, (ViewGroup) null);
                try {
                    h1Var2.f58947b = (SimpleDraweeView) viewInflate.findViewById(R.id.mgListviewItemIcon);
                    h1Var2.f58948c = (TextView) viewInflate.findViewById(R.id.mgListviewItemAppname);
                    h1Var2.f58949d = (Button) viewInflate.findViewById(R.id.mgListviewItemInstall);
                    h1Var2.f58950e = (TextView) viewInflate.findViewById(R.id.mgListviewItemSize);
                    h1Var2.f58951f = (TextView) viewInflate.findViewById(R.id.mgListviewItemDescribe);
                    h1Var2.f58952g = (LinearLayout) viewInflate.findViewById(R.id.linearLayout2);
                    h1Var2.f58953h = (LinearLayout) viewInflate.findViewById(R.id.tipsLayout);
                    h1Var2.f58954i = (TextView) viewInflate.findViewById(R.id.appSize);
                    h1Var2.f58955j = (TextView) viewInflate.findViewById(R.id.loding_info);
                    h1Var2.f58956k = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
                    h1Var2.f58957l = (ProgressBar) viewInflate.findViewById(R.id.progressBarZip);
                    h1Var2.f58958m = viewInflate.findViewById(R.id.line);
                    h1Var2.f58959n = viewInflate.findViewById(R.id.relateLayoutApp);
                    h1Var2.f58960o = viewInflate.findViewById(R.id.divider);
                    viewInflate.setTag(h1Var2);
                    h1Var = h1Var2;
                    view = viewInflate;
                } catch (Exception e10) {
                    e = e10;
                    view = viewInflate;
                    e.printStackTrace();
                    return view;
                }
            }
            try {
                r1.w wVar = (r1.w) getItem(position);
                if (wVar != null && h1Var != null) {
                    ForumBean.GameInfo gameInfo = wVar.f59172c;
                    String str = wVar.f59171b;
                    String game_id = gameInfo.getGame_id();
                    if (wVar.f59170a) {
                        if (h1Var.f58960o.getVisibility() != 0) {
                            h1Var.f58960o.setVisibility(0);
                        }
                    } else if (h1Var.f58960o.getVisibility() != 8) {
                        h1Var.f58960o.setVisibility(8);
                    }
                    h1Var.f58949d.setBackgroundResource(R.drawable.detial_fourm_butn_selector1);
                    int dimensionPixelSize = this.f58842e.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_gameinfo_download_width);
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) h1Var.f58949d.getLayoutParams();
                    layoutParams.width = dimensionPixelSize;
                    h1Var.f58949d.setLayoutParams(layoutParams);
                    h1Var.f58948c.setText(gameInfo.getGame_name());
                    h1Var.f58951f.setText(gameInfo.getGame_desc());
                    String game_size = gameInfo.getGame_size();
                    com.join.android.app.common.utils.l.j(h1Var.f58947b, gameInfo.getGame_ico_remote(), com.join.android.app.common.utils.l.B(this.f58842e));
                    List<ForumBean.GameInfo.GameTagInfo> game_tag_info = gameInfo.getGame_tag_info();
                    h1(h1Var, 0);
                    DownloadTask downloadTask = gameInfo.getDownloadTask();
                    if (downloadTask != null) {
                        if (gameInfo.getPay_tag_info() != null) {
                            downloadTask.setPay_game_amount(gameInfo.getPay_tag_info().getPay_game_amount());
                        }
                        B0(h1Var, downloadTask);
                    } else {
                        if (UtilsMy.x0(gameInfo.getPay_tag_info(), gameInfo.getGame_id()) > 0) {
                            A0(h1Var.f58949d, gameInfo.getPay_tag_info().getPay_game_amount());
                        } else {
                            z0(h1Var.f58949d, gameInfo.getDown_status());
                        }
                        h1Var.f58949d.setOnClickListener(new g0(gameInfo, downloadTask, str, game_id));
                    }
                    if ((ConstantIntEnum.H5.value() + "").equals(gameInfo.getPlugin_num())) {
                        h1Var.f58953h.setVisibility(8);
                        h1Var.f58949d.setBackgroundResource(R.drawable.recom_blue_butn);
                        h1Var.f58949d.setText("开始");
                        h1Var.f58949d.setTextColor(this.f58842e.getResources().getColor(R.color.app_blue_color));
                    } else {
                        h1Var.f58953h.setVisibility(0);
                        com.join.mgps.Util.r0.c(game_tag_info, h1Var.f58953h, this.f58842e);
                        UtilsMy.K(gameInfo.getScore(), gameInfo.getDown_count(), game_size, gameInfo.getSp_tag_info(), null, h1Var.f58953h, this.f58842e);
                        UtilsMy.A3(gameInfo.getSp_tag_info(), view, gameInfo.getDownloadTask());
                    }
                    h1Var.f58959n.setOnClickListener(new a(str, game_id, gameInfo));
                    return view;
                }
                return view;
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
            }
        } catch (Exception e12) {
            e = e12;
            view = convertView;
        }
    }

    private View S(int position, View convertView, ViewGroup parent) {
        i1 i1Var;
        if (convertView != null) {
            i1Var = (i1) convertView.getTag();
        } else {
            i1Var = new i1();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_post_header, (ViewGroup) null);
            i1Var.f58972f = convertView.findViewById(R.id.forum_post_divider);
            i1Var.f58968b = (SimpleDraweeView) convertView.findViewById(R.id.forum_post_avatar_src);
            i1Var.f58969c = (TextView) convertView.findViewById(R.id.forum_post_nickname);
            i1Var.f58970d = (TextView) convertView.findViewById(R.id.forum_post_add_time);
            i1Var.f58971e = (TextView) convertView.findViewById(R.id.forum_post_stickie);
            i1Var.f58973g = (RelativeLayout) convertView.findViewById(R.id.forumExtFunc);
            i1Var.f58974h = (ImageView) convertView.findViewById(R.id.forum_post_moderator);
            i1Var.f58975i = (ImageView) convertView.findViewById(R.id.officialIcon);
            i1Var.f58976j = (VipView) convertView.findViewById(R.id.vipFlag);
            i1Var.f58977k = (TextView) convertView.findViewById(R.id.copperTitleTv);
            convertView.setTag(i1Var);
        }
        try {
            r1.x xVar = (r1.x) getItem(position);
            if (xVar == null) {
                return convertView;
            }
            try {
                UtilsMy.R3(this.f58842e, i1Var.f58969c, xVar.f59184k, xVar.f59185l, R.color.forum_nickname_color);
                i1Var.f58976j.setVipData(xVar.f59184k, xVar.f59185l);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (xVar.f59174a) {
                i1Var.f58972f.setVisibility(8);
            } else {
                i1Var.f58972f.setVisibility(0);
            }
            i1Var.f58969c.setText(xVar.f59176c);
            i1Var.f58970d.setText(com.join.android.app.common.utils.i.a(xVar.f59177d * 1000));
            if (xVar.f59178e) {
                i1Var.f58971e.setVisibility(0);
            } else {
                i1Var.f58971e.setVisibility(8);
            }
            if (xVar.f59182i) {
                i1Var.f58974h.setVisibility(0);
            } else {
                i1Var.f58974h.setVisibility(8);
            }
            if (xVar.f59183j) {
                i1Var.f58975i.setVisibility(0);
            } else {
                i1Var.f58975i.setVisibility(8);
            }
            com.join.android.app.common.utils.l.y(i1Var.f58968b, xVar.f59175b);
            i1Var.f58968b.setOnClickListener(new a0(xVar));
            int i10 = xVar.f59179f;
            R0(convertView, i10);
            K0(i1Var.f58973g, i10);
            com.join.mgps.Util.r0.S0(i1Var.f58968b, i1Var.f58969c, i1Var.f58970d);
            com.join.mgps.Util.r0.U0(i1Var.f58976j);
            String str = xVar.f59188o;
            String str2 = xVar.f59187n;
            if (i1Var.f58977k != null) {
                if (TextUtils.isEmpty(str)) {
                    i1Var.f58977k.setVisibility(8);
                } else {
                    i1Var.f58977k.setVisibility(0);
                    i1Var.f58977k.setText(str);
                    Drawable drawable = this.f58842e.getResources().getDrawable(R.drawable.forum_post_host);
                    if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                        str2 = "#2fccdf";
                    }
                    drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                    i1Var.f58977k.setBackgroundDrawable(drawable);
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return convertView;
    }

    private int T(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f58847j == 0) {
            Resources resources = context.getResources();
            this.f58847j = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.5f);
        }
        return this.f58847j;
    }

    private View U(int position, View convertView, ViewGroup parent) {
        j1 j1Var;
        if (convertView != null) {
            j1Var = (j1) convertView.getTag();
        } else {
            j1Var = new j1();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_post_thumbnail, (ViewGroup) null);
            j1Var.f58984c = (RelativeLayout) convertView.findViewById(R.id.forum_post_media_container);
            j1Var.f58983b = (TextView) convertView.findViewById(R.id.images_count);
            j1Var.f58985d = (SimpleDraweeView) convertView.findViewById(R.id.img_m_1);
            j1Var.f58986e = (SimpleDraweeView) convertView.findViewById(R.id.img_m_2);
            j1Var.f58987f = (SimpleDraweeView) convertView.findViewById(R.id.img_m_3);
            convertView.setTag(j1Var);
        }
        try {
            r1.y yVar = (r1.y) getItem(position);
            if (yVar == null) {
                return convertView;
            }
            u0(j1Var, yVar);
            R0(convertView, yVar.f59191c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private void U0(View v10, final RecommendLabelTag tag) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new w(tag));
    }

    private View V(int position, View convertView, ViewGroup parent) {
        k1 k1Var;
        if (convertView != null) {
            k1Var = (k1) convertView.getTag();
        } else {
            k1Var = new k1();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_post_activity_item_post_message1, (ViewGroup) null);
            k1Var.f58997b = (StaticLayoutView) convertView.findViewById(R.id.forum_post_message);
            convertView.setTag(k1Var);
        }
        try {
            r1.z zVar = (r1.z) getItem(position);
            if (zVar == null) {
                return convertView;
            }
            if (this.f58839b.d(zVar.f59195d + "") == null) {
                this.f58839b.e(zVar);
            }
            k1Var.f58997b.setLayout(this.f58839b.d(zVar.f59195d + ""));
            com.join.mgps.Util.r0.X0(k1Var.f58997b);
            R0(convertView, zVar.f59195d);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View W(int position, View convertView, ViewGroup parent) {
        View view;
        m1 m1Var;
        try {
            if (convertView != null) {
                view = convertView;
                m1Var = convertView.getTag() instanceof m1 ? (m1) convertView.getTag() : null;
            } else {
                m1 m1Var2 = new m1();
                View viewInflate = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_f_item_post_subject, (ViewGroup) null);
                try {
                    m1Var2.f59014b = (CornersLinearLayout) viewInflate.findViewById(R.id.cl_view);
                    m1Var2.f59015c = (Button) viewInflate.findViewById(R.id.best);
                    m1Var2.f59016d = (TextView) viewInflate.findViewById(R.id.subject);
                    m1Var2.f59018f = viewInflate.findViewById(R.id.subjectMain);
                    m1Var2.f59017e = viewInflate.findViewById(R.id.forum_post_divider);
                    viewInflate.setTag(m1Var2);
                    view = viewInflate;
                    m1Var = m1Var2;
                } catch (Exception e10) {
                    e = e10;
                    view = viewInflate;
                    e.printStackTrace();
                    return view;
                }
            }
            try {
                if (position == 0) {
                    m1Var.f59014b.setConner_top_left(0);
                    m1Var.f59014b.setConner_top_right(0);
                } else {
                    m1Var.f59014b.setConner_top_right((int) this.f58842e.getResources().getDimension(R.dimen.wdp15));
                    m1Var.f59014b.setConner_top_right((int) this.f58842e.getResources().getDimension(R.dimen.wdp15));
                }
                r1.p pVar = (r1.p) getItem(position);
                if (pVar != null && m1Var != null) {
                    if (pVar.f59139a) {
                        m1Var.f59017e.setVisibility(0);
                    } else {
                        m1Var.f59017e.setVisibility(8);
                    }
                    m1Var.f59016d.setMovementMethod(LinkMovementMethod.getInstance());
                    List<ForumBean.ForumPostsBean.TagInfo> arrayList = new ArrayList<>();
                    if (pVar.f59140b) {
                        ForumBean.ForumPostsBean.TagInfo tagInfo = new ForumBean.ForumPostsBean.TagInfo();
                        tagInfo.setName("精");
                        tagInfo.setColor("#00FFFFFF");
                        tagInfo.setFont_color("#FF8378FF");
                        tagInfo.setBorder_color("#FF8378FF");
                        tagInfo.setResId(R.drawable.ic_discovery_2);
                        arrayList.add(0, tagInfo);
                    }
                    if (pVar.f59141c) {
                        ForumBean.ForumPostsBean.TagInfo tagInfo2 = new ForumBean.ForumPostsBean.TagInfo();
                        tagInfo2.setName("顶");
                        tagInfo2.setResId(R.drawable.ic_discovery_3);
                        tagInfo2.setColor("#00FFFFFF");
                        tagInfo2.setFont_color("#FFFF6464");
                        tagInfo2.setBorder_color("#FFFF6464");
                        arrayList.add(0, tagInfo2);
                    }
                    Collection<? extends ForumBean.ForumPostsBean.TagInfo> collection = pVar.f59147i;
                    if (collection != null) {
                        arrayList.addAll(collection);
                    }
                    y0(m1Var.f59016d, pVar.f59142d, pVar.f59140b, pVar.f59145g, pVar.f59146h, arrayList, pVar.f59148j, pVar.f59144f, pVar.f59149k, pVar.f59150l);
                    int i10 = pVar.f59143e;
                    k0(m1Var.f59016d, i10);
                    R0(view, i10);
                    return view;
                }
                return view;
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
            }
        } catch (Exception e12) {
            e = e12;
            view = convertView;
        }
    }

    private View X(int position, View convertView, ViewGroup parent) {
        View view;
        m1 m1Var;
        try {
            if (convertView != null) {
                view = convertView;
                m1Var = convertView.getTag() instanceof m1 ? (m1) convertView.getTag() : null;
            } else {
                m1 m1Var2 = new m1();
                View viewInflate = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_f_item_post_subject_label, (ViewGroup) null);
                try {
                    m1Var2.f59015c = (Button) viewInflate.findViewById(R.id.best);
                    m1Var2.f59016d = (TextView) viewInflate.findViewById(R.id.subject);
                    m1Var2.f59018f = viewInflate.findViewById(R.id.subjectMain);
                    m1Var2.f59017e = viewInflate.findViewById(R.id.forum_post_divider);
                    viewInflate.setTag(m1Var2);
                    view = viewInflate;
                    m1Var = m1Var2;
                } catch (Exception e10) {
                    e = e10;
                    view = viewInflate;
                    e.printStackTrace();
                    return view;
                }
            }
            try {
                r1.p pVar = (r1.p) getItem(position);
                if (pVar != null && m1Var != null) {
                    if (pVar.f59139a) {
                        m1Var.f59017e.setVisibility(0);
                    } else {
                        m1Var.f59017e.setVisibility(8);
                    }
                    m1Var.f59016d.setMovementMethod(LinkMovementMethod.getInstance());
                    List<ForumBean.ForumPostsBean.TagInfo> arrayList = new ArrayList<>();
                    if (pVar.f59140b) {
                        ForumBean.ForumPostsBean.TagInfo tagInfo = new ForumBean.ForumPostsBean.TagInfo();
                        tagInfo.setName("精");
                        tagInfo.setResId(R.drawable.ic_discovery_2);
                        tagInfo.setColor("#00FFFFFF");
                        tagInfo.setFont_color("#FF8378FF");
                        tagInfo.setBorder_color("#FF8378FF");
                        arrayList.add(0, tagInfo);
                    }
                    if (pVar.f59141c) {
                        ForumBean.ForumPostsBean.TagInfo tagInfo2 = new ForumBean.ForumPostsBean.TagInfo();
                        tagInfo2.setName("顶");
                        tagInfo2.setResId(R.drawable.ic_discovery_3);
                        tagInfo2.setColor("#00FFFFFF");
                        tagInfo2.setFont_color("#FFFF6464");
                        tagInfo2.setBorder_color("#FFFF6464");
                        arrayList.add(0, tagInfo2);
                    }
                    Collection<? extends ForumBean.ForumPostsBean.TagInfo> collection = pVar.f59147i;
                    if (collection != null) {
                        arrayList.addAll(collection);
                    }
                    y0(m1Var.f59016d, pVar.f59142d, pVar.f59140b, pVar.f59145g, pVar.f59146h, arrayList, pVar.f59148j, pVar.f59144f, pVar.f59149k, pVar.f59150l);
                    int i10 = pVar.f59143e;
                    k0(m1Var.f59016d, i10);
                    R0(view, i10);
                    return view;
                }
                return view;
            } catch (Exception e11) {
                e = e11;
                e.printStackTrace();
            }
        } catch (Exception e12) {
            e = e12;
            view = convertView;
        }
    }

    private View Y(int position, View convertView, ViewGroup parent) {
        n1 n1Var;
        if (convertView != null) {
            n1Var = (n1) convertView.getTag();
        } else {
            n1Var = new n1();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_post_subject, (ViewGroup) null);
            n1Var.f59027b = (Button) convertView.findViewById(R.id.forum_post_best);
            n1Var.f59028c = (TextView) convertView.findViewById(R.id.forum_post_subject);
            convertView.setTag(n1Var);
        }
        try {
            r1.a0 a0Var = (r1.a0) getItem(position);
            if (a0Var == null) {
                return convertView;
            }
            x0(n1Var.f59028c, a0Var.f59061b, a0Var.f59060a, a0Var.f59064e, a0Var.f59065f, a0Var.f59066g);
            R0(convertView, a0Var.f59062c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View Z(int position, View convertView, ViewGroup parent) {
        k0 k0Var;
        try {
            if (convertView != null) {
                k0Var = (k0) convertView.getTag();
            } else {
                k0Var = new k0();
                convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_forum_activity_top_item, (ViewGroup) null);
                k0Var.f58991b = (TextView) convertView.findViewById(R.id.forum_post_subject);
                k0Var.f58992c = (TextView) convertView.findViewById(R.id.forum_post_stickie);
                k0Var.f58993d = (Button) convertView.findViewById(R.id.forum_post_best);
                k0Var.f58994e = (ImageView) convertView.findViewById(R.id.forum_post_pic);
                k0Var.f58995f = (ImageView) convertView.findViewById(R.id.forum_post_video);
                convertView.setTag(k0Var);
            }
            r1.b0 b0Var = (r1.b0) getItem(position);
            if (b0Var == null) {
                return convertView;
            }
            if (com.join.mgps.Util.t2.h(b0Var.f59069b)) {
                k0Var.f58991b.setVisibility(8);
            } else {
                k0Var.f58991b.setVisibility(0);
                k0Var.f58991b.setText(b0Var.f59069b);
            }
            try {
                if (k0Var.f58992c == null || b0Var.f59073f == null || b0Var.f59073f.size() == 0) {
                    k0Var.f58992c.setBackgroundResource(R.drawable.top_tips);
                } else {
                    k0Var.f58992c.getResources();
                    DisplayMetrics displayMetrics = k0Var.f58992c.getResources().getDisplayMetrics();
                    ForumBean.ForumPostsBean.TagInfo tagInfo = (ForumBean.ForumPostsBean.TagInfo) b0Var.f59073f.get(0);
                    if (com.join.mgps.Util.t2.i(tagInfo.getId()) && tagInfo.getId().equals("1")) {
                        k0Var.f58992c.setText(tagInfo.getName());
                        k0Var.f58992c.setTextColor(Color.parseColor(tagInfo.getFont_color()));
                        Drawable drawableC = com.join.mgps.customview.l0.c(new ColorDrawable(Color.parseColor(tagInfo.getColor())));
                        if (drawableC != null && (drawableC instanceof com.join.mgps.customview.l0)) {
                            ((com.join.mgps.customview.l0) drawableC).l(Color.parseColor(tagInfo.getBorder_color()));
                            ((com.join.mgps.customview.l0) drawableC).n(TypedValue.applyDimension(1, 1.0f, displayMetrics));
                            ((com.join.mgps.customview.l0) drawableC).o(1.2f);
                            ((com.join.mgps.customview.l0) drawableC).q(ImageView.ScaleType.FIT_XY);
                        }
                        k0Var.f58992c.setBackground(drawableC);
                    } else {
                        k0Var.f58992c.setBackgroundResource(R.drawable.top_tips);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (b0Var.f59070c) {
                k0Var.f58993d.setVisibility(0);
            } else {
                k0Var.f58993d.setVisibility(8);
            }
            k0Var.f58994e.setVisibility(8);
            k0Var.f58995f.setVisibility(8);
            convertView.setOnClickListener(new v(b0Var.f59068a));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return convertView;
    }

    private int a0(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f58850m == 0) {
            Resources resources = context.getResources();
            this.f58850m = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f58850m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewGroup.LayoutParams a1(String s10, final View view, com.facebook.imagepipeline.image.g imageInfo) {
        if (imageInfo == null) {
            return null;
        }
        int width = imageInfo.getWidth();
        int height = imageInfo.getHeight();
        Resources resources = view.getContext().getResources();
        int dimensionPixelSize = resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2);
        float f10 = (height * 1.0f) / width;
        int i10 = (int) (dimensionPixelSize * 1.0f * f10);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = dimensionPixelSize;
        layoutParams.height = i10;
        com.join.mgps.Util.h1.e("setPostImageParam-->rawHeight=" + height + " rawWidth=" + width + " ratio=" + f10 + " itemHeight=" + i10 + " itemWidth=" + dimensionPixelSize + "\n" + s10);
        view.setMinimumHeight(0);
        view.setLayoutParams(layoutParams);
        return layoutParams;
    }

    private View b0(final int position, View convertView, ViewGroup parent) {
        o1 o1Var;
        if (convertView != null) {
            o1Var = (o1) convertView.getTag();
        } else {
            o1Var = new o1();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_post_activity_item_post_video1, (ViewGroup) null);
            o1Var.f59039c = (FrameLayout) convertView.findViewById(R.id.videoContner);
            o1Var.f59038b = (SimpleDraweeView) convertView.findViewById(R.id.bannerView);
            convertView.setTag(o1Var);
        }
        try {
            r1.c0 c0Var = (r1.c0) getItem(position);
            if (c0Var == null) {
                return convertView;
            }
            int iA0 = a0(this.f58842e);
            String str = c0Var.f59084b;
            String str2 = c0Var.f59083a;
            if (o1Var.f59039c != null) {
                o1Var.f59039c.setLayoutParams(new RelativeLayout.LayoutParams(-1, iA0));
                com.join.android.app.common.utils.l.d(o1Var.f59038b, R.drawable.video_bg, str2);
                int i10 = position + 1;
                o1Var.f59038b.setTag(Integer.valueOf(i10));
                if (com.join.mgps.Util.t2.i(str)) {
                    this.f58844g.d(i10, new com.join.android.app.component.video.c.l(i10, str, str2), new boolean[0]);
                }
                o1Var.f59038b.setOnClickListener(new d0(i10));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private void c1(View v10, CharSequence text) {
        if (v10 == null) {
            return;
        }
        if (v10 instanceof TextView) {
            ((TextView) v10).setText(text);
        } else if (v10 instanceof Button) {
            ((Button) v10).setText(text);
        }
    }

    private View d0(int position, View convertView, ViewGroup parent) {
        l1 l1Var;
        com.join.mgps.base.b bVar;
        if (convertView != null) {
            l1Var = (l1) convertView.getTag();
        } else {
            l1Var = new l1();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_rich_message, (ViewGroup) null);
            l1Var.f59007b = (LinearLayout) convertView.findViewById(R.id.ll_rich_layout);
            convertView.setTag(l1Var);
        }
        try {
            r1.e0 e0Var = (r1.e0) getItem(position);
            if (e0Var == null) {
                return convertView;
            }
            List<r1> list = e0Var.f59095b;
            if (list != null && list.size() > 0) {
                for (int i10 = 0; i10 < e0Var.f59095b.size() && i10 <= 8; i10++) {
                    r1 r1Var = e0Var.f59095b.get(i10);
                    int iOrdinal = r1Var.b().ordinal();
                    if (iOrdinal == ViewType.POST_IMAGE.ordinal()) {
                        bVar = new com.join.mgps.base.b(View.inflate(this.f58842e, R.layout.mg_forum_post_activity_item_post_image, null));
                        i(bVar, r1Var);
                    } else if (iOrdinal == ViewType.POST_VIDEO.ordinal()) {
                        bVar = new com.join.mgps.base.b(View.inflate(this.f58842e, R.layout.mg_forum_post_activity_item_post_videojc, null));
                        l(bVar, r1Var);
                    } else if (iOrdinal == ViewType.POST_MESSAGE.ordinal()) {
                        bVar = new com.join.mgps.base.b(View.inflate(this.f58842e, R.layout.mg_forum_post_activity_item_post_message, null));
                        j(bVar, r1Var);
                    } else if (iOrdinal == ViewType.POST_RICH_MESSAGE.ordinal()) {
                        bVar = new com.join.mgps.base.b(View.inflate(this.f58842e, R.layout.mg_forum_post_activity_item_post_rich_message, null));
                        k(bVar, r1Var);
                    } else {
                        bVar = null;
                    }
                    if (bVar != null) {
                        l1Var.f59007b.addView(bVar.itemView);
                    }
                }
            }
            R0(l1Var.f59007b, e0Var.f59094a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private void d1(View v10, int color) {
        if (v10 == null) {
            return;
        }
        if (v10 instanceof TextView) {
            ((TextView) v10).setTextColor(color);
        } else if (v10 instanceof Button) {
            ((Button) v10).setTextColor(color);
        }
    }

    private View e0(int position, View convertView, ViewGroup parent) {
        p1 p1Var;
        List<RecommendLabelTag> list;
        try {
            if (convertView != null) {
                p1Var = (p1) convertView.getTag();
            } else {
                p1Var = new p1();
                convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_flow_layout_container, (ViewGroup) null);
                p1Var.f59045b = (FlowLayout) convertView.findViewById(R.id.flowLayout);
                convertView.setTag(p1Var);
            }
            r1.f0 f0Var = (r1.f0) getItem(position);
            if (f0Var != null && (list = f0Var.f59098c) != null && list.size() >= 1) {
                p1Var.f59045b.removeAllViews();
                int i10 = 0;
                while (i10 < f0Var.f59098c.size()) {
                    View viewP0 = p0(f0Var.f59098c.get(i10), i10 == 0, f0Var.f59096a, f0Var.f59097b);
                    if (viewP0 != null) {
                        p1Var.f59045b.addView(viewP0);
                    }
                    i10++;
                }
                return convertView;
            }
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void e1(final SimpleDraweeView imageView, BannerBean bean, final int position) {
        if (bean == null || imageView == null) {
            return;
        }
        com.join.android.app.common.utils.l.j(imageView, bean.getPic_remote(), com.join.android.app.common.utils.l.A(imageView.getContext()));
        if (this.f58851n == null) {
            float f10 = this.f58842e.getResources().getDisplayMetrics().density;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
            int i10 = ((int) (this.f58842e.getResources().getDisplayMetrics().widthPixels - (f10 * 18.0f))) / 2;
            layoutParams.width = i10;
            layoutParams.height = (int) ((i10 * 1.0f) / 2.07f);
            this.f58851n = layoutParams;
        }
        imageView.setLayoutParams(this.f58851n);
        IntentDateBean intentDateBeanJ0 = com.join.mgps.Util.r0.j0(bean);
        ExtBean extBean = new ExtBean();
        extBean.setFrom("forum");
        extBean.setPosition("banner" + (position + 1));
        intentDateBeanJ0.setExtBean(extBean);
        imageView.setOnClickListener(new h(intentDateBeanJ0, position));
    }

    private View f0(int position, View convertView, ViewGroup parent) {
        q1 q1Var;
        try {
            if (convertView != null) {
                q1Var = (q1) convertView.getTag();
            } else {
                q1Var = new q1();
                convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_tag_item, (ViewGroup) null);
                q1Var.f59050b = (TextView) convertView.findViewById(R.id.name);
                q1Var.f59051c = (ImageView) convertView.findViewById(R.id.dot);
                convertView.setTag(q1Var);
            }
            r1.g0 g0Var = (r1.g0) getItem(position);
            if (g0Var == null) {
                return convertView;
            }
            RecommendLabelTag recommendLabelTag = g0Var.f59101a;
            if (recommendLabelTag == null || TextUtils.isEmpty(recommendLabelTag.getTag_name())) {
                q1Var.f59050b.setText("");
            } else {
                q1Var.f59050b.setText("#" + g0Var.f59101a.getTag_name() + "#");
            }
            if (g0Var.f59102b) {
                q1Var.f59051c.setVisibility(0);
            } else {
                q1Var.f59051c.setVisibility(8);
            }
            U0(convertView, g0Var.f59101a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View h0(int position, View convertView, ViewGroup parent) {
        h0 h0Var;
        if (convertView != null) {
            h0Var = (h0) convertView.getTag();
        } else {
            h0Var = new h0();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_ad_block, (ViewGroup) null);
            h0Var.f58939b = (TextView) convertView.findViewById(R.id.forum_ad_title);
            h0Var.f58940c = (SimpleDraweeView) convertView.findViewById(R.id.layout_forum_ad_1);
            h0Var.f58941d = (SimpleDraweeView) convertView.findViewById(R.id.layout_forum_ad_2);
            h0Var.f58942e = (SimpleDraweeView) convertView.findViewById(R.id.layout_forum_ad_3);
            h0Var.f58943f = (SimpleDraweeView) convertView.findViewById(R.id.layout_forum_ad_4);
            convertView.setTag(h0Var);
        }
        try {
            r1.a aVar = (r1.a) getItem(position);
            if (aVar != null && aVar.f59059a != null) {
                SimpleDraweeView[] simpleDraweeViewArr = {h0Var.f58940c, h0Var.f58941d, h0Var.f58942e, h0Var.f58943f};
                for (int i10 = 0; aVar.f59059a.getAdBeans() != null && i10 < aVar.f59059a.getAdBeans().size(); i10++) {
                    BannerBean bannerBean = aVar.f59059a.getAdBeans().get(i10);
                    SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i10];
                    e1(simpleDraweeView, bannerBean, i10);
                    if (i10 == 1 || i10 == 3) {
                        try {
                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(simpleDraweeView.getLayoutParams().width, simpleDraweeView.getLayoutParams().height);
                            layoutParams.setMargins((int) (simpleDraweeView.getResources().getDisplayMetrics().density * 6.0f), 0, 0, 0);
                            simpleDraweeView.setLayoutParams(layoutParams);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }
                return convertView;
            }
            return convertView;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void h1(h1 holder, int type) {
        if (type == 0) {
            holder.f58952g.setVisibility(8);
            holder.f58956k.setVisibility(8);
            holder.f58957l.setVisibility(8);
            holder.f58953h.setVisibility(0);
            holder.f58951f.setVisibility(0);
            return;
        }
        holder.f58952g.setVisibility(0);
        if (type == 17) {
            holder.f58956k.setVisibility(8);
            holder.f58957l.setVisibility(0);
        } else {
            holder.f58957l.setVisibility(8);
            holder.f58956k.setVisibility(0);
        }
        holder.f58953h.setVisibility(8);
        holder.f58951f.setVisibility(8);
    }

    private void i(com.join.mgps.base.b helper, r1 viewBean) {
        try {
            r1.r rVar = (r1.r) viewBean.a();
            if (rVar == null) {
                return;
            }
            t0(this.f58842e, rVar.f59156c.get(rVar.f59155b));
            u0 u0VarM = M(rVar.f59154a);
            if (u0VarM != null) {
                helper.getView(R.id.img).setLayoutParams(new RelativeLayout.LayoutParams(u0VarM.f59217a, u0VarM.f59218b));
                com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.img), rVar.f59154a);
            } else {
                o0((SimpleDraweeView) helper.getView(R.id.img), rVar.f59154a);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void i0() {
        if (this.f58849l == null) {
            this.f58849l = g0();
        }
    }

    private void j(com.join.mgps.base.b helper, r1 viewBean) {
        try {
            r1.s sVar = (r1.s) viewBean.a();
            if (sVar == null) {
                return;
            }
            TextView textView = (TextView) helper.getView(R.id.forum_post_message);
            ((TextView) helper.getView(R.id.forum_post_message)).setLetterSpacing(0.02f);
            textView.setTextSize(0, this.f58842e.getResources().getDimensionPixelSize(R.dimen.forum_posts_activity_message_size));
            textView.setTextColor(this.f58842e.getResources().getColor(R.color.forum_post_detail_item_message));
            textView.setLineSpacing(0.0f, 1.4f);
            textView.setMaxLines(Integer.MAX_VALUE);
            textView.setText(sVar.f59157a.toString().replace("<br/>", ""));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void j0(TextView tv2) {
        tv2.setMovementMethod(com.join.mgps.Util.d0.a());
        CharSequence text = tv2.getText();
        if (text instanceof Spannable) {
            int length = text.length();
            Spannable spannable = (Spannable) tv2.getText();
            URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, length, URLSpan.class);
            if (uRLSpanArr.length == 0) {
                return;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
            for (URLSpan uRLSpan : uRLSpanArr) {
                String url = uRLSpan.getURL();
                if (url.indexOf("http://") == 0 || url.indexOf("https://") == 0) {
                    spannableStringBuilder.setSpan(new i0(tv2.getContext(), url), spannable.getSpanStart(uRLSpan), spannable.getSpanEnd(uRLSpan), 17);
                }
            }
            tv2.setText(spannableStringBuilder);
        }
    }

    private void k(com.join.mgps.base.b helper, r1 viewBean) {
        try {
            r1.t tVar = (r1.t) viewBean.a();
            if (tVar == null) {
                return;
            }
            ((TextView) helper.getView(R.id.forum_post_message)).setText(tVar.f59158a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void k0(TextView textView, final int pid) {
        textView.setOnTouchListener(new z(pid));
    }

    private void l(com.join.mgps.base.b helper, r1 viewBean) {
        try {
            r1.u uVar = (r1.u) viewBean.a();
            if (uVar == null) {
                return;
            }
            String str = uVar.f59159a;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) helper.getView(R.id.bannerView);
            int layoutPosition = helper.getLayoutPosition();
            if (simpleDraweeView != null) {
                simpleDraweeView.setTag(Integer.valueOf(layoutPosition));
                simpleDraweeView.setLayoutParams(new RelativeLayout.LayoutParams(-1, this.f58850m));
                simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
                com.join.android.app.common.utils.l.d(simpleDraweeView, R.drawable.video_bg, str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private View n(int position, View convertView, ViewGroup parent) {
        h0 h0Var;
        ForumBean.ForumWelcomeAdBean forumWelcomeAdBean;
        String str = "";
        if (convertView != null) {
            h0Var = (h0) convertView.getTag();
        } else {
            h0Var = new h0();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_ad, (ViewGroup) null);
            h0Var.f58939b = (TextView) convertView.findViewById(R.id.sectionTitle);
            h0Var.f58945h = (TextView) convertView.findViewById(R.id.sectionSubTitle);
            h0Var.f58944g = (RelativeLayout) convertView.findViewById(R.id.forumExtFunc);
            h0Var.f58940c = (SimpleDraweeView) convertView.findViewById(R.id.img_1);
            h0Var.f58941d = (SimpleDraweeView) convertView.findViewById(R.id.img_2);
            h0Var.f58942e = (SimpleDraweeView) convertView.findViewById(R.id.img_3);
            convertView.setTag(h0Var);
        }
        try {
            r1.a aVar = (r1.a) getItem(position);
            if (aVar == null || (forumWelcomeAdBean = aVar.f59059a) == null) {
                return convertView;
            }
            try {
                String title = forumWelcomeAdBean.getTitle();
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                SpannableString spannableString = new SpannableString("直播");
                spannableString.setSpan(com.join.mgps.Util.r0.S(com.join.mgps.Util.z2.a(this.f58842e, "#f38548")), 0, spannableString.length(), 33);
                if (com.join.mgps.Util.t2.h(title)) {
                    spannableStringBuilder.append((CharSequence) spannableString);
                } else {
                    spannableStringBuilder.append((CharSequence) spannableString);
                    spannableStringBuilder.append((CharSequence) (" " + title));
                }
                h0Var.f58939b.setText(spannableStringBuilder);
                String sub_title = aVar.f59059a.getSub_title();
                if (!com.join.mgps.Util.t2.h(sub_title)) {
                    str = sub_title;
                }
                h0Var.f58945h.setText(str);
                D0(h0Var.f58944g, aVar.f59059a.getTitle());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            SimpleDraweeView[] simpleDraweeViewArr = {h0Var.f58940c, h0Var.f58941d, h0Var.f58942e};
            int i10 = 0;
            for (int i11 = 0; i11 < 3; i11++) {
                SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i11];
                if (i11 < aVar.f59059a.getAdBeans().size()) {
                    BannerBean bannerBean = aVar.f59059a.getAdBeans().get(i11);
                    if (bannerBean.getAd_switch() == 1) {
                        simpleDraweeViewArr[i10].setVisibility(0);
                        v0(simpleDraweeViewArr[i10], bannerBean, i10);
                        i10++;
                    } else {
                        int i12 = (3 - i10) - 1;
                        if (i12 < 3 && i12 >= 0) {
                            simpleDraweeViewArr[i12].setVisibility(8);
                        }
                    }
                } else {
                    simpleDraweeView.setVisibility(8);
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return convertView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n0(r1.w wVar, View view) {
        if (TextUtils.isEmpty(wVar.f59173d)) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(wVar.f59173d);
        IntentUtil.getInstance().intentActivity(this.f58842e, intentDateBean);
    }

    private View o(int position, View convertView, ViewGroup parent) {
        return convertView;
    }

    private View p0(final RecommendLabelTag tag, final boolean allTag, final int fid, final String fname) {
        View view = null;
        try {
            View viewInflate = View.inflate(this.f58842e, R.layout.forum_group_tag_item, null);
            try {
                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
                marginLayoutParams.rightMargin = (int) TypedValue.applyDimension(1, 12.0f, this.f58842e.getResources().getDisplayMetrics());
                marginLayoutParams.bottomMargin = (int) TypedValue.applyDimension(1, 15.0f, this.f58842e.getResources().getDisplayMetrics());
                viewInflate.setLayoutParams(marginLayoutParams);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tagTv);
                if (textView == null) {
                    return null;
                }
                textView.setBackgroundResource(R.color.transparent);
                textView.setTextColor(Color.parseColor("#3CA4FD"));
                String tag_name = "#" + tag.getTag_name() + "#";
                try {
                    if (allTag) {
                        textView.setCompoundDrawablesWithIntrinsicBounds(textView.getContext().getResources().getDrawable(R.drawable.mg_forum_tag_hot), (Drawable) null, (Drawable) null, (Drawable) null);
                        textView.setCompoundDrawablePadding((int) TypedValue.applyDimension(1, 2.0f, textView.getContext().getResources().getDisplayMetrics()));
                        textView.setBackgroundResource(R.drawable.shape_hot_tag_bg);
                        textView.setTextColor(Color.parseColor("#FFFF4343"));
                        tag_name = tag.getTag_name();
                    } else {
                        textView.getPaint().setFakeBoldText(false);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                textView.setText(tag_name);
                textView.setOnClickListener(new y(tag, fid, fname));
                return viewInflate;
            } catch (Exception e11) {
                e = e11;
                view = viewInflate;
                e.printStackTrace();
                return view;
            }
        } catch (Exception e12) {
            e = e12;
        }
    }

    private View q(int position, View convertView, ViewGroup parent) {
        m0 m0Var;
        if (convertView != null) {
            m0Var = (m0) convertView.getTag();
        } else {
            m0Var = new m0();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_forum_topic, (ViewGroup) null);
            m0Var.f59012c = (HListView) convertView.findViewById(R.id.list);
            m0Var.f59011b = (TextView) convertView.findViewById(R.id.sectionTitle);
            convertView.setTag(m0Var);
        }
        try {
            r1.b bVar = (r1.b) getItem(position);
            m0Var.f59011b.setText("精彩话题");
            if (bVar == null) {
                convertView.setVisibility(8);
                return convertView;
            }
            convertView.setVisibility(0);
            l0 l0Var = (l0) m0Var.f59012c.getAdapter();
            if (l0Var == null) {
                l0Var = new l0();
                m0Var.f59012c.setAdapter((ListAdapter) l0Var);
            }
            l0Var.b(bVar.f59067a);
            l0Var.notifyDataSetChanged();
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void q0(final c1 holder, boolean like, int count, final int pid) {
        TextView textView = holder.f58884d;
        ImageView imageView = holder.f58889i;
        if (like) {
            imageView.setImageResource(R.drawable.like);
            textView.setText(count + "");
        } else {
            imageView.setImageResource(R.drawable.unlike);
            textView.setText(count + "");
        }
        ((View) holder.f58884d.getParent()).setOnClickListener(new f(holder, pid));
    }

    private View r(int position, View convertView, ViewGroup parent) {
        n0 n0Var;
        if (convertView != null) {
            n0Var = (n0) convertView.getTag();
        } else {
            n0Var = new n0();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_item_for_welcome1, (ViewGroup) null);
            n0Var.f59021b = (SimpleDraweeView) convertView.findViewById(R.id.forum_icon);
            n0Var.f59022c = (TextView) convertView.findViewById(R.id.forum_name);
            n0Var.f59023d = (TextView) convertView.findViewById(R.id.forum_desc);
            n0Var.f59024e = (TextView) convertView.findViewById(R.id.countTv);
            n0Var.f59025f = convertView.findViewById(R.id.arrow);
            convertView.setTag(n0Var);
        }
        try {
            r1.d0 d0Var = (r1.d0) getItem(position);
            if (d0Var == null) {
                return convertView;
            }
            com.join.android.app.common.utils.l.h(n0Var.f59021b, d0Var.f59087a);
            n0Var.f59022c.setText(d0Var.f59088b);
            n0Var.f59023d.setText(d0Var.f59089c);
            if (d0Var.f59091e > 0) {
                n0Var.f59024e.setText("今日更新：" + d0Var.f59091e);
            } else {
                n0Var.f59024e.setText("今日更新：0");
            }
            if (d0Var.f59093g) {
                n0Var.f59024e.setVisibility(0);
            } else {
                n0Var.f59024e.setVisibility(8);
            }
            n0Var.f59023d.setVisibility(0);
            Q0(convertView, d0Var.f59092f);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private void r0(g1 holder, boolean like, int count) {
        TextView textView = holder.f58931e;
        ImageView imageView = holder.f58934h;
        if (like) {
            imageView.setImageResource(R.drawable.like);
            textView.setText(count + "");
            return;
        }
        imageView.setImageResource(R.drawable.unlike);
        textView.setText(count + "");
    }

    private View s(int position, View convertView, ViewGroup parent) {
        o0 o0Var;
        try {
            if (convertView != null) {
                o0Var = (o0) convertView.getTag();
            } else {
                o0Var = new o0();
                convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_group_member_item, (ViewGroup) null);
                o0Var.f59032b = (SimpleDraweeView) convertView.findViewById(R.id.avatar);
                o0Var.f59033c = (TextView) convertView.findViewById(R.id.nickName);
                o0Var.f59034d = (TextView) convertView.findViewById(R.id.grade);
                o0Var.f59035e = (TextView) convertView.findViewById(R.id.addTime);
                o0Var.f59036f = (TextView) convertView.findViewById(R.id.groupAction);
                convertView.setTag(o0Var);
            }
            r1.c cVar = (r1.c) getItem(position);
            if (cVar == null) {
                return convertView;
            }
            com.join.android.app.common.utils.l.y(o0Var.f59032b, TextUtils.isEmpty(cVar.f59074a) ? "" : cVar.f59074a);
            o0Var.f59032b.setOnClickListener(new k(cVar));
            o0Var.f59033c.setText(cVar.f59075b);
            if (cVar.f59076c) {
                o0Var.f59034d.setVisibility(0);
                if (cVar.f59077d == 0) {
                    o0Var.f59034d.setText("组长");
                } else {
                    o0Var.f59034d.setText("副组长");
                }
            } else {
                o0Var.f59034d.setVisibility(8);
            }
            o0Var.f59035e.setText(cVar.f59078e + "加入");
            if (cVar.f59079f && cVar.f59080g) {
                o0Var.f59036f.setVisibility(0);
                o0Var.f59035e.setVisibility(8);
            } else {
                o0Var.f59036f.setVisibility(8);
                if (cVar.f59076c) {
                    o0Var.f59035e.setVisibility(8);
                } else {
                    o0Var.f59035e.setVisibility(0);
                }
            }
            N0(o0Var.f59036f, cVar.f59081h);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View t(int position, View convertView, ViewGroup parent) {
        p0 p0Var;
        try {
            if (convertView != null) {
                p0Var = (p0) convertView.getTag();
            } else {
                p0Var = new p0();
                convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_group_member_section_title, (ViewGroup) null);
                p0Var.f59043b = (TextView) convertView.findViewById(R.id.title);
                convertView.setTag(p0Var);
            }
            r1.d dVar = (r1.d) getItem(position);
            if (dVar == null) {
                return convertView;
            }
            p0Var.f59043b.setText(TextUtils.isEmpty(dVar.f59086a) ? "成员" : dVar.f59086a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View u(int position, View convertView, ViewGroup parent) {
        q0 q0Var;
        if (convertView != null) {
            q0Var = (q0) convertView.getTag();
        } else {
            q0Var = new q0();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_hot_forum_footer, (ViewGroup) null);
            q0Var.f59048b = convertView.findViewById(R.id.forums_hot_item_forum_all);
            convertView.setTag(q0Var);
        }
        try {
            View view = q0Var.f59048b;
            if (view != null) {
                P0(view);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private void u0(j1 holder, r1.y item) {
        if (item == null || item.f59189a.size() == 0) {
            holder.f58984c.setVisibility(8);
            return;
        }
        if (this.f58849l == null) {
            this.f58849l = g0();
        }
        List<String> list = item.f59190b;
        TextView textView = holder.f58983b;
        if (list == null || list.size() <= 3) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(list.size() + "");
        }
        SimpleDraweeView[] simpleDraweeViewArr = {holder.f58985d, holder.f58986e, holder.f58987f};
        int i10 = 0;
        for (int i11 = 0; i11 < 3; i11++) {
            SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i11];
            if (i11 >= item.f59189a.size()) {
                simpleDraweeView.setVisibility(8);
            } else {
                ForumBean.ForumPostsBean.ResBean resBean = item.f59189a.get(i11);
                if (resBean.getType().equals("pic")) {
                    F0(simpleDraweeView, i11, resBean.getThumb(), i11 - i10, list);
                } else if (resBean.getType().equals("video")) {
                    i10++;
                    g1(simpleDraweeView, i11, resBean.getThumb(), resBean.getRaw());
                }
            }
        }
    }

    private View v(int position, View convertView, ViewGroup parent) {
        r0 r0Var;
        try {
            if (convertView != null) {
                r0Var = (r0) convertView.getTag();
            } else {
                r0Var = new r0();
                convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_hot_forum_header, (ViewGroup) null);
                r0Var.f59055b = (LinearLayout) convertView.findViewById(R.id.forumMore);
                convertView.setTag(r0Var);
            }
            LinearLayout linearLayout = r0Var.f59055b;
            if (linearLayout != null) {
                P0(linearLayout);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private void v0(final SimpleDraweeView imageView, BannerBean bean, final int position) {
        if (bean == null || imageView == null) {
            return;
        }
        if (this.f58849l == null) {
            this.f58849l = g0();
        }
        String pic_remote = bean.getPic_remote();
        int i10 = (int) (this.f58842e.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f58849l;
        TableRow.LayoutParams layoutParams2 = new TableRow.LayoutParams(layoutParams.width, layoutParams.height);
        if (position > 0) {
            layoutParams2.setMargins(i10, 0, 0, 0);
        } else {
            layoutParams2.setMargins(0, 0, 0, 0);
        }
        imageView.setVisibility(0);
        imageView.setLayoutParams(layoutParams2);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        com.join.android.app.common.utils.l.i(imageView, pic_remote, com.facebook.drawee.drawable.s.c.f27284a);
        IntentDateBean intentDateBeanJ0 = com.join.mgps.Util.r0.j0(bean);
        ExtBean extBean = new ExtBean();
        extBean.setFrom("forum");
        extBean.setPosition("banner3" + (position + 1));
        intentDateBeanJ0.setExtBean(extBean);
        imageView.setOnClickListener(new g(intentDateBeanJ0, position));
    }

    private View w(int position, View convertView, ViewGroup parent) {
        s0 s0Var;
        if (convertView != null) {
            s0Var = (s0) convertView.getTag();
        } else {
            s0Var = new s0();
            convertView = LayoutInflater.from(this.f58842e).inflate(R.layout.mg_forum_welcome_item_hot_forum_item, (ViewGroup) null);
            View viewFindViewById = convertView.findViewById(R.id.mg_forum_item);
            s0Var.f59203b = viewFindViewById;
            s0Var.f59204c = (SimpleDraweeView) viewFindViewById.findViewById(R.id.forum_icon);
            s0Var.f59205d = (TextView) s0Var.f59203b.findViewById(R.id.forum_name);
            s0Var.f59210i = (TextView) s0Var.f59203b.findViewById(R.id.forum_desc);
            s0Var.f59208g = (Button) s0Var.f59203b.findViewById(R.id.forum_follow);
            s0Var.f59209h = (TextView) s0Var.f59203b.findViewById(R.id.forum_today_posts_tv);
            convertView.setTag(s0Var);
        }
        try {
            r1.g gVar = (r1.g) getItem(position);
            if (gVar == null) {
                return convertView;
            }
            ForumBean forumBean = gVar.f59099a;
            com.join.mgps.Util.r0.D1(s0Var.f59205d, forumBean.getName() + "", "");
            com.join.mgps.Util.r0.D1(s0Var.f59210i, forumBean.getDescription() + "", "");
            O0(s0Var.f59203b, forumBean);
            com.join.android.app.common.utils.l.j(s0Var.f59204c, forumBean.getIcon_src(), com.join.android.app.common.utils.l.C(this.f58842e));
            com.join.mgps.Util.r0.D1(s0Var.f59209h, s0Var.f59209h.getResources().getString(R.string.forum_info_today_posts, com.join.mgps.Util.r0.R(forumBean.getToday_posts())), "今日 0");
            if (forumBean.is_follow()) {
                s0Var.f59208g.setVisibility(8);
            } else {
                s0Var.f59208g.setVisibility(0);
            }
            L0(s0Var.f59208g, forumBean);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private void x0(TextView tv2, String message, boolean best, boolean ask, String moneyForAnswer, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
        y0(tv2, message, best, ask, moneyForAnswer, tagInfos, null, 0, "", 0);
    }

    private void y0(TextView tv2, String message, boolean best, boolean ask, String moneyForAnswer, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, List<RecommendLabelTag> tags, int fid, String fname, int solve_flg) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        com.join.mgps.Util.r0.h(tv2.getContext(), spannableStringBuilder, tagInfos);
        com.join.mgps.Util.r0.g(tv2, spannableStringBuilder, best, (ask && solve_flg == 1) ? false : ask, moneyForAnswer);
        if (ask && solve_flg == 1) {
            com.join.mgps.Util.r0.d(tv2, spannableStringBuilder);
        }
        if (this.f58841d) {
            com.join.mgps.Util.r0.i(tv2.getContext(), spannableStringBuilder, tags, fid, fname);
        }
        spannableStringBuilder.append((CharSequence) message);
        tv2.setText(spannableStringBuilder);
    }

    int A() {
        return (int) (this.f58842e.getResources().getDisplayMetrics().widthPixels / 1.40625f);
    }

    void A0(TextView view, int payGameAmount) {
        view.setEnabled(true);
        view.setTextColor(-12802819);
        view.setText(view.getResources().getString(R.string.pay_game_amount, com.join.mgps.Util.t2.n(payGameAmount)));
        view.setTextSize(2, 13.0f);
        view.setTextColor(-12802819);
        view.setBackgroundResource(R.drawable.recom_blue_butn);
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0398  */
    /* JADX WARN: Code duplicated, block: B:109:0x039e  */
    /* JADX WARN: Code duplicated, block: B:86:0x0250  */
    /* JADX WARN: Code duplicated, block: B:87:0x0253  */
    /* JADX WARN: Code duplicated, block: B:88:0x0255  */
    /* JADX WARN: Code duplicated, block: B:93:0x029b A[Catch: Exception -> 0x02ed, TryCatch #0 {Exception -> 0x02ed, blocks: (B:91:0x0293, B:93:0x029b, B:95:0x02e2, B:94:0x02bf), top: B:112:0x0293 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x02bf A[Catch: Exception -> 0x02ed, TryCatch #0 {Exception -> 0x02ed, blocks: (B:91:0x0293, B:93:0x029b, B:95:0x02e2, B:94:0x02bf), top: B:112:0x0293 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:93:0x029b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:94:0x02bf, please report this as an issue */
    void B0(h1 holder, Object businessBean) {
        Button button = holder.f58949d;
        if (button == null || businessBean == null) {
            return;
        }
        Context context = button.getContext();
        Resources resources = context.getResources();
        DownloadTask downloadTask = businessBean instanceof DownloadTask ? (DownloadTask) businessBean : null;
        if (downloadTask != null) {
            int status = downloadTask.getStatus();
            String ver = downloadTask.getVer();
            String packageName = downloadTask.getPackageName();
            List<TipBean> tipBeans = downloadTask.getTipBeans();
            long size = downloadTask.getSize();
            int pay_game_amount = downloadTask.getPay_game_amount();
            if (pay_game_amount > 0 && t6.e0.o().p(downloadTask.getCrc_link_type_val())) {
                pay_game_amount = 0;
            }
            if (businessBean instanceof CollectionBeanSub) {
                CollectionBeanSub collectionBeanSub = (CollectionBeanSub) businessBean;
                DownloadTask downloadTask2 = collectionBeanSub.getDownloadTask();
                String ver2 = collectionBeanSub.getVer();
                if (collectionBeanSub.getPay_tag_info() != null) {
                    pay_game_amount = collectionBeanSub.getPay_tag_info().getPay_game_amount();
                }
                if (pay_game_amount > 0 && t6.e0.o().p(collectionBeanSub.getCrc_sign_id())) {
                    pay_game_amount = 0;
                }
                downloadTask = downloadTask2;
                ver = ver2;
            } else if (businessBean instanceof RecomDatabeanBusiness) {
                AppBean game_info = ((RecomDatabeanBusiness) businessBean).getSub().get(0).getGame_info();
                if (game_info.getPay_tag_info() != null) {
                    pay_game_amount = game_info.getPay_tag_info().getPay_game_amount();
                }
                if (pay_game_amount > 0 && t6.e0.o().p(game_info.getCrc_sign_id())) {
                    pay_game_amount = 0;
                }
            }
            if (downloadTask != null) {
                int status2 = downloadTask.getStatus();
                if (pay_game_amount > 0) {
                    status2 = 43;
                }
                if (status2 == 0) {
                    h1(holder, 0);
                    button.setBackgroundResource(R.drawable.recom_green_butn);
                    if (pay_game_amount > 0) {
                        A0(holder.f58949d, pay_game_amount);
                    } else {
                        z0(button, status);
                    }
                } else if (status2 == 27) {
                    c1(button, "暂停中");
                } else if (status2 == 2) {
                    UtilsMy.U4(downloadTask);
                    button.setBackgroundResource(R.drawable.recom_blue_butn);
                    c1(button, "暂停");
                    d1(button, resources.getColor(R.color.app_blue_color));
                    h1(holder, 16);
                    if (downloadTask.getSize() == 0) {
                        holder.f58954i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                    } else {
                        holder.f58954i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                    }
                    holder.f58956k.setProgress((int) downloadTask.getProgress());
                    String speed = downloadTask.getSpeed();
                    holder.f58955j.setText(speed + "/S");
                } else if (status2 == 3) {
                    button.setBackgroundResource(R.drawable.recom_blue_butn);
                    c1(button, "继续");
                    d1(button, resources.getColor(R.color.app_blue_color));
                    h1(holder, 16);
                    try {
                        if (downloadTask.getSize() == 0) {
                            holder.f58954i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                        } else {
                            holder.f58954i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                        }
                        holder.f58956k.setProgress((int) downloadTask.getProgress());
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    holder.f58955j.setText("暂停中");
                } else if (status2 == 5) {
                    h1(holder, 0);
                    button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    c1(button, context.getResources().getString(R.string.download_status_finished));
                    d1(button, resources.getColor(R.color.app_main_color));
                } else if (status2 == 6) {
                    button.setBackgroundResource(R.drawable.recom_blue_butn);
                    c1(button, "继续");
                    d1(button, resources.getColor(R.color.app_blue_color));
                    h1(holder, 16);
                    if (downloadTask.getSize() == 0) {
                        holder.f58954i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                    } else {
                        holder.f58954i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                    }
                    holder.f58956k.setProgress((int) downloadTask.getProgress());
                    holder.f58955j.setText("暂停中");
                } else if (status2 == 7) {
                    h1(holder, 0);
                    button.setBackgroundResource(R.drawable.recom_green_butn);
                    if (pay_game_amount > 0) {
                        A0(holder.f58949d, pay_game_amount);
                    } else {
                        z0(button, status);
                    }
                } else if (status2 == 42) {
                    h1(holder, 0);
                    button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                    c1(button, context.getResources().getString(R.string.download_status_finished));
                    d1(button, resources.getColor(R.color.app_main_color));
                } else if (status2 != 43) {
                    switch (status2) {
                        case 9:
                            h1(holder, 0);
                            button.setBackgroundResource(R.drawable.recom_green_butn);
                            c1(button, "更新");
                            d1(button, resources.getColor(R.color.app_green_color));
                            break;
                        case 10:
                            h1(holder, 16);
                            button.setBackgroundResource(R.drawable.recom_blue_butn);
                            c1(button, "等待");
                            d1(button, resources.getColor(R.color.app_blue_color));
                            break;
                        case 11:
                            h1(holder, 0);
                            button.setBackgroundResource(R.drawable.recom_green_butn);
                            c1(button, "安装");
                            d1(button, resources.getColor(R.color.app_green_color));
                            break;
                        case 12:
                            h1(holder, 17);
                            holder.f58954i.setText(UtilsMy.c(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                            holder.f58955j.setText("解压中..");
                            holder.f58957l.setProgress((int) downloadTask.getProgress());
                            button.setBackgroundResource(R.drawable.extract);
                            c1(button, "解压中");
                            d1(button, resources.getColor(R.color.app_grey_color));
                            break;
                        case 13:
                            h1(holder, 17);
                            holder.f58954i.setText(UtilsMy.c(size) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(size));
                            holder.f58955j.setText("点击重新解压");
                            holder.f58957l.setProgress((int) downloadTask.getProgress());
                            button.setBackgroundResource(R.drawable.reextract);
                            c1(button, "解压");
                            d1(button, resources.getColor(R.color.app_blue_color));
                            break;
                    }
                } else {
                    h1(holder, 0);
                    button.setBackgroundResource(R.drawable.recom_green_butn);
                    if (pay_game_amount > 0) {
                        A0(holder.f58949d, pay_game_amount);
                    } else {
                        z0(button, status);
                    }
                }
            } else if (UtilsMy.p0(tipBeans)) {
                if (pay_game_amount > 0 ? false : com.join.android.app.common.utils.g.t0(context).e(context, packageName)) {
                    APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(context).n(context, packageName);
                    if (!com.join.mgps.Util.t2.i(ver) || aVarN.d() >= Integer.parseInt(ver)) {
                        button.setBackgroundResource(R.drawable.recom_maincolor_butn);
                        c1(button, context.getResources().getString(R.string.download_status_finished));
                        d1(button, resources.getColor(R.color.app_main_color));
                    } else {
                        button.setBackgroundResource(R.drawable.recom_green_butn);
                        c1(button, "更新");
                        d1(button, resources.getColor(R.color.app_green_color));
                    }
                } else {
                    button.setBackgroundResource(R.drawable.recom_green_butn);
                    if (pay_game_amount > 0) {
                        A0(holder.f58949d, pay_game_amount);
                    } else {
                        z0(button, status);
                    }
                }
            } else {
                button.setBackgroundResource(R.drawable.recom_green_butn);
                if (pay_game_amount > 0) {
                    A0(holder.f58949d, pay_game_amount);
                } else {
                    z0(button, status);
                }
            }
            button.setOnClickListener(new j0(businessBean));
        }
    }

    public void C0(String fromActivity) {
        this.f58845h = fromActivity;
    }

    void E0(SimpleDraweeView img, int showIndex, String url, final int imgIndex, final List<String> rawPicList) {
        LinearLayout.LayoutParams layoutParams;
        Integer[] numArrI0 = com.join.mgps.Util.r0.i0(url);
        if (numArrI0 == null || numArrI0[0].intValue() == 0 || numArrI0[1].intValue() == 0) {
            int i10 = this.f58853p;
            layoutParams = new LinearLayout.LayoutParams(i10, i10);
        } else {
            layoutParams = (((float) numArrI0[0].intValue()) * 1.0f) / ((float) numArrI0[1].intValue()) > 1.0f ? new LinearLayout.LayoutParams(this.f58854q, this.f58855r) : new LinearLayout.LayoutParams(this.f58856s, this.f58857t);
        }
        if (com.join.mgps.Util.t2.h(url)) {
            img.setVisibility(8);
            return;
        }
        img.setVisibility(0);
        img.setLayoutParams(layoutParams);
        img.setScaleType(ImageView.ScaleType.FIT_XY);
        com.join.android.app.common.utils.l.i(img, url, com.facebook.drawee.drawable.s.c.f27284a);
        img.setOnClickListener(new d(rawPicList, imgIndex));
    }

    void F0(SimpleDraweeView img, int showIndex, String url, final int imgIndex, final List<String> rawPicList) {
        if (this.f58849l == null) {
            this.f58849l = g0();
        }
        int i10 = (int) (this.f58842e.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f58849l;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
        if (showIndex > 0) {
            layoutParams2.setMargins(i10, 0, 0, 0);
        } else {
            layoutParams2.setMargins(0, 0, 0, 0);
        }
        if (com.join.mgps.Util.t2.h(url)) {
            img.setVisibility(8);
            return;
        }
        img.setVisibility(0);
        img.setLayoutParams(layoutParams2);
        img.setScaleType(ImageView.ScaleType.CENTER_CROP);
        com.join.android.app.common.utils.l.i(img, url, com.facebook.drawee.drawable.s.c.f27292i);
        img.setOnClickListener(new c(rawPicList, imgIndex));
    }

    public void G0(List<r1> items) {
        if (items == null) {
            return;
        }
        if (this.f58843f == null) {
            this.f58843f = new ArrayList();
        }
        this.f58843f.clear();
        this.f58843f.addAll(items);
    }

    public void H0(com.join.android.app.component.optimizetext.b layoutManager) {
        this.f58839b = layoutManager;
    }

    public void I0(t0 l10) {
        this.f58852o = l10;
    }

    public void K0(View v10, final int fid) {
        v10.setOnClickListener(new o(fid));
    }

    public void L0(View v10, final ForumBean forumBean) {
        v10.setOnClickListener(new r(forumBean));
    }

    u0 M(String key) {
        Hashtable<String, u0> hashtable = this.f58848k;
        if (hashtable == null) {
            return null;
        }
        return hashtable.get(key);
    }

    public void M0(View v10, final ForumBean forumBean) {
        v10.setOnClickListener(new s(forumBean));
    }

    public int N() {
        return this.f58863z;
    }

    public void N0(View v10, final int gid) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new u(gid));
    }

    public String O() {
        return this.f58862y;
    }

    public void O0(View v10, final ForumBean forumBean) {
        v10.setOnClickListener(new m(forumBean));
    }

    public void P0(View v10) {
        v10.setOnClickListener(new n());
    }

    public void R0(View v10, final int pid) {
        v10.setOnClickListener(new l(pid));
    }

    public void S0(View v10, final String videoSrc, final String position) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new t(position));
    }

    public void T0(View v10, final int pid, final boolean isPraise, final int praiseTotal) {
        v10.setOnClickListener(new p(pid));
    }

    public void V0(View v10) {
        v10.setOnClickListener(new q());
    }

    public void W0(boolean paused) {
        this.A = paused;
    }

    public void X0(int playPosition) {
        this.f58863z = playPosition;
    }

    public void Y0(String playUrl) {
        this.f58862y = playUrl;
    }

    public void Z0(boolean playing) {
        this.B = playing;
    }

    public void b1(boolean showTags) {
        this.f58841d = showTags;
    }

    public com.danikula.videocache.i c0(Context context) {
        return MApplication.q(context);
    }

    public void f(r1 items) {
        if (items == null) {
            return;
        }
        if (this.f58843f == null) {
            this.f58843f = new ArrayList();
        }
        this.f58843f.add(items);
    }

    public void f1(w6.f listener) {
        this.f58846i = listener;
    }

    public void g(List<r1> items) {
        if (items == null) {
            return;
        }
        if (this.f58843f == null) {
            this.f58843f = new ArrayList();
        }
        this.f58843f.addAll(items);
    }

    LinearLayout.LayoutParams g0() {
        DisplayMetrics displayMetrics = this.f58842e.getResources().getDisplayMetrics();
        float f10 = displayMetrics.density;
        int i10 = (int) (210.0f * f10);
        int i11 = (int) (160.0f * f10);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f58842e.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f10)) * f10) * 2.0f))) / 3;
        if (dimensionPixelSize <= i10) {
            i10 = dimensionPixelSize > i11 ? i11 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i10, i10);
    }

    void g1(SimpleDraweeView img, int showIndex, String url, final String href) {
        if (this.f58849l == null) {
            this.f58849l = g0();
        }
        int i10 = (int) (this.f58842e.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f58849l;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
        if (showIndex > 0) {
            layoutParams2.setMargins(i10, 0, 0, 0);
        } else {
            layoutParams2.setMargins(0, 0, 0, 0);
        }
        if (com.join.mgps.Util.t2.h(url)) {
            img.setVisibility(8);
            return;
        }
        img.setVisibility(0);
        img.setLayoutParams(layoutParams2);
        img.setScaleType(ImageView.ScaleType.CENTER_CROP);
        com.join.android.app.common.utils.l.i(img, url, com.facebook.drawee.drawable.s.c.f27292i);
        img.setOnClickListener(new e(href));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<r1> list = this.f58843f;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<r1> list = this.f58843f;
        if (list != null) {
            return list.get(position).a();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        r1 r1Var;
        ViewType viewTypeB;
        List<r1> list = this.f58843f;
        if (list == null || (r1Var = list.get(position)) == null || (viewTypeB = r1Var.b()) == null) {
            return -1;
        }
        return viewTypeB.ordinal();
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.POST_HEADER.ordinal()) {
            return S(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return P(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_TOP.ordinal()) {
            return Z(position, convertView, parent);
        }
        if (itemViewType == ViewType.P_FOOTER.ordinal()) {
            return I(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_IMAGE_THUMBNAIL.ordinal()) {
            return U(position, convertView, parent);
        }
        if (itemViewType == ViewType.P_IMGS.ordinal()) {
            return J(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_VIDEO_THUMBNAIL.ordinal()) {
            return b0(position, convertView, parent);
        }
        if (itemViewType == ViewType.P_VIDEO.ordinal()) {
            return L(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_GAME_RES_LINK.ordinal()) {
            return Q(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_MESSAGE.ordinal()) {
            return V(position, convertView, parent);
        }
        if (itemViewType == ViewType.P_MESSAGE.ordinal()) {
            return K(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_SUBJECT.ordinal()) {
            return Y(position, convertView, parent);
        }
        if (itemViewType == ViewType.P_SUBJECT.ordinal()) {
            return W(position, convertView, parent);
        }
        if (itemViewType == ViewType.P_SUBJECT_LABEL.ordinal()) {
            return X(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_GAME.ordinal()) {
            return R(position, convertView, parent);
        }
        if (itemViewType == ViewType.MY_FORUM_HEADER.ordinal()) {
            return F(position, convertView, parent);
        }
        if (itemViewType == ViewType.MY_FORUM_ITEM.ordinal()) {
            return G(position, convertView, parent);
        }
        if (itemViewType == ViewType.MY_FORUM_FOOTER.ordinal()) {
            return E(position, convertView, parent);
        }
        if (itemViewType == ViewType.MY_FORUM_MORE_FOOTER.ordinal()) {
            return H(position, convertView, parent);
        }
        if (itemViewType == ViewType.HOT_FORUM_HEADER.ordinal()) {
            return v(position, convertView, parent);
        }
        if (itemViewType == ViewType.HOT_FORUM_ITEM.ordinal()) {
            return w(position, convertView, parent);
        }
        if (itemViewType == ViewType.HOT_FORUM_FOOTER.ordinal()) {
            return u(position, convertView, parent);
        }
        if (itemViewType == ViewType.FORUM_TOPIC.ordinal()) {
            return q(position, convertView, parent);
        }
        if (itemViewType == ViewType.BAIDUAD.ordinal()) {
            return o(position, convertView, parent);
        }
        if (itemViewType == ViewType.TOP_BLOCK.ordinal()) {
            return h0(position, convertView, parent);
        }
        if (itemViewType == ViewType.MID_BLOCK.ordinal()) {
            return D(position, convertView, parent);
        }
        if (itemViewType == ViewType.AD_BLOCK.ordinal()) {
            return n(position, convertView, parent);
        }
        if (itemViewType == ViewType.LIVE.ordinal()) {
            return C(position, convertView, parent);
        }
        if (itemViewType == ViewType.LIVE_ENTRY.ordinal()) {
            return B(position, convertView, parent);
        }
        if (itemViewType == ViewType.GROUP_ITEM.ordinal()) {
            return r(position, convertView, parent);
        }
        if (itemViewType == ViewType.TAG_FLOW_LAYOUT.ordinal()) {
            return e0(position, convertView, parent);
        }
        if (itemViewType == ViewType.GROUP_MEMBER_SECTION_TITLE.ordinal()) {
            return t(position, convertView, parent);
        }
        if (itemViewType == ViewType.GROUP_MEMBER_ITEM.ordinal()) {
            return s(position, convertView, parent);
        }
        if (itemViewType == ViewType.TAG_ITEM.ordinal()) {
            return f0(position, convertView, parent);
        }
        return itemViewType == ViewType.RICH_MESSAGE.ordinal() ? d0(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    void h(String key, u0 value) {
        if (this.f58848k == null) {
            this.f58848k = new Hashtable<>();
        }
        this.f58848k.put(key, value);
    }

    public boolean l0() {
        return this.A;
    }

    public void m() {
        DisplayMetrics displayMetrics = this.f58842e.getResources().getDisplayMetrics();
        float f10 = displayMetrics.density;
        int i10 = (int) (210.0f * f10);
        int i11 = (int) (160.0f * f10);
        float dimensionPixelSize = displayMetrics.widthPixels - (this.f58842e.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2);
        int i12 = ((int) (dimensionPixelSize - ((((int) (6.0f * f10)) * f10) * 2.0f))) / 3;
        if (i12 <= i10) {
            i10 = i12 > i11 ? i11 : i12;
        }
        this.f58853p = i10;
        this.f58858u = (int) ((dimensionPixelSize * 1.0f) / 1.8f);
        int i13 = (int) (0.615f * dimensionPixelSize);
        this.f58854q = i13;
        this.f58855r = (int) ((i13 * 1.0f) / 1.85f);
        int i14 = (int) (dimensionPixelSize * 0.54f);
        this.f58856s = i14;
        this.f58857t = (int) ((i14 * 1.0f) / 0.85f);
    }

    public boolean m0() {
        return this.B;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public void o0(final SimpleDraweeView view, String src) {
        try {
            view.getHierarchy().J(R.drawable.main_normal_icon);
            view.setController(Fresco.newDraweeControllerBuilder().I(new f0(view)).b(com.join.android.app.common.utils.l.I(src)).build());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public int p() {
        return this.f58861x;
    }

    public void s0(DownloadTask downloadTask, int event) {
    }

    void t0(Context context, String imgUrl) {
        Integer[] numArrI0 = com.join.mgps.Util.r0.i0(imgUrl);
        if (numArrI0 != null) {
            u0 u0Var = new u0();
            int iIntValue = numArrI0[0].intValue();
            int iIntValue2 = numArrI0[1].intValue();
            Resources resources = context.getResources();
            int dimensionPixelSize = resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2);
            u0Var.f59217a = dimensionPixelSize;
            u0Var.f59218b = (int) (dimensionPixelSize * 1.0f * ((iIntValue2 * 1.0f) / iIntValue));
            h(imgUrl, u0Var);
        }
    }

    public void w0(int currentPosition) {
        this.f58861x = currentPosition;
    }

    public List<r1> x() {
        return this.f58843f;
    }

    public com.join.android.app.component.optimizetext.b y() {
        return this.f58839b;
    }

    public t0 z() {
        return this.f58852o;
    }

    void z0(View view, int status) {
        view.setEnabled(true);
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            textView.setTextColor(-12802819);
            if (status == 3) {
                textView.setText(textView.getResources().getString(R.string.download_status_pre_download));
                textView.setTextSize(2, 12.0f);
                textView.setTextColor(-12802819);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                return;
            }
            if (status != 2) {
                textView.setText(this.f58842e.getResources().getString(R.string.download_status_download));
                textView.setTextSize(2, 13.0f);
                textView.setTextColor(-12802819);
                textView.setBackgroundResource(R.drawable.recom_blue_butn);
                return;
            }
            textView.setText("即将开放");
            textView.setTextSize(2, 11.0f);
            textView.setTextColor(-7763575);
            textView.setEnabled(false);
            textView.setBackgroundResource(R.drawable.recom_grey_butn);
            return;
        }
        if (view instanceof Button) {
            Button button = (Button) view;
            button.setTextColor(-12802819);
            if (status == 3) {
                button.setText(button.getResources().getString(R.string.download_status_pre_download));
                button.setTextSize(2, 12.0f);
                button.setTextColor(-12802819);
                button.setBackgroundResource(R.drawable.recom_blue_butn);
                return;
            }
            if (status != 2) {
                button.setText(this.f58842e.getResources().getString(R.string.download_status_download));
                button.setTextSize(2, 13.0f);
                button.setTextColor(-12802819);
                button.setBackgroundResource(R.drawable.recom_blue_butn);
                return;
            }
            button.setText("即将开放");
            button.setTextSize(2, 11.0f);
            button.setTextColor(-7763575);
            button.setEnabled(false);
            button.setBackgroundResource(R.drawable.recom_grey_butn);
        }
    }
}
