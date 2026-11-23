package com.kwad.components.core.innerEc.live.i;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.kwad.sdk.utils.ai;
import com.kwad.sdk.utils.bd;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    private static final CharSequence XK = "navigationBarBackground";
    public static final Float XL = Float.valueOf(263.0f);
    public static final Float XM = Float.valueOf(201.5f);
    private static int XN = ai.VA();
    private static int XO;
    private static int XP;

    public static boolean a(Context context, Window window, int[] iArr) {
        if (bd.Wc()) {
            return com.kwad.sdk.c.a.a.bC(context).y > 0;
        }
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt != null && childAt.getId() != -1) {
                if (TextUtils.equals(XK, context.getResources().getResourceEntryName(childAt.getId())) && childAt.getVisibility() == 0) {
                    iArr[0] = childAt.getHeight();
                    return true;
                }
            }
        }
        return false;
    }

    public static int ay(Context context) {
        return com.kwad.sdk.c.a.a.a(context, 20.0f);
    }

    public static int az(Context context) {
        if (XP == 0) {
            XP = com.kwad.sdk.c.a.a.bC(context).y;
            int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
            if (identifier > 0) {
                XP = context.getResources().getDimensionPixelSize(identifier);
            }
        }
        return XP;
    }

    public static int b(Context context, boolean z10) {
        if (XO == 0) {
            XO = com.kwad.sdk.c.a.a.bE(context).y;
        }
        return XO;
    }

    public static void bc(int i10) {
        if (i10 == XN) {
            return;
        }
        XN = i10;
        ai.fW(i10);
    }

    public static int c(Context context, boolean z10) {
        return com.kwad.sdk.c.a.a.a(context, XL.floatValue());
    }

    public static int sK() {
        return XN;
    }
}
