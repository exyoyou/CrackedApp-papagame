package com.join.mgps.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
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
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameTopicAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.join.android.app.component.optimizetext.b f60660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f60661c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    LinearLayout.LayoutParams f60663e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f60664f = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<g> f60662d = new ArrayList();

    public enum ViewType {
        POST_SUBJECT,
        POST_HEADER,
        POST_VIDEO_THUMBNAIL,
        POST_FOOTER
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ g.b f60665b;

        a(final g.b val$item) {
            this.f60665b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f60665b.f60692e).start();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f60667b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f60668c;

        b(final String val$collection_id, final int val$id) {
            this.f60667b = val$collection_id;
            this.f60668c = val$id;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            GameTopicAdapter.this.j(this.f60667b, this.f60668c + "");
        }
    }

    class c extends h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60670b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60671c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f60672d;

        c() {
            super();
        }
    }

    class d extends h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f60674b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60675c;

        d() {
            super();
        }
    }

    class e extends h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60677b;

        e() {
            super();
        }
    }

    class f extends h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f60679b;

        f() {
            super();
        }
    }

    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f60681a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f60682b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f60683a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60684b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60685c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f60686d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60687e;

            public a(int id2, String collection_id, String describe, int view, int comment_count) {
                this.f60683a = id2;
                this.f60684b = collection_id;
                this.f60685c = describe;
                this.f60686d = view;
                this.f60687e = comment_count;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60688a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60689b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60690c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f60691d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f60692e;

            public b(int id2, String collection_id, String nick_name, String head_portrait, int uid) {
                this.f60691d = id2;
                this.f60692e = uid;
                this.f60690c = collection_id;
                this.f60688a = nick_name;
                this.f60689b = head_portrait;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.ResBean> f60693a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public List<String> f60694b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60695c;

            public c(List<ForumBean.ForumPostsBean.ResBean> resBeans, List<String> imgUrlLargeList, int pid) {
                this.f60693a = resBeans;
                this.f60694b = imgUrlLargeList;
                this.f60695c = pid;
            }
        }

        public static class d implements com.join.android.app.component.optimizetext.c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f60696a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60697b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f60698c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f60699d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f60700e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f60701f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public List<ForumBean.ForumPostsBean.TagInfo> f60702g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public SpannableStringBuilder f60703h;

            public d() {
            }

            @Override // com.join.android.app.component.optimizetext.c
            public SpannableStringBuilder a() {
                return this.f60703h;
            }

            @Override // com.join.android.app.component.optimizetext.c
            public String b() {
                return this.f60698c + "";
            }

            public d(boolean startWithBest, String message, int pid, int fid, boolean isAsk, String askMoney, List<ForumBean.ForumPostsBean.TagInfo> tagInfos, SpannableStringBuilder ssb) {
                this.f60696a = startWithBest;
                this.f60697b = message;
                this.f60698c = pid;
                this.f60699d = fid;
                this.f60700e = isAsk;
                this.f60701f = askMoney;
                this.f60702g = tagInfos;
                this.f60703h = ssb;
            }
        }

        public static class e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f60704a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60705b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60706c;

            public e(int id2, String collection_id, String title) {
                this.f60704a = id2;
                this.f60705b = collection_id;
                this.f60706c = title;
            }
        }

        public static class f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f60707a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60708b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60709c;

            public f(int id2, String collection_id, String pic_cover) {
                this.f60707a = id2;
                this.f60708b = collection_id;
                this.f60709c = pic_cover;
            }
        }

        public g() {
        }

        public Object a() {
            return this.f60682b;
        }

        public ViewType b() {
            return this.f60681a;
        }

        public void c(Object obj) {
            this.f60682b = obj;
        }

        public void d(ViewType viewType) {
            this.f60681a = viewType;
        }

        public g(ViewType viewType, Object obj) {
            this.f60681a = viewType;
            this.f60682b = obj;
        }
    }

    class h {
        h() {
        }
    }

    public GameTopicAdapter(Context mContext) {
        this.f60661c = mContext;
        this.f60660b = new com.join.android.app.component.optimizetext.b(mContext);
        k();
    }

    private View d(int position, View convertView, ViewGroup parent) {
        c cVar;
        if (convertView != null) {
            cVar = (c) convertView.getTag();
        } else {
            cVar = new c();
            convertView = LayoutInflater.from(this.f60661c).inflate(R.layout.mg_fragment_game_topic_footer, (ViewGroup) null);
            cVar.f60670b = (TextView) convertView.findViewById(R.id.forum_name);
            cVar.f60671c = (TextView) convertView.findViewById(R.id.forum_post_view);
            cVar.f60672d = (TextView) convertView.findViewById(R.id.forum_post_commit);
            convertView.setTag(cVar);
        }
        try {
            g.a aVar = (g.a) getItem(position);
            if (aVar == null) {
                return convertView;
            }
            cVar.f60670b.setText(aVar.f60685c);
            com.join.mgps.Util.r0.D1(cVar.f60671c, aVar.f60686d + "", "0");
            com.join.mgps.Util.r0.D1(cVar.f60672d, aVar.f60687e + "", "0");
            n(convertView, aVar.f60684b, aVar.f60683a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View e(int position, View convertView, ViewGroup parent) {
        d dVar;
        if (convertView != null) {
            dVar = (d) convertView.getTag();
        } else {
            dVar = new d();
            convertView = LayoutInflater.from(this.f60661c).inflate(R.layout.mg_fragment_game_topic_header, (ViewGroup) null);
            dVar.f60674b = (SimpleDraweeView) convertView.findViewById(R.id.forum_post_avatar_src);
            dVar.f60675c = (TextView) convertView.findViewById(R.id.forum_post_nickname);
            convertView.setTag(dVar);
        }
        try {
            g.b bVar = (g.b) getItem(position);
            if (bVar == null) {
                return convertView;
            }
            String str = bVar.f60688a;
            String string = convertView.getContext().getResources().getString(R.string.game_topic_nickname, str);
            int iIndexOf = string.indexOf(str);
            int length = str.length() + iIndexOf;
            SpannableString spannableString = new SpannableString(string);
            if (length <= string.length()) {
                spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#FC9234")), iIndexOf, length, 33);
            }
            dVar.f60675c.setText(spannableString);
            com.join.android.app.common.utils.l.y(dVar.f60674b, bVar.f60689b);
            dVar.f60674b.setOnClickListener(new a(bVar));
            n(convertView, bVar.f60690c, bVar.f60691d);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private View f(int position, View convertView, ViewGroup parent) {
        e eVar;
        if (convertView != null) {
            eVar = (e) convertView.getTag();
        } else {
            eVar = new e();
            convertView = LayoutInflater.from(this.f60661c).inflate(R.layout.mg_fragment_game_topic_title, (ViewGroup) null);
            eVar.f60677b = (TextView) convertView.findViewById(R.id.forum_post_subject);
            convertView.setTag(eVar);
        }
        try {
            g.e eVar2 = (g.e) getItem(position);
            if (eVar2 == null) {
                return convertView;
            }
            eVar.f60677b.setText(eVar2.f60706c);
            n(convertView, eVar2.f60705b, eVar2.f60704a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    private int g(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.f60664f == 0) {
            Resources resources = context.getResources();
            this.f60664f = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 2.46f);
        }
        return this.f60664f;
    }

    private View h(int position, View convertView, ViewGroup parent) {
        f fVar;
        if (convertView != null) {
            fVar = (f) convertView.getTag();
        } else {
            fVar = new f();
            convertView = LayoutInflater.from(this.f60661c).inflate(R.layout.mg_fragment_game_topic_cover, (ViewGroup) null);
            fVar.f60679b = (SimpleDraweeView) convertView.findViewById(R.id.cover);
            convertView.setTag(fVar);
        }
        try {
            g.f fVar2 = (g.f) getItem(position);
            if (fVar2 == null) {
                return convertView;
            }
            fVar.f60679b.setLayoutParams(new RelativeLayout.LayoutParams(-1, g(this.f60661c)));
            String str = fVar2.f60709c;
            SimpleDraweeView simpleDraweeView = fVar.f60679b;
            if (simpleDraweeView != null) {
                simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
                com.join.android.app.common.utils.l.h(fVar.f60679b, str);
            }
            n(convertView, fVar2.f60708b, fVar2.f60707a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(String collection_id, String id2) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(2);
        intentDateBean.setTpl_type("2");
        intentDateBean.setCrc_link_type_val(collection_id + "");
        intentDateBean.setExtBean(new ExtBean("current_topic", id2 + "", collection_id));
        IntentUtil.getInstance().intentActivity(this.f60661c, intentDateBean);
    }

    private void k() {
        if (this.f60663e == null) {
            this.f60663e = i();
        }
    }

    public List<g> b() {
        return this.f60662d;
    }

    public com.join.android.app.component.optimizetext.b c() {
        return this.f60660b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<g> list = this.f60662d;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<g> list = this.f60662d;
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
        List<g> list = this.f60662d;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.POST_HEADER.ordinal()) {
            return e(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return d(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_VIDEO_THUMBNAIL.ordinal()) {
            return h(position, convertView, parent);
        }
        return itemViewType == ViewType.POST_SUBJECT.ordinal() ? f(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    LinearLayout.LayoutParams i() {
        DisplayMetrics displayMetrics = this.f60661c.getResources().getDisplayMetrics();
        float f10 = displayMetrics.density;
        int i10 = (int) (210.0f * f10);
        int i11 = (int) (160.0f * f10);
        int dimensionPixelSize = ((int) ((displayMetrics.widthPixels - (this.f60661c.getResources().getDimensionPixelSize(R.dimen.mg_forum_forums_item_padding) * 2)) - ((((int) (6.0f * f10)) * f10) * 2.0f))) / 3;
        if (dimensionPixelSize <= i10) {
            i10 = dimensionPixelSize > i11 ? i11 : dimensionPixelSize;
        }
        return new LinearLayout.LayoutParams(i10, i10);
    }

    public void l(List<g> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f60662d == null) {
            this.f60662d = new ArrayList();
        }
        this.f60662d.clear();
        this.f60662d.addAll(itemBeans);
    }

    public void m(com.join.android.app.component.optimizetext.b layoutManager) {
        this.f60660b = layoutManager;
    }

    void n(View view, final String collection_id, final int id2) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new b(collection_id, id2));
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
