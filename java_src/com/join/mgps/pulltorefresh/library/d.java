package com.join.mgps.pulltorefresh.library;

import android.annotation.TargetApi;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
@TargetApi(9)
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f72217a = "OverscrollHelper";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final float f72218b = 1.0f;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f72219a;

        static {
            int[] iArr = new int[PullToRefreshBase.Orientation.values().length];
            f72219a = iArr;
            try {
                iArr[PullToRefreshBase.Orientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f72219a[PullToRefreshBase.Orientation.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static boolean a(View view) {
        return view.getOverScrollMode() != 2;
    }

    public static void b(final PullToRefreshBase<?> view, final int deltaX, final int scrollX, final int deltaY, final int scrollY, final int scrollRange, final int fuzzyThreshold, final float scaleFactor, final boolean isTouchEvent) {
        int scrollX2;
        int i10;
        int i11;
        if (a.f72219a[view.getPullToRefreshScrollDirection().ordinal()] != 1) {
            scrollX2 = view.getScrollY();
            i10 = deltaY;
            i11 = scrollY;
        } else {
            scrollX2 = view.getScrollX();
            i10 = deltaX;
            i11 = scrollX;
        }
        if (!view.g() || view.a()) {
            return;
        }
        PullToRefreshBase.Mode mode = view.getMode();
        if (!mode.permitsPullToRefresh() || isTouchEvent || i10 == 0) {
            if (isTouchEvent && PullToRefreshBase.State.OVERSCROLLING == view.getState()) {
                view.H(PullToRefreshBase.State.RESET, new boolean[0]);
                return;
            }
            return;
        }
        int i12 = i10 + i11;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("OverScroll. DeltaX: ");
        sb2.append(deltaX);
        sb2.append(", ScrollX: ");
        sb2.append(scrollX);
        sb2.append(", DeltaY: ");
        sb2.append(deltaY);
        sb2.append(", ScrollY: ");
        sb2.append(scrollY);
        sb2.append(", NewY: ");
        sb2.append(i12);
        sb2.append(", ScrollRange: ");
        sb2.append(scrollRange);
        sb2.append(", CurrentScroll: ");
        sb2.append(scrollX2);
        if (i12 < 0 - fuzzyThreshold) {
            if (mode.showHeaderLoadingLayout()) {
                if (scrollX2 == 0) {
                    view.H(PullToRefreshBase.State.OVERSCROLLING, new boolean[0]);
                }
                view.setHeaderScroll((int) (scaleFactor * (scrollX2 + i12)));
                return;
            }
            return;
        }
        if (i12 <= scrollRange + fuzzyThreshold) {
            if (Math.abs(i12) <= fuzzyThreshold || Math.abs(i12 - scrollRange) <= fuzzyThreshold) {
                view.H(PullToRefreshBase.State.RESET, new boolean[0]);
                return;
            }
            return;
        }
        if (mode.showFooterLoadingLayout()) {
            if (scrollX2 == 0) {
                view.H(PullToRefreshBase.State.OVERSCROLLING, new boolean[0]);
            }
            view.setHeaderScroll((int) (scaleFactor * ((scrollX2 + i12) - scrollRange)));
        }
    }

    public static void c(final PullToRefreshBase<?> view, final int deltaX, final int scrollX, final int deltaY, final int scrollY, final int scrollRange, final boolean isTouchEvent) {
        b(view, deltaX, scrollX, deltaY, scrollY, scrollRange, 0, 1.0f, isTouchEvent);
    }

    public static void d(final PullToRefreshBase<?> view, final int deltaX, final int scrollX, final int deltaY, final int scrollY, final boolean isTouchEvent) {
        c(view, deltaX, scrollX, deltaY, scrollY, 0, isTouchEvent);
    }
}
