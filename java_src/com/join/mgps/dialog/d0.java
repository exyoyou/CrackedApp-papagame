package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a3;
import com.join.mgps.dto.CouponsData;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class d0 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f67465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f67466c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f67467d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<CouponsData> f67468e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private v6.c f67469f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Map<String, CouponsData> f67470g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Button f67471h;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.checkBox);
            if (!checkBox.isChecked()) {
                Iterator<String> it2 = d0.this.f67470g.keySet().iterator();
                int money = 0;
                while (it2.hasNext()) {
                    money += d0.this.f67470g.get(it2.next()).getMoney();
                }
                if (money >= d0.this.f67466c) {
                    a3.b(d0.this.f67467d).d("已足够支付!");
                    return;
                }
            }
            checkBox.setChecked(!checkBox.isChecked());
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            d0.this.dismiss();
            if (d0.this.f67470g.size() == 0) {
                return;
            }
            Iterator<String> it2 = d0.this.f67470g.keySet().iterator();
            int money = 0;
            while (it2.hasNext()) {
                money += d0.this.f67470g.get(it2.next()).getMoney();
            }
            if (d0.this.f67465b || money >= d0.this.f67466c) {
                d0.this.f67469f.a(d0.this.f67470g);
            } else {
                a3.b(d0.this.f67467d).d("金额不足");
            }
        }
    }

    class c extends BaseAdapter {

        class a implements CompoundButton.OnCheckedChangeListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f67475a;

            a(final int val$position) {
                this.f67475a = val$position;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                CouponsData couponsData = (CouponsData) d0.this.f67468e.get(this.f67475a);
                if (isChecked) {
                    d0.this.f67470g.put(couponsData.getId(), couponsData);
                } else {
                    d0.this.f67470g.remove(couponsData.getId());
                }
                Iterator<String> it2 = d0.this.f67470g.keySet().iterator();
                int money = 0;
                while (it2.hasNext()) {
                    money += d0.this.f67470g.get(it2.next()).getMoney();
                }
                double dRound = ((double) Math.round(money)) / 100.0d;
                d0.this.f67471h.setText("确认（已选择" + dRound + "元）");
            }
        }

        c() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return d0.this.f67468e.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(final int position, View convertView, ViewGroup parent) {
            View viewInflate = LayoutInflater.from(d0.this.f67467d).inflate(R.layout.papa_coupon_item_layout, (ViewGroup) null);
            CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.checkBox);
            TextView textView = (TextView) viewInflate.findViewById(R.id.money);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.couponName);
            TextView textView3 = (TextView) viewInflate.findViewById(R.id.expireDate);
            Set<String> setKeySet = d0.this.f67470g.keySet();
            CouponsData couponsData = (CouponsData) d0.this.f67468e.get(position);
            textView2.setText("名称:" + couponsData.getName());
            int money = couponsData.getMoney();
            if (setKeySet.contains(couponsData.getId())) {
                checkBox.setChecked(true);
            } else {
                checkBox.setChecked(false);
            }
            textView.setText(Html.fromHtml("金额:<font color='0xfc3f5e' >" + (((double) Math.round(money)) / 100.0d) + "</font>元"), TextView.BufferType.SPANNABLE);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("截至时间：");
            sb2.append(couponsData.getExpire_date());
            textView3.setText(sb2.toString());
            checkBox.setClickable(false);
            checkBox.setOnCheckedChangeListener(new a(position));
            return viewInflate;
        }
    }

    public d0(Context context) {
        super(context);
        this.f67465b = false;
        this.f67470g = new HashMap();
        this.f67467d = context;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        View viewInflate = LayoutInflater.from(this.f67467d).inflate(R.layout.papa_coupon_dialog_layout, (ViewGroup) null);
        setContentView(viewInflate);
        ListView listView = (ListView) viewInflate.findViewById(R.id.listView);
        this.f67471h = (Button) viewInflate.findViewById(R.id.ok);
        listView.setAdapter((ListAdapter) new c());
        listView.setOnItemClickListener(new a());
        this.f67471h.setOnClickListener(new b());
    }

    public d0(Context context, int theme, List<CouponsData> couponsDatas, v6.c cardIDNumber, int money, boolean isMixPay) {
        super(context, theme);
        this.f67465b = false;
        this.f67470g = new HashMap();
        this.f67467d = context;
        this.f67468e = couponsDatas;
        this.f67469f = cardIDNumber;
        this.f67466c = money;
        this.f67465b = isMixPay;
        setOwnerActivity((Activity) context);
    }

    protected d0(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67465b = false;
        this.f67470g = new HashMap();
    }
}
