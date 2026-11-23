package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumSearchHintAdapter extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f60296b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f60298d = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<f> f60297c = new ArrayList();

    public enum ViewType {
        POST_SUBJECT,
        POST_MESSAGE,
        POST_FOOTER
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f60299b;

        a(final String val$pid) {
            this.f60299b = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumSearchHintAdapter.this.f60298d != null) {
                ForumSearchHintAdapter.this.f60298d.b(this.f60299b);
            }
        }
    }

    public interface b {
        void b(String pid);
    }

    class c extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60301b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60302c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f60303d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f60304e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f60305f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f60306g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public View f60307h;

        c() {
            super();
        }
    }

    class d extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f60309b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f60310c;

        d() {
            super();
        }
    }

    class e extends g {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Button f60312b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f60313c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public View f60314d;

        e() {
            super();
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ViewType f60316a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f60317b;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60318a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60319b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60320c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f60321d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f60322e;

            public a() {
            }

            public a(String keyword, String pid, String view, String comment, String praise) {
                this.f60318a = keyword;
                this.f60319b = pid;
                this.f60320c = view;
                this.f60321d = comment;
                this.f60322e = praise;
            }
        }

        public static class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60323a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f60324b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60325c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public String f60326d;

            public b() {
            }

            public b(String keyword, String pid, String message, boolean showDivider) {
                this.f60326d = pid;
                this.f60325c = message;
                this.f60324b = showDivider;
                this.f60323a = keyword;
            }
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f60327a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f60328b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f60329c;

            public c() {
            }

            public c(String keyword, String pid, String subject) {
                this.f60329c = pid;
                this.f60328b = subject;
                this.f60327a = keyword;
            }
        }

        public f() {
        }

        public Object a() {
            return this.f60317b;
        }

        public ViewType b() {
            return this.f60316a;
        }

        public void c(Object obj) {
            this.f60317b = obj;
        }

        public void d(ViewType viewType) {
            this.f60316a = viewType;
        }

        public f(ViewType viewType, Object obj) {
            this.f60316a = viewType;
            this.f60317b = obj;
        }
    }

    class g {
        g() {
        }
    }

    public ForumSearchHintAdapter(Context mContext) {
        this.f60296b = mContext;
    }

    private View c(int position, View convertView, ViewGroup parent) {
        c cVar;
        if (convertView != null) {
            cVar = (c) convertView.getTag();
        } else {
            cVar = new c();
            convertView = LayoutInflater.from(this.f60296b).inflate(R.layout.mg_forum_search_item_post_footer, (ViewGroup) null);
            cVar.f60302c = (TextView) convertView.findViewById(R.id.forum_post_view);
            cVar.f60303d = (TextView) convertView.findViewById(R.id.forum_post_commit);
            cVar.f60304e = (TextView) convertView.findViewById(R.id.forum_post_praise);
            cVar.f60305f = convertView.findViewById(R.id.viewParent);
            cVar.f60306g = convertView.findViewById(R.id.commentParent);
            cVar.f60307h = convertView.findViewById(R.id.forum_post_praise_parent);
            try {
                int iA = com.join.android.app.component.optimizetext.a.a(6.0f);
                g(cVar.f60305f, iA);
                g(cVar.f60306g, iA);
                g(cVar.f60307h, iA);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            convertView.setTag(cVar);
        }
        try {
            f.a aVar = (f.a) getItem(position);
            if (aVar == null) {
                return convertView;
            }
            com.join.mgps.Util.r0.D1(cVar.f60302c, aVar.f60320c, "0");
            com.join.mgps.Util.r0.D1(cVar.f60303d, aVar.f60321d, "0");
            com.join.mgps.Util.r0.D1(cVar.f60304e, aVar.f60322e, "0");
            i(convertView, aVar.f60319b);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return convertView;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0084 A[Catch: Exception -> 0x00b7, TryCatch #1 {Exception -> 0x00b7, blocks: (B:18:0x0080, B:20:0x0084, B:22:0x00a7, B:21:0x0096), top: B:31:0x0080, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0096 A[Catch: Exception -> 0x00b7, TryCatch #1 {Exception -> 0x00b7, blocks: (B:18:0x0080, B:20:0x0084, B:22:0x00a7, B:21:0x0096), top: B:31:0x0080, outer: #0 }] */
    private View d(int position, View convertView, ViewGroup parent) {
        d dVar;
        int iA;
        if (convertView != null) {
            dVar = (d) convertView.getTag();
        } else {
            dVar = new d();
            convertView = LayoutInflater.from(this.f60296b).inflate(R.layout.mg_forum_post_activity_item_post_message, (ViewGroup) null);
            dVar.f60309b = (TextView) convertView.findViewById(R.id.forum_post_message);
            dVar.f60310c = convertView.findViewById(R.id.messageParent);
            convertView.setTag(dVar);
        }
        try {
            f.b bVar = (f.b) getItem(position);
            if (bVar == null) {
                return convertView;
            }
            String str = bVar.f60325c;
            String strG = com.join.mgps.Util.t2.g(bVar.f60323a);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            int color = this.f60296b.getResources().getColor(R.color.search_high_light);
            int iIndexOf = str.indexOf(strG);
            int length = strG.length() + iIndexOf;
            try {
                if (length > str.length() || iIndexOf < 0) {
                    com.join.mgps.Util.r0.A1(dVar.f60309b, spannableStringBuilder);
                    i(convertView, bVar.f60326d);
                    try {
                        if (bVar.f60324b) {
                            dVar.f60309b.setTextColor(Color.parseColor("#3b3b3b"));
                            iA = com.join.android.app.component.optimizetext.a.a(10.0f);
                        } else {
                            iA = com.join.android.app.component.optimizetext.a.a(2.0f);
                            dVar.f60309b.setTextColor(Color.parseColor("#8a8a8a"));
                        }
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) dVar.f60309b.getLayoutParams();
                        layoutParams.topMargin = iA;
                        dVar.f60309b.setLayoutParams(layoutParams);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(color), iIndexOf, length, 33);
                    com.join.mgps.Util.r0.A1(dVar.f60309b, spannableStringBuilder);
                    i(convertView, bVar.f60326d);
                    if (bVar.f60324b) {
                        dVar.f60309b.setTextColor(Color.parseColor("#3b3b3b"));
                        iA = com.join.android.app.component.optimizetext.a.a(10.0f);
                    } else {
                        iA = com.join.android.app.component.optimizetext.a.a(2.0f);
                        dVar.f60309b.setTextColor(Color.parseColor("#8a8a8a"));
                    }
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) dVar.f60309b.getLayoutParams();
                    layoutParams2.topMargin = iA;
                    dVar.f60309b.setLayoutParams(layoutParams2);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        return convertView;
    }

    private View e(int position, View convertView, ViewGroup parent) {
        e eVar;
        if (convertView != null) {
            eVar = (e) convertView.getTag();
        } else {
            eVar = new e();
            convertView = LayoutInflater.from(this.f60296b).inflate(R.layout.mg_forum_welcome_item_post_subject, (ViewGroup) null);
            eVar.f60312b = (Button) convertView.findViewById(R.id.forum_post_best);
            eVar.f60313c = (TextView) convertView.findViewById(R.id.forum_post_subject);
            View viewFindViewById = convertView.findViewById(R.id.subject_parent);
            eVar.f60314d = viewFindViewById;
            viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), com.join.android.app.component.optimizetext.a.a(10.0f), eVar.f60314d.getPaddingRight(), eVar.f60314d.getPaddingBottom());
            convertView.setTag(eVar);
        }
        try {
            f.c cVar = (f.c) getItem(position);
            if (cVar == null) {
                return convertView;
            }
            String str = cVar.f60328b;
            String strG = com.join.mgps.Util.t2.g(cVar.f60327a);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            int color = this.f60296b.getResources().getColor(R.color.search_high_light);
            int iIndexOf = str.indexOf(strG);
            int length = strG.length() + iIndexOf;
            try {
                if (length <= str.length() && iIndexOf >= 0) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(color), iIndexOf, length, 33);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            eVar.f60313c.setText(spannableStringBuilder);
            i(convertView, cVar.f60329c);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return convertView;
    }

    public List<f> b() {
        return this.f60297c;
    }

    public void f(b l10) {
        this.f60298d = l10;
    }

    void g(View view, int tbPadding) {
        if (view == null) {
            return;
        }
        view.setPadding(view.getPaddingLeft(), tbPadding, view.getPaddingRight(), tbPadding);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<f> list = this.f60297c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        List<f> list = this.f60297c;
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
        List<f> list = this.f60297c;
        if (list != null) {
            return list.get(position).b().ordinal();
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        int itemViewType = getItemViewType(position);
        if (itemViewType == ViewType.POST_FOOTER.ordinal()) {
            return c(position, convertView, parent);
        }
        if (itemViewType == ViewType.POST_MESSAGE.ordinal()) {
            return d(position, convertView, parent);
        }
        return itemViewType == ViewType.POST_SUBJECT.ordinal() ? e(position, convertView, parent) : convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return ViewType.values().length;
    }

    public void h(List<f> itemBeans) {
        if (itemBeans == null) {
            return;
        }
        if (this.f60297c == null) {
            this.f60297c = new ArrayList();
        }
        this.f60297c.clear();
        this.f60297c.addAll(itemBeans);
    }

    public void i(View v10, final String pid) {
        v10.setOnClickListener(new a(pid));
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
    }
}
