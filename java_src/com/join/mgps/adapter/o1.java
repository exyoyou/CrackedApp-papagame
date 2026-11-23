package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.RecommendGameBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class o1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f62848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<RecommendGameBean> f62849d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62850e;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f62851b;

        a(final int val$i) {
            this.f62851b = val$i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RecommendGameBean recommendGameBean = (RecommendGameBean) o1.this.f62849d.get(this.f62851b);
            IntentUtil.getInstance().goGameDetialActivity(o1.this.f62847b, recommendGameBean.getId(), recommendGameBean.getTpl_type(), recommendGameBean.getSp_tpl_two_position(), o1.this.f62850e);
        }
    }

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f62853a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f62854b;

        private b() {
        }

        /* synthetic */ b(o1 o1Var, a aVar) {
            this();
        }
    }

    public o1(Context context) {
        this.f62849d = new ArrayList();
        this.f62847b = context;
        this.f62848c = LayoutInflater.from(context);
    }

    public List<RecommendGameBean> d() {
        return null;
    }

    public int e() {
        return this.f62850e;
    }

    public void f(int _from_type) {
        this.f62850e = _from_type;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62849d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return Integer.valueOf(i10);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(final int i10, View convertView, ViewGroup viewGroup) {
        b bVar;
        if (convertView == null) {
            convertView = this.f62848c.inflate(R.layout.gamedetail_recom_item, (ViewGroup) null);
            bVar = new b(this, null);
            bVar.f62853a = (SimpleDraweeView) convertView.findViewById(R.id.recomGameImage);
            bVar.f62854b = (TextView) convertView.findViewById(R.id.recomGameTv);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        bVar.f62853a.setImageURI(this.f62849d.get(i10).getIco_remote());
        bVar.f62854b.setText(this.f62849d.get(i10).getTitle());
        bVar.f62853a.getHeight();
        bVar.f62853a.setOnClickListener(new a(i10));
        return convertView;
    }

    public o1(Context context, List<RecommendGameBean> recommendGameBeanList) {
        this.f62849d = new ArrayList();
        this.f62847b = context;
        this.f62848c = LayoutInflater.from(context);
        this.f62849d = recommendGameBeanList;
    }
}
