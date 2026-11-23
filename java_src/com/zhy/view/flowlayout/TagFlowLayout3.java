package com.zhy.view.flowlayout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.join.mgps.customview.WrapContentGridView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class TagFlowLayout3 extends WrapContentGridView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f90363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<String> f90364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    a f90365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    b f90366e;

    class a extends BaseAdapter {

        /* JADX INFO: renamed from: com.zhy.view.flowlayout.TagFlowLayout3$a$a, reason: collision with other inner class name */
        class C1143a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public TextView f90368a;

            C1143a() {
            }
        }

        public a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i10, C1143a c1143a, ViewGroup viewGroup, View view) {
            TagFlowLayout3 tagFlowLayout3 = TagFlowLayout3.this;
            tagFlowLayout3.f90363b = i10;
            b bVar = tagFlowLayout3.f90366e;
            if (bVar != null) {
                bVar.a(c1143a.f90368a, i10, viewGroup);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = TagFlowLayout3.this.f90364c;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            List<String> list = TagFlowLayout3.this.f90364c;
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
        public View getView(final int position, View view, final ViewGroup viewGroup) {
            final C1143a c1143a;
            if (view != null) {
                c1143a = (C1143a) view.getTag();
            } else {
                c1143a = new C1143a();
                view = LayoutInflater.from(TagFlowLayout3.this.getContext()).inflate(com.join.android.app.mgsim.wufun.R.layout.serchtag_item_layout1, (ViewGroup) null);
                c1143a.f90368a = (TextView) view.findViewById(com.join.android.app.mgsim.wufun.R.id.tv_tab_title);
                view.setTag(c1143a);
            }
            c1143a.f90368a.setText((String) getItem(position));
            c1143a.f90368a.setOnClickListener(new View.OnClickListener() { // from class: com.zhy.view.flowlayout.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f90388b.b(position, c1143a, viewGroup, view2);
                }
            });
            TagFlowLayout3 tagFlowLayout3 = TagFlowLayout3.this;
            if (position == tagFlowLayout3.f90363b) {
                c1143a.f90368a.setTextColor(tagFlowLayout3.getResources().getColor(com.join.android.app.mgsim.wufun.R.color.tag_back_color));
                c1143a.f90368a.setBackgroundResource(com.join.android.app.mgsim.wufun.R.drawable.tab_selected_f7f7f7_r12);
            } else {
                c1143a.f90368a.setTextColor(tagFlowLayout3.getResources().getColor(com.join.android.app.mgsim.wufun.R.color.money_text_color));
                c1143a.f90368a.setBackgroundResource(com.join.android.app.mgsim.wufun.R.drawable.transparent_bg);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return super.getViewTypeCount();
        }
    }

    public interface b {
        void a(View view, int position, ViewGroup parent);
    }

    public TagFlowLayout3(Context context) {
        super(context);
        this.f90363b = 0;
        this.f90364c = new ArrayList();
        this.f90365d = new a();
        a(context);
    }

    private void a(Context context) {
        setAdapter((ListAdapter) this.f90365d);
    }

    public List<String> getData() {
        return this.f90364c;
    }

    public b getListener() {
        return this.f90366e;
    }

    public int getSelectedPosition() {
        return this.f90363b;
    }

    public void setData(List<String> data) {
        this.f90364c.clear();
        if (data == null) {
            return;
        }
        this.f90364c.addAll(data);
        a aVar = this.f90365d;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public void setListener(b listener) {
        this.f90366e = listener;
    }

    public void setSelectedPosition(int selectedPosition) {
        this.f90363b = selectedPosition;
        a aVar = this.f90365d;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public TagFlowLayout3(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f90363b = 0;
        this.f90364c = new ArrayList();
        this.f90365d = new a();
        a(context);
    }

    public TagFlowLayout3(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f90363b = 0;
        this.f90364c = new ArrayList();
        this.f90365d = new a();
        a(context);
    }
}
