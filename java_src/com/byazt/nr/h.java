package com.byazt.nr;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, 518})
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static SoftReference<Toast> f17577c;

    private static Toast c(Context context) {
        if (context != null) {
            SoftReference<Toast> softReference = new SoftReference<>(Toast.makeText(context.getApplicationContext(), "", 0));
            f17577c = softReference;
            return softReference.get();
        }
        SoftReference<Toast> softReference2 = f17577c;
        if (softReference2 != null) {
            return softReference2.get();
        }
        return null;
    }

    public static void tt(Context context, String str, int i10, int i11, int i12, int i13) {
        Toast toastC = c(context);
        if (toastC == null) {
            m.c("TToast", "toast msg: ".concat(String.valueOf(str)));
            return;
        }
        toastC.setDuration(i10);
        toastC.setGravity(i11, i12, i13);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(c(context, 10.0f));
        gradientDrawable.setColor(Color.parseColor("#CC161823"));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(c(context, 20.0f), c(context, 12.0f), c(context, 20.0f), c(context, 12.0f));
        TextView textView = new TextView(context);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextSize(2, 14.0f);
        linearLayout.addView(textView);
        toastC.setView(linearLayout);
        toastC.show();
    }

    public static Toast c(Context context, String str, int i10, int i11, int i12, int i13) {
        Toast toast = new Toast(context);
        toast.setDuration(i10);
        toast.setGravity(i11, i12, i13);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(c(context, 10.0f));
        gradientDrawable.setColor(Color.parseColor("#CC161823"));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(c(context, 20.0f), c(context, 12.0f), c(context, 20.0f), c(context, 12.0f));
        TextView textView = new TextView(context);
        textView.setTextColor(-1);
        textView.setText(str);
        textView.setTextSize(2, 14.0f);
        linearLayout.addView(textView);
        toast.setView(linearLayout);
        return toast;
    }

    public static void c(Context context, String str, int i10) {
        tt(context, str, i10, 80, 0, c(context, 40.0f));
    }

    private static int c(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
