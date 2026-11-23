package com.zhy.view.flowlayout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.join.mgps.activity.vipzone.bean.SpecialTag;
import com.join.mgps.customview.WrapContentGridView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class TagFlowSpecialLayout extends WrapContentGridView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    SpecialTag f90370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<SpecialTag> f90371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    a f90372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    b f90373e;

    class a extends BaseAdapter {

        /* JADX INFO: renamed from: com.zhy.view.flowlayout.TagFlowSpecialLayout$a$a, reason: collision with other inner class name */
        class C1144a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public TextView f90375a;

            C1144a() {
            }
        }

        public a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(SpecialTag specialTag, C1144a c1144a, ViewGroup viewGroup, View view) {
            Iterator<SpecialTag> it2 = TagFlowSpecialLayout.this.f90371c.iterator();
            while (it2.hasNext()) {
                it2.next().setIsselected(false);
            }
            specialTag.setIsselected(true);
            TagFlowSpecialLayout tagFlowSpecialLayout = TagFlowSpecialLayout.this;
            tagFlowSpecialLayout.f90370b = specialTag;
            b bVar = tagFlowSpecialLayout.f90373e;
            if (bVar != null) {
                bVar.a(c1144a.f90375a, specialTag, viewGroup);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<SpecialTag> list = TagFlowSpecialLayout.this.f90371c;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            List<SpecialTag> list = TagFlowSpecialLayout.this.f90371c;
            if (list != null) {
                return list.get(i10);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            return super.getItemViewType(position);
        }

        @Override // android.widget.Adapter
        public View getView(int position, View view, final ViewGroup viewGroup) {
            final C1144a c1144a;
            if (view != null) {
                c1144a = (C1144a) view.getTag();
            } else {
                c1144a = new C1144a();
                view = LayoutInflater.from(TagFlowSpecialLayout.this.getContext()).inflate(com.join.android.app.mgsim.wufun.R.layout.specialtag_item_layout1, (ViewGroup) null);
                c1144a.f90375a = (TextView) view;
                view.setTag(c1144a);
            }
            final SpecialTag specialTag = (SpecialTag) getItem(position);
            if (specialTag.isIsselected()) {
                TagFlowSpecialLayout.this.f90370b = specialTag;
            }
            c1144a.f90375a.setText(specialTag.getTitle());
            c1144a.f90375a.setOnClickListener(new View.OnClickListener() { // from class: com.zhy.view.flowlayout.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f90392b.b(specialTag, c1144a, viewGroup, view2);
                }
            });
            if (specialTag.isIsselected()) {
                c1144a.f90375a.setTextColor(TagFlowSpecialLayout.this.getResources().getColor(com.join.android.app.mgsim.wufun.R.color.app_blue_color));
                c1144a.f90375a.setBackgroundResource(com.join.android.app.mgsim.wufun.R.drawable.specialtag_selected_back);
            } else {
                c1144a.f90375a.setTextColor(TagFlowSpecialLayout.this.getResources().getColor(com.join.android.app.mgsim.wufun.R.color.money_text_color));
                c1144a.f90375a.setBackgroundResource(com.join.android.app.mgsim.wufun.R.drawable.alph);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return super.getViewTypeCount();
        }
    }

    public interface b {
        void a(View view, SpecialTag tag, ViewGroup parent);
    }

    public TagFlowSpecialLayout(Context context) {
        super(context);
        this.f90371c = new ArrayList();
        this.f90372d = new a();
        a(context);
    }

    private void a(Context context) {
        setAdapter((ListAdapter) this.f90372d);
    }

    public void b() {
        a aVar = this.f90372d;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public List<SpecialTag> getData() {
        return this.f90371c;
    }

    public b getListener() {
        return this.f90373e;
    }

    public void setData(List<SpecialTag> data) {
        this.f90371c.clear();
        if (data == null) {
            return;
        }
        this.f90371c.addAll(data);
        a aVar = this.f90372d;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public void setListener(b listener) {
        this.f90373e = listener;
    }

    @Override // android.widget.AdapterView
    public SpecialTag getSelectedItem() {
        return this.f90370b;
    }

    public TagFlowSpecialLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f90371c = new ArrayList();
        this.f90372d = new a();
        a(context);
    }

    public TagFlowSpecialLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f90371c = new ArrayList();
        this.f90372d = new a();
        a(context);
    }
}
