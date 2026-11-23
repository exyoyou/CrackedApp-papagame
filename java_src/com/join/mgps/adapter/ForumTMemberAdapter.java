package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumTMemberAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f60331b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f60333d = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<i> f60332c = new ArrayList();

    public enum ViewType {
        MEMBER_HEADER,
        MEMBER_ITEM,
        MEMBER_MODERATORS,
        MEMBER_MY
    }

    class a extends SimpleAdapter {
        a(Context context, List data, int resource, String[] from, int[] to) {
            super(context, data, resource, from, to);
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60335b;

        b(final int val$fid) {
            this.f60335b = val$fid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumTMemberAdapter.this.f60333d != null) {
                Context context = v10.getContext();
                if (com.join.mgps.Util.r0.Y0(context)) {
                    ForumTMemberAdapter.this.f60333d.a(this.f60335b);
                } else {
                    com.join.mgps.Util.a3.b(context).d("用户未登录，请登录");
                    com.join.mgps.Util.r0.L0(context);
                }
            }
        }
    }

    public static abstract class c {
        public abstract void a(int fid);
    }

    public class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f60337a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60338b;

        public d() {
        }
    }

    public class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleDraweeView f60340a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60341b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60342c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RelativeLayout f60343d;

        public e() {
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public HListView f60345a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60346b;
    }

    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SimpleDraweeView f60347a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60348b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60349c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RelativeLayout f60350d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Button f60351e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Button f60352f;
    }

    public class h extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f60353b = "itemImg";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f60354c = "itemName";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ArrayList<HashMap<String, Object>> f60355d;

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public SimpleDraweeView f60357a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public TextView f60358b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public TextView f60359c;

            a() {
            }
        }

        public h() {
        }

        public ArrayList<HashMap<String, Object>> a() {
            return this.f60355d;
        }

        public void b(ArrayList<HashMap<String, Object>> data) {
            this.f60355d = data;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            ArrayList<HashMap<String, Object>> arrayList = this.f60355d;
            if (arrayList == null) {
                return 0;
            }
            return arrayList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            ArrayList<HashMap<String, Object>> arrayList = this.f60355d;
            if (arrayList == null) {
                return null;
            }
            return arrayList.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            a aVar;
            try {
                if (convertView != null) {
                    aVar = (a) convertView.getTag();
                } else {
                    aVar = new a();
                    convertView = LayoutInflater.from(ForumTMemberAdapter.this.f60331b).inflate(R.layout.mg_forum_forum_t_member_item_moderators_item, (ViewGroup) null);
                    aVar.f60357a = (SimpleDraweeView) convertView.findViewById(R.id.itemImg);
                    aVar.f60358b = (TextView) convertView.findViewById(R.id.itemName);
                    convertView.setTag(aVar);
                }
                HashMap map = (HashMap) getItem(position);
                String str = (String) map.get("itemImg");
                String str2 = (String) map.get("itemName");
                com.join.android.app.common.utils.l.h(aVar.f60357a, str);
                aVar.f60358b.setText(str2);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return convertView;
        }
    }

    public static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f60361a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f60362b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60363a;

            public a(String title) {
                this.f60363a = title;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60364a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60365b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60366c;

            public b(String avatarSrc, String nickName, String desc) {
                this.f60364a = avatarSrc;
                this.f60365b = nickName;
                this.f60366c = desc;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public ArrayList<HashMap<String, Object>> f60367a;

            public c(ArrayList<HashMap<String, Object>> data) {
                this.f60367a = data;
            }
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60368a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60369b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60370c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f60371d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60372e;

            public d(String avatarSrc, String nickName, String desc, boolean isFollowed, int fid) {
                this.f60368a = avatarSrc;
                this.f60369b = nickName;
                this.f60370c = desc;
                this.f60371d = isFollowed;
                this.f60372e = fid;
            }
        }

        public i() {
        }

        public Object a() {
            return this.f60362b;
        }

        public ViewType b() {
            return this.f60361a;
        }

        public void c(Object obj) {
            this.f60362b = obj;
        }

        public void d(ViewType viewType) {
            this.f60361a = viewType;
        }

        public i(ViewType viewType, Object obj) {
            this.f60361a = viewType;
            this.f60362b = obj;
        }
    }

    class j {
        j() {
        }
    }

    public ForumTMemberAdapter(Context mContext) {
        this.f60331b = mContext;
    }

    private View d(int position, View convertView, ViewGroup parent) {
        d dVar;
        if (convertView != null) {
            dVar = (d) convertView.getTag();
        } else {
            dVar = new d();
            convertView = LayoutInflater.from(this.f60331b).inflate(R.layout.mg_forum_forum_t_member_item_header, (ViewGroup) null);
            dVar.f60337a = convertView.findViewById(R.id.dividerTop);
            dVar.f60338b = (TextView) convertView.findViewById(R.id.sectionTitle);
            convertView.setTag(dVar);
        }
        try {
            i.a aVar = (i.a) getItem(position);
            if (aVar == null) {
                return convertView;
            }
            dVar.f60338b.setText(aVar.f60363a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View e(int position, View convertView, ViewGroup parent) {
        e eVar;
        if (convertView != null) {
            eVar = (e) convertView.getTag();
        } else {
            eVar = new e();
            convertView = LayoutInflater.from(this.f60331b).inflate(R.layout.mg_forum_forum_t_member_item, (ViewGroup) null);
            eVar.f60340a = (SimpleDraweeView) convertView.findViewById(R.id.avatar);
            eVar.f60341b = (TextView) convertView.findViewById(R.id.nickName);
            eVar.f60342c = (TextView) convertView.findViewById(R.id.desc);
            eVar.f60343d = (RelativeLayout) convertView.findViewById(R.id.follow);
            convertView.setTag(eVar);
        }
        try {
            i.b bVar = (i.b) getItem(position);
            if (bVar == null) {
                return convertView;
            }
            com.join.android.app.common.utils.l.h(eVar.f60340a, bVar.f60364a + "");
            eVar.f60341b.setText(bVar.f60365b);
            eVar.f60342c.setText(bVar.f60366c);
            eVar.f60343d.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View f(int position, View convertView, ViewGroup parent) {
        f fVar;
        if (convertView != null) {
            fVar = (f) convertView.getTag();
        } else {
            fVar = new f();
            convertView = LayoutInflater.from(this.f60331b).inflate(R.layout.mg_forum_forum_t_member_item_moderators, (ViewGroup) null);
            fVar.f60345a = (HListView) convertView.findViewById(R.id.list);
            fVar.f60346b = (TextView) convertView.findViewById(R.id.noMoreModerator);
            convertView.setTag(fVar);
        }
        try {
            i.c cVar = (i.c) getItem(position);
            if (cVar == null) {
                fVar.f60345a.setVisibility(8);
                fVar.f60346b.setVisibility(0);
                return convertView;
            }
            fVar.f60345a.setVisibility(0);
            fVar.f60346b.setVisibility(8);
            h hVar = (h) fVar.f60345a.getAdapter();
            if (hVar == null) {
                hVar = new h();
                fVar.f60345a.setAdapter((ListAdapter) hVar);
            }
            hVar.b(cVar.f60367a);
            hVar.notifyDataSetChanged();
            return convertView;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private View g(int position, View convertView, ViewGroup parent) {
        g gVar;
        if (convertView != null) {
            gVar = (g) convertView.getTag();
        } else {
            gVar = new g();
            convertView = LayoutInflater.from(this.f60331b).inflate(R.layout.mg_forum_forum_t_member_item_my, (ViewGroup) null);
            gVar.f60347a = (SimpleDraweeView) convertView.findViewById(R.id.avatar);
            gVar.f60348b = (TextView) convertView.findViewById(R.id.nickName);
            gVar.f60349c = (TextView) convertView.findViewById(R.id.desc);
            gVar.f60350d = (RelativeLayout) convertView.findViewById(R.id.follow);
            gVar.f60351e = (Button) convertView.findViewById(R.id.followImg);
            gVar.f60352f = (Button) convertView.findViewById(R.id.followedImg);
            convertView.setTag(gVar);
        }
        try {
            i.d dVar = (i.d) getItem(position);
            if (dVar == null) {
                return convertView;
            }
            com.join.android.app.common.utils.l.h(gVar.f60347a, dVar.f60368a + "");
            gVar.f60348b.setText(dVar.f60369b);
            gVar.f60349c.setText(dVar.f60370c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private SimpleAdapter h(ArrayList<HashMap<String, Object>> data) {
        return new a(this.f60331b, data, R.layout.mg_forum_forum_t_member_item_moderators_item, new String[]{"itemImg", "itemName"}, new int[]{R.id.itemImg, R.id.itemName});
    }

    public List<i> c() {
        return this.f60332c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<i> list = this.f60332c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<i> list = this.f60332c;
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
        List<i> list = this.f60332c;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.MEMBER_HEADER.ordinal()) {
            return d(position, convertView, parent);
        }
        if (itemViewType == ViewType.MEMBER_ITEM.ordinal()) {
            return e(position, convertView, parent);
        }
        if (itemViewType == ViewType.MEMBER_MODERATORS.ordinal()) {
            return f(position, convertView, parent);
        }
        return itemViewType == ViewType.MEMBER_MY.ordinal() ? g(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public void i(c l10) {
        this.f60333d = l10;
    }

    public void j(List<i> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f60332c == null) {
            this.f60332c = new ArrayList();
        }
        this.f60332c.clear();
        this.f60332c.addAll(itemBeans);
    }

    public void k(View v10, final int fid) {
        v10.setOnClickListener(new b(fid));
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
