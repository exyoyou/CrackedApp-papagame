package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.GameInformationActivityV2_;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.InformationListDataBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.ExtFrom;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h3 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ExtBean f62241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f62242c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<InformationListDataBean> f62243d;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationListDataBean f62244b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f62245c;

        a(final InformationListDataBean val$informationListDataBean, final int val$i) {
            this.f62244b = val$informationListDataBean;
            this.f62245c = val$i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.intent(h3.this.f62242c).c(this.f62244b.getTag_id()).d(this.f62244b.getTitle()).b(this.f62244b.getExtBean().setPosition("page" + (this.f62245c + 1))).start();
            h3.this.f62241b = new ExtBean();
            h3.this.f62241b.setFrom(ExtFrom.home.name());
            com.papa.sim.statistic.t.l(h3.this.f62242c).P2(h3.this.f62241b.getFrom(), h3.this.f62241b.getPosition(), "page" + (this.f62245c + 1), "article", AccountUtil_.getInstance_(h3.this.f62242c).getUid());
            com.papa.sim.statistic.t.l(h3.this.f62242c).R1(Event.commonClick, this.f62244b.getExtBean().setPosition("page" + (this.f62245c + 1)).buildScene().toExt());
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f62247a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f62248b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f62249c;

        b() {
        }
    }

    public h3(Context _context) {
        this.f62242c = _context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62243d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(final int i10, View view, ViewGroup viewGroup) {
        View viewInflate;
        b bVar;
        if (view == null) {
            bVar = new b();
            viewInflate = LayoutInflater.from(this.f62242c).inflate(R.layout.information_content_item, (ViewGroup) null);
            bVar.f62247a = (SimpleDraweeView) viewInflate.findViewById(R.id.imageAd);
            bVar.f62248b = (TextView) viewInflate.findViewById(R.id.tvTitle);
            bVar.f62249c = (TextView) viewInflate.findViewById(R.id.tvPraise);
            viewInflate.setTag(bVar);
        } else {
            viewInflate = view;
            bVar = (b) view.getTag();
        }
        InformationListDataBean informationListDataBean = this.f62243d.get(i10);
        bVar.f62247a.setImageDrawable(this.f62242c.getResources().getDrawable(R.drawable.banner_normal_icon));
        com.join.android.app.common.utils.l.f(bVar.f62247a, R.drawable.banner_normal_icon, informationListDataBean.getMaterial(), com.join.android.app.common.utils.l.E(this.f62242c));
        bVar.f62248b.setText(informationListDataBean.getTitle());
        bVar.f62249c.setText(informationListDataBean.getPraise());
        bVar.f62247a.setOnClickListener(new a(informationListDataBean, i10));
        return viewInflate;
    }

    public h3(Context context, List<InformationListDataBean> informationListDataBeans, ExtBean extBean) {
        this.f62242c = context;
        this.f62243d = informationListDataBeans;
        this.f62241b = extBean;
    }
}
