package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumProfileMessageAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f60120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<j> f60121c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f60122d;

    public enum ViewType {
        PROFILE_HEADER,
        PROFILE_MESSAGE_ITEM,
        PROFILE_FOOTER
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ j.b f60123b;

        a(final j.b val$item) {
            this.f60123b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f60123b.f60172l).start();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60125b;

        b(final int val$pid) {
            this.f60125b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileMessageAdapter.this.f60122d != null) {
                ForumProfileMessageAdapter.this.f60122d.d(this.f60125b);
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60127b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60128c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f60129d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f60130e;

        c(final int val$pid, final int val$cid, final int val$rid, final String val$fromNickName) {
            this.f60127b = val$pid;
            this.f60128c = val$cid;
            this.f60129d = val$rid;
            this.f60130e = val$fromNickName;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileMessageAdapter.this.f60122d != null) {
                ForumProfileMessageAdapter.this.f60122d.a(this.f60127b, this.f60128c, this.f60129d, this.f60130e);
            }
        }
    }

    public interface d {
        void a(int pid, int cid, int rid, String fromNickName);

        void d(int pid);
    }

    class e extends k {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f60132b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60133c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RelativeLayout f60134d;

        e() {
            super();
        }
    }

    class f extends k {
        f() {
            super();
        }
    }

    class g extends k {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f60137b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60138c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f60139d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f60140e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public RelativeLayout f60141f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ImageView f60142g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ImageView f60143h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public VipView f60144i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ImageView f60145j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f60146k;

        g() {
            super();
        }
    }

    class h extends k {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60148b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f60149c;

        h() {
            super();
        }
    }

    class i extends k {
        i() {
            super();
        }
    }

    public static class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f60152a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f60153b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f60154a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60155b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60156c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f60157d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f60158e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f60159f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f60160g;

            public a(int pid, String thumbUrl, String message, int cid, String fromType, String fromNickName, int rid) {
                this.f60154a = pid;
                this.f60155b = thumbUrl;
                this.f60156c = message;
                this.f60157d = cid;
                this.f60158e = fromType;
                this.f60159f = fromNickName;
                this.f60160g = rid;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f60161a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60162b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60163c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public long f60164d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f60165e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f60166f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f60167g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f60168h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f60169i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public String f60170j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f60171k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public int f60172l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public int f60173m;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public int f60174n;

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public String f60175o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            public String f60176p;

            public b(boolean removeDivider, String avatarSrc, String nickName, long timestamps, boolean isTop, int pid, boolean isModerator, boolean officialAccount, int cid, String fromType, int rid, int vip_level, int svip_level, String battleTitle, String battleColor, int uid) {
                this.f60161a = removeDivider;
                this.f60162b = avatarSrc;
                this.f60163c = nickName;
                this.f60164d = timestamps;
                this.f60165e = isTop;
                this.f60166f = pid;
                this.f60172l = uid;
                this.f60167g = isModerator;
                this.f60168h = officialAccount;
                this.f60169i = cid;
                this.f60170j = fromType;
                this.f60171k = rid;
                this.f60173m = vip_level;
                this.f60174n = svip_level;
                this.f60175o = battleTitle;
                this.f60176p = battleColor;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f60177a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60178b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60179c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f60180d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60181e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f60182f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f60183g;

            public c(int pid, String fromType, String fromNickName, String message, int cid, int rid, boolean officialAccount) {
                this.f60177a = pid;
                this.f60178b = fromType;
                this.f60179c = fromNickName;
                this.f60180d = message;
                this.f60181e = cid;
                this.f60182f = rid;
                this.f60183g = officialAccount;
            }
        }

        public j() {
        }

        public Object a() {
            return this.f60153b;
        }

        public ViewType b() {
            return this.f60152a;
        }

        public void c(Object obj) {
            this.f60153b = obj;
        }

        public void d(ViewType viewType) {
            this.f60152a = viewType;
        }

        public j(ViewType viewType, Object obj) {
            this.f60152a = viewType;
            this.f60153b = obj;
        }
    }

    class k {
        k() {
        }
    }

    public ForumProfileMessageAdapter(Context mContext) {
        this.f60120b = mContext;
    }

    private View c(int position, View convertView, ViewGroup parent) {
        e eVar;
        try {
            if (convertView != null) {
                eVar = (e) convertView.getTag();
            } else {
                eVar = new e();
                convertView = LayoutInflater.from(this.f60120b).inflate(R.layout.mg_forum_profile_footer, (ViewGroup) null);
                eVar.f60134d = (RelativeLayout) convertView.findViewById(R.id.post_profile_post_profile);
                eVar.f60132b = (SimpleDraweeView) convertView.findViewById(R.id.post_profile_image);
                eVar.f60133c = (TextView) convertView.findViewById(R.id.post_profile_message);
                convertView.setTag(eVar);
            }
            j.a aVar = (j.a) getItem(position);
            if (aVar == null) {
                return convertView;
            }
            if (com.join.mgps.Util.t2.h(aVar.f60155b)) {
                eVar.f60132b.setVisibility(8);
            } else {
                eVar.f60132b.setVisibility(0);
                com.join.android.app.common.utils.l.h(eVar.f60132b, aVar.f60155b);
            }
            com.join.mgps.Util.r0.D1(eVar.f60133c, aVar.f60156c, "");
            f(eVar.f60134d, aVar.f60154a);
            i(convertView, aVar.f60158e, aVar.f60154a, aVar.f60157d, aVar.f60160g, aVar.f60159f);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View d(int position, View convertView, ViewGroup parent) {
        g gVar;
        View view;
        if (convertView != null) {
            gVar = (g) convertView.getTag();
            view = convertView;
        } else {
            gVar = new g();
            View viewInflate = LayoutInflater.from(this.f60120b).inflate(R.layout.mg_forum_profile_header, (ViewGroup) null);
            gVar.f60140e = viewInflate.findViewById(R.id.forum_post_divider);
            gVar.f60137b = (SimpleDraweeView) viewInflate.findViewById(R.id.forum_post_avatar_src);
            gVar.f60138c = (TextView) viewInflate.findViewById(R.id.forum_post_nickname);
            gVar.f60139d = (TextView) viewInflate.findViewById(R.id.forum_post_add_time);
            gVar.f60141f = (RelativeLayout) viewInflate.findViewById(R.id.forumExtFunc);
            gVar.f60142g = (ImageView) viewInflate.findViewById(R.id.moreFunc);
            gVar.f60143h = (ImageView) viewInflate.findViewById(R.id.replyFunc);
            gVar.f60144i = (VipView) viewInflate.findViewById(R.id.vipFlag);
            gVar.f60145j = (ImageView) viewInflate.findViewById(R.id.officialIcon);
            gVar.f60146k = (TextView) viewInflate.findViewById(R.id.copperTitleTv);
            viewInflate.setTag(gVar);
            view = viewInflate;
        }
        try {
            j.b bVar = (j.b) getItem(position);
            if (bVar == null) {
                return view;
            }
            UtilsMy.R3(this.f60120b, gVar.f60138c, bVar.f60173m, bVar.f60174n, R.color.forum_nickname_color);
            gVar.f60144i.setVipData(bVar.f60173m, bVar.f60174n);
            gVar.f60141f.setVisibility(0);
            gVar.f60142g.setVisibility(8);
            gVar.f60143h.setVisibility(0);
            if (bVar.f60161a) {
                gVar.f60140e.setVisibility(8);
            } else {
                gVar.f60140e.setVisibility(0);
            }
            if (bVar.f60168h) {
                gVar.f60145j.setVisibility(0);
            } else {
                gVar.f60145j.setVisibility(8);
            }
            gVar.f60138c.setText(bVar.f60163c);
            gVar.f60139d.setText(com.join.android.app.common.utils.i.a(bVar.f60164d * 1000));
            com.join.android.app.common.utils.l.y(gVar.f60137b, bVar.f60162b);
            gVar.f60137b.setOnClickListener(new a(bVar));
            i(view, bVar.f60170j, bVar.f60166f, bVar.f60169i, bVar.f60171k, bVar.f60163c);
            i(gVar.f60143h, bVar.f60170j, bVar.f60166f, bVar.f60169i, bVar.f60171k, bVar.f60163c);
            com.join.mgps.Util.r0.S0(gVar.f60137b, gVar.f60138c, gVar.f60139d);
            com.join.mgps.Util.r0.U0(gVar.f60144i);
            String str = bVar.f60175o;
            String str2 = bVar.f60176p;
            if (gVar.f60146k != null) {
                if (TextUtils.isEmpty(str)) {
                    gVar.f60146k.setVisibility(8);
                } else {
                    gVar.f60146k.setVisibility(0);
                    gVar.f60146k.setText(str);
                    Drawable drawable = this.f60120b.getResources().getDrawable(R.drawable.forum_post_host);
                    if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                        str2 = "#2fccdf";
                    }
                    drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                    gVar.f60146k.setBackgroundDrawable(drawable);
                }
            }
            return view;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private View e(int position, View convertView, ViewGroup parent) {
        h hVar;
        if (convertView != null) {
            hVar = (h) convertView.getTag();
        } else {
            hVar = new h();
            convertView = LayoutInflater.from(this.f60120b).inflate(R.layout.mg_forum_profile_message_item, (ViewGroup) null);
            hVar.f60148b = (TextView) convertView.findViewById(R.id.mg_forum_profile_message_tv);
            hVar.f60149c = convertView.findViewById(R.id.mg_forum_profile_message_divider);
            convertView.setTag(hVar);
        }
        try {
            j.c cVar = (j.c) getItem(position);
            if (cVar == null) {
                return convertView;
            }
            hVar.f60149c.setVisibility(8);
            if (cVar.f60183g && !cVar.f60179c.contains("#*#")) {
                cVar.f60179c += "#*#";
            }
            com.join.mgps.Util.r0.B1(hVar.f60148b, cVar.f60178b, cVar.f60179c, cVar.f60180d);
            i(convertView, cVar.f60178b, cVar.f60177a, cVar.f60181e, cVar.f60182f, cVar.f60179c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private void f(View v10, final int pid) {
        v10.setOnClickListener(new b(pid));
    }

    private void g(View v10, final int pid, final int cid, final int rid, final String fromNickName) {
        v10.setOnClickListener(new c(pid, cid, rid, fromNickName));
    }

    private void k(LinearLayout container, List<ForumBean.ForumProfileCommentBean> profileCommentBeans) {
        View viewInflate;
        if (profileCommentBeans == null || profileCommentBeans.size() == 0) {
            container.setVisibility(8);
            return;
        }
        for (int i10 = 0; i10 < profileCommentBeans.size(); i10++) {
            if (i10 < container.getChildCount()) {
                viewInflate = container.getChildAt(i10);
            } else {
                viewInflate = LayoutInflater.from(this.f60120b).inflate(R.layout.mg_forum_profile_message_item, (ViewGroup) null);
                container.addView(viewInflate);
            }
            TextView textView = (TextView) viewInflate.findViewById(R.id.mg_forum_profile_message_tv);
            View viewFindViewById = viewInflate.findViewById(R.id.mg_forum_profile_message_divider);
            if (i10 == profileCommentBeans.size() - 1) {
                viewFindViewById.setVisibility(8);
            } else {
                viewFindViewById.setVisibility(0);
            }
            ForumBean.ForumProfileCommentBean forumProfileCommentBean = profileCommentBeans.get(i10);
            if (forumProfileCommentBean != null) {
                com.join.mgps.Util.r0.B1(textView, forumProfileCommentBean.getType(), forumProfileCommentBean.getRnickname(), forumProfileCommentBean.getMessage());
            }
        }
        if (container.getChildCount() > profileCommentBeans.size()) {
            container.removeViews(profileCommentBeans.size(), container.getChildCount() - profileCommentBeans.size());
        }
    }

    public List<j> b() {
        return this.f60121c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<j> list = this.f60121c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<j> list = this.f60121c;
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
        List<j> list = this.f60121c;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.PROFILE_HEADER.ordinal()) {
            return d(position, convertView, parent);
        }
        if (itemViewType == ViewType.PROFILE_MESSAGE_ITEM.ordinal()) {
            return e(position, convertView, parent);
        }
        return itemViewType == ViewType.PROFILE_FOOTER.ordinal() ? c(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public void h(List<j> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f60121c == null) {
            this.f60121c = new ArrayList();
        }
        this.f60121c.clear();
        this.f60121c.addAll(itemBeans);
    }

    void i(View v10, String fromType, int pid, int cid, int rid, String fromNickName) {
        if (fromType.equals("comment")) {
            g(v10, pid, cid, 0, fromNickName);
            return;
        }
        if (fromType.equals("reply")) {
            g(v10, pid, cid, rid, fromNickName);
        } else if (fromType.equals("praise") || fromType.equals("best") || fromType.equals("bestanswer")) {
            f(v10, pid);
        }
    }

    public void j(d l10) {
        this.f60122d = l10;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
