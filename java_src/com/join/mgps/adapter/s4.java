package com.join.mgps.adapter;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.MyVoucherGameActivity_;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.AccountVoucherGameBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class s4 extends BaseAdapter {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f63134f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f63135g = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<Object> f63136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f63137c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LayoutInflater f63138d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f63139e;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AccountVoucher f63140b;

        a(final AccountVoucher val$mBean) {
            this.f63140b = val$mBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            MyVoucherGameActivity_.intent(s4.this.f63137c).a(this.f63140b).start();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AccountVoucherGameBean f63142b;

        b(final AccountVoucherGameBean val$mBean) {
            this.f63142b = val$mBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goGameDetialActivity(s4.this.f63137c, this.f63142b.getGame_id() + "", this.f63142b.getGame_info_tpl_type(), this.f63142b.getSp_tpl_two_position(), this.f63142b.get_from());
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f63144a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f63145b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f63146c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f63147d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        LinearLayout f63148e;

        public c(View mView) {
            this.f63144a = (TextView) mView.findViewById(R.id.voucherContent);
            this.f63145b = (TextView) mView.findViewById(R.id.voucherPrice);
            this.f63147d = (TextView) mView.findViewById(R.id.voucherGameGet);
            this.f63146c = (TextView) mView.findViewById(R.id.voucherGameNumber);
            this.f63148e = (LinearLayout) mView.findViewById(R.id.gameVoucherRight);
        }
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f63150a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f63151b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f63152c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f63153d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f63154e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f63155f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public SimpleDraweeView f63156g;

        public d(View mView) {
            this.f63150a = (TextView) mView.findViewById(R.id.appName);
            this.f63151b = (TextView) mView.findViewById(R.id.voucherIs);
            this.f63152c = (TextView) mView.findViewById(R.id.voucherOut);
            this.f63153d = (TextView) mView.findViewById(R.id.voucherHand);
            this.f63154e = (TextView) mView.findViewById(R.id.gameVoucherPrice);
            this.f63155f = (TextView) mView.findViewById(R.id.gameVoucherConsume);
            this.f63156g = (SimpleDraweeView) mView.findViewById(R.id.mgListviewItemIcon);
        }
    }

    public s4(List<Object> lists, Context mContext) {
        this.f63136b = lists;
        this.f63137c = mContext;
        this.f63138d = LayoutInflater.from(mContext);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f63136b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.f63136b.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return getItem(position) instanceof AccountVoucher ? 0 : 1;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        d dVar;
        c cVar;
        try {
            int itemViewType = getItemViewType(position);
            this.f63139e = itemViewType;
            d dVar2 = null;
            if (convertView == null) {
                if (itemViewType == 0) {
                    convertView = this.f63138d.inflate(R.layout.my_voucher_item, (ViewGroup) null);
                    dVar = new d(convertView);
                    convertView.setTag(dVar);
                    dVar2 = dVar;
                    cVar = null;
                } else if (itemViewType == 1) {
                    convertView = this.f63138d.inflate(R.layout.my_no_voucher_item, (ViewGroup) null);
                    cVar = new c(convertView);
                    convertView.setTag(cVar);
                }
            } else if (itemViewType != 0) {
                cVar = itemViewType != 1 ? null : (c) convertView.getTag();
            } else {
                dVar = (d) convertView.getTag();
                dVar2 = dVar;
                cVar = null;
            }
            int i10 = this.f63139e;
            if (i10 != 0) {
                if (i10 == 1 && (this.f63136b.get(position) instanceof AccountVoucherGameBean)) {
                    AccountVoucherGameBean accountVoucherGameBean = (AccountVoucherGameBean) this.f63136b.get(position);
                    cVar.f63144a.setText(accountVoucherGameBean.getCoupon_title());
                    int coupon_type = accountVoucherGameBean.getCoupon_type();
                    if (coupon_type == 1) {
                        cVar.f63145b.setVisibility(0);
                        cVar.f63146c.setVisibility(0);
                        cVar.f63147d.setPadding(0, 0, 0, com.join.mgps.Util.i0.a(this.f63137c, 15.0f));
                    } else if (coupon_type == 2) {
                        cVar.f63145b.setVisibility(8);
                        cVar.f63146c.setVisibility(8);
                        cVar.f63147d.setPadding(0, 0, 0, 0);
                    }
                    cVar.f63145b.setText("￥" + accountVoucherGameBean.getCoupon_money());
                    cVar.f63146c.setText(String.format(this.f63137c.getString(R.string.voucher_surplus), Integer.valueOf(accountVoucherGameBean.getCoupon_surplus())));
                    cVar.f63148e.setOnClickListener(new b(accountVoucherGameBean));
                }
            } else if (this.f63136b.get(position) instanceof AccountVoucher) {
                AccountVoucher accountVoucher = (AccountVoucher) this.f63136b.get(position);
                dVar2.f63150a.setText(accountVoucher.getGame_name());
                com.join.android.app.common.utils.l.h(dVar2.f63156g, accountVoucher.getGame_icon());
                dVar2.f63155f.setText(Html.fromHtml(String.format(this.f63137c.getResources().getString(R.string.voucher_consume_price), "<font color = '#D33D3E'>" + accountVoucher.getStatus().getUsed().getMoney() + "</font>")));
                dVar2.f63154e.setText(Html.fromHtml(String.format(this.f63137c.getResources().getString(R.string.voucher_use_price), "<font color = '#D33D3E'>" + accountVoucher.getStatus().getAvailable().getCount() + "</font>", "<font color = '#D33D3E'>" + accountVoucher.getStatus().getAvailable().getMoney() + "</font>")));
                convertView.setOnClickListener(new a(accountVoucher));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return convertView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }
}
