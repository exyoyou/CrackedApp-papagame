package com.join.mgps.adapter;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.AccountVoucherGame;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class t4 extends BaseAdapter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f63189e = "expire";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f63190f = "un_use";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f63191g = "used";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f63192h = "will_expire";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<AccountVoucherGame> f63193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f63194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LayoutInflater f63195d;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f63196a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f63197b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f63198c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f63199d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ImageView f63200e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ImageView f63201f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public LinearLayout f63202g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public LinearLayout f63203h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public RelativeLayout f63204i;

        public a(View mView) {
            this.f63202g = (LinearLayout) mView.findViewById(R.id.layoutLeft);
            this.f63203h = (LinearLayout) mView.findViewById(R.id.layoutVoucherLeft);
            this.f63204i = (RelativeLayout) mView.findViewById(R.id.layoutRight);
            this.f63196a = (TextView) mView.findViewById(R.id.voucherName);
            this.f63197b = (TextView) mView.findViewById(R.id.voucherPrice);
            this.f63198c = (TextView) mView.findViewById(R.id.voucherDate);
            this.f63199d = (TextView) mView.findViewById(R.id.voucherNo);
            this.f63200e = (ImageView) mView.findViewById(R.id.voucherStateTop);
            this.f63201f = (ImageView) mView.findViewById(R.id.voucherStateButtom);
        }
    }

    public t4(List<AccountVoucherGame> lists, Context mContext) {
        this.f63193b = lists;
        this.f63194c = mContext;
        this.f63195d = LayoutInflater.from(mContext);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f63193b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.f63193b.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        a aVar;
        View viewInflate;
        if (convertView == null) {
            viewInflate = this.f63195d.inflate(R.layout.my_voucher_game_item, (ViewGroup) null);
            aVar = new a(viewInflate);
            viewInflate.setTag(aVar);
        } else {
            aVar = (a) convertView.getTag();
            viewInflate = convertView;
        }
        AccountVoucherGame accountVoucherGame = this.f63193b.get(position);
        aVar.f63196a.setText(accountVoucherGame.getName());
        aVar.f63197b.setText(String.format(this.f63194c.getString(R.string.voucher_price), Double.valueOf(accountVoucherGame.getMoney())));
        aVar.f63198c.setText(accountVoucherGame.getExpire_date());
        if (accountVoucherGame.getStatus() != null && !accountVoucherGame.getStatus().equals("")) {
            String status = accountVoucherGame.getStatus();
            status.hashCode();
            switch (status) {
                case "expire":
                    aVar.f63200e.setVisibility(8);
                    aVar.f63201f.setVisibility(0);
                    aVar.f63201f.setImageResource(R.drawable.voucher_time_out);
                    aVar.f63198c.setText(String.format(this.f63194c.getString(R.string.voucher_time), accountVoucherGame.getExpire_date()));
                    aVar.f63202g.setBackgroundResource(R.drawable.voucher_gay_left_bg);
                    aVar.f63204i.setBackgroundResource(R.drawable.voucher_gay_right_bg);
                    aVar.f63199d.setText(Html.fromHtml(String.format(this.f63194c.getString(R.string.voucher_no), "<font color='0xe1e1e1' >" + accountVoucherGame.getNo() + "<\font>")));
                    aVar.f63203h.setBackgroundResource(R.drawable.account_voucher_gay_bg);
                    aVar.f63197b.setBackgroundResource(R.drawable.account_voucher_gay_bg);
                    break;
                case "un_use":
                    aVar.f63200e.setVisibility(0);
                    aVar.f63201f.setVisibility(8);
                    aVar.f63200e.setImageResource(R.drawable.voucher_time_now);
                    aVar.f63198c.setText(String.format(this.f63194c.getString(R.string.voucher_time), accountVoucherGame.getExpire_date()));
                    aVar.f63202g.setBackgroundResource(R.drawable.voucher_blue_left_bg);
                    aVar.f63204i.setBackgroundResource(R.drawable.voucher_blue_right_bg);
                    aVar.f63203h.setBackgroundResource(R.drawable.account_voucher_white_bg);
                    aVar.f63197b.setBackgroundResource(R.drawable.account_voucher_white_bg);
                    aVar.f63199d.setText(Html.fromHtml(String.format(this.f63194c.getString(R.string.voucher_no), "<font color='0xffb6b6' >" + accountVoucherGame.getNo() + "<\font>")));
                    break;
                case "used":
                    aVar.f63200e.setVisibility(8);
                    aVar.f63201f.setVisibility(0);
                    aVar.f63201f.setImageResource(R.drawable.voucher_time_use);
                    aVar.f63198c.setText(String.format(this.f63194c.getString(R.string.voucher_time), accountVoucherGame.getExpire_date()));
                    aVar.f63202g.setBackgroundResource(R.drawable.voucher_gay_left_bg);
                    aVar.f63204i.setBackgroundResource(R.drawable.voucher_gay_right_bg);
                    aVar.f63203h.setBackgroundResource(R.drawable.account_voucher_gay_bg);
                    aVar.f63197b.setBackgroundResource(R.drawable.account_voucher_gay_bg);
                    aVar.f63199d.setText(Html.fromHtml(String.format(this.f63194c.getString(R.string.voucher_no), "<font color='0xe1e1e1' >" + accountVoucherGame.getNo() + "<\font>")));
                    break;
                case "will_expire":
                    aVar.f63200e.setVisibility(0);
                    aVar.f63201f.setVisibility(8);
                    aVar.f63200e.setImageResource(R.drawable.voucher_time_run_out);
                    aVar.f63198c.setText(String.format(this.f63194c.getString(R.string.voucher_time_out), accountVoucherGame.getExpire_date(), accountVoucherGame.getNotice()));
                    aVar.f63202g.setBackgroundResource(R.drawable.voucher_blue_left_bg);
                    aVar.f63204i.setBackgroundResource(R.drawable.voucher_blue_right_bg);
                    aVar.f63203h.setBackgroundResource(R.drawable.account_voucher_white_bg);
                    aVar.f63197b.setBackgroundResource(R.drawable.account_voucher_white_bg);
                    aVar.f63199d.setText(Html.fromHtml(String.format(this.f63194c.getString(R.string.voucher_no), "<font color='0xffb6b6' >" + accountVoucherGame.getNo() + "<\font>")));
                    break;
            }
        }
        return viewInflate;
    }
}
