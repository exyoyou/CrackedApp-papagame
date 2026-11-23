package com.aggmoread.sdk.z.a.i;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.aggmoread.sdk.z.c.a.a.e.t;
import java.util.Random;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile d f3496a;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.a.u.e f3497b;

        a(d dVar, com.aggmoread.sdk.z.a.u.e eVar) {
            this.f3497b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3497b.b();
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public FrameLayout f3498a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ImageView f3499b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImageView f3500c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f3501d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public View f3502e;
    }

    private d() {
    }

    private View a(Context context, double d10) {
        Context applicationContext = context.getApplicationContext();
        LinearLayout linearLayout = new LinearLayout(applicationContext);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        linearLayout.setLayoutParams(layoutParams);
        View viewB = com.aggmoread.sdk.z.a.m.b.b(applicationContext, com.aggmoread.sdk.z.a.m.b.a(applicationContext, 110.0d), com.aggmoread.sdk.z.a.m.b.a(applicationContext, 110.0d), d10);
        if (viewB == null) {
            return null;
        }
        linearLayout.addView(viewB);
        LinearLayout linearLayout2 = new LinearLayout(applicationContext);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(com.aggmoread.sdk.z.a.m.b.a(applicationContext, 45.0d));
        gradientDrawable.setColor(Color.parseColor("#30000000"));
        gradientDrawable.setStroke(com.aggmoread.sdk.z.a.m.b.a(applicationContext, 3.0d), Color.parseColor("#30cccccc"));
        linearLayout2.setBackground(gradientDrawable);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.bottomMargin = com.aggmoread.sdk.z.a.m.b.a(applicationContext, 30.0d);
        layoutParams2.topMargin = com.aggmoread.sdk.z.a.m.b.a(applicationContext, 25.0d);
        linearLayout2.setLayoutParams(layoutParams2);
        linearLayout2.setOrientation(1);
        linearLayout2.setGravity(1);
        int iA = com.aggmoread.sdk.z.a.m.b.a(applicationContext, 8.0d);
        int iA2 = com.aggmoread.sdk.z.a.m.b.a(applicationContext, 40.0d);
        linearLayout2.setPadding(iA2, iA, iA2, iA);
        linearLayout.addView(linearLayout2);
        TextView textView = new TextView(applicationContext);
        textView.setText("摇一摇 或 点击此处");
        textView.setTextColor(-1);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setTextSize(17.0f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.bottomMargin = com.aggmoread.sdk.z.a.m.b.a(applicationContext, 2.0d);
        textView.setLayoutParams(layoutParams3);
        linearLayout2.addView(textView);
        TextView textView2 = new TextView(applicationContext);
        textView2.setText("跳转至详情页或第三方应用");
        textView2.setTextColor(Color.parseColor("#FFFFF0"));
        textView2.setTextSize(11.0f);
        textView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout2.addView(textView2);
        return linearLayout;
    }

    private FrameLayout b(Context context) {
        Context applicationContext = context.getApplicationContext();
        FrameLayout frameLayout = new FrameLayout(applicationContext);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        frameLayout.setLayoutParams(layoutParams);
        com.aggmoread.sdk.z.a.u.e eVar = new com.aggmoread.sdk.z.a.u.e(applicationContext);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, com.aggmoread.sdk.z.a.m.b.a(applicationContext, 180.0d));
        layoutParams2.gravity = 80;
        eVar.setLayoutParams(layoutParams2);
        frameLayout.addView(eVar);
        LinearLayout linearLayout = new LinearLayout(applicationContext);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.gravity = 80;
        layoutParams3.bottomMargin = com.aggmoread.sdk.z.a.m.b.a(applicationContext, 30.0d);
        linearLayout.setLayoutParams(layoutParams3);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(applicationContext);
        textView.setText("点击按钮");
        textView.setTextColor(-1);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setTextSize(18.0f);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.bottomMargin = com.aggmoread.sdk.z.a.m.b.a(applicationContext, 6.0d);
        textView.setLayoutParams(layoutParams4);
        linearLayout.addView(textView);
        TextView textView2 = new TextView(applicationContext);
        textView2.setText("跳转至详情页或第三方应用");
        textView2.setTextColor(Color.parseColor("#FFFFF0"));
        textView2.setTextSize(15.0f);
        textView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        linearLayout.addView(textView2);
        frameLayout.postDelayed(new a(this, eVar), 1000L);
        return frameLayout;
    }

    private FrameLayout a(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        int iA = com.aggmoread.sdk.z.a.m.b.a(context, 11.0d);
        int iA2 = com.aggmoread.sdk.z.a.m.b.a(context, 15.0d);
        relativeLayout.setPadding(iA, iA2, iA, iA2);
        com.aggmoread.sdk.z.a.m.j.a(relativeLayout, context, 136, 20, 20, 20, 90);
        frameLayout.addView(relativeLayout, new FrameLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setGravity(17);
        linearLayout.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        relativeLayout.addView(linearLayout, layoutParams);
        TextView textView = new TextView(context);
        textView.setText("点击跳转详情页或第三方应用");
        textView.setTextSize(17.0f);
        textView.setTextColor(-1);
        textView.setTypeface(Typeface.defaultFromStyle(1));
        linearLayout.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        ImageView imageView = new ImageView(context);
        com.aggmoread.sdk.z.a.m.j.a(imageView, "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAA1ElEQVRYR9XXwQ3CMAyF4ecJ6ChsACMwAkwGTMAIsJlRpBx6In7xsyJybZX/kw+ualh8bHEf/wFw9yuAk5nd1BMbTsDdLwBePfxQIyKAI4APgEMFYghoUXcvQ4QAlYgwoApBASoQNECNmAIoEdMAFSIFUCDSgCxCAsgg1IA3gK2v7KeZtY/YzyMB9FVNx5ssDcjE04BsPAVQxKcBqvgUQBmnAeo4BaiIhwFV8RCgMh4FtHV6Z9braP3un4c2Yf8xOUd2OxMPTYC9kH0/NAH2Uub95YAvfduAIVC/ymAAAAAASUVORK5CYII=");
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(com.aggmoread.sdk.z.a.m.b.a(context, 20.0d), com.aggmoread.sdk.z.a.m.b.a(context, 20.0d));
        marginLayoutParams.leftMargin = com.aggmoread.sdk.z.a.m.b.a(context, 5.0d);
        linearLayout.addView(imageView, new LinearLayout.LayoutParams(marginLayoutParams));
        ViewGroup.MarginLayoutParams marginLayoutParams2 = new ViewGroup.MarginLayoutParams(-1, -2);
        marginLayoutParams2.leftMargin = com.aggmoread.sdk.z.a.m.b.a(context, 30.0d);
        marginLayoutParams2.rightMargin = com.aggmoread.sdk.z.a.m.b.a(context, 30.0d);
        marginLayoutParams2.bottomMargin = com.aggmoread.sdk.z.a.m.b.a(context, 25.0d);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams2);
        layoutParams2.gravity = 80;
        frameLayout.setLayoutParams(layoutParams2);
        return frameLayout;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0105  */
    public b a(Context context, ViewGroup viewGroup, com.aggmoread.sdk.z.a.g.i iVar, e eVar) {
        double dO;
        View viewA = null;
        if (context == null) {
            return null;
        }
        b bVar = new b();
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(Color.parseColor("#99ffdd"));
        if (viewGroup != null) {
            viewGroup.addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        }
        ImageView imageView = new ImageView(context);
        imageView.setBackgroundColor(Color.parseColor("#Afd1df"));
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        frameLayout.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(context);
        TextView textView = new TextView(context);
        com.aggmoread.sdk.z.a.m.j.a(textView, context, 140, 140, 140, 140, 6);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setText("跳过");
        textView.setVisibility(8);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(com.aggmoread.sdk.z.a.m.b.a(context, 84.0d), com.aggmoread.sdk.z.a.m.b.a(context, 34.0d));
        marginLayoutParams.topMargin = com.aggmoread.sdk.z.a.m.b.a(context, 16.0d);
        marginLayoutParams.rightMargin = com.aggmoread.sdk.z.a.m.b.a(context, 6.0d);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(marginLayoutParams);
        layoutParams.gravity = 5;
        frameLayout2.addView(textView, layoutParams);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = GravityCompat.END;
        frameLayout.addView(frameLayout2, layoutParams2);
        ImageView imageView2 = new ImageView(context);
        if (iVar != null) {
            if (iVar.f3469a != 0) {
                imageView2.setImageResource(com.aggmoread.sdk.z.a.h.a.d().e().f3469a);
            } else {
                Bitmap bitmap = iVar.f3470b;
                if (bitmap != null) {
                    imageView2.setImageBitmap(bitmap);
                }
            }
        }
        imageView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(t.a(42.0d), t.a(16.0d));
        layoutParams3.gravity = 85;
        layoutParams3.rightMargin = t.a(10.0d);
        layoutParams3.bottomMargin = t.a(10.0d);
        frameLayout.addView(imageView2, layoutParams3);
        com.aggmoread.sdk.z.a.i.b bVarJ = com.aggmoread.sdk.z.a.i.b.DEFAULT;
        if (eVar != null) {
            bVarJ = eVar.j();
            dO = eVar.o();
        } else {
            dO = 1.0d;
        }
        double d10 = dO;
        com.aggmoread.sdk.z.a.i.b bVar2 = bVarJ;
        try {
            try {
                if (com.aggmoread.sdk.z.a.i.b.TOAST != bVar2) {
                    if (com.aggmoread.sdk.z.a.i.b.SHAKE != bVar2) {
                        if (com.aggmoread.sdk.z.a.i.b.MIXED == bVar2) {
                            int iNextInt = new Random().nextInt(3) + 1;
                            if (iNextInt == 1) {
                                viewA = b(context);
                            } else if (iNextInt == 2 || iNextInt == 3) {
                            }
                        }
                    }
                    viewA = a(context, d10);
                } else {
                    viewA = b(context);
                }
            } catch (Exception e10) {
                e = e10;
                com.aggmoread.sdk.z.c.a.a.e.e.a("ck err " + e.getMessage());
            }
        } catch (Exception e11) {
            e = e11;
        }
        if (viewA == null && bVar2 != com.aggmoread.sdk.z.a.i.b.DEFAULT) {
            viewA = a(context);
        }
        if (viewA != null) {
            frameLayout.addView(viewA);
        }
        bVar.f3498a = frameLayout;
        bVar.f3499b = imageView;
        bVar.f3500c = imageView2;
        imageView2.setVisibility(8);
        bVar.f3501d = textView;
        bVar.f3502e = viewA;
        return bVar;
    }

    public static d a() {
        if (f3496a == null) {
            synchronized (d.class) {
                if (f3496a == null) {
                    f3496a = new d();
                }
            }
        }
        return f3496a;
    }

    public boolean a(com.aggmoread.sdk.z.a.i.b bVar) {
        return com.aggmoread.sdk.z.a.i.b.TOAST == bVar || com.aggmoread.sdk.z.a.i.b.SHAKE == bVar || com.aggmoread.sdk.z.a.i.b.MIXED == bVar;
    }
}
