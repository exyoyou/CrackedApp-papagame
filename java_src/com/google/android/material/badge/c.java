package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ParcelableSparseArray;
import com.google.android.material.internal.h0;

/* JADX INFO: loaded from: classes5.dex */
@ExperimentalBadgeUtils
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f29463a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f29464b = "BadgeUtils";

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Toolbar f29465b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f29466c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ BadgeDrawable f29467d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ FrameLayout f29468e;

        a(Toolbar toolbar, int i10, BadgeDrawable badgeDrawable, FrameLayout frameLayout) {
            this.f29465b = toolbar;
            this.f29466c = i10;
            this.f29467d = badgeDrawable;
            this.f29468e = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionMenuItemView actionMenuItemViewA = h0.a(this.f29465b, this.f29466c);
            if (actionMenuItemViewA != null) {
                c.n(this.f29467d, this.f29465b.getResources());
                c.d(this.f29467d, actionMenuItemViewA, this.f29468e);
                c.b(this.f29467d, actionMenuItemViewA);
            }
        }
    }

    class b extends AccessibilityDelegateCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BadgeDrawable f29469a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(View.AccessibilityDelegate accessibilityDelegate, BadgeDrawable badgeDrawable) {
            super(accessibilityDelegate);
            this.f29469a = badgeDrawable;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(this.f29469a.r());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.badge.c$c, reason: collision with other inner class name */
    class C0593c extends AccessibilityDelegateCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ BadgeDrawable f29470a;

        C0593c(BadgeDrawable badgeDrawable) {
            this.f29470a = badgeDrawable;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(this.f29470a.r());
        }
    }

    class d extends AccessibilityDelegateCompat {
        d(View.AccessibilityDelegate accessibilityDelegate) {
            super(accessibilityDelegate);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(null);
        }
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(@NonNull BadgeDrawable badgeDrawable, @NonNull View view) {
        if (Build.VERSION.SDK_INT < 29 || !ViewCompat.hasAccessibilityDelegate(view)) {
            ViewCompat.setAccessibilityDelegate(view, new C0593c(badgeDrawable));
        } else {
            ViewCompat.setAccessibilityDelegate(view, new b(view.getAccessibilityDelegate(), badgeDrawable));
        }
    }

    public static void c(@NonNull BadgeDrawable badgeDrawable, @NonNull View view) {
        d(badgeDrawable, view, null);
    }

    public static void d(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @Nullable FrameLayout frameLayout) {
        m(badgeDrawable, view, frameLayout);
        if (badgeDrawable.s() != null) {
            badgeDrawable.s().setForeground(badgeDrawable);
        } else {
            if (f29463a) {
                throw new IllegalArgumentException("Trying to reference null customBadgeParent");
            }
            view.getOverlay().add(badgeDrawable);
        }
    }

    public static void e(@NonNull BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i10) {
        f(badgeDrawable, toolbar, i10, null);
    }

    public static void f(@NonNull BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i10, @Nullable FrameLayout frameLayout) {
        toolbar.post(new a(toolbar, i10, badgeDrawable, frameLayout));
    }

    @NonNull
    public static SparseArray<BadgeDrawable> g(Context context, @NonNull ParcelableSparseArray parcelableSparseArray) {
        SparseArray<BadgeDrawable> sparseArray = new SparseArray<>(parcelableSparseArray.size());
        for (int i10 = 0; i10 < parcelableSparseArray.size(); i10++) {
            int iKeyAt = parcelableSparseArray.keyAt(i10);
            BadgeState.State state = (BadgeState.State) parcelableSparseArray.valueAt(i10);
            sparseArray.put(iKeyAt, state != null ? BadgeDrawable.h(context, state) : null);
        }
        return sparseArray;
    }

    @NonNull
    public static ParcelableSparseArray h(@NonNull SparseArray<BadgeDrawable> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            BadgeDrawable badgeDrawableValueAt = sparseArray.valueAt(i10);
            parcelableSparseArray.put(iKeyAt, badgeDrawableValueAt != null ? badgeDrawableValueAt.G() : null);
        }
        return parcelableSparseArray;
    }

    private static void i(@NonNull View view) {
        if (Build.VERSION.SDK_INT < 29 || !ViewCompat.hasAccessibilityDelegate(view)) {
            ViewCompat.setAccessibilityDelegate(view, null);
        } else {
            ViewCompat.setAccessibilityDelegate(view, new d(view.getAccessibilityDelegate()));
        }
    }

    public static void j(@Nullable BadgeDrawable badgeDrawable, @NonNull View view) {
        if (badgeDrawable == null) {
            return;
        }
        if (f29463a || badgeDrawable.s() != null) {
            badgeDrawable.s().setForeground(null);
        } else {
            view.getOverlay().remove(badgeDrawable);
        }
    }

    public static void k(@Nullable BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i10) {
        if (badgeDrawable == null) {
            return;
        }
        ActionMenuItemView actionMenuItemViewA = h0.a(toolbar, i10);
        if (actionMenuItemViewA != null) {
            l(badgeDrawable);
            j(badgeDrawable, actionMenuItemViewA);
            i(actionMenuItemViewA);
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Trying to remove badge from a null menuItemView: ");
            sb2.append(i10);
        }
    }

    @VisibleForTesting
    static void l(BadgeDrawable badgeDrawable) {
        badgeDrawable.h0(0);
        badgeDrawable.i0(0);
    }

    public static void m(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @Nullable FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.P0(view, frameLayout);
    }

    @VisibleForTesting
    static void n(BadgeDrawable badgeDrawable, Resources resources) {
        badgeDrawable.h0(resources.getDimensionPixelOffset(R.dimen.mtrl_badge_toolbar_action_menu_item_horizontal_offset));
        badgeDrawable.i0(resources.getDimensionPixelOffset(R.dimen.mtrl_badge_toolbar_action_menu_item_vertical_offset));
    }

    public static void o(@NonNull Rect rect, float f10, float f11, float f12, float f13) {
        rect.set((int) (f10 - f12), (int) (f11 - f13), (int) (f10 + f12), (int) (f11 + f13));
    }
}
