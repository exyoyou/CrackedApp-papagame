package com.join.mgps.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class k2 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LayoutInflater f62573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f62574c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<l6.a<GiftPackageDataInfoBean>> f62575d = new ArrayList(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f62576e;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameOLHeadAdBean f62577b;

        a(final GameOLHeadAdBean val$recomDatabean) {
            this.f62577b = val$recomDatabean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(k2.this.f62574c, this.f62577b.getSub().get(0).getIntentDataBean());
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f62579b;

        b(final GiftPackageDataInfoBean val$bean) {
            this.f62579b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f62579b.getGift_package_status() == 0) {
                Message message = new Message();
                message.what = 1;
                message.obj = this.f62579b;
                k2.this.f62576e.sendMessage(message);
                return;
            }
            if (this.f62579b.getGift_package_status() == 1) {
                Message message2 = new Message();
                message2.what = 2;
                message2.obj = this.f62579b;
                k2.this.f62576e.sendMessage(message2);
            }
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f62581a;

        c() {
        }
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SimpleDraweeView f62583a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ImageView f62584b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f62585c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f62586d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private TextView f62587e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f62588f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f62589g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private RelativeLayout f62590h;

        d() {
        }
    }

    class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private TextView f62592a;

        e() {
        }
    }

    public k2(Context context, Handler handler) {
        this.f62573b = LayoutInflater.from(context);
        this.f62574c = context;
        this.f62576e = handler;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public l6.a<GiftPackageDataInfoBean> getItem(int position) {
        return this.f62575d.get(position);
    }

    public List<l6.a<GiftPackageDataInfoBean>> d() {
        return this.f62575d;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62575d.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return this.f62575d.get(position).d();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000f  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        e eVar;
        e eVar2;
        int itemViewType = getItemViewType(i10);
        c cVar = null;
        d dVar = null;
        cVar = null;
        cVar = null;
        cVar = null;
        if (view == null) {
            if (itemViewType == 0) {
                c cVar2 = new c();
                View viewInflate = this.f62573b.inflate(R.layout.gameol_top_ad_layout, (ViewGroup) null);
                cVar2.f62581a = (SimpleDraweeView) viewInflate.findViewById(R.id.adImage);
                viewInflate.setTag(cVar2);
                cVar = cVar2;
                view = viewInflate;
                eVar2 = cVar;
            } else if (itemViewType == 1) {
                e eVar3 = new e();
                View viewInflate2 = this.f62573b.inflate(R.layout.gameol_top_title_layout, (ViewGroup) null);
                eVar3.f62592a = (TextView) viewInflate2.findViewById(R.id.titleText);
                viewInflate2.setTag(eVar3);
                dVar = null;
                eVar2 = eVar3;
                view = viewInflate2;
            } else if (itemViewType != 2) {
                eVar2 = 0;
                dVar = null;
            } else {
                d dVar2 = new d();
                View viewInflate3 = this.f62573b.inflate(R.layout.gameol_gift_listview_item, (ViewGroup) null);
                dVar2.f62583a = (SimpleDraweeView) viewInflate3.findViewById(R.id.mgListviewItemIcon);
                dVar2.f62584b = (ImageView) viewInflate3.findViewById(R.id.giftPackageSwich);
                dVar2.f62586d = (TextView) viewInflate3.findViewById(R.id.mgListviewItemAppname);
                dVar2.f62590h = (RelativeLayout) viewInflate3.findViewById(R.id.rLayoutRight);
                dVar2.f62585c = (TextView) viewInflate3.findViewById(R.id.tv_btn_get);
                dVar2.f62587e = (TextView) viewInflate3.findViewById(R.id.GiftSurplus);
                dVar2.f62588f = (TextView) viewInflate3.findViewById(R.id.GiftCount);
                dVar2.f62589g = (TextView) viewInflate3.findViewById(R.id.GiftEndTime);
                viewInflate3.setTag(dVar2);
                dVar = dVar2;
                view = viewInflate3;
                eVar2 = 0;
            }
        } else if (itemViewType == 0) {
            cVar = (c) view.getTag();
            eVar2 = cVar;
        } else if (itemViewType == 1) {
            eVar = (e) view.getTag();
            dVar = null;
        } else if (itemViewType != 2) {
            eVar2 = 0;
            dVar = null;
        } else {
            dVar = (d) view.getTag();
            eVar2 = 0;
        }
        if (itemViewType == 0) {
            eVar2 = eVar;
            GameOLHeadAdBean gameOLHeadAdBeanB = this.f62575d.get(i10).b();
            com.join.android.app.common.utils.l.d(cVar.f62581a, R.drawable.banner_normal_icon, gameOLHeadAdBeanB.getMain().getPic_remote());
            cVar.f62581a.setOnClickListener(new a(gameOLHeadAdBeanB));
        } else if (itemViewType == 1) {
            eVar2.f62592a.setText(this.f62575d.get(i10).e());
        } else if (itemViewType == 2) {
            GiftPackageDataInfoBean giftPackageDataInfoBeanC = this.f62575d.get(i10).c();
            com.join.android.app.common.utils.l.d(dVar.f62583a, R.drawable.main_normal_icon, giftPackageDataInfoBeanC.getGift_package_pic());
            dVar.f62584b.setVisibility(0);
            dVar.f62586d.setText(giftPackageDataInfoBeanC.getGift_package_title());
            dVar.f62587e.setText(giftPackageDataInfoBeanC.getGift_package_surplus() + net.lingala.zip4j.util.e.F0);
            dVar.f62588f.setText(giftPackageDataInfoBeanC.getGift_package_count() + "");
            dVar.f62589g.setText(com.join.mgps.Util.e0.I(giftPackageDataInfoBeanC.getGift_package_times_end() * 1000));
            if (giftPackageDataInfoBeanC.getGift_package_status() == 0) {
                dVar.f62585c.setText("领取");
            } else {
                dVar.f62585c.setText("查看");
            }
            dVar.f62590h.setOnClickListener(new b(giftPackageDataInfoBeanC));
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }
}
