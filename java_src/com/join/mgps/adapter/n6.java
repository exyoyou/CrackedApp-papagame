package com.join.mgps.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.RecomWifiActivity;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class n6 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    RecomWifiActivity f62835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<CollectionBeanSub> f62836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    List<CollectionBeanSub> f62837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    LayoutInflater f62838e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private v6.e f62839f;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CheckBox f62840b;

        a(final CheckBox val$box) {
            this.f62840b = val$box;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f62840b.isChecked()) {
                this.f62840b.setChecked(false);
            } else {
                this.f62840b.setChecked(true);
            }
        }
    }

    class b implements CompoundButton.OnCheckedChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f62842a;

        b(final int val$position) {
            this.f62842a = val$position;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (isChecked) {
                n6 n6Var = n6.this;
                n6Var.f62837d.add(n6Var.f62836c.get(this.f62842a));
            } else {
                n6 n6Var2 = n6.this;
                n6Var2.f62837d.remove(n6Var2.f62836c.get(this.f62842a));
            }
            n6.this.f62839f.getDownData(n6.this.f62837d);
        }
    }

    public n6(RecomWifiActivity context, List<CollectionBeanSub> collectionBeanSubs) {
        this.f62835b = context;
        this.f62836c = collectionBeanSubs;
        this.f62838e = LayoutInflater.from(context);
        ArrayList arrayList = new ArrayList();
        this.f62837d = arrayList;
        arrayList.addAll(collectionBeanSubs);
        this.f62839f = context.getInterface();
    }

    public List<CollectionBeanSub> b() {
        return this.f62837d;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62836c.size();
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
        if (convertView == null) {
            convertView = this.f62838e.inflate(R.layout.recome_wifi_item, (ViewGroup) null);
        }
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) com.join.mgps.Util.m3.a(convertView, R.id.icon);
        CheckBox checkBox = (CheckBox) com.join.mgps.Util.m3.a(convertView, R.id.box);
        ((TextView) com.join.mgps.Util.m3.a(convertView, R.id.appName)).setText(this.f62836c.get(position).getGame_name());
        com.join.android.app.common.utils.l.d(simpleDraweeView, R.drawable.main_normal_icon, this.f62836c.get(position).getIco_remote());
        simpleDraweeView.setOnClickListener(new a(checkBox));
        checkBox.setOnCheckedChangeListener(new b(position));
        return convertView;
    }
}
