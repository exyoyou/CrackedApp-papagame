package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumAllAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f58784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<e> f58785c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    LinearLayout.LayoutParams f58786d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    d f58787e;

    public enum ViewType {
        FORUM_ITEM
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean f58788b;

        a(final ForumBean val$forumBean) {
            this.f58788b = val$forumBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            d dVar = ForumAllAdapter.this.f58787e;
            if (dVar != null) {
                dVar.f(this.f58788b);
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean f58790b;

        b(final ForumBean val$forumBean) {
            this.f58790b = val$forumBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (!com.join.mgps.Util.r0.Y0(v10.getContext())) {
                com.join.mgps.Util.r0.L0(v10.getContext());
                return;
            }
            d dVar = ForumAllAdapter.this.f58787e;
            if (dVar != null) {
                dVar.b(this.f58790b);
            }
        }
    }

    class c extends f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f58792b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SimpleDraweeView f58793c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f58794d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f58795e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f58796f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TextView f58797g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Button f58798h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public LinearLayout f58799i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public LinearLayout f58800j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public LinearLayout f58801k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public RelativeLayout f58802l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public TextView f58803m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public TextView f58804n;

        c() {
            super();
        }
    }

    public interface d {
        void b(ForumBean forumBean);

        void f(ForumBean forumBean);
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f58806a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f58807b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<ForumBean.ForumWelcomeAdItemBean> f58808a;

            public a() {
            }

            public a(List<ForumBean.ForumWelcomeAdItemBean> adItemBeans) {
                this.f58808a = adItemBeans;
            }
        }

        public static class b {
        }

        public static class c {
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            ForumBean f58809a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            ForumBean f58810b;

            public d() {
            }

            public d(ForumBean item) {
                this.f58809a = item;
            }

            public d(ForumBean item, ForumBean item1) {
                this.f58809a = item;
                this.f58810b = item1;
            }
        }

        /* JADX INFO: renamed from: com.join.mgps.adapter.ForumAllAdapter$e$e, reason: collision with other inner class name */
        public static class C0691e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f58811a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f58812b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f58813c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f58814d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f58815e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f58816f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public boolean f58817g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f58818h;

            public C0691e() {
            }

            public C0691e(int postId, int fid, String fname, int viewTotal, int commentTotal, int praiseTotal, boolean isPraise, boolean isShowFooterDivider) {
                this.f58811a = postId;
                this.f58816f = fid;
                this.f58812b = fname;
                this.f58813c = viewTotal;
                this.f58814d = commentTotal;
                this.f58815e = praiseTotal;
                this.f58817g = isPraise;
                this.f58818h = isShowFooterDivider;
            }
        }

        public static class f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f58819a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f58820b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f58821c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public long f58822d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f58823e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f58824f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public int f58825g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f58826h;

            public f() {
            }

            public f(boolean removeDivider, String avatarSrc, String nickName, long timestamps, boolean isTop, int pid, int fid, boolean showDelete) {
                this.f58819a = removeDivider;
                this.f58820b = avatarSrc;
                this.f58821c = nickName;
                this.f58822d = timestamps;
                this.f58823e = isTop;
                this.f58824f = pid;
                this.f58825g = fid;
                this.f58826h = showDelete;
            }
        }

        public static class g {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f58827a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<String> f58828b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f58829c;

            public g(List<ForumBean.ForumPostsBean.ResBean> resBeans, List<String> imgUrlLargeList, int pid) {
                this.f58827a = resBeans;
                this.f58828b = imgUrlLargeList;
                this.f58829c = pid;
            }
        }

        public static class h {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f58830a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f58831b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f58832c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f58833d;

            public h() {
            }

            public h(boolean startWithBest, String message, int pid, int fid) {
                this.f58830a = startWithBest;
                this.f58831b = message;
                this.f58832c = pid;
                this.f58833d = fid;
            }
        }

        public static class i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f58834a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f58835b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f58836c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f58837d;

            public i() {
            }

            public i(boolean isBest, String subject, int pid, int fid) {
                this.f58834a = isBest;
                this.f58835b = subject;
                this.f58836c = pid;
                this.f58837d = fid;
            }
        }

        public e() {
        }

        public Object a() {
            return this.f58807b;
        }

        public ViewType b() {
            return this.f58806a;
        }

        public void c(Object obj) {
            this.f58807b = obj;
        }

        public void d(ViewType viewType) {
            this.f58806a = viewType;
        }

        public e(ViewType viewType, Object obj) {
            this.f58806a = viewType;
            this.f58807b = obj;
        }
    }

    class f {
        f() {
        }
    }

    public ForumAllAdapter(Context mContext) {
        this.f58784b = mContext;
    }

    private View a(int position, View convertView, ViewGroup parent) {
        c cVar;
        if (convertView != null) {
            cVar = (c) convertView.getTag();
        } else {
            cVar = new c();
            convertView = LayoutInflater.from(this.f58784b).inflate(R.layout.mg_forum_all_activity_item, (ViewGroup) null);
            View viewFindViewById = convertView.findViewById(R.id.mg_forum_item);
            cVar.f58792b = viewFindViewById;
            cVar.f58793c = (SimpleDraweeView) viewFindViewById.findViewById(R.id.forum_icon);
            cVar.f58794d = (TextView) cVar.f58792b.findViewById(R.id.forum_name);
            cVar.f58803m = (TextView) cVar.f58792b.findViewById(R.id.forum_desc);
            cVar.f58795e = (TextView) cVar.f58792b.findViewById(R.id.forum_users_tv);
            cVar.f58796f = (TextView) cVar.f58792b.findViewById(R.id.forum_posts_tv);
            cVar.f58797g = (TextView) cVar.f58792b.findViewById(R.id.forum_follow_tv);
            cVar.f58799i = (LinearLayout) cVar.f58792b.findViewById(R.id.forumUsersParent);
            cVar.f58800j = (LinearLayout) cVar.f58792b.findViewById(R.id.forumPostsParent);
            cVar.f58801k = (LinearLayout) cVar.f58792b.findViewById(R.id.forumFollowsParent);
            cVar.f58802l = (RelativeLayout) cVar.f58792b.findViewById(R.id.forumTodayPostsParent);
            cVar.f58804n = (TextView) cVar.f58792b.findViewById(R.id.forum_today_posts_tv);
            cVar.f58798h = (Button) cVar.f58792b.findViewById(R.id.forum_follow);
            convertView.setTag(cVar);
        }
        try {
            e.d dVar = (e.d) getItem(position);
            if (dVar == null) {
                return convertView;
            }
            cVar.f58799i.setVisibility(0);
            cVar.f58800j.setVisibility(0);
            cVar.f58801k.setVisibility(0);
            cVar.f58804n.setVisibility(8);
            d(dVar.f58809a, cVar.f58792b, cVar);
            ForumBean forumBean = dVar.f58809a;
            if (forumBean == null || !forumBean.is_follow()) {
                cVar.f58798h.setText("关注");
                cVar.f58798h.setTextSize(13.0f);
                cVar.f58798h.setTextColor(-1);
                cVar.f58798h.setBackgroundResource(R.drawable.common_orange_selector);
            } else {
                cVar.f58798h.setText("已关注");
                cVar.f58798h.setTextSize(12.0f);
                cVar.f58798h.setTextColor(-5723992);
                cVar.f58798h.setBackgroundResource(R.drawable.common_grey_selector);
            }
            g(cVar.f58798h, dVar.f58809a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private LinearLayout.LayoutParams b(Context context) {
        if (this.f58786d == null) {
            int i10 = (int) (((double) ((context.getResources().getDisplayMetrics().widthPixels / 2) - ((int) ((context.getResources().getDisplayMetrics().density * 16.0f) * 2.0f)))) * 0.33d);
            this.f58786d = new LinearLayout.LayoutParams(i10, i10);
        }
        return this.f58786d;
    }

    private void d(final ForumBean item, View parent, c holder) {
        if (item == null || item.getFid() == 0) {
            if (parent.getVisibility() != 4) {
                parent.setVisibility(4);
                return;
            }
            return;
        }
        com.join.mgps.Util.r0.D1(holder.f58794d, item.getName() + "", "");
        com.join.mgps.Util.r0.D1(holder.f58803m, item.getDescription() + "", "");
        com.join.mgps.Util.r0.D1(holder.f58795e, com.join.mgps.Util.r0.R(item.getUsers()), "0");
        com.join.mgps.Util.r0.D1(holder.f58796f, com.join.mgps.Util.r0.R(item.getPosts()), "0");
        com.join.mgps.Util.r0.D1(holder.f58797g, com.join.mgps.Util.r0.R(item.getFollow_count()), "0");
        if (parent.getVisibility() != 0) {
            parent.setVisibility(0);
        }
        h(parent, item);
        com.join.android.app.common.utils.l.j(holder.f58793c, item.getIcon_src(), com.join.android.app.common.utils.l.E(this.f58784b));
        int i10 = (int) (parent.getResources().getDisplayMetrics().density * 60.0f);
        holder.f58793c.setLayoutParams(new LinearLayout.LayoutParams(i10, i10));
        h(parent, item);
    }

    public List<e> c() {
        return this.f58785c;
    }

    public void e(List<e> items) {
        if (items == null) {
            return;
        }
        if (this.f58785c == null) {
            this.f58785c = new ArrayList();
        }
        this.f58785c.clear();
        this.f58785c.addAll(items);
    }

    public void f(d l10) {
        this.f58787e = l10;
    }

    public void g(View v10, final ForumBean forumBean) {
        v10.setOnClickListener(new b(forumBean));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<e> list = this.f58785c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<e> list = this.f58785c;
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
        List<e> list = this.f58785c;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        return getItemViewType(position) == ViewType.FORUM_ITEM.ordinal() ? a(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    void h(View v10, final ForumBean forumBean) {
        v10.setOnClickListener(new a(forumBean));
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
