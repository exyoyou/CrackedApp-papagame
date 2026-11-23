package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.AccountVoucherGameBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d3 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<AccountVoucherGameBean> f61882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f61883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f61884d;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f61885a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f61886b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f61887c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f61888d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        LinearLayout f61889e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        LinearLayout f61890f;

        /* JADX INFO: renamed from: com.join.mgps.adapter.d3$a$a, reason: collision with other inner class name */
        class ViewOnClickListenerC0693a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ AccountVoucherGameBean f61892b;

            ViewOnClickListenerC0693a(final AccountVoucherGameBean val$mBean) {
                this.f61892b = val$mBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                IntentUtil.getInstance().goGameDetialActivity(d3.this.f61884d, this.f61892b.getGame_id() + "", this.f61892b.getGame_tpl(), this.f61892b.getSp_tpl_two_position(), this.f61892b.get_from_type());
            }
        }

        public a(View mView) {
            this.f61885a = (TextView) mView.findViewById(R.id.voucherPrice);
            this.f61886b = (TextView) mView.findViewById(R.id.voucherContent);
            this.f61888d = (TextView) mView.findViewById(R.id.voucherGameGet);
            this.f61887c = (TextView) mView.findViewById(R.id.voucherGameNumber);
            this.f61889e = (LinearLayout) mView.findViewById(R.id.layoutGamevoucher);
            this.f61890f = (LinearLayout) mView.findViewById(R.id.gameVoucherRight);
        }

        public void a(final AccountVoucherGameBean mBean) {
            if (mBean != null) {
                this.f61885a.setText("￥" + mBean.getCoupon_money());
                this.f61886b.setText(mBean.getCoupon_title());
                this.f61888d.setText(d3.this.f61884d.getString(R.string.voucher_go));
                int coupon_type = mBean.getCoupon_type();
                if (coupon_type == 1) {
                    this.f61887c.setText(String.format(d3.this.f61884d.getString(R.string.voucher_surplus), Integer.valueOf(mBean.getCoupon_surplus())));
                    this.f61888d.setPadding(0, 0, 0, com.join.mgps.Util.i0.a(d3.this.f61884d, 15.0f));
                    this.f61888d.setVisibility(0);
                    this.f61885a.setVisibility(0);
                } else if (coupon_type == 2) {
                    this.f61885a.setVisibility(8);
                    this.f61887c.setVisibility(8);
                    this.f61888d.setPadding(0, 0, 0, 0);
                }
                this.f61890f.setOnClickListener(new ViewOnClickListenerC0693a(mBean));
            }
        }
    }

    public d3(Context mContext, List<AccountVoucherGameBean> datas) {
        this.f61883c = LayoutInflater.from(mContext);
        this.f61884d = mContext;
        this.f61882b = datas;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f61882b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.f61882b.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        a aVar;
        if (convertView == null) {
            convertView = this.f61883c.inflate(R.layout.layout_voucher_game_detail, (ViewGroup) null);
            aVar = new a(convertView);
            convertView.setTag(aVar);
        } else {
            aVar = (a) convertView.getTag();
        }
        aVar.a((AccountVoucherGameBean) getItem(position));
        return convertView;
    }
}
