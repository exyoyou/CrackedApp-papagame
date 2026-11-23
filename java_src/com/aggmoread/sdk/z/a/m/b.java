package com.aggmoread.sdk.z.a.m;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f3688a = "b";

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3689a;

        static {
            int[] iArr = new int[com.aggmoread.sdk.z.a.i.b.values().length];
            f3689a = iArr;
            try {
                iArr[com.aggmoread.sdk.z.a.i.b.SHAKE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3689a[com.aggmoread.sdk.z.a.i.b.MIXED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static int a(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return (int) (displayMetrics.widthPixels / displayMetrics.density);
    }

    public static com.aggmoread.sdk.z.a.u.t b(Context context, int i10, int i11, double d10) {
        int iA = a(context, 3.0d);
        int i12 = iA * 2;
        com.aggmoread.sdk.z.a.u.t tVar = new com.aggmoread.sdk.z.a.u.t(context);
        tVar.a(d10);
        tVar.setLayoutParams(new ViewGroup.LayoutParams(i10, i11));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#7F000000"));
        tVar.setBackground(gradientDrawable);
        tVar.setPadding(iA, iA, iA, iA);
        new FrameLayout.LayoutParams(i10 - i12, i11 - i12);
        return tVar;
    }

    public static int a(Context context, double d10) {
        return (int) ((d10 * ((double) context.getResources().getDisplayMetrics().density)) + 0.5d);
    }

    public static Bitmap a(String str) {
        try {
            String str2 = f3688a;
            com.aggmoread.sdk.z.a.d.d(str2, "v f " + str);
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(str);
            Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(5000000L);
            mediaMetadataRetriever.release();
            com.aggmoread.sdk.z.a.d.d(str2, "v f b " + frameAtTime);
            return frameAtTime;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Drawable a(int i10, float f10, int i11, int i12, int i13) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i10);
        gradientDrawable.setAlpha((int) (f10 * 255.0f));
        if (i13 > 0) {
            gradientDrawable.setStroke(i12, i13);
        }
        gradientDrawable.setCornerRadius(i11);
        return gradientDrawable;
    }

    public static com.aggmoread.sdk.z.a.u.q a(Context context, int i10, int i11, double d10) {
        int iA = a(context, 3.0d);
        int i12 = iA * 2;
        int i13 = i10 - i12;
        int i14 = i11 - i12;
        com.aggmoread.sdk.z.a.u.p pVar = new com.aggmoread.sdk.z.a.u.p(context, i13, i14);
        com.aggmoread.sdk.z.a.u.q qVar = new com.aggmoread.sdk.z.a.u.q(context);
        qVar.a(d10);
        qVar.setLayoutParams(new ViewGroup.LayoutParams(i10, i11));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#30000000"));
        qVar.setBackground(gradientDrawable);
        qVar.setPadding(iA, iA, iA, iA);
        pVar.setLayoutParams(new FrameLayout.LayoutParams(i13, i14));
        qVar.addView(pVar);
        return qVar;
    }

    public static com.aggmoread.sdk.z.a.u.q a(ViewGroup viewGroup, ViewGroup viewGroup2, com.aggmoread.sdk.z.a.i.b bVar, double d10) {
        com.aggmoread.sdk.z.a.u.q qVarA = null;
        if (bVar == null) {
            return null;
        }
        int i10 = a.f3689a[bVar.ordinal()];
        if (i10 == 1 || (i10 == 2 && o.a(0, 100) % 2 == 0)) {
            qVarA = a(viewGroup, bVar, d10);
        }
        if (qVarA == null) {
            if (viewGroup2 != null) {
                a(viewGroup2, bVar);
            } else {
                a(viewGroup, bVar);
            }
        }
        return qVarA;
    }

    public static com.aggmoread.sdk.z.a.u.q a(ViewGroup viewGroup, ViewGroup viewGroup2, com.aggmoread.sdk.z.a.i.e eVar) {
        if (eVar == null) {
            return null;
        }
        return a(viewGroup, viewGroup2, eVar.j(), eVar.o());
    }

    public static com.aggmoread.sdk.z.a.u.q a(ViewGroup viewGroup, com.aggmoread.sdk.z.a.i.b bVar, double d10) {
        if (bVar != com.aggmoread.sdk.z.a.i.b.SHAKE || viewGroup == null) {
            return null;
        }
        int iMin = Math.min(viewGroup.getWidth() / 2, viewGroup.getHeight() / 2);
        int iA = a(viewGroup.getContext().getApplicationContext(), 100.0d);
        com.aggmoread.sdk.z.c.a.a.e.e.a("size = " + iMin + ", maxSize = " + iA);
        int iMin2 = Math.min(iMin, iA);
        return a(viewGroup, bVar, d10, iMin2, iMin2, null);
    }

    public static com.aggmoread.sdk.z.a.u.q a(ViewGroup viewGroup, com.aggmoread.sdk.z.a.i.b bVar, double d10, int i10, int i11, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams layoutParams2;
        if (bVar != com.aggmoread.sdk.z.a.i.b.SHAKE || viewGroup == null) {
            return null;
        }
        com.aggmoread.sdk.z.a.u.q qVarA = a(viewGroup.getContext().getApplicationContext(), i10, i11, d10);
        if (qVarA == null) {
            layoutParams2 = layoutParams;
            return null;
        }
        if (layoutParams == null) {
            layoutParams2 = layoutParams;
            if (viewGroup instanceof FrameLayout) {
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
                layoutParams3.gravity = 17;
                layoutParams2 = layoutParams3;
            }
        }
        qVarA.setLayoutParams(layoutParams2);
        if (viewGroup instanceof com.aggmoread.sdk.z.a.u.d) {
            ((com.aggmoread.sdk.z.a.u.d) viewGroup).a(qVarA);
        }
        viewGroup.addView(qVarA);
        return qVarA;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0030  */
    /* JADX WARN: Code duplicated, block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:19:0x0030, please report this as an issue */
    public static void a(ViewGroup viewGroup, com.aggmoread.sdk.z.a.i.b bVar) {
        String str;
        View viewA;
        if ((bVar == com.aggmoread.sdk.z.a.i.b.FULL_SCREEN || bVar == com.aggmoread.sdk.z.a.i.b.MIXED) && viewGroup != null) {
            Context applicationContext = viewGroup.getContext().getApplicationContext();
            int iA = o.a(1, 3);
            if (iA == 1) {
                str = "hand.gif";
            } else {
                if (iA != 2) {
                    if (iA != 3) {
                        viewA = null;
                    } else {
                        str = "hand_mup.gif";
                    }
                    if (viewA != null) {
                        viewA.setBackgroundColor(Color.parseColor("#40000000"));
                        com.aggmoread.sdk.z.c.a.a.e.e.a("viewGroup width " + viewGroup.getWidth() + ", height " + viewGroup.getHeight());
                        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams((viewGroup.getWidth() - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight(), (viewGroup.getHeight() - viewGroup.getPaddingTop()) - viewGroup.getPaddingBottom());
                        if ((viewGroup instanceof com.aggmoread.sdk.z.a.u.g) || (viewGroup instanceof FrameLayout)) {
                            viewGroup.addView(viewA, layoutParams);
                        }
                        return;
                    }
                }
                str = "hand_up.gif";
            }
            viewA = com.aggmoread.sdk.z.a.i.g.a(applicationContext, str);
            if (viewA != null) {
                viewA.setBackgroundColor(Color.parseColor("#40000000"));
                com.aggmoread.sdk.z.c.a.a.e.e.a("viewGroup width " + viewGroup.getWidth() + ", height " + viewGroup.getHeight());
                ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams((viewGroup.getWidth() - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight(), (viewGroup.getHeight() - viewGroup.getPaddingTop()) - viewGroup.getPaddingBottom());
                if (viewGroup instanceof com.aggmoread.sdk.z.a.u.g) {
                    return;
                }
                viewGroup.addView(viewA, layoutParams2);
            }
        }
    }

    public static void a(TextView textView, int i10) {
        if (textView != null) {
            textView.setTextSize(1, i10);
        }
    }

    public static boolean a(View view) {
        if (view == null) {
            return false;
        }
        boolean z10 = view.getVisibility() == 0;
        boolean zIsShown = view.isShown();
        boolean globalVisibleRect = Build.VERSION.SDK_INT >= 26 ? view.getGlobalVisibleRect(new Rect()) : true;
        com.aggmoread.sdk.z.a.d.d(f3688a, "isShown enter , isVisible = " + z10 + " , isShown = " + zIsShown + " , isVisibleRect = " + globalVisibleRect);
        return z10 && zIsShown && globalVisibleRect;
    }

    public static boolean a(View view, View view2) {
        if (view == null || view2 == null) {
            return false;
        }
        for (ViewParent parent = view2.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == view) {
                return true;
            }
        }
        return false;
    }
}
