package com.google.android.material.chip;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R;
import com.google.android.material.animation.i;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.l;
import com.google.android.material.internal.p0;
import com.google.android.material.resources.d;
import com.google.android.material.resources.e;
import com.google.android.material.resources.g;
import com.google.android.material.shape.j;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class Chip extends AppCompatCheckBox implements com.google.android.material.chip.c.a, r, l<Chip> {
    private static final String B = "http://schemas.android.com/apk/res/android";
    private static final int C = 48;
    private static final String D = "android.widget.Button";
    private static final String E = "android.widget.RadioButton";
    private static final String F = "android.view.View";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final String f29926u = "Chip";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f29928w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f29929x = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private com.google.android.material.chip.c f29932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private InsetDrawable f29933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private RippleDrawable f29934d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private View.OnClickListener f29935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private CompoundButton.OnCheckedChangeListener f29936f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private l.a<Chip> f29937g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f29938h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f29939i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f29940j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f29941k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f29942l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f29943m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Dimension(unit = 1)
    private int f29944n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private CharSequence f29945o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    private final c f29946p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f29947q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Rect f29948r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final RectF f29949s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final g f29950t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f29927v = R.style.Widget_MaterialComponents_Chip_Action;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final Rect f29930y = new Rect();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int[] f29931z = {android.R.attr.state_selected};
    private static final int[] A = {android.R.attr.state_checkable};

    class a extends g {
        a() {
        }

        @Override // com.google.android.material.resources.g
        public void a(int i10) {
        }

        @Override // com.google.android.material.resources.g
        public void b(@NonNull Typeface typeface, boolean z10) {
            Chip chip = Chip.this;
            chip.setText(chip.f29932b.L3() ? Chip.this.f29932b.Q1() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, @NonNull Outline outline) {
            if (Chip.this.f29932b != null) {
                Chip.this.f29932b.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    private class c extends ExploreByTouchHelper {
        c(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected int getVirtualViewAt(float f10, float f11) {
            return (Chip.this.n() && Chip.this.getCloseIconTouchBounds().contains(f10, f11)) ? 1 : 0;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void getVisibleVirtualViews(@NonNull List<Integer> list) {
            list.add(0);
            if (Chip.this.n() && Chip.this.x() && Chip.this.f29935e != null) {
                list.add(1);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle) {
            if (i11 != 16) {
                return false;
            }
            if (i10 == 0) {
                return Chip.this.performClick();
            }
            if (i10 == 1) {
                return Chip.this.z();
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void onPopulateNodeForHost(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(Chip.this.r());
            accessibilityNodeInfoCompat.setClickable(Chip.this.isClickable());
            accessibilityNodeInfoCompat.setClassName(Chip.this.getAccessibilityClassName());
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                accessibilityNodeInfoCompat.setText(text);
            } else {
                accessibilityNodeInfoCompat.setContentDescription(text);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void onPopulateNodeForVirtualView(int i10, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (i10 != 1) {
                accessibilityNodeInfoCompat.setContentDescription("");
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.f29930y);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                int i11 = R.string.mtrl_chip_close_icon_content_description;
                Object[] objArr = new Object[1];
                objArr[0] = TextUtils.isEmpty(text) ? "" : text;
                accessibilityNodeInfoCompat.setContentDescription(context.getString(i11, objArr).trim());
            }
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            accessibilityNodeInfoCompat.setEnabled(Chip.this.isEnabled());
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void onVirtualViewKeyboardFocusChanged(int i10, boolean z10) {
            if (i10 == 1) {
                Chip.this.f29941k = z10;
                Chip.this.refreshDrawableState();
            }
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    private void A() {
        if (this.f29933c != null) {
            this.f29933c = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            E();
        }
    }

    private void C(@Nullable com.google.android.material.chip.c cVar) {
        if (cVar != null) {
            cVar.l3(null);
        }
    }

    private void D() {
        if (n() && x() && this.f29935e != null) {
            ViewCompat.setAccessibilityDelegate(this, this.f29946p);
            this.f29947q = true;
        } else {
            ViewCompat.setAccessibilityDelegate(this, null);
            this.f29947q = false;
        }
    }

    private void E() {
        if (com.google.android.material.ripple.b.f31369a) {
            F();
            return;
        }
        this.f29932b.K3(true);
        ViewCompat.setBackground(this, getBackgroundDrawable());
        G();
        m();
    }

    private void F() {
        this.f29934d = new RippleDrawable(com.google.android.material.ripple.b.e(this.f29932b.O1()), getBackgroundDrawable(), null);
        this.f29932b.K3(false);
        ViewCompat.setBackground(this, this.f29934d);
        G();
    }

    private void G() {
        com.google.android.material.chip.c cVar;
        if (TextUtils.isEmpty(getText()) || (cVar = this.f29932b) == null) {
            return;
        }
        int iQ1 = (int) (cVar.q1() + this.f29932b.S1() + this.f29932b.W0());
        int iV1 = (int) (this.f29932b.v1() + this.f29932b.T1() + this.f29932b.S0());
        if (this.f29933c != null) {
            Rect rect = new Rect();
            this.f29933c.getPadding(rect);
            iV1 += rect.left;
            iQ1 += rect.right;
        }
        ViewCompat.setPaddingRelative(this, iV1, getPaddingTop(), iQ1, getPaddingBottom());
    }

    private void H() {
        TextPaint paint = getPaint();
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            paint.drawableState = cVar.getState();
        }
        e textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.n(getContext(), paint, this.f29950t);
        }
    }

    private void I(@Nullable AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        attributeSet.getAttributeValue(B, "background");
        if (attributeSet.getAttributeValue(B, "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue(B, "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue(B, "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue(B, "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue(B, "singleLine", true) || attributeSet.getAttributeIntValue(B, "lines", 1) != 1 || attributeSet.getAttributeIntValue(B, "minLines", 1) != 1 || attributeSet.getAttributeIntValue(B, "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        attributeSet.getAttributeIntValue(B, "gravity", 8388627);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public RectF getCloseIconTouchBounds() {
        this.f29949s.setEmpty();
        if (n() && this.f29935e != null) {
            this.f29932b.G1(this.f29949s);
        }
        return this.f29949s;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.f29948r.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.f29948r;
    }

    @Nullable
    private e getTextAppearance() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.R1();
        }
        return null;
    }

    private void j(@NonNull com.google.android.material.chip.c cVar) {
        cVar.l3(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    @NonNull
    private int[] k() {
        ?? IsEnabled = isEnabled();
        int i10 = IsEnabled;
        if (this.f29941k) {
            i10 = IsEnabled + 1;
        }
        int i11 = i10;
        if (this.f29940j) {
            i11 = i10 + 1;
        }
        int i12 = i11;
        if (this.f29939i) {
            i12 = i11 + 1;
        }
        int i13 = i12;
        if (isChecked()) {
            i13 = i12 + 1;
        }
        int[] iArr = new int[i13];
        int i14 = 0;
        if (isEnabled()) {
            iArr[0] = 16842910;
            i14 = 1;
        }
        if (this.f29941k) {
            iArr[i14] = 16842908;
            i14++;
        }
        if (this.f29940j) {
            iArr[i14] = 16843623;
            i14++;
        }
        if (this.f29939i) {
            iArr[i14] = 16842919;
            i14++;
        }
        if (isChecked()) {
            iArr[i14] = 16842913;
        }
        return iArr;
    }

    private void m() {
        if (getBackgroundDrawable() == this.f29933c && this.f29932b.getCallback() == null) {
            this.f29932b.setCallback(this.f29933c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        com.google.android.material.chip.c cVar = this.f29932b;
        return (cVar == null || cVar.z1() == null) ? false : true;
    }

    private void o(Context context, @Nullable AttributeSet attributeSet, int i10) {
        TypedArray typedArrayK = g0.k(context, attributeSet, R.styleable.Chip, i10, f29927v, new int[0]);
        this.f29942l = typedArrayK.getBoolean(R.styleable.Chip_ensureMinTouchTargetSize, false);
        this.f29944n = (int) Math.ceil(typedArrayK.getDimension(R.styleable.Chip_chipMinTouchTargetSize, (float) Math.ceil(p0.i(getContext(), 48))));
        typedArrayK.recycle();
    }

    private void p() {
        setOutlineProvider(new b());
    }

    private void q(int i10, int i11, int i12, int i13) {
        this.f29933c = new InsetDrawable((Drawable) this.f29932b, i10, i11, i12, i13);
    }

    private void setCloseIconHovered(boolean z10) {
        if (this.f29940j != z10) {
            this.f29940j = z10;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z10) {
        if (this.f29939i != z10) {
            this.f29939i = z10;
            refreshDrawableState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(CompoundButton compoundButton, boolean z10) {
        l.a<Chip> aVar = this.f29937g;
        if (aVar != null) {
            aVar.a(this, z10);
        }
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener = this.f29936f;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(compoundButton, z10);
        }
    }

    public boolean B() {
        return this.f29942l;
    }

    @Override // com.google.android.material.chip.c.a
    public void a() {
        l(this.f29944n);
        requestLayout();
        invalidateOutline();
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        if (this.f29947q) {
            return this.f29946p.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f29947q) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (!this.f29946p.dispatchKeyEvent(keyEvent) || this.f29946p.getKeyboardFocusedVirtualViewId() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.chip.c cVar = this.f29932b;
        if ((cVar == null || !cVar.d2()) ? false : this.f29932b.g3(k())) {
            invalidate();
        }
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f29945o)) {
            return this.f29945o;
        }
        if (!r()) {
            return isClickable() ? D : F;
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).l()) ? E : D;
    }

    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f29933c;
        return insetDrawable == null ? this.f29932b : insetDrawable;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.m1();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.n1();
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.o1();
        }
        return null;
    }

    public float getChipCornerRadius() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return Math.max(0.0f, cVar.p1());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f29932b;
    }

    public float getChipEndPadding() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.q1();
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.r1();
        }
        return null;
    }

    public float getChipIconSize() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.s1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.t1();
        }
        return null;
    }

    public float getChipMinHeight() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.u1();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.v1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.w1();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.x1();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Nullable
    public Drawable getCloseIcon() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.z1();
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.A1();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.B1();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.C1();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.D1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.F1();
        }
        return null;
    }

    @Override // android.widget.TextView
    @Nullable
    public TextUtils.TruncateAt getEllipsize() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.J1();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(@NonNull Rect rect) {
        if (this.f29947q && (this.f29946p.getKeyboardFocusedVirtualViewId() == 1 || this.f29946p.getAccessibilityFocusedVirtualViewId() == 1)) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Nullable
    public i getHideMotionSpec() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.K1();
        }
        return null;
    }

    public float getIconEndPadding() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.L1();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.M1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.O1();
        }
        return null;
    }

    @Override // com.google.android.material.shape.r
    @NonNull
    public n getShapeAppearanceModel() {
        return this.f29932b.getShapeAppearanceModel();
    }

    @Nullable
    public i getShowMotionSpec() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.P1();
        }
        return null;
    }

    public float getTextEndPadding() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.S1();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            return cVar.T1();
        }
        return 0.0f;
    }

    public boolean l(@Dimension int i10) {
        this.f29944n = i10;
        if (!B()) {
            if (this.f29933c != null) {
                A();
            } else {
                E();
            }
            return false;
        }
        int iMax = Math.max(0, i10 - this.f29932b.getIntrinsicHeight());
        int iMax2 = Math.max(0, i10 - this.f29932b.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            if (this.f29933c != null) {
                A();
            } else {
                E();
            }
            return false;
        }
        int i11 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i12 = iMax > 0 ? iMax / 2 : 0;
        if (this.f29933c != null) {
            Rect rect = new Rect();
            this.f29933c.getPadding(rect);
            if (rect.top == i12 && rect.bottom == i12 && rect.left == i11 && rect.right == i11) {
                E();
                return true;
            }
        }
        if (getMinHeight() != i10) {
            setMinHeight(i10);
        }
        if (getMinWidth() != i10) {
            setMinWidth(i10);
        }
        q(i11, i12, i11, i12);
        E();
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.f(this, this.f29932b);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f29931z);
        }
        if (r()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, A);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z10, int i10, Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (this.f29947q) {
            this.f29946p.onFocusChanged(z10, i10, rect);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(r());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(chipGroup.b(this), 1, chipGroup.c() ? chipGroup.i(this) : -1, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @Nullable
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(@NonNull MotionEvent motionEvent, int i10) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i10);
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        if (this.f29943m != i10) {
            this.f29943m = i10;
            G();
        }
    }

    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        boolean z10;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                    }
                } else if (this.f29939i) {
                    if (!zContains) {
                        setCloseIconPressed(false);
                    }
                    z10 = true;
                }
                z10 = false;
            } else {
                if (this.f29939i) {
                    z();
                    z10 = true;
                }
                setCloseIconPressed(false);
            }
            z10 = false;
            setCloseIconPressed(false);
        } else if (zContains) {
            setCloseIconPressed(true);
            z10 = true;
        } else {
            z10 = false;
        }
        return z10 || super.onTouchEvent(motionEvent);
    }

    public boolean r() {
        com.google.android.material.chip.c cVar = this.f29932b;
        return cVar != null && cVar.X1();
    }

    @Deprecated
    public boolean s() {
        return t();
    }

    public void setAccessibilityClassName(@Nullable CharSequence charSequence) {
        this.f29945o = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f29934d) {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f29934d) {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i10) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
    }

    public void setCheckable(boolean z10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.m2(z10);
        }
    }

    public void setCheckableResource(@BoolRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.n2(i10);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar == null) {
            this.f29938h = z10;
        } else if (cVar.X1()) {
            super.setChecked(z10);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.o2(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z10) {
        setCheckedIconVisible(z10);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i10) {
        setCheckedIconVisible(i10);
    }

    public void setCheckedIconResource(@DrawableRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.r2(i10);
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.s2(colorStateList);
        }
    }

    public void setCheckedIconTintResource(@ColorRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.t2(i10);
        }
    }

    public void setCheckedIconVisible(@BoolRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.u2(i10);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.w2(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.x2(i10);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.y2(f10);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.z2(i10);
        }
    }

    public void setChipDrawable(@NonNull com.google.android.material.chip.c cVar) {
        com.google.android.material.chip.c cVar2 = this.f29932b;
        if (cVar2 != cVar) {
            C(cVar2);
            this.f29932b = cVar;
            cVar.w3(false);
            j(this.f29932b);
            l(this.f29944n);
        }
    }

    public void setChipEndPadding(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.A2(f10);
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.B2(i10);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.C2(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z10) {
        setChipIconVisible(z10);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i10) {
        setChipIconVisible(i10);
    }

    public void setChipIconResource(@DrawableRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.F2(i10);
        }
    }

    public void setChipIconSize(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.G2(f10);
        }
    }

    public void setChipIconSizeResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.H2(i10);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.I2(colorStateList);
        }
    }

    public void setChipIconTintResource(@ColorRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.J2(i10);
        }
    }

    public void setChipIconVisible(@BoolRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.K2(i10);
        }
    }

    public void setChipMinHeight(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.M2(f10);
        }
    }

    public void setChipMinHeightResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.N2(i10);
        }
    }

    public void setChipStartPadding(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.O2(f10);
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.P2(i10);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.Q2(colorStateList);
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.R2(i10);
        }
    }

    public void setChipStrokeWidth(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.S2(f10);
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.T2(i10);
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i10) {
        setText(getResources().getString(i10));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.V2(drawable);
        }
        D();
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.W2(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z10) {
        setCloseIconVisible(z10);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i10) {
        setCloseIconVisible(i10);
    }

    public void setCloseIconEndPadding(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.Z2(f10);
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.a3(i10);
        }
    }

    public void setCloseIconResource(@DrawableRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.b3(i10);
        }
        D();
    }

    public void setCloseIconSize(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.c3(f10);
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.d3(i10);
        }
    }

    public void setCloseIconStartPadding(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.e3(f10);
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.f3(i10);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.h3(colorStateList);
        }
    }

    public void setCloseIconTintResource(@ColorRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.i3(i10);
        }
    }

    public void setCloseIconVisible(@BoolRes int i10) {
        setCloseIconVisible(getResources().getBoolean(i10));
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    @RequiresApi(17)
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.o0(f10);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f29932b == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.m3(truncateAt);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        this.f29942l = z10;
        l(this.f29944n);
    }

    @Override // android.widget.TextView
    public void setGravity(int i10) {
        if (i10 != 8388627) {
            return;
        }
        super.setGravity(i10);
    }

    public void setHideMotionSpec(@Nullable i iVar) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.n3(iVar);
        }
    }

    public void setHideMotionSpecResource(@AnimatorRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.o3(i10);
        }
    }

    public void setIconEndPadding(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.p3(f10);
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.q3(i10);
        }
    }

    public void setIconStartPadding(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.r3(f10);
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.s3(i10);
        }
    }

    @Override // com.google.android.material.internal.l
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setInternalOnCheckedChangeListener(@Nullable l.a<Chip> aVar) {
        this.f29937g = aVar;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
        if (this.f29932b == null) {
            return;
        }
        super.setLayoutDirection(i10);
    }

    @Override // android.widget.TextView
    public void setLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i10);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i10);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(@Px int i10) {
        super.setMaxWidth(i10);
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.t3(i10);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i10);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f29936f = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f29935e = onClickListener;
        D();
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.u3(colorStateList);
        }
        if (this.f29932b.V1()) {
            return;
        }
        F();
    }

    public void setRippleColorResource(@ColorRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.v3(i10);
            if (this.f29932b.V1()) {
                return;
            }
            F();
        }
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(@NonNull n nVar) {
        this.f29932b.setShapeAppearanceModel(nVar);
    }

    public void setShowMotionSpec(@Nullable i iVar) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.x3(iVar);
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.y3(i10);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z10) {
        if (!z10) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z10);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(cVar.L3() ? null : charSequence, bufferType);
        com.google.android.material.chip.c cVar2 = this.f29932b;
        if (cVar2 != null) {
            cVar2.z3(charSequence);
        }
    }

    public void setTextAppearance(@Nullable e eVar) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.A3(eVar);
        }
        H();
    }

    public void setTextAppearanceResource(@StyleRes int i10) {
        setTextAppearance(getContext(), i10);
    }

    public void setTextEndPadding(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.E3(f10);
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.F3(i10);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i10, float f10) {
        super.setTextSize(i10, f10);
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.H3(TypedValue.applyDimension(i10, f10, getResources().getDisplayMetrics()));
        }
        H();
    }

    public void setTextStartPadding(float f10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.I3(f10);
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.J3(i10);
        }
    }

    public boolean t() {
        com.google.android.material.chip.c cVar = this.f29932b;
        return cVar != null && cVar.Z1();
    }

    @Deprecated
    public boolean u() {
        return v();
    }

    public boolean v() {
        com.google.android.material.chip.c cVar = this.f29932b;
        return cVar != null && cVar.b2();
    }

    @Deprecated
    public boolean w() {
        return x();
    }

    public boolean x() {
        com.google.android.material.chip.c cVar = this.f29932b;
        return cVar != null && cVar.e2();
    }

    @CallSuper
    public boolean z() {
        boolean z10 = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f29935e;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z10 = true;
        }
        if (this.f29947q) {
            this.f29946p.sendEventForVirtualView(1, 1);
        }
        return z10;
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipStyle);
    }

    public void setCloseIconVisible(boolean z10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.k3(z10);
        }
        D();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Chip(Context context, AttributeSet attributeSet, int i10) {
        int i11 = f29927v;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f29948r = new Rect();
        this.f29949s = new RectF();
        this.f29950t = new a();
        Context context2 = getContext();
        I(attributeSet);
        com.google.android.material.chip.c cVarB1 = com.google.android.material.chip.c.b1(context2, attributeSet, i10, i11);
        o(context2, attributeSet, i10);
        setChipDrawable(cVarB1);
        cVarB1.o0(ViewCompat.getElevation(this));
        TypedArray typedArrayK = g0.k(context2, attributeSet, R.styleable.Chip, i10, i11, new int[0]);
        if (Build.VERSION.SDK_INT < 23) {
            setTextColor(d.a(context2, typedArrayK, R.styleable.Chip_android_textColor));
        }
        boolean zHasValue = typedArrayK.hasValue(R.styleable.Chip_shapeAppearance);
        typedArrayK.recycle();
        this.f29946p = new c(this);
        D();
        if (!zHasValue) {
            p();
        }
        setChecked(this.f29938h);
        setText(cVarB1.Q1());
        setEllipsize(cVarB1.J1());
        H();
        if (!this.f29932b.L3()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        G();
        if (B()) {
            setMinHeight(this.f29944n);
        }
        this.f29943m = ViewCompat.getLayoutDirection(this);
        super.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.google.android.material.chip.b
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                this.f29966a.y(compoundButton, z10);
            }
        });
    }

    public void setCheckedIconVisible(boolean z10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.v2(z10);
        }
    }

    public void setChipIconVisible(boolean z10) {
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.L2(z10);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.B3(i10);
        }
        H();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i10) {
        super.setTextAppearance(i10);
        com.google.android.material.chip.c cVar = this.f29932b;
        if (cVar != null) {
            cVar.B3(i10);
        }
        H();
    }
}
