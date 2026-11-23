package com.byazt.fq;

import android.view.View;
import android.view.ViewParent;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1576, 71})
public final class x {
    public static boolean c(ViewParent viewParent, View view, View view2, int i10, int i11) {
        if (viewParent instanceof a) {
            return ((a) viewParent).c(view, view2, i10, i11);
        }
        if (i11 != 0) {
            return false;
        }
        try {
            return viewParent.onStartNestedScroll(view, view2, i10);
        } catch (AbstractMethodError e10) {
            m.ve("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e10);
            return false;
        }
    }

    public static void tt(ViewParent viewParent, View view, View view2, int i10, int i11) {
        if ((viewParent instanceof a) || i11 != 0) {
            return;
        }
        try {
            viewParent.onNestedScrollAccepted(view, view2, i10);
        } catch (AbstractMethodError e10) {
            m.ve("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e10);
        }
    }

    public static void c(ViewParent viewParent, View view, int i10) {
        if ((viewParent instanceof a) || i10 != 0) {
            return;
        }
        try {
            viewParent.onStopNestedScroll(view);
        } catch (AbstractMethodError e10) {
            m.ve("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e10);
        }
    }

    public static void c(ViewParent viewParent, View view, int i10, int i11, int i12, int i13, int i14) {
        if ((viewParent instanceof a) || i14 != 0) {
            return;
        }
        try {
            viewParent.onNestedScroll(view, i10, i11, i12, i13);
        } catch (AbstractMethodError e10) {
            m.ve("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e10);
        }
    }

    public static void c(ViewParent viewParent, View view, int i10, int i11, int[] iArr, int i12) {
        if (viewParent instanceof a) {
            ((a) viewParent).c(view, i10, i11, iArr, i12);
            return;
        }
        if (i12 == 0) {
            try {
                viewParent.onNestedPreScroll(view, i10, i11, iArr);
            } catch (AbstractMethodError e10) {
                m.ve("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e10);
            }
        }
    }

    public static boolean c(ViewParent viewParent, View view, float f10, float f11, boolean z10) {
        try {
            return viewParent.onNestedFling(view, f10, f11, z10);
        } catch (AbstractMethodError e10) {
            m.ve("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e10);
            return false;
        }
    }

    public static boolean c(ViewParent viewParent, View view, float f10, float f11) {
        try {
            return viewParent.onNestedPreFling(view, f10, f11);
        } catch (AbstractMethodError e10) {
            m.ve("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e10);
            return false;
        }
    }
}
