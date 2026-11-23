package com.airsaid.pickerviewlibrary;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class c<T> extends com.airsaid.pickerviewlibrary.widget.a implements View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Context f6205o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private a f6206p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.airsaid.pickerviewlibrary.widget.b<T> f6207q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Button f6208r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Button f6209s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TextView f6210t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private View f6211u;

    public interface a {
        void a(int i10, int i11, int i12);
    }

    public c(Context context) {
        super(context);
        this.f6205o = context;
        o();
    }

    private void o() {
        LayoutInflater.from(this.f6205o).inflate(R.layout.pickerview_options, this.f6214d);
        this.f6207q = new com.airsaid.pickerviewlibrary.widget.b<>(d(R.id.optionspicker));
        this.f6211u = d(R.id.rlt_head_view);
        this.f6210t = (TextView) d(R.id.tvTitle);
        this.f6208r = (Button) d(R.id.btnSubmit);
        this.f6209s = (Button) d(R.id.btnCancel);
        this.f6208r.setOnClickListener(this);
        this.f6209s.setOnClickListener(this);
    }

    public void A(ArrayList<T> arrayList, ArrayList<ArrayList<T>> arrayList2, ArrayList<ArrayList<ArrayList<T>>> arrayList3, boolean z10) {
        this.f6207q.q(arrayList, arrayList2, arrayList3, z10);
    }

    public void B(ArrayList<T> arrayList, ArrayList<ArrayList<T>> arrayList2, boolean z10) {
        this.f6207q.q(arrayList, arrayList2, null, z10);
    }

    public void C(int i10) {
        this.f6207q.j(i10, 0, 0);
    }

    public void D(int i10, int i11) {
        this.f6207q.j(i10, i11, 0);
    }

    public void E(int i10, int i11, int i12) {
        this.f6207q.j(i10, i11, i12);
    }

    public void F(String str) {
        this.f6208r.setText(str);
    }

    public void G(int i10) {
        this.f6208r.setTextColor(i10);
    }

    public void H(float f10) {
        this.f6208r.setTextSize(f10);
    }

    public void I(float f10) {
        this.f6207q.s(f10);
    }

    public void J(String str) {
        this.f6210t.setText(str);
    }

    public void K(int i10) {
        this.f6210t.setTextColor(i10);
    }

    public void L(float f10) {
        this.f6210t.setTextSize(f10);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 != R.id.btnSubmit) {
            if (id2 == R.id.btnCancel) {
                b();
            }
        } else {
            if (this.f6206p != null) {
                int[] iArrG = this.f6207q.g();
                this.f6206p.a(iArrG[0], iArrG[1], iArrG[2]);
            }
            b();
        }
    }

    public void p(String str) {
        this.f6209s.setText(str);
    }

    public void q(int i10) {
        this.f6209s.setTextColor(i10);
    }

    public void r(float f10) {
        this.f6209s.setTextSize(f10);
    }

    public void s(boolean z10) {
        this.f6207q.k(z10);
    }

    public void t(boolean z10, boolean z11, boolean z12) {
        this.f6207q.l(z10, z11, z12);
    }

    public void u(int i10) {
        this.f6211u.setBackgroundColor(i10);
    }

    public void v(String str) {
        this.f6207q.m(str, null, null);
    }

    public void w(String str, String str2) {
        this.f6207q.m(str, str2, null);
    }

    public void x(String str, String str2, String str3) {
        this.f6207q.m(str, str2, str3);
    }

    public void y(a aVar) {
        this.f6206p = aVar;
    }

    public void z(ArrayList<T> arrayList) {
        this.f6207q.q(arrayList, null, null, false);
    }
}
