package com.byazt.dyf;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.byazt.ff.TTDislikeLayout;
import com.byazt.ff.TTDislikeScrollListView;
import com.byazt.nc.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 746, 15})
public class uj extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f13227a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.sif.ve f13228c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f13229n;
    public final boolean sp;
    public TTDislikeLayout tt;
    public boolean uj;
    public final com.byazt.vo.tt ve;

    public uj(Context context, com.byazt.vo.tt ttVar, c cVar) {
        super(context);
        this.uj = false;
        getWindow().addFlags(1024);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.ve = ttVar;
        this.sp = ttVar != null ? ttVar.tt() : false;
        this.f13227a = cVar;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        com.byazt.sif.ve veVar = this.f13228c;
        if (veVar == null || this.uj) {
            return;
        }
        veVar.ve();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        setContentView(com.byazt.vfu.uj.c(getContext(), this.sp), c());
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        tt();
        ve();
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            this.uj = false;
            com.byazt.sif.ve veVar = this.f13228c;
            if (veVar != null) {
                veVar.tt();
            }
        } catch (Exception unused) {
        }
    }

    private void tt() {
        Window window = getWindow();
        if (window != null) {
            window.setGravity(17);
            window.setDimAmount(0.34f);
        }
    }

    private void ve() {
        TTDislikeLayout tTDislikeLayout = (TTDislikeLayout) findViewById(2047279103);
        this.tt = tTDislikeLayout;
        c(tTDislikeLayout);
    }

    public void c(com.byazt.sif.ve veVar) {
        this.f13228c = veVar;
    }

    public ViewGroup.LayoutParams c() {
        return new ViewGroup.LayoutParams(com.byazt.pr.c.tt().c(getContext(), 345.0f), -2);
    }

    public void c(com.byazt.vo.tt ttVar) {
        TTDislikeLayout tTDislikeLayout;
        if (ttVar == null || (tTDislikeLayout = this.tt) == null) {
            return;
        }
        TTDislikeScrollListView tTDislikeScrollListView = (TTDislikeScrollListView) tTDislikeLayout.findViewById(2047279097);
        n nVar = (n) tTDislikeScrollListView.getAdapter();
        if (nVar != null) {
            tTDislikeScrollListView.setDislikeController(new com.byazt.pr.tt(ttVar));
            nVar.c(ttVar.c());
        }
    }

    private void c(View view) {
        if (view == null) {
            return;
        }
        if (!this.sp) {
            TextView textView = (TextView) view.findViewById(2047279095);
            this.f13229n = textView;
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.dyf.uj.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (uj.this.f13228c != null) {
                        uj.this.f13228c.c();
                    }
                    uj.this.dismiss();
                }
            });
        }
        TTDislikeScrollListView tTDislikeScrollListView = (TTDislikeScrollListView) view.findViewById(2047279097);
        tTDislikeScrollListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.byazt.dyf.uj.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i10, long j10) {
                try {
                    a aVar = uj.this.ve.c().get(i10);
                    if (uj.this.sp && "99:1".equals(aVar.getId())) {
                        return;
                    }
                    if (uj.this.f13228c != null) {
                        uj.this.f13228c.c(i10, aVar);
                        uj.this.uj = true;
                    }
                    uj.this.dismiss();
                } catch (Throwable unused) {
                }
            }
        });
        com.byazt.vo.tt ttVar = this.ve;
        n nVar = new n(getContext(), ttVar == null ? new ArrayList<>(0) : ttVar.c(), this.sp, this.f13227a);
        nVar.c(new n.c() { // from class: com.byazt.dyf.uj.3
            @Override // com.byazt.dyf.n.c
            public void c(int i10, a aVar) {
                if (uj.this.f13228c != null) {
                    uj.this.f13228c.c(i10, aVar);
                    uj.this.uj = true;
                }
                uj.this.dismiss();
                com.byazt.pr.c.c().c(uj.this.ve, aVar);
            }
        });
        tTDislikeScrollListView.setAdapter((ListAdapter) nVar);
        com.byazt.vo.tt ttVar2 = this.ve;
        if (ttVar2 != null) {
            tTDislikeScrollListView.setDislikeController(new com.byazt.pr.tt(ttVar2));
        }
    }

    public void c(String str) {
        TextView textView = this.f13229n;
        if (textView != null) {
            textView.setText(str);
        }
    }
}
