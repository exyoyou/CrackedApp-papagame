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
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumProfileAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.join.android.app.component.optimizetext.b f59703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.danikula.videocache.i f59704c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f59705d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    LinearLayout.LayoutParams f59708g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    LinearLayout.LayoutParams f59709h;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f59707f = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private j f59710i = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<r> f59706e = new ArrayList();

    public enum ViewType {
        POST_HEADER,
        POST_SUBJECT,
        POST_MESSAGE,
        POST_IMAGE_THUMBNAIL,
        POST_VIDEO_THUMBNAIL,
        POST_FOOTER
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ r.f f59711b;

        a(final r.f val$item) {
            this.f59711b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f59711b.f59788m).start();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59713b;

        b(final int val$pid) {
            this.f59713b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileAdapter.this.f59710i != null) {
                ForumProfileAdapter.this.f59710i.a(this.f59713b);
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f59715b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f59716c;

        c(final List val$rawPicList, final int val$imgIndex) {
            this.f59715b = val$rawPicList;
            this.f59716c = val$imgIndex;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String[] strArr = new String[this.f59715b.size()];
            this.f59715b.toArray(strArr);
            com.join.mgps.Util.r0.G0(v10.getContext(), this.f59716c, strArr);
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f59718b;

        d(final String val$href) {
            this.f59718b = val$href;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.Util.r0.Q0(v10.getContext(), this.f59718b);
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59720b;

        e(final int val$pid) {
            this.f59720b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileAdapter.this.f59710i != null) {
                ForumProfileAdapter.this.f59710i.g(this.f59720b);
            }
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59722b;

        f(final int val$fid) {
            this.f59722b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileAdapter.this.f59710i != null) {
                ForumProfileAdapter.this.f59710i.f(this.f59722b);
            }
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59724b;

        g(final int val$fid) {
            this.f59724b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileAdapter.this.f59710i != null) {
                ForumProfileAdapter.this.f59710i.b(this.f59724b);
            }
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59726b;

        h(final int val$pid) {
            this.f59726b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v10.findViewById(R.id.forum_post_praise_icon).startAnimation(AnimationUtils.loadAnimation(ForumProfileAdapter.this.f59705d, R.anim.scale_reset));
            if (ForumProfileAdapter.this.f59710i != null) {
                Context context = v10.getContext();
                if (com.join.mgps.Util.r0.Y0(context)) {
                    ForumProfileAdapter.this.f59710i.a(this.f59726b);
                } else {
                    com.join.mgps.Util.a3.b(context).d("用户未登录，请登录");
                    com.join.mgps.Util.r0.L0(context);
                }
            }
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f59728b;

        i(final String val$position) {
            this.f59728b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int i10 = Integer.parseInt(this.f59728b);
            if (ForumProfileAdapter.this.f59710i != null) {
                ForumProfileAdapter.this.f59710i.c(i10);
            }
        }
    }

    public interface j {
        void a(int pid);

        void b(int fid);

        void c(int position);

        void f(int fid);

        void g(int fid);
    }

    class k extends s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f59730b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59731c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f59732d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f59733e;

        k() {
            super();
        }
    }

    class l extends s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f59735b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59736c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f59737d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f59738e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f59739f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ImageView f59740g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public RelativeLayout f59741h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public VipView f59742i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ImageView f59743j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f59744k;

        l() {
            super();
        }
    }

    class m extends s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f59746b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public RelativeLayout f59747c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public SimpleDraweeView f59748d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SimpleDraweeView f59749e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleDraweeView f59750f;

        m() {
            super();
        }
    }

    class n extends s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ImageView f59752b;

        n() {
            super();
        }
    }

    class o extends s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public StaticLayoutView f59754b;

        o() {
            super();
        }
    }

    class p extends s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Button f59756b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59757c;

        p() {
            super();
        }
    }

    class q extends s {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ImageView f59759b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SimpleDraweeView f59760c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public FrameLayout f59761d;

        q() {
            super();
        }
    }

    public static class r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f59763a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f59764b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<ForumBean.ForumWelcomeAdItemBean> f59765a;

            public a() {
            }

            public a(List<ForumBean.ForumWelcomeAdItemBean> adItemBeans) {
                this.f59765a = adItemBeans;
            }
        }

        public static class b {
        }

        public static class c {
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            ForumBean f59766a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            ForumBean f59767b;

            public d() {
            }

            public d(ForumBean item, ForumBean item1) {
                this.f59766a = item;
                this.f59767b = item1;
            }
        }

        public static class e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59768a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59769b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59770c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59771d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f59772e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59773f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f59774g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59775h;

            public e() {
            }

            public e(int postId, int fid, String fname, int viewTotal, int commentTotal, int praiseTotal, boolean isPraise, boolean isShowFooterDivider) {
                this.f59768a = postId;
                this.f59773f = fid;
                this.f59769b = fname;
                this.f59770c = viewTotal;
                this.f59771d = commentTotal;
                this.f59772e = praiseTotal;
                this.f59774g = isPraise;
                this.f59775h = isShowFooterDivider;
            }
        }

        public static class f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59776a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59777b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59778c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public long f59779d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59780e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59781f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f59782g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59783h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f59784i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f59785j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f59786k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f59787l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public int f59788m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public String f59789n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public String f59790o;

            public f() {
            }

            public f(boolean removeDivider, String avatarSrc, String nickName, long timestamps, boolean isTop, int pid, int fid, boolean showDelete, int vip_level, int svip_level, boolean officialAccount, String battleTitle, String battleColor, int uid) {
                this.f59776a = removeDivider;
                this.f59777b = avatarSrc;
                this.f59778c = nickName;
                this.f59779d = timestamps;
                this.f59780e = isTop;
                this.f59781f = pid;
                this.f59782g = fid;
                this.f59788m = uid;
                this.f59783h = showDelete;
                this.f59786k = vip_level;
                this.f59787l = svip_level;
                this.f59785j = officialAccount;
                this.f59789n = battleTitle;
                this.f59790o = battleColor;
            }
        }

        public static class g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f59791a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<String> f59792b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59793c;

            public g(List<ForumBean.ForumPostsBean.ResBean> resBeans, List<String> imgUrlLargeList, int pid) {
                this.f59791a = resBeans;
                this.f59792b = imgUrlLargeList;
                this.f59793c = pid;
            }
        }

        public static class h implements com.join.android.app.component.optimizetext.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59794a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59795b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59796c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59797d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59798e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f59799f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59800g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public SpannableStringBuilder f59801h;

            public h() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f59801h;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f59796c + "";
            }

            public h(boolean startWithBest, String message, int pid, int fid, boolean isAsk, String askMoeny, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, SpannableStringBuilder ssb) {
                this.f59794a = startWithBest;
                this.f59795b = message;
                this.f59796c = pid;
                this.f59797d = fid;
                this.f59798e = isAsk;
                this.f59799f = askMoeny;
                this.f59800g = tagInfos;
                this.f59801h = ssb;
            }
        }

        public static class i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59802a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59803b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f59804c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f59805d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59806e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f59807f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f59808g;

            public i() {
            }

            public i(boolean isBest, String subject, int pid, int fid, boolean isAsk, String askMoeny, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
                this.f59802a = isBest;
                this.f59803b = subject;
                this.f59804c = pid;
                this.f59805d = fid;
                this.f59806e = isAsk;
                this.f59807f = askMoeny;
                this.f59808g = tagInfos;
            }
        }

        public static class j {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f59809a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59810b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59811c;

            public j(String thumnailUrl, String videoSrc, String actionBarTitle) {
                this.f59809a = thumnailUrl;
                this.f59810b = videoSrc;
                this.f59811c = actionBarTitle;
            }
        }

        public r() {
        }

        public Object a() {
            return this.f59764b;
        }

        public ViewType b() {
            return this.f59763a;
        }

        public void c(Object obj) {
            this.f59764b = obj;
        }

        public void d(ViewType viewType) {
            this.f59763a = viewType;
        }

        public r(ViewType viewType, Object obj) {
            this.f59763a = viewType;
            this.f59764b = obj;
        }
    }

    class s {
        s() {
        }
    }

    public ForumProfileAdapter(Context mContext) {
        this.f59705d = mContext;
        this.f59703b = new com.join.android.app.component.optimizetext.b(mContext);
        this.f59704c = m(mContext);
        o();
    }

    private View f(int position, View convertView, ViewGroup parent) {
        k kVar;
        if (convertView != null) {
            kVar = (k) convertView.getTag();
        } else {
            kVar = new k();
            convertView = LayoutInflater.from(this.f59705d).inflate(R.layout.mg_forum_welcome_item_post_footer, (ViewGroup) null);
            kVar.f59730b = (TextView) convertView.findViewById(R.id.forum_name);
            kVar.f59731c = (TextView) convertView.findViewById(R.id.forum_post_view);
            kVar.f59732d = (TextView) convertView.findViewById(R.id.forum_post_commit);
            kVar.f59733e = (TextView) convertView.findViewById(R.id.forum_post_praise);
            convertView.setTag(kVar);
        }
        try {
            r.e eVar = (r.e) getItem(position);
            if (eVar == null) {
                return convertView;
            }
            if (eVar.f59775h) {
                convertView.findViewById(R.id.post_footer_divider).setVisibility(0);
            } else {
                convertView.findViewById(R.id.post_footer_divider).setVisibility(8);
            }
            kVar.f59730b.setText(eVar.f59769b);
            if (com.join.mgps.Util.t2.h(eVar.f59769b)) {
                ((ViewGroup) kVar.f59730b.getParent()).setVisibility(8);
            } else {
                ((ViewGroup) kVar.f59730b.getParent()).setVisibility(0);
            }
            com.join.mgps.Util.r0.D1(kVar.f59731c, eVar.f59770c + "", "0");
            com.join.mgps.Util.r0.D1(kVar.f59732d, eVar.f59771d + "", "0");
            p(convertView, eVar.f59774g, eVar.f59772e);
            int i10 = eVar.f59768a;
            ((View) kVar.f59733e.getParent()).setOnClickListener(new b(i10));
            y(convertView, i10);
            x((View) kVar.f59730b.getParent(), eVar.f59773f);
            A((View) kVar.f59733e.getParent(), i10, eVar.f59774g, eVar.f59772e);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View g(int position, View convertView, ViewGroup parent) {
        l lVar;
        if (convertView != null) {
            lVar = (l) convertView.getTag();
        } else {
            lVar = new l();
            convertView = LayoutInflater.from(this.f59705d).inflate(R.layout.mg_forum_welcome_item_post_header, (ViewGroup) null);
            lVar.f59739f = convertView.findViewById(R.id.forum_post_divider);
            lVar.f59735b = (SimpleDraweeView) convertView.findViewById(R.id.forum_post_avatar_src);
            lVar.f59736c = (TextView) convertView.findViewById(R.id.forum_post_nickname);
            lVar.f59737d = (TextView) convertView.findViewById(R.id.forum_post_add_time);
            lVar.f59738e = (TextView) convertView.findViewById(R.id.forum_post_stickie);
            lVar.f59741h = (RelativeLayout) convertView.findViewById(R.id.forumExtFunc);
            lVar.f59740g = (ImageView) convertView.findViewById(R.id.forum_post_moderator);
            lVar.f59743j = (ImageView) convertView.findViewById(R.id.officialIcon);
            lVar.f59742i = (VipView) convertView.findViewById(R.id.vipFlag);
            lVar.f59744k = (TextView) convertView.findViewById(R.id.copperTitleTv);
            convertView.setTag(lVar);
        }
        try {
            r.f fVar = (r.f) getItem(position);
            if (fVar == null) {
                return convertView;
            }
            try {
                UtilsMy.R3(this.f59705d, lVar.f59736c, fVar.f59786k, fVar.f59787l, R.color.forum_nickname_color);
                lVar.f59742i.setVipData(fVar.f59786k, fVar.f59787l);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            lVar.f59741h.setVisibility(0);
            if (fVar.f59776a) {
                lVar.f59739f.setVisibility(8);
            } else {
                lVar.f59739f.setVisibility(0);
            }
            lVar.f59736c.setText(fVar.f59778c);
            lVar.f59737d.setText(com.join.android.app.common.utils.i.a(fVar.f59779d * 1000));
            if (fVar.f59780e) {
                lVar.f59738e.setVisibility(0);
            } else {
                lVar.f59738e.setVisibility(8);
            }
            if (fVar.f59784i) {
                lVar.f59740g.setVisibility(0);
            } else {
                lVar.f59740g.setVisibility(8);
            }
            if (fVar.f59785j) {
                lVar.f59743j.setVisibility(0);
            } else {
                lVar.f59743j.setVisibility(8);
            }
            com.join.android.app.common.utils.l.y(lVar.f59735b, fVar.f59777b);
            lVar.f59735b.setOnClickListener(new a(fVar));
            int i10 = fVar.f59781f;
            y(convertView, i10);
            C(lVar.f59741h, i10);
            com.join.mgps.Util.r0.S0(lVar.f59735b, lVar.f59736c, lVar.f59737d);
            com.join.mgps.Util.r0.U0(lVar.f59742i);
            String str = fVar.f59789n;
            String str2 = fVar.f59790o;
            if (lVar.f59744k != null) {
                if (TextUtils.isEmpty(str)) {
                    lVar.f59744k.setVisibility(8);
                } else {
                    lVar.f59744k.setVisibility(0);
                    lVar.f59744k.setText(str);
                    Drawable drawable = this.f59705d.getResources().getDrawable(R.drawable.forum_post_host);
                    if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                        str2 = "#2fccdf";
                    }
                    drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                    lVar.f59744k.setBackgroundDrawable(drawable);
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return convertView;
    }

    private View h(int position, View convertView, ViewGroup parent) {
        m mVar;
        if (convertView != null) {
            mVar = (m) convertView.getTag();
        } else {
            mVar = new m();
            convertView = LayoutInflater.from(this.f59705d).inflate(R.layout.mg_forum_welcome_item_post_thumbnail, (ViewGroup) null);
            mVar.f59747c = (RelativeLayout) convertView.findViewById(R.id.forum_post_media_container);
            mVar.f59746b = (TextView) convertView.findViewById(R.id.images_count);
            mVar.f59748d = (SimpleDraweeView) convertView.findViewById(R.id.img_m_1);
            mVar.f59749e = (SimpleDraweeView) convertView.findViewById(R.id.img_m_2);
            mVar.f59750f = (SimpleDraweeView) convertView.findViewById(R.id.img_m_3);
            convertView.setTag(mVar);
        }
        try {
            r.g gVar = (r.g) getItem(position);
            if (gVar == null) {
                return convertView;
            }
            q(mVar, gVar);
            y(convertView, gVar.f59793c);
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
            convertView = LayoutInflater.from(this.f59705d).inflate(R.layout.mg_forum_post_activity_item_post_message1, (ViewGroup) null);
            oVar.f59754b = (StaticLayoutView) convertView.findViewById(R.id.forum_post_message);
            convertView.setTag(oVar);
        }
        try {
            r.h hVar = (r.h) getItem(position);
            if (hVar == null) {
                return convertView;
            }
            if (this.f59703b.d(hVar.f59796c + "") == null) {
                this.f59703b.e(hVar);
            }
            oVar.f59754b.setLayout(this.f59703b.d(hVar.f59796c + ""));
            com.join.mgps.Util.r0.X0(oVar.f59754b);
            y(convertView, hVar.f59796c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View j(int position, View convertView, ViewGroup parent) {
        p pVar;
        if (convertView != null) {
            pVar = (p) convertView.getTag();
        } else {
            pVar = new p();
            convertView = LayoutInflater.from(this.f59705d).inflate(R.layout.mg_forum_welcome_item_post_subject, (ViewGroup) null);
            pVar.f59756b = (Button) convertView.findViewById(R.id.forum_post_best);
            pVar.f59757c = (TextView) convertView.findViewById(R.id.forum_post_subject);
            convertView.setTag(pVar);
        }
        try {
            r.i iVar = (r.i) getItem(position);
            if (iVar == null) {
                return convertView;
            }
            s(pVar.f59757c, iVar.f59803b, iVar.f59802a, iVar.f59806e, iVar.f59807f, iVar.f59808g);
            y(convertView, iVar.f59804c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private int k(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f59707f == 0) {
            Resources resources = context.getResources();
            this.f59707f = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.f59707f;
    }

    private View l(int position, View convertView, ViewGroup parent) {
        q qVar;
        if (convertView != null) {
            qVar = (q) convertView.getTag();
        } else {
            qVar = new q();
            convertView = LayoutInflater.from(this.f59705d).inflate(R.layout.mg_forum_post_activity_item_post_video1, (ViewGroup) null);
            qVar.f59761d = (FrameLayout) convertView.findViewById(R.id.videoContner);
            qVar.f59760c = (SimpleDraweeView) convertView.findViewById(R.id.bannerView);
            convertView.setTag(qVar);
        }
        try {
            r.j jVar = (r.j) getItem(position);
            if (jVar == null) {
                return convertView;
            }
            k(this.f59705d);
            String str = jVar.f59810b;
            String str2 = jVar.f59809a;
            if (qVar.f59761d != null) {
                com.join.android.app.common.utils.l.d(qVar.f59760c, R.drawable.video_bg, str2);
                if (com.join.mgps.Util.t2.i(str)) {
                    new com.join.android.app.component.video.c.l(position, str, str2);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private void o() {
        if (this.f59708g == null) {
            this.f59708g = n();
        }
    }

    private void p(View parent, boolean like, int count) {
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

    private void q(m holder, r.g item) {
        if (item == null || item.f59791a.size() == 0) {
            holder.f59747c.setVisibility(8);
            return;
        }
        if (this.f59708g == null) {
            this.f59708g = n();
        }
        List<String> list = item.f59792b;
        TextView textView = holder.f59746b;
        if (list == null || list.size() <= 3) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText("共" + list.size() + "张");
        }
        SimpleDraweeView[] simpleDraweeViewArr = {holder.f59748d, holder.f59749e, holder.f59750f};
        int i10 = 0;
        for (int i11 = 0; i11 < 3; i11++) {
            SimpleDraweeView simpleDraweeView = simpleDraweeViewArr[i11];
            if (i11 >= item.f59791a.size()) {
                simpleDraweeView.setVisibility(8);
            } else {
                ForumBean.ForumPostsBean.ResBean resBean = item.f59791a.get(i11);
                if (resBean.getType().equals("pic")) {
                    u(simpleDraweeView, i11, resBean.getThumb(), i11 - i10, list);
                } else if (resBean.getType().equals("video")) {
                    i10++;
                    B(simpleDraweeView, i11, resBean.getThumb(), resBean.getRaw());
                }
            }
        }
    }

    private void r(View parent, ForumBean.ForumPostsBean bean) {
        boolean zIs_praise = bean.is_praise();
        int praise = bean.getPraise();
        bean.setPraise(zIs_praise ? praise - 1 : praise + 1);
        bean.setIs_praise(!zIs_praise);
        p(parent, bean.is_praise(), bean.getPraise());
    }

    private void s(TextView tv2, String message, boolean best, boolean ask, String moneyForAnswer, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
        com.join.mgps.Util.r0.w1(tv2, message, best, ask, moneyForAnswer, tagInfos);
    }

    public void A(View v10, final int pid, final boolean isPraise, final int praiseTotal) {
        v10.setOnClickListener(new h(pid));
    }

    void B(SimpleDraweeView img, int showIndex, String url, final String href) {
        if (this.f59708g == null) {
            this.f59708g = n();
        }
        int i10 = (int) (this.f59705d.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f59708g;
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
        img.setOnClickListener(new d(href));
    }

    public void C(View v10, final int fid) {
        v10.setOnClickListener(new g(fid));
    }

    LinearLayout.LayoutParams c(View view) {
        if (this.f59709h == null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams.setMargins(0, 0, 0, ((int) view.getContext().getResources().getDisplayMetrics().density) * 6);
            this.f59709h = layoutParams;
        }
        return this.f59709h;
    }

    public List<r> d() {
        return this.f59706e;
    }

    public com.join.android.app.component.optimizetext.b e() {
        return this.f59703b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<r> list = this.f59706e;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<r> list = this.f59706e;
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
        List<r> list = this.f59706e;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.POST_HEADER.ordinal()) {
            return g(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return f(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_IMAGE_THUMBNAIL.ordinal()) {
            return h(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_VIDEO_THUMBNAIL.ordinal()) {
            return l(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_MESSAGE.ordinal()) {
            return i(position, convertView, parent);
        }
        return itemViewType == ViewType.POST_SUBJECT.ordinal() ? j(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public com.danikula.videocache.i m(Context context) {
        return MApplication.q(context);
    }

    LinearLayout.LayoutParams n() {
        DisplayMetrics displayMetrics = this.f59705d.getResources().getDisplayMetrics();
        float f10 = displayMetrics.density;
        int i10 = (int) (210.0f * f10);
        int i11 = (int) (160.0f * f10);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f59705d.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f10)) * f10) * 2.0f))) / 3;
        if (dimensionPixelSize <= i10) {
            i10 = dimensionPixelSize > i11 ? i11 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i10, i10);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    public void t(j l10) {
        this.f59710i = l10;
    }

    void u(SimpleDraweeView img, int showIndex, String url, final int imgIndex, final List<String> rawPicList) {
        if (this.f59708g == null) {
            this.f59708g = n();
        }
        int i10 = (int) (this.f59705d.getResources().getDisplayMetrics().density * 6.0f);
        LinearLayout.LayoutParams layoutParams = this.f59708g;
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

    public void v(List<r> items) {
        if (items == null) {
            return;
        }
        if (this.f59706e == null) {
            this.f59706e = new ArrayList();
        }
        this.f59706e.clear();
        this.f59706e.addAll(items);
    }

    public void w(com.join.android.app.component.optimizetext.b layoutManager) {
        this.f59703b = layoutManager;
    }

    public void x(View v10, final int fid) {
        v10.setOnClickListener(new f(fid));
    }

    public void y(View v10, final int pid) {
        v10.setOnClickListener(new e(pid));
    }

    public void z(View v10, final String videoSrc, final String position) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new i(position));
    }
}
