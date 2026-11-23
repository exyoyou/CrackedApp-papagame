package com.join.mgps.adapter;

import android.content.ClipboardManager;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.GiftsDetailActivity_;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class m extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ExtBean f62721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f62722c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<GiftPackageDataInfoBean> f62723d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f62724e;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f62725b;

        a(final GiftPackageDataInfoBean val$giftPackageDataBean) {
            this.f62725b = val$giftPackageDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserInfo accountData = AccountUtil_.getInstance_(m.this.f62722c).getAccountData();
            if (accountData != null) {
                GiftsDetailActivity_.intent(m.this.f62722c).c(this.f62725b).a(accountData.getUid()).start();
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f62727b;

        b(final GiftPackageDataInfoBean val$giftPackageDataBean) {
            this.f62727b = val$giftPackageDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f62727b.getGift_package_status() != 1) {
                Message message = new Message();
                message.what = 1;
                message.obj = this.f62727b;
                m.this.f62724e.sendMessage(message);
                return;
            }
            if (this.f62727b.getGift_package_overdue() == 1) {
                com.join.mgps.Util.a3.b(m.this.f62722c).d("该礼包已过期");
                return;
            }
            ((ClipboardManager) m.this.f62722c.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(this.f62727b.getGift_package_code());
            com.join.mgps.Util.a3.b(m.this.f62722c).d(this.f62727b.getGift_package_code() + "已复制到剪贴板");
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f62729a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f62730b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ImageView f62731c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f62732d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        RelativeLayout f62733e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f62734f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f62735g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f62736h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f62737i;

        c() {
        }
    }

    public m(Context _context) {
        this.f62722c = _context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62723d.size();
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
    public View getView(int i10, View convertView, ViewGroup viewGroup) {
        View viewInflate;
        c cVar;
        if (convertView == null) {
            cVar = new c();
            viewInflate = LayoutInflater.from(this.f62722c).inflate(R.layout.gameol_gift_listview_item, (ViewGroup) null);
            cVar.f62729a = (LinearLayout) viewInflate.findViewById(R.id.linearLayout);
            cVar.f62730b = (SimpleDraweeView) viewInflate.findViewById(R.id.mgListviewItemIcon);
            cVar.f62731c = (ImageView) viewInflate.findViewById(R.id.giftPackageSwich);
            cVar.f62732d = (TextView) viewInflate.findViewById(R.id.mgListviewItemAppname);
            cVar.f62733e = (RelativeLayout) viewInflate.findViewById(R.id.rLayoutRight);
            cVar.f62734f = (TextView) viewInflate.findViewById(R.id.mgListviewItemInstall);
            cVar.f62735g = (TextView) viewInflate.findViewById(R.id.GiftSurplus);
            cVar.f62736h = (TextView) viewInflate.findViewById(R.id.GiftCount);
            cVar.f62737i = (TextView) viewInflate.findViewById(R.id.GiftEndTime);
            viewInflate.setTag(cVar);
        } else {
            viewInflate = convertView;
            cVar = (c) convertView.getTag();
        }
        GiftPackageDataInfoBean giftPackageDataInfoBean = this.f62723d.get(i10);
        com.join.android.app.common.utils.l.f(cVar.f62730b, R.drawable.banner_normal_icon, giftPackageDataInfoBean.getGift_package_pic(), com.join.android.app.common.utils.l.E(this.f62722c));
        cVar.f62731c.setVisibility(0);
        cVar.f62732d.setText(giftPackageDataInfoBean.getGift_package_title());
        cVar.f62735g.setText(giftPackageDataInfoBean.getGift_package_surplus() + net.lingala.zip4j.util.e.F0);
        cVar.f62736h.setText(giftPackageDataInfoBean.getGift_package_count() + "");
        cVar.f62737i.setText(com.join.mgps.Util.e0.I(giftPackageDataInfoBean.getGift_package_times_end() * 1000));
        if (giftPackageDataInfoBean.getGift_package_status() != 1) {
            cVar.f62734f.setText("领取");
        } else if (giftPackageDataInfoBean.getGift_package_overdue() == 1) {
            cVar.f62734f.setText("已过期");
        } else {
            cVar.f62734f.setText("复制");
        }
        cVar.f62729a.setOnClickListener(new a(giftPackageDataInfoBean));
        cVar.f62733e.setOnClickListener(new b(giftPackageDataInfoBean));
        return viewInflate;
    }

    public m(Context context, List<GiftPackageDataInfoBean> packageDataBeanList, Handler handler) {
        this.f62722c = context;
        this.f62723d = packageDataBeanList;
        this.f62724e = handler;
    }
}
