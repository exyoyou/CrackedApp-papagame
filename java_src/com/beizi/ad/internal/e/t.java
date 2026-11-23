package com.beizi.ad.internal.e;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.beizi.fusion.R;

/* JADX INFO: loaded from: classes6.dex */
public class t {
    public static FrameLayout a(Context context, com.beizi.ad.internal.d.a.C0216a c0216a) {
        try {
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setVisibility(4);
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            if (c0216a != null) {
                if (c0216a.b() == com.beizi.ad.internal.d.a.C0216a.f8877a) {
                    ImageView imageView = new ImageView(context);
                    imageView.setLayoutParams(new FrameLayout.LayoutParams(42, 42, 17));
                    imageView.setVisibility(0);
                    h.a(context).a(c0216a.a()).a(imageView);
                    frameLayout.addView(imageView);
                } else if (c0216a.b() == com.beizi.ad.internal.d.a.C0216a.f8878b) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                    appCompatTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.beizi_button_text_selector));
                    appCompatTextView.setTextSize(2, 12.0f);
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setText(c0216a.a());
                    appCompatTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, 42, 17));
                    frameLayout.addView(appCompatTextView);
                }
            }
            return frameLayout;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static FrameLayout b(Context context, com.beizi.ad.internal.d.a.C0216a c0216a) {
        try {
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setVisibility(4);
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            if (c0216a != null) {
                if (c0216a.b() == com.beizi.ad.internal.d.a.C0216a.f8877a) {
                    ImageView imageView = new ImageView(context);
                    imageView.setLayoutParams(new FrameLayout.LayoutParams(85, 42, 17));
                    imageView.setVisibility(0);
                    h.a(context).a(c0216a.a()).a(imageView);
                    frameLayout.addView(imageView);
                } else if (c0216a.b() == com.beizi.ad.internal.d.a.C0216a.f8878b) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                    appCompatTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.beizi_button_text_selector));
                    appCompatTextView.setTextSize(2, 12.0f);
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setText(c0216a.a());
                    appCompatTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, 42, 17));
                    frameLayout.addView(appCompatTextView);
                }
            }
            return frameLayout;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void a(View view) {
        if (view == null || view.getParent() == null) {
            return;
        }
        ((ViewGroup) view.getParent()).removeView(view);
    }

    public static int b(Context context, float f10) {
        return (int) ((f10 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int a(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
