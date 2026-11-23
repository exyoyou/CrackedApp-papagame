package com.byazt.sy;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.ete.ic;
import com.byazt.ete.ir;
import com.byazt.ete.m;
import com.byazt.kt.RecyclerView;
import com.byazt.omf.gt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 528, 15})
public final class uj {
    public static boolean c(int i10) {
        return i10 == 3;
    }

    private static Activity n(View view) {
        if (view == null) {
            return null;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    public static boolean tt(View view) {
        return "androidx.viewpager.widget.ViewPager".equals(view.getClass().getName()) || "androidx.viewpager.widget.ViewPager".equals(view.getClass().getName());
    }

    public static void uj(View view) {
        if (view == null) {
            return;
        }
        view.setVisibility(4);
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            try {
                ((ViewGroup) parent).removeView(view);
            } catch (Exception unused) {
            }
        }
    }

    public static ViewGroup ve(View view) {
        Window window;
        Activity activityN = n(view);
        if (activityN != null && (window = activityN.getWindow()) != null) {
            View decorView = window.getDecorView();
            if (decorView instanceof ViewGroup) {
                return (ViewGroup) decorView;
            }
        }
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        if (rootView instanceof ViewGroup) {
            return (ViewGroup) rootView;
        }
        return null;
    }

    public static boolean c(ic icVar, boolean z10) {
        int iSl = nb.sl(icVar);
        if (iSl == 5 || iSl == 9) {
            return true;
        }
        if (iSl == 3 || iSl == 4) {
            return z10;
        }
        return iSl == 7 || iSl == 8;
    }

    public static boolean c(View view) {
        if (view == null) {
            return true;
        }
        if (gt.tt().bj()) {
            return ((view instanceof FrameLayout) || (view instanceof RelativeLayout)) ? false : true;
        }
        return (view instanceof RecyclerView) || (view instanceof AbsListView) || (view instanceof ScrollView) || (view instanceof HorizontalScrollView) || tt(view);
    }

    public static void c(final ViewGroup viewGroup, final View view, final int i10, final int i11, final int i12, final int i13) {
        if (viewGroup == null || view == null || i10 <= 0 || i11 <= 0) {
            return;
        }
        viewGroup.addView(view, new ViewGroup.LayoutParams(0, 0));
        final View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.byazt.sy.uj.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view2, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21) {
                if (view.getParent() != viewGroup) {
                    return;
                }
                uj.c(view, i12, i13, i10, i11);
            }
        };
        viewGroup.addOnLayoutChangeListener(onLayoutChangeListener);
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.sy.uj.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                viewGroup.removeOnLayoutChangeListener(onLayoutChangeListener);
            }
        });
        viewGroup.post(new Runnable() { // from class: com.byazt.sy.uj.3
            @Override // java.lang.Runnable
            public void run() {
                if (view.getParent() != viewGroup) {
                    return;
                }
                uj.c(view, i12, i13, i10, i11);
            }
        });
    }

    public static void c(View view, int i10, int i11, int i12, int i13) {
        if (view == null) {
            return;
        }
        try {
            view.measure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), View.MeasureSpec.makeMeasureSpec(i13, 1073741824));
            view.layout(i10, i11, i12 + i10, i13 + i11);
            view.invalidate();
        } catch (Throwable unused) {
        }
    }

    public static m c(boolean[] zArr, float[] fArr, com.byazt.kyz.c cVar, float f10, float f11, double d10) {
        m mVarC = cVar != null ? m.c(cVar.tt()) : null;
        if (fArr == null) {
            if (mVarC == null) {
                return new m(0.0d, 0.0d, pf.uj(gt.getContext(), f10), pf.uj(gt.getContext(), f11));
            }
            return mVarC;
        }
        final m mVarC2 = c(fArr, f10, f11);
        if (mVarC == null) {
            return mVarC2;
        }
        double dC = m.c(mVarC, mVarC2);
        final double d11 = mVarC2.ve * mVarC2.uj;
        final double d12 = mVarC.ve * mVarC.uj;
        final m mVarTt = m.tt(mVarC, mVarC2);
        final double d13 = mVarTt != null ? mVarTt.ve * mVarTt.uj : 0.0d;
        if (cVar != null) {
            cVar.c(new com.byazt.kyz.tt() { // from class: com.byazt.sy.uj.4
                @Override // com.byazt.kyz.tt
                public JSONObject getActualRectJson() {
                    return m.c(mVarC2);
                }

                @Override // com.byazt.kyz.tt
                public double getExceedAreaRate() {
                    double d14 = d12;
                    if (d14 <= 0.0d) {
                        return 1.0d;
                    }
                    if (d11 <= 0.0d) {
                        return -1.0d;
                    }
                    return (d13 - d14) / d14;
                }

                @Override // com.byazt.kyz.tt
                public JSONObject getMaxRectJson() {
                    return m.c(mVarTt);
                }
            });
        }
        if (d12 <= 0.0d) {
            zArr[0] = false;
            return null;
        }
        if (d11 <= 0.0d) {
            zArr[0] = false;
            return null;
        }
        double d14 = dC / d11;
        boolean z10 = d14 >= d10;
        com.byazt.nr.m.c("xeasy", "A:" + d12 + " B:" + d11 + " o:" + dC + " R:" + d14);
        if (z10) {
            return mVarTt;
        }
        zArr[0] = false;
        return null;
    }

    private static m c(float[] fArr, float f10, float f11) {
        int iUj = pf.uj(gt.getContext(), f10);
        int iUj2 = pf.uj(gt.getContext(), f11);
        float f12 = fArr[1];
        float f13 = fArr[0];
        float f14 = (iUj - f12) - fArr[3];
        if (f14 < 0.0f) {
            f14 = 0.0f;
        }
        float f15 = (iUj2 - f13) - fArr[2];
        return new m(f12, f13, f14, f15 >= 0.0f ? f15 : 0.0f);
    }

    public static ir c(String str, String str2, String str3, int i10, int i11, int i12) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ugen_md5", str2);
            jSONObject.put("ugen_id", str);
            jSONObject.put("ugen_url", str3);
            jSONObject.put("displayAreaAndroid", i10);
            jSONObject.put("render_sequence", i11);
        } catch (JSONException unused) {
        }
        return new ir(jSONObject, i12);
    }

    public static void c(View view, String str) {
        for (ViewParent parent = view.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (str.equals(viewGroup.getTag())) {
                uj(viewGroup);
            }
        }
    }
}
