package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.join.android.app.mgsim.wufun.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class v0 extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ListView f67867c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.join.mgps.adapter.e0 f67868d;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v0.this.dismiss();
        }
    }

    public v0(Context context, int theme) {
        super(context, theme);
        this.f67866b = context;
    }

    public void a(List<String> mWifiApList) {
        ArrayList arrayList = new ArrayList(0);
        for (String str : mWifiApList) {
            r6.a aVar = new r6.a();
            aVar.c(str.substring(0, str.lastIndexOf("_")));
            aVar.d(str.substring(str.lastIndexOf("_") + 1));
            arrayList.add(aVar);
        }
        this.f67868d.b(arrayList);
        this.f67868d.notifyDataSetChanged();
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(1);
        super.onCreate(savedInstanceState);
        View viewInflate = LayoutInflater.from(this.f67866b).inflate(R.layout.dialog_fight_server_chose, (ViewGroup) null);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        viewInflate.findViewById(R.id.cancel).setOnClickListener(new a());
        this.f67867c = (ListView) viewInflate.findViewById(R.id.listView);
        com.join.mgps.adapter.e0 e0Var = new com.join.mgps.adapter.e0(this.f67866b);
        this.f67868d = e0Var;
        this.f67867c.setAdapter((ListAdapter) e0Var);
        setContentView(viewInflate);
    }

    public v0(Context context) {
        super(context);
        this.f67866b = context;
    }
}
