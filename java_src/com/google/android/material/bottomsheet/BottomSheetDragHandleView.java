package com.google.android.material.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
public class BottomSheetDragHandleView extends AppCompatImageView implements AccessibilityManager.AccessibilityStateChangeListener {
    private static final int B = R.style.Widget_Material3_BottomSheet_DragHandle;
    private final BottomSheetBehavior.g A;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private final AccessibilityManager f29655s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private BottomSheetBehavior<?> f29656t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f29657u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f29658v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f29659w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final String f29660x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final String f29661y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final String f29662z;

    class a extends BottomSheetBehavior.g {
        a() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void b(@NonNull View view, float f10) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void c(@NonNull View view, int i10) {
            BottomSheetDragHandleView.this.j(i10);
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, @NonNull AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            if (accessibilityEvent.getEventType() == 1) {
                BottomSheetDragHandleView.this.f();
            }
        }
    }

    public BottomSheetDragHandleView(@NonNull Context context) {
        this(context, null);
    }

    private void d(String str) {
        if (this.f29655s == null) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(16384);
        accessibilityEventObtain.getText().add(str);
        this.f29655s.sendAccessibilityEvent(accessibilityEventObtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        boolean z10 = false;
        if (!this.f29658v) {
            return false;
        }
        d(this.f29662z);
        if (!this.f29656t.l0() && !this.f29656t.V0()) {
            z10 = true;
        }
        int state = this.f29656t.getState();
        int i10 = 6;
        if (state == 4) {
            if (!z10) {
                i10 = 3;
            }
        } else if (state != 3) {
            i10 = this.f29659w ? 3 : 4;
        } else if (!z10) {
            i10 = 4;
        }
        this.f29656t.g(i10);
        return true;
    }

    @Nullable
    private BottomSheetBehavior<?> g() {
        View viewH = this;
        while (true) {
            viewH = h(viewH);
            if (viewH == null) {
                return null;
            }
            ViewGroup.LayoutParams layoutParams = viewH.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
                if (behavior instanceof BottomSheetBehavior) {
                    return (BottomSheetBehavior) behavior;
                }
            }
        }
    }

    @Nullable
    private static View h(View view) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean i(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        return f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(int i10) {
        if (i10 == 4) {
            this.f29659w = true;
        } else if (i10 == 3) {
            this.f29659w = false;
        }
        ViewCompat.replaceAccessibilityAction(this, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK, this.f29659w ? this.f29660x : this.f29661y, new AccessibilityViewCommand() { // from class: com.google.android.material.bottomsheet.e
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                return this.f29688a.i(view, commandArguments);
            }
        });
    }

    private void k() {
        this.f29658v = this.f29657u && this.f29656t != null;
        ViewCompat.setImportantForAccessibility(this, this.f29656t == null ? 2 : 1);
        setClickable(this.f29658v);
    }

    private void setBottomSheetBehavior(@Nullable BottomSheetBehavior<?> bottomSheetBehavior) {
        BottomSheetBehavior<?> bottomSheetBehavior2 = this.f29656t;
        if (bottomSheetBehavior2 != null) {
            bottomSheetBehavior2.s0(this.A);
            this.f29656t.x0(null);
        }
        this.f29656t = bottomSheetBehavior;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.x0(this);
            j(this.f29656t.getState());
            this.f29656t.B(this.A);
        }
        k();
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public void onAccessibilityStateChanged(boolean z10) {
        this.f29657u = z10;
        k();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setBottomSheetBehavior(g());
        AccessibilityManager accessibilityManager = this.f29655s;
        if (accessibilityManager != null) {
            accessibilityManager.addAccessibilityStateChangeListener(this);
            onAccessibilityStateChanged(this.f29655s.isEnabled());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        AccessibilityManager accessibilityManager = this.f29655s;
        if (accessibilityManager != null) {
            accessibilityManager.removeAccessibilityStateChangeListener(this);
        }
        setBottomSheetBehavior(null);
        super.onDetachedFromWindow();
    }

    public BottomSheetDragHandleView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomSheetDragHandleStyle);
    }

    public BottomSheetDragHandleView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(a5.a.c(context, attributeSet, i10, B), attributeSet, i10);
        this.f29660x = getResources().getString(R.string.bottomsheet_action_expand);
        this.f29661y = getResources().getString(R.string.bottomsheet_action_collapse);
        this.f29662z = getResources().getString(R.string.bottomsheet_drag_handle_clicked);
        this.A = new a();
        this.f29655s = (AccessibilityManager) getContext().getSystemService("accessibility");
        k();
        ViewCompat.setAccessibilityDelegate(this, new b());
    }
}
