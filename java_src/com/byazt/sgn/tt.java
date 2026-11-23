package com.byazt.sgn;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.aas.pf;
import com.byazt.el.SSWebView;
import com.byazt.omf.gt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 13})
@SuppressLint({"SetJavaScriptEnabled"})
public class tt extends AlertDialog {
    public static volatile AtomicInteger tt = new AtomicInteger(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ListView f19706a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f19707c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f19708da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public c f19709i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ImageView f19710n;
    public HashMap<String, String> sl;
    public SSWebView sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public List<ve> f19711t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f19712u;
    public Button uj;
    public Button ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f19713x;

    public interface c {
        void c(Dialog dialog);

        void tt(Dialog dialog);

        void ve(Dialog dialog);
    }

    /* JADX INFO: renamed from: com.byazt.sgn.tt$tt, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 211, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA})
    class C0424tt extends ArrayAdapter<ve> {

        /* JADX INFO: renamed from: com.byazt.sgn.tt$tt$c */
        @com.byazt.zqa.c(c = {0, 1, 211, 220})
        class c {
            public TextView tt;
            public ImageView uj;
            public TextView ve;

            public c() {
            }
        }

        public C0424tt(Context context, int i10, List<ve> list) {
            super(context, i10, list);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            c cVar;
            View view2;
            ve veVar = (ve) getItem(i10);
            if (view == null) {
                RelativeLayout relativeLayout = new RelativeLayout(tt.this.f19707c);
                relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                relativeLayout.setPadding(0, 0, 0, pf.ve(tt.this.f19707c, 17.0f));
                TextView textView = new TextView(tt.this.f19707c);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                int iVe = pf.ve(tt.this.f19707c, 16.0f);
                layoutParams.leftMargin = iVe;
                layoutParams.rightMargin = iVe;
                textView.setGravity(16);
                textView.setId(View.generateViewId());
                textView.setTextColor(Color.parseColor("#161823"));
                textView.setTextSize(16.0f);
                textView.setTypeface(null, 1);
                textView.setPadding(0, pf.ve(tt.this.f19707c, 19.0f), 0, 0);
                textView.setLayoutParams(layoutParams);
                relativeLayout.addView(textView);
                ImageView imageView = new ImageView(tt.this.f19707c);
                imageView.setId(View.generateViewId());
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iVe, iVe);
                layoutParams2.topMargin = pf.ve(tt.this.f19707c, 7.0f);
                layoutParams2.addRule(3, textView.getId());
                layoutParams2.addRule(5, textView.getId());
                com.byazt.nr.z.c(tt.this.f19707c, "tt_open_app_detail_list_item", (View) imageView, 320);
                imageView.setLayoutParams(layoutParams2);
                relativeLayout.addView(imageView);
                TextView textView2 = new TextView(tt.this.f19707c);
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams3.leftMargin = pf.ve(tt.this.f19707c, 8.0f);
                layoutParams3.topMargin = pf.ve(tt.this.f19707c, 6.0f);
                layoutParams3.addRule(3, textView.getId());
                layoutParams3.addRule(1, imageView.getId());
                textView2.setLayoutParams(layoutParams3);
                textView2.setTextColor(Color.parseColor("#161823"));
                textView2.setTextSize(13.0f);
                textView2.setAlpha(0.5f);
                textView2.setGravity(16);
                relativeLayout.addView(textView2);
                cVar = new c();
                cVar.tt = textView;
                cVar.ve = textView2;
                cVar.uj = imageView;
                relativeLayout.setTag(cVar);
                view2 = relativeLayout;
            } else {
                cVar = (c) view.getTag();
                view2 = view;
            }
            cVar.uj.setVisibility(0);
            if ("补充中，可于应用官网查看".equals(veVar.c())) {
                cVar.uj.setVisibility(4);
            }
            cVar.tt.setText(veVar.c());
            cVar.ve.setText(veVar.tt());
            return view2;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 211, 519})
    class ve {
        public String tt;
        public String ve;

        public ve(String str, String str2) {
            this.tt = str;
            this.ve = str2;
        }

        public String c() {
            return this.tt;
        }

        public String tt() {
            return this.ve;
        }
    }

    public tt(Context context, String str) {
        super(context);
        this.f19711t = new ArrayList();
        this.f19712u = false;
        this.f19707c = context;
        this.f19708da = str;
    }

    private void n() {
        if (this.f19707c == null) {
            this.f19707c = gt.getContext();
        }
        if (this.f19707c.getResources().getConfiguration().orientation == 1) {
            setContentView(tt(1));
        } else {
            setContentView(tt(0));
        }
    }

    private LinearLayout tt(int i10, LinearLayout linearLayout, LinearLayout linearLayout2) {
        if (i10 == 0) {
            return linearLayout;
        }
        View view = new View(this.f19707c);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, pf.ve(this.f19707c, 34.0f)));
        linearLayout2.addView(view);
        return linearLayout;
    }

    private void uj() {
        if (this.f19707c == null) {
            this.f19707c = gt.getContext();
        }
        if (this.f19707c.getResources().getConfiguration().orientation == 1) {
            setContentView(c(1));
        } else {
            setContentView(c(0));
        }
    }

    private LinearLayout ve(int i10, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        LinearLayout linearLayout2 = new LinearLayout(this.f19707c);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        linearLayout2.setOrientation(0);
        int iVe = pf.ve(this.f19707c, 16.0f);
        linearLayout2.setPadding(iVe, iVe, iVe, iVe);
        linearLayout2.setLayoutParams(layoutParams);
        relativeLayout.addView(linearLayout2);
        this.uj = new Button(this.f19707c);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        int iVe2 = pf.ve(this.f19707c, 7.0f);
        layoutParams2.leftMargin = iVe2;
        layoutParams2.rightMargin = iVe2;
        layoutParams2.weight = 1.0f;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(pf.ve(this.f19707c, 3.0f));
        gradientDrawable.setStroke(pf.ve(this.f19707c, 0.5f), Color.parseColor("#E0161823"));
        this.uj.setBackground(gradientDrawable);
        int iVe3 = pf.ve(this.f19707c, 12.0f);
        this.uj.setText("上一步");
        this.uj.setPadding(0, iVe3, 0, iVe3);
        this.uj.setTextColor(Color.parseColor("#A8161823"));
        this.uj.setLayoutParams(layoutParams2);
        linearLayout2.addView(this.uj);
        return c(i10, linearLayout, relativeLayout, linearLayout2, iVe2, iVe3);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        tt.set(0);
        c cVar = this.f19709i;
        if (cVar != null) {
            cVar.tt(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.byazt.vfu.sp.tt(this);
        tt();
        if (this.f19712u) {
            n();
        } else {
            uj();
        }
        ve();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }

    private View c(int i10) {
        LinearLayout linearLayout = new LinearLayout(this.f19707c);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(i10);
        linearLayout.setBackgroundColor(0);
        linearLayout.setLayoutParams(layoutParams);
        View view = new View(this.f19707c);
        LinearLayout.LayoutParams layoutParams2 = i10 == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 0.38f;
        view.setLayoutParams(layoutParams2);
        linearLayout.addView(view);
        LinearLayout linearLayout2 = new LinearLayout(this.f19707c);
        LinearLayout.LayoutParams layoutParams3 = i10 == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 0.62f;
        layoutParams3.gravity = 1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(pf.ve(this.f19707c, 8.0f));
        linearLayout2.setBackground(gradientDrawable);
        linearLayout2.setOrientation(1);
        linearLayout2.setLayoutParams(layoutParams3);
        linearLayout.addView(linearLayout2);
        RelativeLayout relativeLayout = new RelativeLayout(this.f19707c);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        return c(i10, linearLayout, linearLayout2, relativeLayout);
    }

    private View tt(int i10) {
        LinearLayout.LayoutParams layoutParams;
        LinearLayout.LayoutParams layoutParams2;
        LinearLayout linearLayout = new LinearLayout(this.f19707c);
        ViewGroup.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(i10);
        linearLayout.setBackgroundColor(0);
        linearLayout.setLayoutParams(layoutParams3);
        View view = new View(this.f19707c);
        if (i10 == 0) {
            layoutParams = new LinearLayout.LayoutParams(0, -1);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-1, 0);
        }
        layoutParams.weight = 0.38f;
        view.setLayoutParams(layoutParams);
        linearLayout.addView(view);
        RelativeLayout relativeLayout = new RelativeLayout(this.f19707c);
        if (i10 == 0) {
            layoutParams2 = new LinearLayout.LayoutParams(0, -1);
        } else {
            layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        }
        layoutParams2.weight = 0.62f;
        layoutParams2.gravity = 1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(pf.ve(this.f19707c, 8.0f));
        relativeLayout.setBackground(gradientDrawable);
        relativeLayout.setLayoutParams(layoutParams2);
        linearLayout.addView(relativeLayout);
        return c(i10, linearLayout, relativeLayout);
    }

    private LinearLayout uj(int i10, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        if (i10 == 0) {
            return linearLayout;
        }
        View view = new View(this.f19707c);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, pf.ve(this.f19707c, 34.0f)));
        relativeLayout.addView(view);
        return linearLayout;
    }

    public void ve() {
        if (this.f19712u) {
            c();
        } else {
            SSWebView sSWebView = this.sp;
            if (sSWebView != null) {
                sSWebView.setWebViewClient(new SSWebView.c());
            }
        }
        this.ve.setVisibility(0);
        this.ve.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.tt.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                tt.tt.set(0);
                if (tt.this.f19709i != null) {
                    tt.this.f19709i.c(tt.this);
                }
            }
        });
        this.f19710n.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.tt.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                tt.tt.set(0);
                if (tt.this.f19709i != null) {
                    tt.this.f19709i.tt(tt.this);
                }
            }
        });
        this.uj.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.tt.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                tt.tt.set(0);
                if (tt.this.f19709i != null) {
                    tt.this.f19709i.ve(tt.this);
                }
            }
        });
        List<ve> list = this.f19711t;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f19706a.setAdapter((ListAdapter) new C0424tt(this.f19707c, 0, this.f19711t));
    }

    private LinearLayout c(int i10, LinearLayout linearLayout, LinearLayout linearLayout2, RelativeLayout relativeLayout) {
        ImageView imageView = new ImageView(this.f19707c);
        this.f19710n = imageView;
        imageView.setMaxHeight(pf.ve(this.f19707c, 46.0f));
        this.f19710n.setMaxWidth(pf.ve(this.f19707c, 46.0f));
        this.f19710n.setMinimumHeight(pf.ve(this.f19707c, 46.0f));
        this.f19710n.setMinimumWidth(pf.ve(this.f19707c, 46.0f));
        this.f19710n.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        com.byazt.vfu.ve veVar = new com.byazt.vfu.ve(pf.ve(this.f19707c, 14.0f));
        veVar.c(-16777216);
        veVar.c(pf.ve(this.f19707c, 2.0f));
        this.f19710n.setImageDrawable(veVar);
        relativeLayout.addView(this.f19710n);
        TextView textView = new TextView(this.f19707c);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        textView.setGravity(17);
        layoutParams.addRule(15);
        textView.setTextAlignment(4);
        textView.setTextColor(Color.parseColor("#161823"));
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setText("权限列表");
        textView.setLayoutParams(layoutParams);
        relativeLayout.addView(textView);
        linearLayout2.addView(relativeLayout);
        View view = new View(this.f19707c);
        view.setId(View.generateViewId());
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, pf.ve(this.f19707c, 1.0f)));
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        linearLayout2.addView(view);
        return c(i10, linearLayout, c(linearLayout2, view));
    }

    private LinearLayout tt(int i10, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        View view = new View(this.f19707c);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, pf.ve(this.f19707c, 1.0f)));
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        relativeLayout.addView(view);
        this.sp = new SSWebView(this.f19707c);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        this.sp.setLayoutParams(layoutParams);
        relativeLayout.addView(this.sp);
        View view2 = new View(this.f19707c);
        view2.setLayoutParams(new LinearLayout.LayoutParams(-1, pf.ve(this.f19707c, 1.0f)));
        view2.setBackgroundColor(Color.parseColor("#E8E8E8"));
        relativeLayout.addView(view2);
        return ve(i10, linearLayout, relativeLayout);
    }

    public void tt() {
        if (TextUtils.isEmpty(this.f19708da)) {
            c(this.sl);
            return;
        }
        try {
            com.byazt.ete.a aVarN = com.byazt.omf.c.n(new JSONObject(this.f19708da));
            if (aVarN != null) {
                HashMap<String, String> mapC = aVarN.c();
                this.sl = mapC;
                if (!mapC.isEmpty()) {
                    this.f19712u = false;
                    c(this.sl);
                } else if (!TextUtils.isEmpty(aVarN.tt())) {
                    this.f19713x = aVarN.tt();
                    this.f19712u = true;
                } else {
                    c(this.sl);
                }
            }
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    private LinearLayout c(LinearLayout linearLayout, View view) {
        LinearLayout linearLayout2 = new LinearLayout(this.f19707c);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, view.getId());
        linearLayout2.setLayoutParams(layoutParams);
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2);
        this.f19706a = new ListView(this.f19707c);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 1.0f;
        layoutParams2.topMargin = pf.ve(this.f19707c, 20.0f);
        int iVe = pf.ve(this.f19707c, 16.0f);
        this.f19706a.setPadding(iVe, 0, iVe, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setShape(2);
        gradientDrawable.setStroke(pf.ve(this.f19707c, 1.0f), Color.parseColor("#F0F0F0"));
        this.f19706a.setDivider(gradientDrawable);
        this.f19706a.setDividerHeight(pf.ve(this.f19707c, 24.0f));
        this.f19706a.setSelector(new ColorDrawable(0));
        this.f19706a.setLayoutParams(layoutParams2);
        linearLayout2.addView(this.f19706a);
        View view2 = new View(this.f19707c);
        view2.setLayoutParams(new LinearLayout.LayoutParams(-1, pf.ve(this.f19707c, 1.0f)));
        view2.setBackgroundColor(Color.parseColor("#E8E8E8"));
        linearLayout2.addView(view2);
        return linearLayout2;
    }

    private LinearLayout c(int i10, LinearLayout linearLayout, LinearLayout linearLayout2) {
        LinearLayout linearLayout3 = new LinearLayout(this.f19707c);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        linearLayout3.setOrientation(0);
        int iVe = pf.ve(this.f19707c, 16.0f);
        linearLayout3.setPadding(iVe, iVe, iVe, iVe);
        linearLayout3.setLayoutParams(layoutParams);
        linearLayout2.addView(linearLayout3);
        this.uj = new Button(this.f19707c);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        int iVe2 = pf.ve(this.f19707c, 7.0f);
        layoutParams2.leftMargin = iVe2;
        layoutParams2.rightMargin = iVe2;
        layoutParams2.weight = 1.0f;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(pf.ve(this.f19707c, 3.0f));
        gradientDrawable.setStroke(pf.ve(this.f19707c, 0.5f), Color.parseColor("#E0161823"));
        this.uj.setBackground(gradientDrawable);
        int iVe3 = pf.ve(this.f19707c, 12.0f);
        this.uj.setText("上一步");
        this.uj.setPadding(0, iVe3, 0, iVe3);
        this.uj.setTextColor(Color.parseColor("#A8161823"));
        this.uj.setLayoutParams(layoutParams2);
        linearLayout3.addView(this.uj);
        return c(iVe2, iVe3, linearLayout3, tt(i10, linearLayout, linearLayout2));
    }

    private LinearLayout c(int i10, int i11, LinearLayout linearLayout, LinearLayout linearLayout2) {
        this.ve = new Button(this.f19707c);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.leftMargin = i10;
        layoutParams.rightMargin = i10;
        layoutParams.weight = 1.0f;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#F93F3F"));
        gradientDrawable.setCornerRadius(pf.ve(this.f19707c, 3.0f));
        this.ve.setBackground(gradientDrawable);
        this.ve.setText("立即下载");
        this.ve.setPadding(0, i11, 0, i11);
        this.ve.setTextColor(-1);
        this.ve.setLayoutParams(layoutParams);
        linearLayout.addView(this.ve);
        return linearLayout2;
    }

    private LinearLayout c(int i10, LinearLayout linearLayout, RelativeLayout relativeLayout) {
        RelativeLayout relativeLayout2 = new RelativeLayout(this.f19707c);
        relativeLayout2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        ImageView imageView = new ImageView(this.f19707c);
        this.f19710n = imageView;
        imageView.setMaxHeight(pf.ve(this.f19707c, 46.0f));
        this.f19710n.setMaxWidth(pf.ve(this.f19707c, 46.0f));
        this.f19710n.setMinimumHeight(pf.ve(this.f19707c, 46.0f));
        this.f19710n.setMinimumWidth(pf.ve(this.f19707c, 46.0f));
        this.f19710n.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        com.byazt.vfu.ve veVar = new com.byazt.vfu.ve(pf.ve(this.f19707c, 14.0f));
        veVar.c(-16777216);
        veVar.c(pf.ve(this.f19707c, 2.0f));
        this.f19710n.setImageDrawable(veVar);
        relativeLayout2.addView(this.f19710n);
        TextView textView = new TextView(this.f19707c);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        textView.setGravity(17);
        layoutParams.addRule(15);
        textView.setTextAlignment(4);
        textView.setTextColor(Color.parseColor("#161823"));
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setText("权限列表");
        textView.setLayoutParams(layoutParams);
        relativeLayout2.addView(textView);
        relativeLayout.addView(relativeLayout2);
        return tt(i10, linearLayout, relativeLayout);
    }

    private LinearLayout c(int i10, LinearLayout linearLayout, RelativeLayout relativeLayout, LinearLayout linearLayout2, int i11, int i12) {
        return c(i11, i12, linearLayout2, uj(i10, linearLayout, relativeLayout));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c() {
        this.sp.setWebViewClient(new com.byazt.jwd.uj(this.f19707c, null, 0 == true ? 1 : 0) { // from class: com.byazt.sgn.tt.1
            @Override // com.byazt.jwd.uj
            public boolean c(WebView webView, WebResourceRequest webResourceRequest) {
                this.f15943x = tt.tt;
                return super.c(webView, webResourceRequest);
            }

            @Override // com.byazt.jwd.uj, android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (webView == null) {
                    return true;
                }
                try {
                    if (TextUtils.isEmpty(str)) {
                        return true;
                    }
                    String scheme = Uri.parse(str).getScheme();
                    if (TextUtils.isEmpty(scheme)) {
                        return true;
                    }
                    String lowerCase = scheme.toLowerCase(Locale.ROOT);
                    if (!lowerCase.contains("http") && !lowerCase.contains("https")) {
                        return true;
                    }
                    webView.loadUrl(str);
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            }

            @Override // com.byazt.jwd.uj
            public boolean c(WebView webView, String str) {
                this.f15943x = tt.tt;
                return super.c(webView, str);
            }
        });
        this.sp.setJavaScriptEnabled(true);
        this.sp.setDisplayZoomControls(false);
        this.sp.setCacheMode(2);
        this.sp.loadUrl(this.f19713x);
    }

    private void c(HashMap<String, String> map) {
        List<ve> list = this.f19711t;
        if (list != null && list.size() > 0) {
            this.f19711t.clear();
        }
        if (this.f19711t == null) {
            this.f19711t = new ArrayList();
        }
        if (map != null && map.size() > 0) {
            for (String str : map.keySet()) {
                this.f19711t.add(new ve(str, map.get(str)));
            }
            return;
        }
        this.f19711t.add(new ve("补充中，可于应用官网查看", ""));
    }

    public tt c(c cVar) {
        this.f19709i = cVar;
        return this;
    }
}
