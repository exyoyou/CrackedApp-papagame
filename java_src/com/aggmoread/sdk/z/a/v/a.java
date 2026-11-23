package com.aggmoread.sdk.z.a.v;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.aggmoread.sdk.z.a.m.j;
import com.aggmoread.sdk.z.a.u.o;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f4244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f4245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private o f4246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f4247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PopupWindow f4248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.g.a f4249f;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.v.a$a, reason: collision with other inner class name */
    class C0105a implements o.d {
        C0105a() {
        }

        @Override // com.aggmoread.sdk.z.a.u.o.d
        public void a() {
            com.aggmoread.sdk.z.a.d.d("AIWTAG", "SPW CP");
            if (a.this.f4247d != null) {
                a.this.f4247d.onRenderSuccess();
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.aggmoread.sdk.z.a.d.d("AIWTAG", "c c");
            a.this.f4248e.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.aggmoread.sdk.z.a.d.d("AIWTAG", "d c");
            if (a.this.f4247d != null) {
                a.this.f4247d.a();
            }
            a.this.f4248e.dismiss();
        }
    }

    class d implements PopupWindow.OnDismissListener {
        d() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            com.aggmoread.sdk.z.a.d.d("AIWTAG", "SPW DM");
            a.this.a();
        }
    }

    class e implements View.OnSystemUiVisibilityChangeListener {
        e() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i10) {
            a.this.f4248e.getContentView().setSystemUiVisibility(5894);
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TextView f4255a;

        f(a aVar, TextView textView) {
            this.f4255a = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextView textView;
            int i10 = 8;
            if (this.f4255a.getVisibility() == 8) {
                textView = this.f4255a;
                i10 = 0;
            } else {
                textView = this.f4255a;
            }
            textView.setVisibility(i10);
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ o f4256a;

        g(a aVar, o oVar) {
            this.f4256a = oVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o oVar;
            int i10 = 8;
            if (this.f4256a.getVisibility() == 8) {
                oVar = this.f4256a;
                i10 = 0;
            } else {
                oVar = this.f4256a;
            }
            oVar.setVisibility(i10);
        }
    }

    public interface h {
        void a();

        void onDismiss();

        void onRenderSuccess();
    }

    public a(h hVar) {
        this.f4247d = hVar;
    }

    private View a(Context context) {
        View view = new View(context);
        view.setBackgroundColor(Color.parseColor("#33333333"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, com.aggmoread.sdk.z.a.m.b.a(context, 1.0d));
        int iA = com.aggmoread.sdk.z.a.m.b.a(context, 10.0d);
        layoutParams.leftMargin = iA;
        layoutParams.rightMargin = iA;
        view.setLayoutParams(layoutParams);
        return view;
    }

    private void c(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setBackgroundColor(-1);
        linearLayout.setOrientation(1);
        int iA = com.aggmoread.sdk.z.a.m.b.a(context, 10.0d);
        linearLayout.setPadding(iA, iA, iA, iA);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        TextView textView = new TextView(context);
        textView.setTextColor(-16777216);
        textView.setTypeface(Typeface.defaultFromStyle(1));
        textView.setTextSize(18.0f);
        textView.setText("应用信息");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        relativeLayout.addView(textView, layoutParams);
        ImageView imageView = new ImageView(context);
        j.a(imageView, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAABaklEQVRYR+2VP0vEQBDF31tsBfHTWO5saWOjoOefQq5RK0v9AtpZqYVi4X9QCyutJqn8OqK1OLKSwBHPu9wtEoSkTObN/PJ2ZpZo+GHD9dECtA60Dgx1QFUfAMw457re+6c6Y6uqswBOSL6IyMIgzVCALMveAUwC+DCz+RDC46CEqjpH8h7AhJm9hRCmkgBUtUPyEgDN7JPkmohc9UuaZdmymZ2TdADMzFZCCNdJAFEcEwO4iBBF4m4I4aw3saqukzwtYwCs/gbaqxt6BGVwBQIkN733x/F7nucbZnZUxFrd4jG+NkAfJ+Kr7aLowTjFRwaIgorVvW6O9OelcCQHSlEfiNhwP/qizsj+P4BGj6A6CQB2Cpv3/rwJGx3DRhdRnudLZhZX7/cqds4teu/v6qxiAB0RuU1axSmXEYBXEZlOBdg3swWSWyLyXGe243VM8tDMbkIIu0kAdQqmxIy1iFIKVrUtQOtA68AX4HzJIQMvlE8AAAAASUVORK5CYII=");
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(com.aggmoread.sdk.z.a.m.b.a(context, 20.0d), com.aggmoread.sdk.z.a.m.b.a(context, 20.0d));
        layoutParams2.addRule(15);
        layoutParams2.addRule(11);
        relativeLayout.addView(imageView, layoutParams2);
        linearLayout.addView(relativeLayout, new LinearLayout.LayoutParams(-1, com.aggmoread.sdk.z.a.m.b.a(context, 50.0d)));
        FrameLayout frameLayout = new FrameLayout(context);
        ScrollView scrollView = new ScrollView(context);
        scrollView.addView(d(context));
        frameLayout.addView(scrollView, new FrameLayout.LayoutParams(-1, -2));
        linearLayout.addView(frameLayout, new FrameLayout.LayoutParams(-1, com.aggmoread.sdk.z.a.m.b.a(context, 300.0d)));
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        j.a(relativeLayout2, context, 255, 11, 93, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_TRY_COUNT, 90);
        int iA2 = com.aggmoread.sdk.z.a.m.b.a(context, 15.0d);
        relativeLayout2.setPadding(iA2, iA2, iA2, iA2);
        TextView textView2 = new TextView(context);
        textView2.setText("立即下载");
        textView2.setTextColor(-1);
        textView2.setTextSize(15.0f);
        textView2.setTypeface(Typeface.defaultFromStyle(1));
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(13);
        relativeLayout2.addView(textView2, layoutParams3);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -2);
        marginLayoutParams.leftMargin = com.aggmoread.sdk.z.a.m.b.a(context, 15.0d);
        marginLayoutParams.rightMargin = com.aggmoread.sdk.z.a.m.b.a(context, 15.0d);
        marginLayoutParams.topMargin = com.aggmoread.sdk.z.a.m.b.a(context, 3.0d);
        linearLayout.addView(relativeLayout2, marginLayoutParams);
        this.f4244a = imageView;
        this.f4245b = relativeLayout2;
        this.f4248e.setContentView(linearLayout);
    }

    private LinearLayout d(Context context) {
        String string;
        String str;
        String str2;
        boolean z10;
        String str3;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        a(linearLayout, context, "应用名称", this.f4249f.f3341a, null, true, null);
        a(linearLayout, context, "大小", String.format("%.2f MB", Double.valueOf(((double) this.f4249f.f3342b) / 1024.0d)), null, true, null);
        a(linearLayout, context, "版本", this.f4249f.f3343c, null, true, null);
        a(linearLayout, context, "开发者", this.f4249f.f3345e, null, true, null);
        if (TextUtils.isEmpty(this.f4249f.f3347g)) {
            List<com.aggmoread.sdk.z.a.g.a.C0068a> list = this.f4249f.f3346f;
            if (list != null && !list.isEmpty()) {
                StringBuilder sb2 = new StringBuilder();
                for (com.aggmoread.sdk.z.a.g.a.C0068a c0068a : this.f4249f.f3346f) {
                    sb2.append(c0068a.f3349a);
                    sb2.append(":");
                    sb2.append(c0068a.f3350b);
                    sb2.append("\n");
                }
                string = sb2.toString();
                str = "应用权限";
                str2 = "";
                z10 = true;
                str3 = null;
            }
            a(linearLayout, context, "隐私政策", "", null, false, this.f4249f.f3348h);
            return linearLayout;
        }
        str3 = this.f4249f.f3347g;
        str = "应用权限";
        str2 = "";
        string = null;
        z10 = true;
        a(linearLayout, context, str, str2, string, z10, str3);
        a(linearLayout, context, "隐私政策", "", null, false, this.f4249f.f3348h);
        return linearLayout;
    }

    public void b() {
        com.aggmoread.sdk.z.a.d.d("AIWTAG", "RLY");
        o oVar = this.f4246c;
        if (oVar != null) {
            oVar.removeAllViews();
            this.f4246c.destroy();
            this.f4246c = null;
        }
        this.f4248e = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        h hVar = this.f4247d;
        if (hVar != null) {
            hVar.onDismiss();
        }
        b();
    }

    private void b(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setBackgroundColor(-1);
        linearLayout.setOrientation(1);
        int iA = com.aggmoread.sdk.z.a.m.b.a(context, 10.0d);
        linearLayout.setPadding(iA, iA, iA, iA);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        TextView textView = new TextView(context);
        textView.setTextColor(-16777216);
        textView.setTypeface(Typeface.defaultFromStyle(1));
        textView.setTextSize(18.0f);
        textView.setText("应用信息");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        relativeLayout.addView(textView, layoutParams);
        ImageView imageView = new ImageView(context);
        j.a(imageView, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAABaklEQVRYR+2VP0vEQBDF31tsBfHTWO5saWOjoOefQq5RK0v9AtpZqYVi4X9QCyutJqn8OqK1OLKSwBHPu9wtEoSkTObN/PJ2ZpZo+GHD9dECtA60Dgx1QFUfAMw457re+6c6Y6uqswBOSL6IyMIgzVCALMveAUwC+DCz+RDC46CEqjpH8h7AhJm9hRCmkgBUtUPyEgDN7JPkmohc9UuaZdmymZ2TdADMzFZCCNdJAFEcEwO4iBBF4m4I4aw3saqukzwtYwCs/gbaqxt6BGVwBQIkN733x/F7nucbZnZUxFrd4jG+NkAfJ+Kr7aLowTjFRwaIgorVvW6O9OelcCQHSlEfiNhwP/qizsj+P4BGj6A6CQB2Cpv3/rwJGx3DRhdRnudLZhZX7/cqds4teu/v6qxiAB0RuU1axSmXEYBXEZlOBdg3swWSWyLyXGe243VM8tDMbkIIu0kAdQqmxIy1iFIKVrUtQOtA68AX4HzJIQMvlE8AAAAASUVORK5CYII=");
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(com.aggmoread.sdk.z.a.m.b.a(context, 20.0d), com.aggmoread.sdk.z.a.m.b.a(context, 20.0d));
        layoutParams2.addRule(15);
        layoutParams2.addRule(11);
        relativeLayout.addView(imageView, layoutParams2);
        linearLayout.addView(relativeLayout, new LinearLayout.LayoutParams(-1, com.aggmoread.sdk.z.a.m.b.a(context, 50.0d)));
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(new o(context), new FrameLayout.LayoutParams(-1, -2));
        linearLayout.addView(frameLayout, new FrameLayout.LayoutParams(-1, com.aggmoread.sdk.z.a.m.b.a(context, 300.0d)));
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        j.a(relativeLayout2, context, 255, 11, 93, MediaPlayer.MEDIA_PLAYER_OPTION_NETWORK_TRY_COUNT, 90);
        int iA2 = com.aggmoread.sdk.z.a.m.b.a(context, 15.0d);
        relativeLayout2.setPadding(iA2, iA2, iA2, iA2);
        TextView textView2 = new TextView(context);
        textView2.setText("立即下载");
        textView2.setTextColor(-1);
        textView2.setTextSize(15.0f);
        textView2.setTypeface(Typeface.defaultFromStyle(1));
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(13);
        relativeLayout2.addView(textView2, layoutParams3);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -2);
        marginLayoutParams.leftMargin = com.aggmoread.sdk.z.a.m.b.a(context, 15.0d);
        marginLayoutParams.rightMargin = com.aggmoread.sdk.z.a.m.b.a(context, 15.0d);
        marginLayoutParams.topMargin = com.aggmoread.sdk.z.a.m.b.a(context, 3.0d);
        linearLayout.addView(relativeLayout2, marginLayoutParams);
        this.f4244a = imageView;
        this.f4245b = relativeLayout2;
        this.f4248e.setContentView(linearLayout);
    }

    public void a(Context context, View view) {
        com.aggmoread.sdk.z.a.d.d("AIWTAG", "s p w webView = " + this.f4246c + ",pw = " + this.f4248e);
        try {
            if (this.f4248e != null && context != null && view != null) {
                com.aggmoread.sdk.z.a.d.d("AIWTAG", "spw s ");
                this.f4248e.showAtLocation(view, 80, 0, 0);
                this.f4248e.getContentView().setOnSystemUiVisibilityChangeListener(new e());
            }
        } catch (Exception e10) {
            com.aggmoread.sdk.z.a.d.a("AIWTAG", "S E %s", e10);
            a();
        }
    }

    public void a(Context context, String str, com.aggmoread.sdk.z.a.g.a aVar) {
        String strReplace;
        com.aggmoread.sdk.z.a.d.d("AIWTAG", "SPW " + aVar);
        if (context == null) {
            com.aggmoread.sdk.z.a.d.d("AIWTAG", "SPW R");
            return;
        }
        try {
            this.f4249f = aVar;
            if (this.f4248e == null) {
                this.f4248e = new PopupWindow(context);
            }
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(k.e())) {
                strReplace = null;
            } else {
                com.aggmoread.sdk.z.a.d.d("AIWTAG", "SAD R");
                strReplace = k.e().replace("/api/getSdkAds", str);
            }
            if (TextUtils.isEmpty(strReplace)) {
                c(context);
            } else {
                b(context);
                this.f4246c.a(new C0105a());
                this.f4246c.loadUrl(strReplace);
            }
            this.f4244a.setOnClickListener(new b());
            this.f4245b.setOnClickListener(new c());
            this.f4248e.setOnDismissListener(new d());
            this.f4248e.setFocusable(true);
            this.f4248e.setTouchable(true);
            this.f4248e.setOutsideTouchable(true);
            this.f4248e.setBackgroundDrawable(new ColorDrawable(0));
            this.f4248e.setWidth(-1);
            this.f4248e.setHeight(-2);
        } catch (Exception e10) {
            com.aggmoread.sdk.z.a.d.a("AIWTAG", "R E %s", e10);
            h hVar = this.f4247d;
            if (hVar != null) {
                hVar.a();
            }
            b();
        }
    }

    private void a(LinearLayout linearLayout, Context context, String str, String str2, String str3, boolean z10, String str4) {
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str4) && TextUtils.isEmpty(str3)) {
            return;
        }
        int iA = com.aggmoread.sdk.z.a.m.b.a(context, 10.0d);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.weight = 0.0f;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.weight = 1.0f;
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setPadding(iA, iA, iA, iA);
        linearLayout2.setGravity(16);
        linearLayout2.setOrientation(0);
        TextView textView = new TextView(context);
        textView.setText(str);
        linearLayout2.addView(textView, layoutParams);
        if (!TextUtils.isEmpty(str2)) {
            TextView textView2 = new TextView(context);
            textView2.setTextColor(-16777216);
            textView2.setGravity(GravityCompat.END);
            if (!TextUtils.isEmpty(str2)) {
                textView2.setText(str2);
            }
            linearLayout2.addView(textView2, layoutParams2);
        }
        linearLayout.addView(linearLayout2);
        if (z10) {
            linearLayout.addView(a(context));
        }
        if (!TextUtils.isEmpty(str3)) {
            TextView textView3 = new TextView(context);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
            textView3.setLayoutParams(layoutParams3);
            linearLayout.addView(textView3);
            layoutParams3.setMarginStart(iA);
            layoutParams3.setMarginEnd(iA);
            textView3.setText(str3);
            textView3.setVisibility(8);
            linearLayout2.setOnClickListener(new f(this, textView3));
        }
        if (TextUtils.isEmpty(str4)) {
            return;
        }
        o oVar = new o(context);
        linearLayout.addView(oVar, new FrameLayout.LayoutParams(-1, -2));
        oVar.setVisibility(8);
        linearLayout2.setOnClickListener(new g(this, oVar));
        oVar.loadUrl(str4);
    }
}
