package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;

/* JADX INFO: loaded from: classes3.dex */
public class MyRadioGroup extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CompoundButton.OnCheckedChangeListener f65329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f65330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f65331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private e f65332f;

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context c10, AttributeSet attrs) {
            super(c10, attrs);
        }

        @Override // android.view.ViewGroup.LayoutParams
        protected void setBaseAttributes(TypedArray a10, int widthAttr, int heightAttr) {
            if (a10.hasValue(widthAttr)) {
                ((LinearLayout.LayoutParams) this).width = a10.getLayoutDimension(widthAttr, "layout_width");
            } else {
                ((LinearLayout.LayoutParams) this).width = -2;
            }
            if (a10.hasValue(heightAttr)) {
                ((LinearLayout.LayoutParams) this).height = a10.getLayoutDimension(heightAttr, "layout_height");
            } else {
                ((LinearLayout.LayoutParams) this).height = -2;
            }
        }

        public LayoutParams(int w10, int h10) {
            super(w10, h10);
        }

        public LayoutParams(int w10, int h10, float initWeight) {
            super(w10, h10, initWeight);
        }

        public LayoutParams(ViewGroup.LayoutParams p10) {
            super(p10);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
        }
    }

    class a implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f65333b;

        a(final View val$child) {
            this.f65333b = val$child;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            ((RadioButton) this.f65333b).setChecked(true);
            MyRadioGroup.this.j((RadioButton) this.f65333b);
            if (MyRadioGroup.this.f65331e != null) {
                MyRadioGroup.this.f65331e.a(MyRadioGroup.this, this.f65333b.getId());
            }
            return true;
        }
    }

    class b implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RadioButton f65335b;

        b(final RadioButton val$button) {
            this.f65335b = val$button;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            this.f65335b.setChecked(true);
            MyRadioGroup.this.j(this.f65335b);
            if (MyRadioGroup.this.f65331e != null) {
                MyRadioGroup.this.f65331e.a(MyRadioGroup.this, this.f65335b.getId());
            }
            return true;
        }
    }

    private class c implements CompoundButton.OnCheckedChangeListener {
        private c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (MyRadioGroup.this.f65330d) {
                return;
            }
            MyRadioGroup.this.f65330d = true;
            if (MyRadioGroup.this.f65328b != -1) {
                MyRadioGroup myRadioGroup = MyRadioGroup.this;
                myRadioGroup.n(myRadioGroup.f65328b, false);
            }
            MyRadioGroup.this.f65330d = false;
            MyRadioGroup.this.setCheckedId(buttonView.getId());
        }

        /* synthetic */ c(MyRadioGroup myRadioGroup, a aVar) {
            this();
        }
    }

    public interface d {
        void a(MyRadioGroup group, int checkedId);
    }

    private class e implements ViewGroup.OnHierarchyChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ViewGroup.OnHierarchyChangeListener f65338b;

        private e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View parent, View child) {
            if (parent == MyRadioGroup.this && (child instanceof RadioButton)) {
                if (child.getId() == -1) {
                    child.setId(child.hashCode());
                }
                ((RadioButton) child).setOnCheckedChangeListener(MyRadioGroup.this.f65329c);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f65338b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(parent, child);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View parent, View child) {
            if (parent == MyRadioGroup.this && (child instanceof RadioButton)) {
                ((RadioButton) child).setOnCheckedChangeListener(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f65338b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(parent, child);
            }
        }

        /* synthetic */ e(MyRadioGroup myRadioGroup, a aVar) {
            this();
        }
    }

    public MyRadioGroup(Context context) {
        super(context);
        this.f65328b = -1;
        this.f65330d = false;
        setOrientation(1);
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(RadioButton radioButton) {
        RadioButton radioButton2;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof RadioButton) {
                if (childAt != radioButton) {
                    ((RadioButton) childAt).setChecked(false);
                }
            } else if (childAt instanceof LinearLayout) {
                LinearLayout linearLayout = (LinearLayout) childAt;
                int childCount2 = linearLayout.getChildCount();
                for (int i11 = 0; i11 < childCount2; i11++) {
                    View childAt2 = linearLayout.getChildAt(i11);
                    if ((childAt2 instanceof RadioButton) && (radioButton2 = (RadioButton) childAt2) != radioButton) {
                        radioButton2.setChecked(false);
                    }
                }
            }
        }
    }

    private void m() {
        a aVar = null;
        this.f65329c = new c(this, aVar);
        e eVar = new e(this, aVar);
        this.f65332f = eVar;
        super.setOnHierarchyChangeListener(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int viewId, boolean checked) {
        View viewFindViewById = findViewById(viewId);
        if (viewFindViewById == null || !(viewFindViewById instanceof RadioButton)) {
            return;
        }
        ((RadioButton) viewFindViewById).setChecked(checked);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int id2) {
        this.f65328b = id2;
    }

    @Override // android.view.ViewGroup
    public void addView(final View child, int index, ViewGroup.LayoutParams params) {
        if (child instanceof RadioButton) {
            child.setOnTouchListener(new a(child));
        } else if (child instanceof LinearLayout) {
            LinearLayout linearLayout = (LinearLayout) child;
            int childCount = linearLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = linearLayout.getChildAt(i10);
                if (childAt instanceof RadioButton) {
                    RadioButton radioButton = (RadioButton) childAt;
                    radioButton.setOnTouchListener(new b(radioButton));
                }
            }
        }
        super.addView(child, index, params);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        return p10 instanceof LayoutParams;
    }

    public int getCheckedRadioButtonId() {
        return this.f65328b;
    }

    public void i(int id2) {
        if (id2 == -1 || id2 != this.f65328b) {
            int i10 = this.f65328b;
            if (i10 != -1) {
                n(i10, false);
            }
            if (id2 != -1) {
                n(id2, true);
            }
            setCheckedId(id2);
        }
    }

    public void k() {
        i(-1);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f65328b;
        if (i10 != -1) {
            this.f65330d = true;
            n(i10, true);
            this.f65330d = false;
            setCheckedId(this.f65328b);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
        event.setClassName(MyRadioGroup.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(MyRadioGroup.class.getName());
    }

    public void setOnCheckedChangeListener(d listener) {
        this.f65331e = listener;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener listener) {
        this.f65332f.f65338b = listener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public MyRadioGroup(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65330d = false;
        this.f65328b = -1;
        setOrientation(1);
        m();
    }
}
