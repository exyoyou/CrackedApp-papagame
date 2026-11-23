package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class c extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f79962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f79963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f79964c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f79965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f79966e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f79967f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f79968g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f79969h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Button f79970i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Button f79971j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f79972k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f79973l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final com.sigmob.sdk.videoAd.c f79974m;

    public interface a {
        void a();

        void b();
    }

    public c(Context context, com.sigmob.sdk.videoAd.c dialogConfig) {
        super(context);
        this.f79974m = dialogConfig;
        this.f79962a = Dips.dipsToIntPixels(10.0f, context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(16.0f, context);
        this.f79963b = iDipsToIntPixels;
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(227.0f, context);
        this.f79964c = iDipsToIntPixels2;
        this.f79967f = (int) (((double) (iDipsToIntPixels2 * 16.0f)) / 9.0d);
        int iDipsToIntPixels3 = Dips.dipsToIntPixels(25.0f, context);
        this.f79965d = iDipsToIntPixels3;
        this.f79969h = Dips.dipsToIntPixels(25.0f, context);
        this.f79966e = Dips.dipsToIntPixels(100.0f, context);
        this.f79968g = iDipsToIntPixels3 + iDipsToIntPixels;
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        e(context);
    }

    private TextView a(Context context) {
        TextView textView = new TextView(context);
        textView.setText(this.f79974m.a());
        textView.setTextColor(-16777216);
        textView.setTextSize(2, 18.0f);
        textView.setGravity(17);
        return textView;
    }

    private TextView b(Context context) {
        TextView textView = new TextView(context);
        this.f79973l = textView;
        textView.setTextColor(-16777216);
        this.f79973l.setTextSize(2, 14.0f);
        this.f79973l.setGravity(17);
        return this.f79973l;
    }

    private Button c(Context context) {
        Button button = new Button(context);
        button.setText(this.f79974m.c());
        button.setTextColor(Color.parseColor("#ff999999"));
        button.setBackgroundColor(0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, this.f79963b / 2, 0, 0);
        button.setGravity(17);
        button.setTextSize(2, 14.0f);
        button.setLayoutParams(layoutParams);
        return button;
    }

    private Button d(Context context) {
        Button button = new Button(context);
        button.setText(this.f79974m.d());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, this.f79968g);
        int i10 = this.f79962a;
        layoutParams.setMargins(i10 * 5, i10 * 2, i10 * 5, 0);
        button.setLayoutParams(layoutParams);
        button.setTextColor(-1);
        button.setBackgroundColor(0);
        button.setTextSize(2, 16.0f);
        x.a(button, o.f80191a, this.f79968g / 2, Color.parseColor("#66000000"), 0, 0, 0);
        return button;
    }

    private void e(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f79965d);
        int i10 = this.f79963b;
        layoutParams.setMargins(i10, this.f79962a * 2, i10, 0);
        linearLayout.addView(a(context), layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, this.f79969h);
        int i11 = this.f79963b;
        layoutParams2.setMargins(i11, this.f79962a, i11, 0);
        linearLayout.addView(b(context), layoutParams2);
        x.a(linearLayout, Color.parseColor("#FFFFFF"), this.f79962a, Color.parseColor("#66000000"), 0, 0, 0);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(this.f79967f, this.f79964c);
        int i12 = this.f79963b;
        layoutParams3.setMargins(i12, 0, i12, 0);
        layoutParams3.addRule(13);
        relativeLayout.setLayoutParams(layoutParams3);
        relativeLayout.addView(linearLayout, new RelativeLayout.LayoutParams(-1, -1));
        Button buttonD = d(context);
        this.f79971j = buttonD;
        linearLayout.addView(buttonD);
        Button buttonC = c(context);
        this.f79970i = buttonC;
        linearLayout.addView(buttonC);
        linearLayout.setGravity(17);
        addView(relativeLayout);
    }

    public void setDialogListener(final a listener) {
        Button button = this.f79970i;
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.base.views.c.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    listener.a();
                }
            });
        }
        Button button2 = this.f79971j;
        if (button2 != null) {
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.base.views.c.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    listener.b();
                }
            });
        }
    }

    public void setDuration(int time) {
        this.f79972k = time;
        TextView textView = this.f79973l;
        if (textView == null) {
            return;
        }
        textView.setText(this.f79974m.b().replace("_SEC_", String.valueOf(this.f79972k)));
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
    }
}
