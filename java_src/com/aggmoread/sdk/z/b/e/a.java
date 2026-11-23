package com.aggmoread.sdk.z.b.e;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.aggmoread.sdk.R;
import com.aggmoread.sdk.z.a.d;
import com.aggmoread.sdk.z.a.m.j;
import com.aggmoread.sdk.z.a.u.o;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o f4339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f4340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Dialog f4341c;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.e.a$a, reason: collision with other inner class name */
    private class DialogC0118a extends Dialog {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b f4342a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private o f4343b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private View f4344c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private View f4345d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ViewGroup f4346e;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.e.a$a$a, reason: collision with other inner class name */
        class ViewOnClickListenerC0119a implements View.OnClickListener {
            ViewOnClickListenerC0119a(a aVar) {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.aggmoread.sdk.z.a.d.d("AIWTAG", "c c");
                DialogC0118a.this.dismiss();
            }
        }

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.e.a$a$b */
        class b implements View.OnClickListener {
            b(a aVar) {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.aggmoread.sdk.z.a.d.d("AIWTAG", "d c");
                DialogC0118a.this.dismiss();
                if (DialogC0118a.this.f4342a != null) {
                    DialogC0118a.this.f4342a.a();
                }
            }
        }

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.e.a$a$c */
        class c implements o.d {
            c(a aVar) {
            }

            @Override // com.aggmoread.sdk.z.a.u.o.d
            public void a() {
                com.aggmoread.sdk.z.a.d.d("AIWTAG", "sd cp");
                if (DialogC0118a.this.f4342a != null) {
                    DialogC0118a.this.f4342a.onRenderSuccess();
                }
            }
        }

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.b.e.a$a$d */
        class d implements DialogInterface.OnDismissListener {
            d(a aVar) {
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                com.aggmoread.sdk.z.a.d.d("AIWTAG", "sd dm");
                DialogC0118a.this.f4343b.removeAllViews();
                DialogC0118a.this.f4343b.destroy();
                if (DialogC0118a.this.f4342a != null) {
                    DialogC0118a.this.f4342a.onDismiss();
                }
            }
        }

        public DialogC0118a(Context context, String str, b bVar) {
            super(context, a.b("CustomDialog1"));
            this.f4342a = bVar;
            LinearLayout linearLayout = new LinearLayout(context);
            a(context);
            linearLayout.addView(this.f4344c, new FrameLayout.LayoutParams(-1, -2));
            setCancelable(true);
            setContentView(linearLayout);
            this.f4345d.setOnClickListener(new ViewOnClickListenerC0119a(a.this));
            this.f4346e.setOnClickListener(new b(a.this));
            this.f4343b.a(new c(a.this));
            setOnDismissListener(new d(a.this));
            this.f4343b.loadUrl(k.e().replace("/api/getSdkAds", str));
        }

        @Override // android.app.Dialog
        public void show() {
            a();
            super.show();
        }

        public void a() {
            Window window = a.this.f4341c.getWindow();
            window.setBackgroundDrawable(new ColorDrawable(0));
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.gravity = 80;
            attributes.width = -1;
            attributes.height = -2;
            window.setWindowAnimations(a.b("CustomAnim"));
            window.setAttributes(attributes);
        }

        private void a(Context context) {
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
            o oVar = new o(context);
            frameLayout.addView(oVar, new FrameLayout.LayoutParams(-1, -2));
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
            this.f4344c = linearLayout;
            this.f4345d = imageView;
            this.f4346e = relativeLayout2;
            this.f4343b = oVar;
        }
    }

    public interface b {
        void a();

        void onDismiss();

        void onRenderSuccess();
    }

    public a(b bVar) {
        this.f4340b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(String str) {
        try {
            return Integer.parseInt(R.style.class.getField(str).get(null).toString());
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public void a() {
        d.d("AIWTAG", "RLY");
        o oVar = this.f4339a;
        if (oVar != null) {
            oVar.removeAllViews();
            this.f4339a.destroy();
            this.f4339a = null;
        }
    }

    public void a(Context context, View view) {
        d.d("AIWTAG", "s d");
        try {
            if (this.f4341c == null) {
                return;
            }
            d.d("AIWTAG", "sd s");
            this.f4341c.show();
        } catch (Exception e10) {
            d.a("AIWTAG", "s e %s ", e10);
            b bVar = this.f4340b;
            if (bVar != null) {
                bVar.onDismiss();
            }
        }
    }

    public void a(Context context, String str) {
        d.a("AIWTAG", "SAD CT= %s", context);
        if (TextUtils.isEmpty(k.e())) {
            d.d("AIWTAG", "SAD R");
            return;
        }
        try {
            if (context instanceof Activity) {
                d.d("AIWTAG", "SAD C");
                this.f4341c = new DialogC0118a(context, str, this.f4340b);
            }
        } catch (Exception e10) {
            d.a("AIWTAG", "R E %s", e10);
            a();
        }
    }
}
