package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import androidx.annotation.BoolRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f29718l = "MButtonToggleGroup";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f29719m = R.style.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<c> f29720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f29721c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinkedHashSet<d> f29722d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Comparator<MaterialButton> f29723e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Integer[] f29724f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f29725g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f29726h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f29727i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @IdRes
    private final int f29728j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Set<Integer> f29729k;

    class a implements Comparator<MaterialButton> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            int iCompareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
            return iCompareTo2 != 0 ? iCompareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, MaterialButtonToggleGroup.this.k(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    private static class c {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final com.google.android.material.shape.d f29732e = new com.google.android.material.shape.a(0.0f);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        com.google.android.material.shape.d f29733a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        com.google.android.material.shape.d f29734b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        com.google.android.material.shape.d f29735c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        com.google.android.material.shape.d f29736d;

        c(com.google.android.material.shape.d dVar, com.google.android.material.shape.d dVar2, com.google.android.material.shape.d dVar3, com.google.android.material.shape.d dVar4) {
            this.f29733a = dVar;
            this.f29734b = dVar3;
            this.f29735c = dVar4;
            this.f29736d = dVar2;
        }

        public static c a(c cVar) {
            com.google.android.material.shape.d dVar = f29732e;
            return new c(dVar, cVar.f29736d, dVar, cVar.f29735c);
        }

        public static c b(c cVar, View view) {
            return p0.s(view) ? c(cVar) : d(cVar);
        }

        public static c c(c cVar) {
            com.google.android.material.shape.d dVar = cVar.f29733a;
            com.google.android.material.shape.d dVar2 = cVar.f29736d;
            com.google.android.material.shape.d dVar3 = f29732e;
            return new c(dVar, dVar2, dVar3, dVar3);
        }

        public static c d(c cVar) {
            com.google.android.material.shape.d dVar = f29732e;
            return new c(dVar, dVar, cVar.f29734b, cVar.f29735c);
        }

        public static c e(c cVar, View view) {
            return p0.s(view) ? d(cVar) : c(cVar);
        }

        public static c f(c cVar) {
            com.google.android.material.shape.d dVar = cVar.f29733a;
            com.google.android.material.shape.d dVar2 = f29732e;
            return new c(dVar, dVar2, cVar.f29734b, dVar2);
        }
    }

    public interface d {
        void a(MaterialButtonToggleGroup materialButtonToggleGroup, @IdRes int i10, boolean z10);
    }

    private class e implements MaterialButton.b {
        private e() {
        }

        @Override // com.google.android.material.button.MaterialButton.b
        public void a(@NonNull MaterialButton materialButton, boolean z10) {
            MaterialButtonToggleGroup.this.invalidate();
        }

        /* synthetic */ e(MaterialButtonToggleGroup materialButtonToggleGroup, a aVar) {
            this();
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context) {
        this(context, null);
    }

    private void c() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i10 = firstVisibleChildIndex + 1; i10 < getChildCount(); i10++) {
            MaterialButton materialButtonJ = j(i10);
            int iMin = Math.min(materialButtonJ.getStrokeWidth(), j(i10 - 1).getStrokeWidth());
            LinearLayout.LayoutParams layoutParamsD = d(materialButtonJ);
            if (getOrientation() == 0) {
                MarginLayoutParamsCompat.setMarginEnd(layoutParamsD, 0);
                MarginLayoutParamsCompat.setMarginStart(layoutParamsD, -iMin);
                layoutParamsD.topMargin = 0;
            } else {
                layoutParamsD.bottomMargin = 0;
                layoutParamsD.topMargin = -iMin;
                MarginLayoutParamsCompat.setMarginStart(layoutParamsD, 0);
            }
            materialButtonJ.setLayoutParams(layoutParamsD);
        }
        r(firstVisibleChildIndex);
    }

    @NonNull
    private LinearLayout.LayoutParams d(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    private void f(@IdRes int i10, boolean z10) {
        if (i10 == -1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Button ID is not valid: ");
            sb2.append(i10);
            return;
        }
        HashSet hashSet = new HashSet(this.f29729k);
        if (z10 && !hashSet.contains(Integer.valueOf(i10))) {
            if (this.f29726h && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i10));
        } else {
            if (z10 || !hashSet.contains(Integer.valueOf(i10))) {
                return;
            }
            if (!this.f29727i || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i10));
            }
        }
        v(hashSet);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (m(i10)) {
                return i10;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (m(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if ((getChildAt(i11) instanceof MaterialButton) && m(i11)) {
                i10++;
            }
        }
        return i10;
    }

    private void i(@IdRes int i10, boolean z10) {
        Iterator<d> it2 = this.f29722d.iterator();
        while (it2.hasNext()) {
            it2.next().a(this, i10, z10);
        }
    }

    private MaterialButton j(int i10) {
        return (MaterialButton) getChildAt(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int k(@Nullable View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if (getChildAt(i11) == view) {
                return i10;
            }
            if ((getChildAt(i11) instanceof MaterialButton) && m(i11)) {
                i10++;
            }
        }
        return -1;
    }

    @Nullable
    private c l(int i10, int i11, int i12) {
        c cVar = this.f29720b.get(i10);
        if (i11 == i12) {
            return cVar;
        }
        boolean z10 = getOrientation() == 0;
        if (i10 == i11) {
            return z10 ? c.e(cVar, this) : c.f(cVar);
        }
        if (i10 == i12) {
            return z10 ? c.b(cVar, this) : c.a(cVar);
        }
        return null;
    }

    private boolean m(int i10) {
        return getChildAt(i10).getVisibility() != 8;
    }

    private void r(int i10) {
        if (getChildCount() == 0 || i10 == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) j(i10).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
        } else {
            MarginLayoutParamsCompat.setMarginEnd(layoutParams, 0);
            MarginLayoutParamsCompat.setMarginStart(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    private void s(@IdRes int i10, boolean z10) {
        View viewFindViewById = findViewById(i10);
        if (viewFindViewById instanceof MaterialButton) {
            this.f29725g = true;
            ((MaterialButton) viewFindViewById).setChecked(z10);
            this.f29725g = false;
        }
    }

    private void setGeneratedIdIfNeeded(@NonNull MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(ViewCompat.generateViewId());
        }
    }

    private void setupButtonChild(@NonNull MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.f29721c);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    private static void u(n.b bVar, @Nullable c cVar) {
        if (cVar == null) {
            bVar.o(0.0f);
        } else {
            bVar.L(cVar.f29733a).y(cVar.f29736d).Q(cVar.f29734b).D(cVar.f29735c);
        }
    }

    private void v(Set<Integer> set) {
        Set<Integer> set2 = this.f29729k;
        this.f29729k = new HashSet(set);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id2 = j(i10).getId();
            s(id2, set.contains(Integer.valueOf(id2)));
            if (set2.contains(Integer.valueOf(id2)) != set.contains(Integer.valueOf(id2))) {
                i(id2, set.contains(Integer.valueOf(id2)));
            }
        }
        invalidate();
    }

    private void w() {
        TreeMap treeMap = new TreeMap(this.f29723e);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            treeMap.put(j(i10), Integer.valueOf(i10));
        }
        this.f29724f = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    private void y() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            j(i10).setA11yClassName((this.f29726h ? RadioButton.class : ToggleButton.class).getName());
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof MaterialButton) {
            super.addView(view, i10, layoutParams);
            MaterialButton materialButton = (MaterialButton) view;
            setGeneratedIdIfNeeded(materialButton);
            setupButtonChild(materialButton);
            f(materialButton.getId(), materialButton.isChecked());
            n shapeAppearanceModel = materialButton.getShapeAppearanceModel();
            this.f29720b.add(new c(shapeAppearanceModel.r(), shapeAppearanceModel.j(), shapeAppearanceModel.t(), shapeAppearanceModel.l()));
            materialButton.setEnabled(isEnabled());
            ViewCompat.setAccessibilityDelegate(materialButton, new b());
        }
    }

    public void b(@NonNull d dVar) {
        this.f29722d.add(dVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NonNull Canvas canvas) {
        w();
        super.dispatchDraw(canvas);
    }

    public void e(@IdRes int i10) {
        f(i10, true);
    }

    public void g() {
        v(new HashSet());
    }

    @IdRes
    public int getCheckedButtonId() {
        if (!this.f29726h || this.f29729k.isEmpty()) {
            return -1;
        }
        return this.f29729k.iterator().next().intValue();
    }

    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id2 = j(i10).getId();
            if (this.f29729k.contains(Integer.valueOf(id2))) {
                arrayList.add(Integer.valueOf(id2));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        Integer[] numArr = this.f29724f;
        return (numArr == null || i11 >= numArr.length) ? i11 : numArr[i11].intValue();
    }

    public void h() {
        this.f29722d.clear();
    }

    public boolean n() {
        return this.f29727i;
    }

    public boolean o() {
        return this.f29726h;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f29728j;
        if (i10 != -1) {
            v(Collections.singleton(Integer.valueOf(i10)));
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getVisibleButtonCount(), false, o() ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        x();
        c();
        super.onMeasure(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f29720b.remove(iIndexOfChild);
        }
        x();
        c();
    }

    void p(@NonNull MaterialButton materialButton, boolean z10) {
        if (this.f29725g) {
            return;
        }
        f(materialButton.getId(), z10);
    }

    public void q(@NonNull d dVar) {
        this.f29722d.remove(dVar);
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            j(i10).setEnabled(z10);
        }
    }

    public void setSelectionRequired(boolean z10) {
        this.f29727i = z10;
    }

    public void setSingleSelection(boolean z10) {
        if (this.f29726h != z10) {
            this.f29726h = z10;
            g();
        }
        y();
    }

    public void t(@IdRes int i10) {
        f(i10, false);
    }

    @VisibleForTesting
    void x() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i10 = 0; i10 < childCount; i10++) {
            MaterialButton materialButtonJ = j(i10);
            if (materialButtonJ.getVisibility() != 8) {
                n.b bVarV = materialButtonJ.getShapeAppearanceModel().v();
                u(bVarV, l(i10, firstVisibleChildIndex, lastVisibleChildIndex));
                materialButtonJ.setShapeAppearanceModel(bVarV.m());
            }
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f29719m;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f29720b = new ArrayList();
        this.f29721c = new e(this, null);
        this.f29722d = new LinkedHashSet<>();
        this.f29723e = new a();
        this.f29725g = false;
        this.f29729k = new HashSet();
        TypedArray typedArrayK = g0.k(getContext(), attributeSet, R.styleable.MaterialButtonToggleGroup, i10, i11, new int[0]);
        setSingleSelection(typedArrayK.getBoolean(R.styleable.MaterialButtonToggleGroup_singleSelection, false));
        this.f29728j = typedArrayK.getResourceId(R.styleable.MaterialButtonToggleGroup_checkedButton, -1);
        this.f29727i = typedArrayK.getBoolean(R.styleable.MaterialButtonToggleGroup_selectionRequired, false);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(typedArrayK.getBoolean(R.styleable.MaterialButtonToggleGroup_android_enabled, true));
        typedArrayK.recycle();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    public void setSingleSelection(@BoolRes int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }
}
