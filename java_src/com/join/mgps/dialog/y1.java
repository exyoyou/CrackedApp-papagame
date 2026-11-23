package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Color;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.posting.PostingActivity;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class y1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f67978a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f67979b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GridView f67980c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<c> f67981d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f67982e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PostingActivity.m f67983f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f67984g;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            y1.this.d();
        }
    }

    class b implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f67986b;

        b(final Activity val$activity) {
            this.f67986b = val$activity;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            int i10 = ((c) y1.this.f67981d.get(position)).f67988a;
            if (i10 * 2 > y1.this.f67984g) {
                return;
            }
            Activity activity = this.f67986b;
            com.join.mgps.Util.h0.h0(activity).E(activity, i10);
            y1.this.f67983f.a(i10);
            y1.this.f67981d.clear();
            y1.this.d();
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f67988a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f67989b;

        public c(int value) {
            this.f67988a = value;
        }

        public boolean a() {
            return this.f67989b;
        }

        public void b(boolean selected) {
            this.f67989b = selected;
        }
    }

    private class d extends BaseAdapter {

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f67992a;

            a() {
            }
        }

        private d() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return y1.this.f67981d.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return y1.this.f67981d.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            a aVar;
            if (convertView == null) {
                convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_posting_slecte_coins, (ViewGroup) null);
                aVar = new a();
                aVar.f67992a = (TextView) convertView.findViewById(R.id.tv_value);
                convertView.setTag(aVar);
            } else {
                aVar = (a) convertView.getTag();
            }
            c cVar = (c) y1.this.f67981d.get(position);
            aVar.f67992a.setText(cVar.f67988a + "\n铜板");
            if (cVar.f67988a * 2 > y1.this.f67984g) {
                aVar.f67992a.setTextColor(Color.parseColor("#a8a8a8"));
                aVar.f67992a.setBackgroundResource(R.drawable.bg_frame_a8a8a8);
            } else if (cVar.a()) {
                aVar.f67992a.setTextColor(-1);
                aVar.f67992a.setBackgroundResource(R.drawable.bg_border_3ca4fd);
            } else {
                aVar.f67992a.setTextColor(Color.parseColor("#3CA4FD"));
                aVar.f67992a.setBackgroundResource(R.drawable.bg_frame_3ca4fd);
            }
            return convertView;
        }

        /* synthetic */ d(y1 y1Var, a aVar) {
            this();
        }
    }

    public y1(Activity activity, PostingActivity.m callback) {
        e();
        this.f67983f = callback;
        f(activity);
    }

    private void e() {
        ArrayList<c> arrayList = new ArrayList<>();
        this.f67981d = arrayList;
        arrayList.add(new c(0));
        this.f67981d.add(new c(5));
        this.f67981d.add(new c(10));
        this.f67981d.add(new c(30));
        this.f67981d.add(new c(50));
        this.f67981d.add(new c(60));
        this.f67981d.add(new c(80));
        this.f67981d.add(new c(100));
    }

    public void d() {
        this.f67978a.dismiss();
    }

    void f(final Activity activity) {
        this.f67978a = new Dialog(activity, R.style.newtrans_no_floating_dialog);
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.dialog_posting_select_coins, (ViewGroup) null);
        viewInflate.findViewById(R.id.iv_close).setOnClickListener(new a());
        this.f67979b = (TextView) viewInflate.findViewById(R.id.tv_current_copper);
        this.f67980c = (GridView) viewInflate.findViewById(R.id.mGridView);
        d dVar = new d(this, null);
        this.f67982e = dVar;
        this.f67980c.setAdapter((ListAdapter) dVar);
        this.f67980c.setOnItemClickListener(new b(activity));
        this.f67978a.setContentView(viewInflate);
        Window window = this.f67978a.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        window.setGravity(17);
    }

    public void g(String value, int selectedCoins) {
        int i10;
        try {
            this.f67984g = Integer.parseInt(value);
            while (true) {
                if (i10 >= this.f67981d.size()) {
                    i10 = -1;
                    break;
                } else if (this.f67981d.get(i10).f67988a == selectedCoins) {
                    break;
                } else {
                    i10++;
                }
            }
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
        this.f67979b.setText(Html.fromHtml("当前可用铜板数：<font color=#000000>" + value + "</font>"));
        i10 = 0;
        if (i10 >= 0) {
            this.f67981d.get(i10).b(true);
            this.f67982e.notifyDataSetChanged();
        }
    }

    public void h() {
        if (this.f67978a.isShowing()) {
            return;
        }
        this.f67978a.show();
    }
}
