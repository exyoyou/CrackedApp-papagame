package com.aggmoread.sdk.z.a.m;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes7.dex */
public class j {
    public static Bitmap a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        byte[] bArrDecode = Base64.decode(str, 0);
        return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
    }

    public static Drawable a(Resources resources, String str) {
        Bitmap bitmapA = a(str);
        if (bitmapA != null) {
            return new BitmapDrawable(resources, bitmapA);
        }
        return null;
    }

    public static GradientDrawable.Orientation a(int i10) {
        int i11 = ((i10 % MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL) + MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL) % MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        if (i11 == 0) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
        if (i11 == 45) {
            return GradientDrawable.Orientation.BL_TR;
        }
        if (i11 == 90) {
            return GradientDrawable.Orientation.BOTTOM_TOP;
        }
        if (i11 == 135) {
            return GradientDrawable.Orientation.BR_TL;
        }
        if (i11 == 180) {
            return GradientDrawable.Orientation.RIGHT_LEFT;
        }
        if (i11 != 225) {
            return i11 != 315 ? orientation : GradientDrawable.Orientation.TL_BR;
        }
        return GradientDrawable.Orientation.TR_BL;
    }

    public static GradientDrawable a(Context context, int i10, int i11, int i12, int i13, int i14) {
        return a(context, 0, 0, i10, i11, i12, i13, i14);
    }

    public static GradientDrawable a(Context context, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        if (i10 > 0 || i11 > 0) {
            gradientDrawable.setSize(i10, i11);
        }
        gradientDrawable.setColor(Color.argb(i12, i13, i14, i15));
        gradientDrawable.setCornerRadius(b.a(context, i16) * 1.0f);
        return gradientDrawable;
    }

    public static void a(View view, Context context, int i10, int i11, int i12, int i13, int i14) {
        view.setBackground(a(context, i10, i11, i12, i13, i14));
    }

    public static void a(ImageView imageView, String str) {
        Bitmap bitmapA;
        if (imageView == null || (bitmapA = a(str)) == null) {
            return;
        }
        imageView.setImageBitmap(bitmapA);
    }

    public static int[] a(int i10, int i11, int i12) {
        return i11 != -1 ? new int[]{i10, i11, i12} : new int[]{i10, i12};
    }
}
