package com.join.mgps.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.BuildQRCodeActivity_;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e0 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<r6.a> f62027c = new ArrayList(0);

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ r6.a f62028b;

        a(final r6.a val$fightWifiServer) {
            this.f62028b = val$fightWifiServer;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent();
            intent.putExtra(BuildQRCodeActivity_.SSID_EXTRA, this.f62028b.a() + "_" + this.f62028b.b());
            intent.setAction(k6.b.f92139a);
            e0.this.f62026b.sendBroadcast(intent);
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Button f62030a;

        b() {
        }
    }

    public e0(Context context) {
        this.f62026b = context;
    }

    public void b(List<r6.a> _servers) {
        this.f62027c.clear();
        this.f62027c.addAll(_servers);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62027c.size();
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
    public View getView(int i10, View view, ViewGroup viewGroup) {
        View viewInflate;
        b bVar;
        r6.a aVar = this.f62027c.get(i10);
        if (view == null) {
            bVar = new b();
            viewInflate = LayoutInflater.from(this.f62026b).inflate(R.layout.listview_dialog_fight_server_chose, (ViewGroup) null);
            bVar.f62030a = (Button) viewInflate.findViewById(R.id.room);
            viewInflate.setTag(bVar);
        } else {
            viewInflate = view;
            bVar = (b) view.getTag();
        }
        bVar.f62030a.setText(aVar.a() + "-" + aVar.b());
        bVar.f62030a.setOnClickListener(new a(aVar));
        return viewInflate;
    }
}
