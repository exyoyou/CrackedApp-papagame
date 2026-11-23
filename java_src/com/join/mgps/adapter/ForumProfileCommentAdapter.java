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
public class ForumProfileCommentAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f59813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<i> f59814c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f59815d;

    public enum ViewType {
        PROFILE_HEADER,
        PROFILE_MESSAGE_ITEM,
        PROFILE_FOOTER
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i.b f59816b;

        a(final i.b val$item) {
            this.f59816b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f59816b.f59850g).start();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f59818b;

        b(final int val$pid) {
            this.f59818b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumProfileCommentAdapter.this.f59815d != null) {
                ForumProfileCommentAdapter.this.f59815d.d(this.f59818b);
            }
        }
    }

    public interface c {
        void d(int pid);
    }

    class d extends j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f59820b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59821c;

        d() {
            super();
        }
    }

    class e extends j {
        e() {
            super();
        }
    }

    class f extends j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f59824b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f59825c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f59826d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f59827e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f59828f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public ImageView f59829g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public RelativeLayout f59830h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public VipView f59831i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ImageView f59832j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f59833k;

        f() {
            super();
        }
    }

    class g extends j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f59835b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f59836c;

        g() {
            super();
        }
    }

    class h extends j {
        h() {
            super();
        }
    }

    public static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f59839a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f59840b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59841a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59842b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59843c;

            public a() {
            }

            public a(int pid, String thumbUrl, String message) {
                this.f59841a = pid;
                this.f59842b = thumbUrl;
                this.f59843c = message;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f59844a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f59845b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f59846c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public long f59847d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f59848e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f59849f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f59850g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f59851h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f59852i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public int f59853j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public int f59854k;

            /* JADX INFO: renamed from: l, reason: collision with root package name */
            public String f59855l;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            public String f59856m;

            public b() {
            }

            public b(boolean removeDivider, String avatarSrc, String nickName, long timestamps, boolean isTop, int pid, int vip_level, int svip_level, String battleTitle, String battleColor, int uid) {
                this.f59844a = removeDivider;
                this.f59845b = avatarSrc;
                this.f59846c = nickName;
                this.f59847d = timestamps;
                this.f59848e = isTop;
                this.f59849f = pid;
                this.f59850g = uid;
                this.f59853j = vip_level;
                this.f59854k = svip_level;
                this.f59855l = battleTitle;
                this.f59856m = battleColor;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f59857a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f59858b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public ForumBean.ForumProfileCommentBean f59859c;

            public c() {
            }

            public c(int pid, boolean hideDivider, ForumBean.ForumProfileCommentBean commentBean) {
                this.f59857a = pid;
                this.f59858b = hideDivider;
                this.f59859c = commentBean;
            }
        }

        public i() {
        }

        public Object a() {
            return this.f59840b;
        }

        public ViewType b() {
            return this.f59839a;
        }

        public void c(Object obj) {
            this.f59840b = obj;
        }

        public void d(ViewType viewType) {
            this.f59839a = viewType;
        }

        public i(ViewType viewType, Object obj) {
            this.f59839a = viewType;
            this.f59840b = obj;
        }
    }

    class j {
        j() {
        }
    }

    public ForumProfileCommentAdapter(Context mContext) {
        this.f59813b = mContext;
    }

    private View c(int position, View convertView, ViewGroup parent) {
        d dVar;
        try {
            if (convertView != null) {
                dVar = (d) convertView.getTag();
            } else {
                dVar = new d();
                convertView = LayoutInflater.from(this.f59813b).inflate(R.layout.mg_forum_profile_footer, (ViewGroup) null);
                dVar.f59820b = (SimpleDraweeView) convertView.findViewById(R.id.post_profile_image);
                dVar.f59821c = (TextView) convertView.findViewById(R.id.post_profile_message);
                convertView.setTag(dVar);
            }
            i.a aVar = (i.a) getItem(position);
            if (aVar == null) {
                return convertView;
            }
            f(convertView, aVar.f59841a);
            if (com.join.mgps.Util.t2.h(aVar.f59842b)) {
                dVar.f59820b.setVisibility(8);
            } else {
                dVar.f59820b.setVisibility(0);
                com.join.android.app.common.utils.l.h(dVar.f59820b, aVar.f59842b);
            }
            com.join.mgps.Util.r0.D1(dVar.f59821c, aVar.f59843c, "");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View d(int position, View convertView, ViewGroup parent) {
        f fVar;
        if (convertView != null) {
            fVar = (f) convertView.getTag();
        } else {
            fVar = new f();
            convertView = LayoutInflater.from(this.f59813b).inflate(R.layout.mg_forum_profile_header, (ViewGroup) null);
            fVar.f59828f = convertView.findViewById(R.id.forum_post_divider);
            fVar.f59824b = (SimpleDraweeView) convertView.findViewById(R.id.forum_post_avatar_src);
            fVar.f59825c = (TextView) convertView.findViewById(R.id.forum_post_nickname);
            fVar.f59826d = (TextView) convertView.findViewById(R.id.forum_post_add_time);
            fVar.f59827e = (TextView) convertView.findViewById(R.id.forum_post_stickie);
            fVar.f59829g = (ImageView) convertView.findViewById(R.id.forum_post_moderator);
            fVar.f59832j = (ImageView) convertView.findViewById(R.id.officialIcon);
            fVar.f59830h = (RelativeLayout) convertView.findViewById(R.id.forumExtFunc);
            fVar.f59831i = (VipView) convertView.findViewById(R.id.vipFlag);
            fVar.f59833k = (TextView) convertView.findViewById(R.id.copperTitleTv);
            convertView.setTag(fVar);
        }
        try {
            i.b bVar = (i.b) getItem(position);
            if (bVar == null) {
                return convertView;
            }
            UtilsMy.R3(this.f59813b, fVar.f59825c, bVar.f59853j, bVar.f59854k, R.color.forum_nickname_color);
            fVar.f59831i.setVipData(bVar.f59853j, bVar.f59854k);
            fVar.f59830h.setVisibility(8);
            if (bVar.f59844a) {
                fVar.f59828f.setVisibility(8);
            } else {
                fVar.f59828f.setVisibility(0);
            }
            fVar.f59825c.setText(bVar.f59846c);
            fVar.f59826d.setText(com.join.android.app.common.utils.i.a(bVar.f59847d * 1000));
            TextView textView = fVar.f59827e;
            if (textView != null) {
                if (bVar.f59848e) {
                    textView.setVisibility(0);
                } else {
                    textView.setVisibility(8);
                }
            }
            ImageView imageView = fVar.f59829g;
            if (imageView != null) {
                if (bVar.f59851h) {
                    imageView.setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                }
            }
            if (bVar.f59852i) {
                fVar.f59832j.setVisibility(0);
            } else {
                fVar.f59832j.setVisibility(8);
            }
            com.join.android.app.common.utils.l.y(fVar.f59824b, bVar.f59845b);
            fVar.f59824b.setOnClickListener(new a(bVar));
            f(convertView, bVar.f59849f);
            com.join.mgps.Util.r0.S0(fVar.f59824b, fVar.f59825c, fVar.f59826d);
            com.join.mgps.Util.r0.U0(fVar.f59831i);
            String str = bVar.f59855l;
            String str2 = bVar.f59856m;
            if (fVar.f59833k != null) {
                if (TextUtils.isEmpty(str)) {
                    fVar.f59833k.setVisibility(8);
                } else {
                    fVar.f59833k.setVisibility(0);
                    fVar.f59833k.setText(str);
                    Drawable drawable = this.f59813b.getResources().getDrawable(R.drawable.forum_post_host);
                    if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                        str2 = "#2fccdf";
                    }
                    drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                    fVar.f59833k.setBackgroundDrawable(drawable);
                }
            }
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private View e(int position, View convertView, ViewGroup parent) {
        g gVar;
        if (convertView != null) {
            gVar = (g) convertView.getTag();
        } else {
            gVar = new g();
            convertView = LayoutInflater.from(this.f59813b).inflate(R.layout.mg_forum_profile_message_item, (ViewGroup) null);
            gVar.f59835b = (TextView) convertView.findViewById(R.id.mg_forum_profile_message_tv);
            gVar.f59836c = convertView.findViewById(R.id.mg_forum_profile_message_divider);
            convertView.setTag(gVar);
        }
        try {
            i.c cVar = (i.c) getItem(position);
            if (cVar == null) {
                return convertView;
            }
            if (cVar.f59858b) {
                gVar.f59836c.setVisibility(8);
            } else {
                gVar.f59836c.setVisibility(0);
            }
            ForumBean.ForumProfileCommentBean forumProfileCommentBean = cVar.f59859c;
            if (forumProfileCommentBean == null) {
                return convertView;
            }
            String rnickname = forumProfileCommentBean.getRnickname();
            if (com.join.mgps.Util.t2.h(rnickname)) {
                rnickname = "我";
            }
            com.join.mgps.Util.r0.B1(gVar.f59835b, forumProfileCommentBean.getType(), rnickname, forumProfileCommentBean.getMessage());
            f(convertView, cVar.f59857a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private void f(View v10, final int pid) {
        v10.setOnClickListener(new b(pid));
    }

    private void i(LinearLayout container, List<ForumBean.ForumProfileCommentBean> profileCommentBeans) {
        View viewInflate;
        if (profileCommentBeans == null || profileCommentBeans.size() == 0) {
            container.setVisibility(8);
            return;
        }
        for (int i10 = 0; i10 < profileCommentBeans.size(); i10++) {
            if (i10 < container.getChildCount()) {
                viewInflate = container.getChildAt(i10);
            } else {
                viewInflate = LayoutInflater.from(this.f59813b).inflate(R.layout.mg_forum_profile_message_item, (ViewGroup) null);
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

    public List<i> b() {
        return this.f59814c;
    }

    public void g(List<i> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f59814c == null) {
            this.f59814c = new ArrayList();
        }
        this.f59814c.clear();
        this.f59814c.addAll(itemBeans);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<i> list = this.f59814c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<i> list = this.f59814c;
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
        List<i> list = this.f59814c;
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

    public void h(c l10) {
        this.f59815d = l10;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
