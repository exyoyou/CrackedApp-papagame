package com.switfpass.pay.utils;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.switfpass.pay.lib.Resourcemap;

/* JADX INFO: loaded from: classes2.dex */
public class DialogInfoSdk extends Dialog {
    public static final int A = 9;
    public static final int B = 10;
    public static final int C = 11;
    public static final int D = 12;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f82709q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f82710r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f82711s = 2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f82712t = 3;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f82713u = 4;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f82714v = 5;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f82715w = 8;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f82716x = 6;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f82717y = 7;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f82718z = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f82719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f82720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f82721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f82722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f82723f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f82724g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f82725h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewGroup f82726i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private i f82727j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f82728k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f82729l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private EditText f82730m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private LinearLayout f82731n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f82732o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f82733p;

    public DialogInfoSdk(Context context, int i10, String str, String str2, String str3, String str4, i iVar) {
        super(context);
        requestWindowFeature(1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        ViewGroup viewGroup = (ViewGroup) getLayoutInflater().inflate(Resourcemap.getLayout_dialog_info(), (ViewGroup) null);
        this.f82726i = viewGroup;
        setContentView(viewGroup);
        k(str3);
        j(str4);
        this.f82719b = context;
        this.f82727j = iVar;
        c(str, str2, i10);
        b(i10);
    }

    private void b(int i10) {
        this.f82725h.setOnClickListener(new e1(this, i10));
        this.f82724g.setOnClickListener(new f1(this, i10));
    }

    private void c(String str, String str2, int i10) {
        TextView textView;
        String str3;
        this.f82720c = (TextView) findViewById(Resourcemap.getById_title());
        this.f82721d = (TextView) findViewById(Resourcemap.getById_content());
        this.f82724g = (TextView) findViewById(Resourcemap.getById_btnOk());
        this.f82725h = (TextView) findViewById(Resourcemap.getById_btnCancel());
        this.f82728k = findViewById(Resourcemap.getById_line_img());
        this.f82730m = (EditText) findViewById(Resourcemap.getById_et_content());
        this.f82731n = (LinearLayout) findViewById(Resourcemap.getById_pay_lay_revers());
        this.f82722e = (TextView) findViewById(Resourcemap.getById_pay_money());
        this.f82723f = (TextView) findViewById(Resourcemap.getById_pay_order_no());
        this.f82729l = findViewById(Resourcemap.getById_pay_img());
        if (i10 != 3 && i10 != 4) {
            switch (i10) {
                case 8:
                    this.f82725h.setVisibility(8);
                    this.f82728k.setVisibility(8);
                    textView = this.f82724g;
                    str3 = "确定";
                    textView.setText(str3);
                    break;
                case 9:
                    this.f82730m.setVisibility(0);
                    this.f82721d.setVisibility(8);
                    this.f82725h.setVisibility(0);
                    this.f82728k.setVisibility(0);
                    break;
                case 10:
                    this.f82723f.setText(g());
                    this.f82722e.setText(f());
                    this.f82731n.setVisibility(0);
                    this.f82721d.setVisibility(8);
                    this.f82724g.setText("冲正");
                    textView = this.f82725h;
                    str3 = "继续查询";
                    textView.setText(str3);
                    break;
                case 11:
                    this.f82725h.setVisibility(8);
                    this.f82728k.setVisibility(8);
                    this.f82724g.setVisibility(8);
                    this.f82729l.setVisibility(8);
                    this.f82731n.setVisibility(8);
                    break;
                case 12:
                    textView = this.f82724g;
                    str3 = "继续支付";
                    textView.setText(str3);
                    break;
            }
        } else {
            this.f82724g.setTextColor(-16776961);
        }
        this.f82720c.setText(str);
        this.f82721d.setText(str2);
    }

    public String f() {
        return this.f82733p;
    }

    public String g() {
        return this.f82732o;
    }

    public void h(String str) {
        TextView textView = this.f82724g;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void i(String str) {
        this.f82721d.setText(str);
    }

    public void j(String str) {
        this.f82733p = str;
    }

    public void k(String str) {
        this.f82732o = str;
    }

    public void l(j jVar, int i10) {
    }

    public void m(k kVar) {
    }

    public void n(Class cls) {
        this.f82719b.startActivity(new Intent(this.f82719b, (Class<?>) cls));
    }

    public DialogInfoSdk(Context context, String str, String str2, String str3, int i10, i iVar) {
        super(context);
        requestWindowFeature(1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        ViewGroup viewGroup = (ViewGroup) getLayoutInflater().inflate(Resourcemap.getLayout_dialog_info(), (ViewGroup) null);
        this.f82726i = viewGroup;
        setContentView(viewGroup);
        this.f82719b = context;
        this.f82727j = iVar;
        c(str, str2, i10);
        b(i10);
    }
}
