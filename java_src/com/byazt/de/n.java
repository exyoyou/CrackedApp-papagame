package com.byazt.de;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.byazt.hu.u;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 111, 46})
public class n extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f12860a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public uj f12861c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f12862i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Activity f12863n;
    public String sp;
    public ve tt;
    public boolean uj;
    public boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f12864x;

    @com.byazt.zqa.c(c = {0, 1, 111, 151})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f12868a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Activity f12869c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f12870n;
        public uj sp;
        public String tt;
        public String uj;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public ve f12871x;

        public c(Activity activity) {
            this.f12869c = activity;
        }

        public c c(String str) {
            this.tt = str;
            return this;
        }

        public c tt(String str) {
            this.ve = str;
            return this;
        }

        public c uj(String str) {
            this.f12870n = str;
            return this;
        }

        public c ve(String str) {
            this.uj = str;
            return this;
        }

        public c c(boolean z10) {
            this.f12868a = z10;
            return this;
        }

        public c c(uj ujVar) {
            this.sp = ujVar;
            return this;
        }

        public c c(ve veVar) {
            this.f12871x = veVar;
            return this;
        }

        public n c() {
            return new n(this.f12869c, this.tt, this.ve, this.uj, this.f12870n, this.f12868a, this.sp, this.f12871x);
        }
    }

    public n(@NonNull Activity activity, String str, String str2, String str3, String str4, boolean z10, @NonNull uj ujVar, ve veVar) {
        super(activity);
        this.f12863n = activity;
        this.f12861c = ujVar;
        this.f12860a = str;
        this.sp = str2;
        this.f12864x = str3;
        this.f12862i = str4;
        this.tt = veVar;
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        setCanceledOnTouchOutside(z10);
        c(this.f12863n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delete() {
        this.uj = true;
        dismiss();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (!this.f12863n.isFinishing()) {
            this.f12863n.finish();
        }
        if (this.ve) {
            this.f12861c.c();
        } else if (this.uj) {
            this.tt.delete();
        } else {
            this.f12861c.tt();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    private void c(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        LinearLayout linearLayout2 = new LinearLayout(context);
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(c(context, 290), -2);
        linearLayout2.setBackgroundColor(Color.parseColor("#ffffff"));
        linearLayout2.setLayoutParams(layoutParams2);
        linearLayout2.setBackground(c(context, "#ffffff", 4));
        linearLayout2.setOrientation(1);
        int iC = c(context, 16);
        TextView textView = new TextView(context);
        textView.setTextSize(2, 16.0f);
        textView.setText("是否在WiFi环境下恢复下载？");
        textView.setTextColor(Color.parseColor("#222222"));
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(iC, iC, iC, iC);
        textView.setLayoutParams(layoutParams3);
        if (!TextUtils.isEmpty(this.f12860a)) {
            textView.setText(this.f12860a);
        }
        linearLayout2.addView(textView);
        LinearLayout linearLayout3 = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.topMargin = c(context, 26);
        layoutParams4.bottomMargin = iC;
        linearLayout3.setOrientation(0);
        linearLayout3.setLayoutParams(layoutParams4);
        TextView textView2 = new TextView(context);
        textView2.setLayoutParams(new LinearLayout.LayoutParams(c(context, 70), c(context, 33)));
        textView2.setText("管理");
        textView2.setTextColor(Color.parseColor("#CFCFCF"));
        textView2.setTextSize(2, 13.0f);
        textView2.setGravity(17);
        if (!TextUtils.isEmpty(this.f12862i)) {
            textView2.setText(this.f12862i);
            linearLayout3.addView(textView2);
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.de.n.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    n.this.delete();
                }
            });
        }
        LinearLayout linearLayout4 = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        linearLayout4.setOrientation(0);
        layoutParams5.rightMargin = c(context, 16);
        linearLayout4.setGravity(5);
        linearLayout4.setLayoutParams(layoutParams5);
        TextView textView3 = new TextView(context);
        textView3.setLayoutParams(new LinearLayout.LayoutParams(c(context, 70), c(context, 33)));
        textView3.setTextColor(Color.parseColor("#CFCFCF"));
        textView3.setText("不，谢谢");
        textView3.setTextSize(2, 13.0f);
        textView3.setGravity(17);
        if (!TextUtils.isEmpty(this.f12864x)) {
            textView3.setText(this.f12864x);
        }
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.de.n.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                n.this.tt();
            }
        });
        linearLayout4.addView(textView3);
        TextView textView4 = new TextView(context);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(c(context, 70), c(context, 33));
        layoutParams6.leftMargin = c(context, 8);
        layoutParams6.gravity = 5;
        textView4.setLayoutParams(layoutParams6);
        textView4.setTextColor(Color.parseColor("#ffffff"));
        textView4.setTextSize(2, 13.0f);
        textView4.setText("好的");
        textView4.setGravity(17);
        if (!TextUtils.isEmpty(this.sp)) {
            textView4.setText(this.sp);
        }
        textView4.setBackground(c(context, "#2A90D7", 2));
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.de.n.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                n.this.c();
            }
        });
        linearLayout4.addView(textView4);
        linearLayout3.addView(linearLayout4);
        linearLayout2.addView(linearLayout3);
        linearLayout.addView(linearLayout2);
        setContentView(linearLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt() {
        dismiss();
    }

    private static GradientDrawable c(Context context, String str, int i10) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setCornerRadius(c(context, i10));
        return gradientDrawable;
    }

    private static int c(Context context, int i10) {
        return u.c(context, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.ve = true;
        dismiss();
    }
}
