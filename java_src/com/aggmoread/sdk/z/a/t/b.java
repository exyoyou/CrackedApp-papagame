package com.aggmoread.sdk.z.a.t;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatSeekBar;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class b extends com.aggmoread.sdk.z.a.t.a {
    private boolean F;
    private boolean G;
    protected AtomicBoolean H;
    private View.OnTouchListener I;

    class a implements View.OnTouchListener {
        a(b bVar) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.t.b$b, reason: collision with other inner class name */
    class C0101b extends AppCompatSeekBar {
        C0101b(b bVar, Context context) {
            super(context);
        }

        @Override // android.widget.AbsSeekBar, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return false;
        }
    }

    public b(Context context) {
        super(context);
        this.F = true;
        this.G = false;
        this.H = new AtomicBoolean();
        this.I = new a(this);
    }

    private void b() {
        try {
            if (this.f3942a.a()) {
                p();
                this.f3942a.b();
            } else {
                g();
                this.f3942a.d();
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.aggmoread.sdk.z.a.t.a
    protected com.aggmoread.sdk.z.a.t.a.i c() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getPlayerControlShowType ");
        sb2.append(this.F);
        return this.F ? com.aggmoread.sdk.z.a.t.a.i.f3974c : com.aggmoread.sdk.z.a.t.a.i.f3973b;
    }

    @Override // com.aggmoread.sdk.z.a.t.a
    protected com.aggmoread.sdk.z.a.t.a.i d() {
        return com.aggmoread.sdk.z.a.t.a.i.f3973b;
    }

    @Override // com.aggmoread.sdk.z.a.t.a
    protected View.OnTouchListener e() {
        return this.I;
    }

    @Override // com.aggmoread.sdk.z.a.t.a
    protected ProgressBar h(RelativeLayout relativeLayout) {
        RelativeLayout relativeLayout2 = new RelativeLayout(this.f3964w);
        relativeLayout.addView(relativeLayout2, new RelativeLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout = new LinearLayout(this.f3964w);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(1);
        C0101b c0101b = new C0101b(this, this.f3964w);
        if (Build.VERSION.SDK_INT >= 29) {
            c0101b.setMaxHeight(com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 2.0d));
            c0101b.setMaxWidth(com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 2.0d));
        } else {
            try {
                Field declaredField = ProgressBar.class.getDeclaredField("mMaxHeight");
                Field declaredField2 = ProgressBar.class.getDeclaredField("mMaxWidth");
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                declaredField2.set(c0101b, Integer.valueOf(com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 2.0d)));
                declaredField.set(c0101b, Integer.valueOf(com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 2.0d)));
                c0101b.requestLayout();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 17;
        layoutParams2.weight = 1.0f;
        c0101b.setPadding(0, 0, 0, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 5.0d));
        gradientDrawable.setOrientation(com.aggmoread.sdk.z.a.m.j.a(-90));
        gradientDrawable.setColors(com.aggmoread.sdk.z.a.m.j.a(Color.parseColor("#70ffffff"), Color.parseColor("#70ffffff"), Color.parseColor("#70ffffff")));
        gradientDrawable.setGradientCenter(0.5f, 0.75f);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setCornerRadius(com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 5.0d));
        gradientDrawable2.setOrientation(com.aggmoread.sdk.z.a.m.j.a(-90));
        gradientDrawable2.setColors(com.aggmoread.sdk.z.a.m.j.a(Color.parseColor("#90ffffff"), Color.parseColor("#90ffffff"), Color.parseColor("#90ffffff")));
        gradientDrawable2.setGradientCenter(0.5f, 0.75f);
        ClipDrawable clipDrawable = new ClipDrawable(gradientDrawable2, 3, 1);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setCornerRadius(com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 5.0d));
        gradientDrawable3.setOrientation(com.aggmoread.sdk.z.a.m.j.a(-90));
        gradientDrawable3.setColors(com.aggmoread.sdk.z.a.m.j.a(Color.parseColor("#ffffffff"), Color.parseColor("#ffffffff"), Color.parseColor("#ffffffff")));
        gradientDrawable3.setGradientCenter(0.5f, 0.75f);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, clipDrawable, new ClipDrawable(gradientDrawable3, 3, 1)});
        layerDrawable.setId(0, R.id.background);
        layerDrawable.setId(1, R.id.secondaryProgress);
        layerDrawable.setId(2, R.id.progress);
        c0101b.setIndeterminateDrawable(layerDrawable);
        c0101b.setProgressDrawable(layerDrawable);
        c0101b.setThumb(null);
        c0101b.setThumbOffset(com.aggmoread.sdk.z.a.m.b.a(this.f3964w, 10.0d));
        linearLayout.addView(c0101b, layoutParams2);
        relativeLayout2.addView(linearLayout, layoutParams);
        return c0101b;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.G) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.H.set(true);
        } else if (motionEvent.getAction() == 1 && this.H.compareAndSet(true, false)) {
            b();
        }
        return true;
    }

    public void b(boolean z10) {
        this.G = z10;
    }

    public void c(boolean z10) {
        this.F = z10;
    }
}
