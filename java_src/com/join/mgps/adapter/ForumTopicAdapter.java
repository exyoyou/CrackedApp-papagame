package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.optimizetext.StaticLayoutView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumTopicAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.join.android.app.component.optimizetext.b f60374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.danikula.videocache.i f60375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f60376d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.join.android.app.component.video.c f60378f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    LinearLayout.LayoutParams f60380h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    LinearLayout.LayoutParams f60382j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    LinearLayout.LayoutParams f60383k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f60379g = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f60381i = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private k f60384l = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<t> f60377e = new ArrayList();

    public enum ViewType {
        FORUM_TOPIC_TOP,
        POST_HEADER,
        POST_SUBJECT,
        POST_MESSAGE,
        POST_IMAGE,
        POST_VIDEO,
        POST_IMAGE_THUMBNAIL,
        POST_VIDEO_THUMBNAIL,
        POST_FOOTER,
        POST_TOP
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f60385b;

        a(final String val$position) {
            this.f60385b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = Integer.parseInt(this.f60385b);
            if (ForumTopicAdapter.this.f60384l != null) {
                ForumTopicAdapter.this.f60384l.c(i10);
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ t.g f60387b;

        b(final t.g val$item) {
            this.f60387b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f60387b.f60478m).start();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60389b;

        c(final int val$pid) {
            this.f60389b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumTopicAdapter.this.f60384l != null) {
                ForumTopicAdapter.this.f60384l.a(this.f60389b);
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60391b;

        d(final int val$pid) {
            this.f60391b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
            forumPostsBean.setPid(this.f60391b);
            com.join.mgps.Util.r0.v0(v10.getContext(), forumPostsBean);
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f60393b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60394c;

        e(final List val$rawPicList, final int val$imgIndex) {
            this.f60393b = val$rawPicList;
            this.f60394c = val$imgIndex;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String[] strArr = new String[this.f60393b.size()];
            this.f60393b.toArray(strArr);
            com.join.mgps.Util.r0.G0(v10.getContext(), this.f60394c, strArr);
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f60396b;

        f(final String val$href) {
            this.f60396b = val$href;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.Util.r0.Q0(v10.getContext(), this.f60396b);
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60398b;

        g(final int val$pid) {
            this.f60398b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumTopicAdapter.this.f60384l != null) {
                ForumTopicAdapter.this.f60384l.d(this.f60398b);
            }
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60400b;

        h(final int val$fid) {
            this.f60400b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumTopicAdapter.this.f60384l != null) {
                ForumTopicAdapter.this.f60384l.e(this.f60400b);
            }
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60402b;

        i(final int val$fid) {
            this.f60402b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumTopicAdapter.this.f60384l != null) {
                ForumTopicAdapter.this.f60384l.b(this.f60402b);
            }
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60404b;

        j(final int val$pid) {
            this.f60404b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v10.findViewById(R.id.forum_post_praise_icon).startAnimation(AnimationUtils.loadAnimation(ForumTopicAdapter.this.f60376d, R.anim.scale_reset));
            if (ForumTopicAdapter.this.f60384l != null) {
                Context context = v10.getContext();
                if (com.join.mgps.Util.r0.Y0(context)) {
                    ForumTopicAdapter.this.f60384l.a(this.f60404b);
                } else {
                    com.join.mgps.Util.a3.b(context).d("用户未登录，请登录");
                    com.join.mgps.Util.r0.L0(context);
                }
            }
        }
    }

    public interface k {
        void a(int pid);

        void b(int fid);

        void c(int position);

        void d(int fid);

        void e(int fid);
    }

    class l extends u {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f60406b;

        l() {
            super();
        }
    }

    class m extends u {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60408b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60409c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Button f60410d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ImageView f60411e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ImageView f60412f;

        m() {
            super();
        }
    }

    class n extends u {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60414b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60415c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f60416d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f60417e;

        n() {
            super();
        }
    }

    class o extends u {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f60419b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60420c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f60421d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f60422e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f60423f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public RelativeLayout f60424g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ImageView f60425h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ImageView f60426i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public VipView f60427j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f60428k;

        o() {
            super();
        }
    }

    class p extends u {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60430b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public RelativeLayout f60431c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f60432d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f60433e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleDraweeView f60434f;

        p() {
            super();
        }
    }

    class q extends u {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public StaticLayoutView f60436b;

        q() {
            super();
        }
    }

    class r extends u {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Button f60438b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60439c;

        r() {
            super();
        }
    }

    class s extends u {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f60441b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public FrameLayout f60442c;

        s() {
            super();
        }
    }

    public static class t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f60444a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f60445b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60446a;

            public a(String bannerUrl) {
                this.f60446a = bannerUrl;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60447a;

            public b(String title) {
                this.f60447a = title;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60448a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60449b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60450c;

            public c(String avatarSrc, String nickName, String desc) {
                this.f60448a = avatarSrc;
                this.f60449b = nickName;
                this.f60450c = desc;
            }
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public ArrayList<HashMap<String, Object>> f60451a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60452b;

            public d(ArrayList<HashMap<String, Object>> data, String errorMsg) {
                this.f60451a = data;
                this.f60452b = errorMsg;
            }
        }

        public static class e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60453a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60454b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60455c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f60456d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60457e;

            public e(String avatarSrc, String nickName, String desc, boolean isFollowed, int fid) {
                this.f60453a = avatarSrc;
                this.f60454b = nickName;
                this.f60455c = desc;
                this.f60456d = isFollowed;
                this.f60457e = fid;
            }
        }

        public static class f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f60458a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60459b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60460c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f60461d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60462e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f60463f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f60464g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f60465h;

            public f() {
            }

            public f(int postId, int fid, String fname, int viewTotal, int commentTotal, int praiseTotal, boolean isPraise, boolean isShowFooterDivider) {
                this.f60458a = postId;
                this.f60463f = fid;
                this.f60459b = fname;
                this.f60460c = viewTotal;
                this.f60461d = commentTotal;
                this.f60462e = praiseTotal;
                this.f60464g = isPraise;
                this.f60465h = isShowFooterDivider;
            }
        }

        public static class g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f60466a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60467b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60468c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public long f60469d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f60470e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f60471f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f60472g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f60473h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f60474i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f60475j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f60476k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f60477l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public int f60478m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public String f60479n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public String f60480o;

            public g() {
            }

            public g(boolean removeDivider, String avatarSrc, String nickName, long timestamps, boolean isTop, int pid, int fid, boolean showDelete, boolean isModerator, int solveFlag, int vip_level, int svip_level, String battleTitle, String battleColor, int uid) {
                this.f60466a = removeDivider;
                this.f60467b = avatarSrc;
                this.f60468c = nickName;
                this.f60469d = timestamps;
                this.f60470e = isTop;
                this.f60471f = pid;
                this.f60472g = fid;
                this.f60478m = uid;
                this.f60473h = showDelete;
                this.f60474i = isModerator;
                this.f60475j = solveFlag;
                this.f60476k = vip_level;
                this.f60477l = svip_level;
                this.f60479n = battleTitle;
                this.f60480o = battleColor;
            }
        }

        public static class h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f60481a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<String> f60482b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60483c;

            public h(List<ForumBean.ForumPostsBean.ResBean> resBeans, List<String> imgUrlLargeList, int pid) {
                this.f60481a = resBeans;
                this.f60482b = imgUrlLargeList;
                this.f60483c = pid;
            }
        }

        public static class i implements com.join.android.app.component.optimizetext.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f60484a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60485b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60486c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f60487d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f60488e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f60489f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f60490g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public SpannableStringBuilder f60491h;

            public i() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f60491h;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f60486c + "";
            }

            public i(boolean startWithBest, String message, int pid, int fid, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, SpannableStringBuilder ssb) {
                this.f60484a = startWithBest;
                this.f60485b = message;
                this.f60486c = pid;
                this.f60487d = fid;
                this.f60488e = isAsk;
                this.f60489f = askMoney;
                this.f60490g = tagInfos;
                this.f60491h = ssb;
            }
        }

        public static class j {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f60492a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60493b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60494c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f60495d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f60496e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f60497f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f60498g;

            public j() {
            }

            public j(boolean isBest, String subject, int pid, int fid, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
                this.f60492a = isBest;
                this.f60493b = subject;
                this.f60494c = pid;
                this.f60495d = fid;
                this.f60496e = isAsk;
                this.f60497f = askMoney;
                this.f60498g = tagInfos;
            }
        }

        public static class k {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f60499a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60500b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f60501c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f60502d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f60503e;

            public k() {
            }

            public k(int pid, String subject, boolean isBest, boolean isAttachPic, boolean isAttachVideo) {
                this.f60499a = pid;
                this.f60500b = subject;
                this.f60501c = isBest;
                this.f60502d = isAttachPic;
                this.f60503e = isAttachVideo;
            }
        }

        public static class l {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60504a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60505b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60506c;

            public l(String thumnailUrl, String videoSrc, String actionBarTitle) {
                this.f60504a = thumnailUrl;
                this.f60505b = videoSrc;
                this.f60506c = actionBarTitle;
            }
        }

        public t() {
        }

        public Object a() {
            return this.f60445b;
        }

        public ViewType b() {
            return this.f60444a;
        }

        public void c(Object obj) {
            this.f60445b = obj;
        }

        public void d(ViewType viewType) {
            this.f60444a = viewType;
        }

        public t(ViewType viewType, Object obj) {
            this.f60444a = viewType;
            this.f60445b = obj;
        }
    }

    class u {
        u() {
        }
    }

    public ForumTopicAdapter(Context mContext, com.join.android.app.component.video.c helper) {
        this.f60378f = helper;
        this.f60376d = mContext;
        this.f60374b = new com.join.android.app.component.optimizetext.b(mContext);
        this.f60375c = p(mContext);
        s();
    }

    private void F(ImageView view, String imgUrl) {
        if (com.join.mgps.Util.t2.h(imgUrl)) {
            view.setVisibility(8);
            return;
        }
        view.setVisibility(0);
        Context context = view.getContext();
        int i10 = context.getResources().getDisplayMetrics().widthPixels - (((int) (context.getResources().getDisplayMetrics().scaledDensity * 6.0f)) * 2);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = i10;
        layoutParams.height = (int) ((i10 * 1.0f) / 1.8f);
        view.setLayoutParams(layoutParams);
    }

    private View e(int position, View convertView, ViewGroup parent) {
        l lVar;
        if (convertView != null) {
            lVar = (l) convertView.getTag();
        } else {
            lVar = new l();
            convertView = LayoutInflater.from(this.f60376d).inflate(R.layout.mg_forum_forum_topic_a_item_top, (ViewGroup) null);
            lVar.f60406b = (SimpleDraweeView) convertView.findViewById(R.id.banner);
            convertView.setTag(lVar);
        }
        try {
            com.join.android.app.common.utils.l.h(lVar.f60406b, ((t.a) getItem(position)).f60446a);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, r(this.f60376d));
            SimpleDraweeView simpleDraweeView = lVar.f60406b;
            if (simpleDraweeView != null) {
                simpleDraweeView.setLayoutParams(layoutParams);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View h(int position, View convertView, ViewGroup parent) {
        n nVar;
        if (convertView != null) {
            nVar = (n) convertView.getTag();
        } else {
            nVar = new n();
            convertView = LayoutInflater.from(this.f60376d).inflate(R.layout.mg_forum_welcome_item_post_footer, (ViewGroup) null);
            nVar.f60414b = (TextView) convertView.findViewById(R.id.forum_name);
            nVar.f60415c = (TextView) convertView.findViewById(R.id.forum_post_view);
            nVar.f60416d = (TextView) convertView.findViewById(R.id.forum_post_commit);
            nVar.f60417e = (TextView) convertView.findViewById(R.id.forum_post_praise);
            convertView.setTag(nVar);
        }
        try {
            t.f fVar = (t.f) getItem(position);
            if (fVar == null) {
                return convertView;
            }
            if (fVar.f60465h) {
                convertView.findViewById(R.id.post_footer_divider).setVisibility(0);
            } else {
                convertView.findViewById(R.id.post_footer_divider).setVisibility(8);
            }
            nVar.f60414b.setText(fVar.f60459b);
            if (com.join.mgps.Util.t2.h(fVar.f60459b)) {
                ((ViewGroup) nVar.f60414b.getParent()).setVisibility(8);
            } else {
                ((ViewGroup) nVar.f60414b.getParent()).setVisibility(0);
            }
            com.join.mgps.Util.r0.D1(nVar.f60415c, fVar.f60460c + "", "0");
            com.join.mgps.Util.r0.D1(nVar.f60416d, fVar.f60461d + "", "0");
            u(convertView, fVar.f60464g, fVar.f60462e);
            int i10 = fVar.f60458a;
            ((View) nVar.f60417e.getParent()).setOnClickListener(new c(i10));
            C(convertView, i10);
            u((View) nVar.f60417e.getParent(), fVar.f60464g, fVar.f60462e);
            E((View) nVar.f60417e.getParent(), i10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View i(int position, View convertView, ViewGroup parent) {
        o oVar;
        if (convertView != null) {
            oVar = (o) convertView.getTag();
        } else {
            oVar = new o();
            convertView = LayoutInflater.from(this.f60376d).inflate(R.layout.mg_forum_welcome_item_post_header, (ViewGroup) null);
            oVar.f60423f = convertView.findViewById(R.id.forum_post_divider);
            oVar.f60419b = (SimpleDraweeView) convertView.findViewById(R.id.forum_post_avatar_src);
            oVar.f60420c = (TextView) convertView.findViewById(R.id.forum_post_nickname);
            oVar.f60421d = (TextView) convertView.findViewById(R.id.forum_post_add_time);
            oVar.f60422e = (TextView) convertView.findViewById(R.id.forum_post_stickie);
            oVar.f60425h = (ImageView) convertView.findViewById(R.id.forum_post_moderator);
            oVar.f60424g = (RelativeLayout) convertView.findViewById(R.id.forumExtFunc);
            oVar.f60426i = (ImageView) convertView.findViewById(R.id.flagBestAnswer);
            oVar.f60427j = (VipView) convertView.findViewById(R.id.vipFlag);
            oVar.f60428k = (TextView) convertView.findViewById(R.id.copperTitleTv);
            convertView.setTag(oVar);
        }
        try {
            t.g gVar = (t.g) getItem(position);
            if (gVar == null) {
                return convertView;
            }
            oVar.f60424g.setVisibility(0);
            try {
                oVar.f60427j.setVipData(gVar.f60476k, gVar.f60477l);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (gVar.f60475j != 1) {
                oVar.f60426i.setVisibility(8);
            } else {
                oVar.f60426i.setVisibility(0);
            }
            if (gVar.f60466a) {
                oVar.f60423f.setVisibility(8);
            } else {
                oVar.f60423f.setVisibility(0);
            }
            oVar.f60420c.setText(gVar.f60468c);
            oVar.f60421d.setText(com.join.android.app.common.utils.i.a(gVar.f60469d * 1000));
            if (gVar.f60470e) {
                oVar.f60422e.setVisibility(0);
            } else {
                oVar.f60422e.setVisibility(8);
            }
            if (gVar.f60474i) {
                oVar.f60420c.setTextColor(this.f60376d.getResources().getColor(R.color.app_blue_color));
                oVar.f60425h.setVisibility(0);
            } else {
                UtilsMy.R3(this.f60376d, oVar.f60420c, gVar.f60476k, gVar.f60477l, R.color.forum_nickname_color);
                oVar.f60425h.setVisibility(8);
            }
            com.join.android.app.common.utils.l.y(oVar.f60419b, gVar.f60467b);
            oVar.f60419b.setOnClickListener(new b(gVar));
            int i10 = gVar.f60471f;
            C(convertView, i10);
            H(oVar.f60424g, i10);
            com.join.mgps.Util.r0.S0(oVar.f60419b, oVar.f60420c, oVar.f60421d);
            com.join.mgps.Util.r0.U0(oVar.f60427j);
            String str = gVar.f60479n;
            String str2 = gVar.f60480o;
            if (oVar.f60428k != null) {
                if (TextUtils.isEmpty(str)) {
                    oVar.f60428k.setVisibility(8);
                } else {
                    oVar.f60428k.setVisibility(0);
                    oVar.f60428k.setText(str);
                    Drawable drawable = this.f60376d.getResources().getDrawable(R.drawable.forum_post_host);
                    if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                        str2 = "#2fccdf";
                    }
                    drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                    oVar.f60428k.setBackgroundDrawable(drawable);
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return convertView;
    }

    private View j(int position, View convertView, ViewGroup parent) {
        p pVar;
        if (convertView != null) {
            pVar = (p) convertView.getTag();
        } else {
            pVar = new p();
            convertView = LayoutInflater.from(this.f60376d).inflate(R.layout.mg_forum_welcome_item_post_thumbnail, (ViewGroup) null);
            pVar.f60431c = (RelativeLayout) convertView.findViewById(R.id.forum_post_media_container);
            pVar.f60430b = (TextView) convertView.findViewById(R.id.images_count);
            pVar.f60432d = (SimpleDraweeView) convertView.findViewById(R.id.img_m_1);
            pVar.f60433e = (SimpleDraweeView) convertView.findViewById(R.id.img_m_2);
            pVar.f60434f = (SimpleDraweeView) convertView.findViewById(R.id.img_m_3);
            convertView.setTag(pVar);
        }
        try {
            t.h hVar = (t.h) getItem(position);
            if (hVar == null) {
                return convertView;
            }
            t(pVar, hVar);
            C(convertView, hVar.f60483c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View k(int position, View convertView, ViewGroup parent) {
        q qVar;
        if (convertView != null) {
            qVar = (q) convertView.getTag();
        } else {
            qVar = new q();
            convertView = LayoutInflater.from(this.f60376d).inflate(R.layout.mg_forum_post_activity_item_post_message1, (ViewGroup) null);
            qVar.f60436b = (StaticLayoutView) convertView.findViewById(R.id.forum_post_message);
            convertView.setTag(qVar);
        }
        try {
            t.i iVar = (t.i) getItem(position);
            if (iVar == null) {
                return convertView;
            }
            if (this.f60374b.d(iVar.f60486c + "") == null) {
                this.f60374b.e(iVar);
            }
            qVar.f60436b.setLayout(this.f60374b.d(iVar.f60486c + ""));
            com.join.mgps.Util.r0.X0(qVar.f60436b);
            C(convertView, iVar.f60486c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View l(int position, View convertView, ViewGroup parent) {
        r rVar;
        if (convertView != null) {
            rVar = (r) convertView.getTag();
        } else {
            rVar = new r();
            convertView = LayoutInflater.from(this.f60376d).inflate(R.layout.mg_forum_welcome_item_post_subject, (ViewGroup) null);
            rVar.f60438b = (Button) convertView.findViewById(R.id.forum_post_best);
            rVar.f60439c = (TextView) convertView.findViewById(R.id.forum_post_subject);
            convertView.setTag(rVar);
        }
        try {
            t.j jVar = (t.j) getItem(position);
            if (jVar == null) {
                return convertView;
            }
            w(rVar.f60439c, jVar.f60493b, jVar.f60492a, jVar.f60496e, jVar.f60497f, jVar.f60498g);
            C(convertView, jVar.f60494c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View m(int position, View convertView, ViewGroup parent) {
        m mVar;
        try {
            if (convertView != null) {
                mVar = (m) convertView.getTag();
            } else {
                mVar = new m();
                convertView = LayoutInflater.from(this.f60376d).inflate(R.layout.mg_forum_forum_activity_top_item, (ViewGroup) null);
                mVar.f60408b = (TextView) convertView.findViewById(R.id.forum_post_subject);
                mVar.f60409c = (TextView) convertView.findViewById(R.id.forum_post_stickie);
                mVar.f60410d = (Button) convertView.findViewById(R.id.forum_post_best);
                mVar.f60411e = (ImageView) convertView.findViewById(R.id.forum_post_pic);
                mVar.f60412f = (ImageView) convertView.findViewById(R.id.forum_post_video);
                convertView.setTag(mVar);
            }
            t.k kVar = (t.k) getItem(position);
            if (kVar == null) {
                return convertView;
            }
            if (com.join.mgps.Util.t2.h(kVar.f60500b)) {
                mVar.f60408b.setVisibility(8);
            } else {
                mVar.f60408b.setVisibility(0);
                mVar.f60408b.setText(kVar.f60500b);
            }
            if (kVar.f60501c) {
                mVar.f60410d.setVisibility(0);
            } else {
                mVar.f60410d.setVisibility(8);
            }
            if (kVar.f60502d) {
                mVar.f60411e.setVisibility(0);
            } else {
                mVar.f60411e.setVisibility(8);
            }
            if (kVar.f60503e) {
                mVar.f60412f.setVisibility(0);
            } else {
                mVar.f60412f.setVisibility(8);
            }
            convertView.setOnClickListener(new d(kVar.f60499a));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private int n(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f60379g == 0) {
            Resources resources = context.getResources();
            this.f60379g = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f60379g;
    }

    private View o(int position, View convertView, ViewGroup parent) {
        s sVar;
        if (convertView != null) {
            sVar = (s) convertView.getTag();
        } else {
            sVar = new s();
            convertView = LayoutInflater.from(this.f60376d).inflate(R.layout.mg_forum_post_activity_item_post_video1, (ViewGroup) null);
            sVar.f60442c = (FrameLayout) convertView.findViewById(R.id.videoContner);
            sVar.f60441b = (SimpleDraweeView) convertView.findViewById(R.id.bannerView);
            convertView.setTag(sVar);
        }
        try {
            t.l lVar = (t.l) getItem(position);
            if (lVar == null) {
                return convertView;
            }
            int iN = n(this.f60376d);
            String strJ = lVar.f60505b;
            String str = lVar.f60504a;
            if (sVar.f60442c != null) {
                sVar.f60442c.setLayoutParams(new RelativeLayout.LayoutParams(-1, iN));
                com.join.android.app.common.utils.l.d(sVar.f60441b, R.drawable.video_bg, str);
                sVar.f60441b.setTag(Integer.valueOf(position));
                if (com.join.mgps.Util.t2.i(strJ)) {
                    com.danikula.videocache.i iVar = this.f60375c;
                    if (iVar != null) {
                        strJ = iVar.j(strJ);
                    }
                    this.f60378f.d(position, new com.join.android.app.component.video.c.l(position, strJ, str), new boolean[0]);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private int r(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f60381i == 0) {
            Resources resources = context.getResources();
            int i10 = resources.getDisplayMetrics().widthPixels;
            resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding);
            this.f60381i = (int) (((i10 - 0) * 1.0f) / 2.07f);
        }
        return this.f60381i;
    }

    private void s() {
        if (this.f60380h == null) {
            this.f60380h = q();
        }
    }

    private void t(p holder, t.h item) {
        if (item == null || item.f60481a.size() == 0) {
            holder.f60431c.setVisibility(8);
            return;
        }
        if (this.f60380h == null) {
            this.f60380h = q();
        }
        List<String> list = item.f60482b;
        TextView textView = holder.f60430b;
        if (list == null || list.size() <= 3) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText("共" + list.size() + "张");
        }
        SimpleDraweeView[] simpleDraweeViewArr = {holder.f60432d, holder.f60433e, holder.f60434f};
        int i10 = 0;
        for (int i11 = 0; i11 < 3; i11++) {
            SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i11];
            if (i11 >= item.f60481a.size()) {
                simpleDraweeView.setVisibility(8);
            } else {
                ForumBean.ForumPostsBean.ResBean resBean = item.f60481a.get(i11);
                if (resBean.getType().equals("pic")) {
                    y(simpleDraweeView, i11, resBean.getThumb(), i11 - i10, list);
                } else if (resBean.getType().equals("video")) {
                    i10++;
                    G(simpleDraweeView, i11, resBean.getThumb(), resBean.getRaw());
                }
            }
        }
    }

    private void u(View parent, boolean like, int count) {
        TextView textView = (TextView) parent.findViewById(R.id.forum_post_praise);
        ImageView imageView = (ImageView) parent.findViewById(R.id.forum_post_praise_icon);
        if (like) {
            imageView.setImageResource(R.drawable.like);
            textView.setText(count + "");
            return;
        }
        imageView.setImageResource(R.drawable.unlike);
        textView.setText(count + "");
    }

    private void v(View parent, ForumBean.ForumPostsBean bean) {
        boolean zIs_praise = bean.is_praise();
        int praise = bean.getPraise();
        bean.setPraise(zIs_praise ? praise - 1 : praise + 1);
        bean.setIs_praise(!zIs_praise);
        u(parent, bean.is_praise(), bean.getPraise());
    }

    private void w(TextView tv2, String message, boolean best, boolean ask, String moneyForAnswer, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
        com.join.mgps.Util.r0.w1(tv2, message, best, ask, moneyForAnswer, tagInfos);
    }

    public void A(com.join.android.app.component.optimizetext.b layoutManager) {
        this.f60374b = layoutManager;
    }

    public void B(View v10, final int fid) {
        v10.setOnClickListener(new h(fid));
    }

    public void C(View v10, final int pid) {
        v10.setOnClickListener(new g(pid));
    }

    public void D(View v10, final String videoSrc, final String position) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new a(position));
    }

    public void E(View v10, final int pid) {
        v10.setOnClickListener(new j(pid));
    }

    void G(SimpleDraweeView img, int showIndex, String url, final String href) {
        if (this.f60380h == null) {
            this.f60380h = q();
        }
        int i10 = (int) (this.f60376d.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f60380h;
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
        img.setOnClickListener(new f(href));
    }

    public void H(View v10, final int fid) {
        v10.setOnClickListener(new i(fid));
    }

    LinearLayout.LayoutParams c(int measuredWidth) {
        if (this.f60383k == null) {
            float f10 = this.f60376d.getResources().getDisplayMetrics().scaledDensity;
            int i10 = (int) (225.0f * f10);
            int i11 = (int) (150.0f * f10);
            int i12 = (int) (f10 * 4.0f);
            if (measuredWidth <= i10) {
                i10 = measuredWidth > 0 ? measuredWidth : 0;
            }
            int i13 = (int) (i10 / 1.5f);
            if (measuredWidth <= 0) {
                i10 = -1;
            } else {
                i11 = i13;
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i10, i11);
            layoutParams.setMargins(0, i12, 0, i12);
            this.f60383k = layoutParams;
        }
        return this.f60383k;
    }

    LinearLayout.LayoutParams d(View view) {
        if (this.f60382j == null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams.setMargins(0, 0, 0, ((int) view.getContext().getResources().getDisplayMetrics().density) * 6);
            this.f60382j = layoutParams;
        }
        return this.f60382j;
    }

    public List<t> f() {
        return this.f60377e;
    }

    public com.join.android.app.component.optimizetext.b g() {
        return this.f60374b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<t> list = this.f60377e;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<t> list = this.f60377e;
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
        List<t> list = this.f60377e;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.FORUM_TOPIC_TOP.ordinal()) {
            return e(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_HEADER.ordinal()) {
            return i(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return h(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_IMAGE_THUMBNAIL.ordinal()) {
            return j(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_VIDEO_THUMBNAIL.ordinal()) {
            return o(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_MESSAGE.ordinal()) {
            return k(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_SUBJECT.ordinal()) {
            return l(position, convertView, parent);
        }
        return itemViewType == ViewType.POST_TOP.ordinal() ? m(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public com.danikula.videocache.i p(Context context) {
        return MApplication.q(context);
    }

    LinearLayout.LayoutParams q() {
        DisplayMetrics displayMetrics = this.f60376d.getResources().getDisplayMetrics();
        float f10 = displayMetrics.density;
        int i10 = (int) (210.0f * f10);
        int i11 = (int) (160.0f * f10);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f60376d.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f10)) * f10) * 2.0f))) / 3;
        if (dimensionPixelSize <= i10) {
            i10 = dimensionPixelSize > i11 ? i11 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i10, i10);
    }

    public void x(k l10) {
        this.f60384l = l10;
    }

    void y(SimpleDraweeView img, int showIndex, String url, final int imgIndex, final List<String> rawPicList) {
        if (this.f60380h == null) {
            this.f60380h = q();
        }
        int i10 = (int) (this.f60376d.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f60380h;
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
        img.setOnClickListener(new e(rawPicList, imgIndex));
    }

    public void z(List<t> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f60377e == null) {
            this.f60377e = new ArrayList();
        }
        this.f60377e.clear();
        this.f60377e.addAll(itemBeans);
    }
}
