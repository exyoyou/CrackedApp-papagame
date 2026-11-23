package it.sephiroth.android.library.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ArrayAdapter;
import android.widget.Checkable;
import android.widget.ListAdapter;
import android.widget.RemoteViews;
import androidx.collection.SparseArrayCompat;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyInnerScrollView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@RemoteViews.RemoteView
public class HListView extends AbsHListView {
    static final int Z3 = -1;

    /* JADX INFO: renamed from: a4, reason: collision with root package name */
    private static final float f92021a4 = 0.33f;

    /* JADX INFO: renamed from: b4, reason: collision with root package name */
    private static final int f92022b4 = 2;

    /* JADX INFO: renamed from: c4, reason: collision with root package name */
    private static final String f92023c4 = "HListView";
    private ArrayList<c> H3;
    private ArrayList<c> I3;
    Drawable J3;
    int K3;
    int L3;
    Drawable M3;
    Drawable N3;
    private boolean O3;
    private boolean P3;
    private boolean Q3;
    private boolean R3;
    private boolean S3;
    private boolean T3;
    private final Rect U3;
    private Paint V3;
    private final b W3;
    private d X3;
    private GestureDetector Y3;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f92024a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f92025b;

        private b() {
        }

        public int a() {
            return this.f92025b;
        }

        public int b() {
            return this.f92024a;
        }

        void c(int selectedPosition, int amountToScroll) {
            this.f92024a = selectedPosition;
            this.f92025b = amountToScroll;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f92026a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f92027b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f92028c;
    }

    private class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f92029b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f92030c;

        private d() {
        }

        public d a(int position, int left) {
            this.f92029b = position;
            this.f92030c = left;
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            HListView.this.setSelectionFromLeft(this.f92029b, this.f92030c);
        }
    }

    class e extends GestureDetector.SimpleOnGestureListener {
        e() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent e10, MotionEvent e11, float distanceX, float distanceY) {
            return Math.abs(distanceY) > Math.abs(distanceX);
        }
    }

    public HListView(Context context) {
        this(context, null);
    }

    private View A1(int position, int left) {
        View viewY1;
        View viewZ1;
        boolean z10 = position == this.f91962q;
        View viewK1 = K1(position, left, true, this.f91872v1.top, z10);
        this.f91947b = position;
        int i10 = this.K3;
        if (this.f91861o2) {
            View viewZ2 = z1(position + 1, viewK1.getRight() + i10);
            g1();
            View viewY2 = y1(position - 1, viewK1.getLeft() - i10);
            int childCount = getChildCount();
            if (childCount > 0) {
                o1(childCount);
            }
            viewY1 = viewY2;
            viewZ1 = viewZ2;
        } else {
            viewY1 = y1(position - 1, viewK1.getLeft() - i10);
            g1();
            viewZ1 = z1(position + 1, viewK1.getRight() + i10);
            int childCount2 = getChildCount();
            if (childCount2 > 0) {
                p1(childCount2);
            }
        }
        if (z10) {
            return viewK1;
        }
        return viewY1 != null ? viewY1 : viewZ1;
    }

    private View B1(View focusedView) {
        boolean z10;
        ViewParent parent = focusedView.getParent();
        while (true) {
            z10 = parent instanceof View;
            if (!z10 || parent == this) {
                break;
            }
            focusedView = parent;
            parent = parent.getParent();
        }
        if (z10) {
            return focusedView;
        }
        return null;
    }

    private int D1(int childrenLeft, int fadingEdgeLength, int selectedPosition) {
        return selectedPosition > 0 ? childrenLeft + fadingEdgeLength : childrenLeft;
    }

    private int E1(int childrenRight, int fadingEdgeLength, int selectedPosition) {
        return selectedPosition != this.f91965t + (-1) ? childrenRight - fadingEdgeLength : childrenRight;
    }

    private boolean F1(int direction) {
        View selectedView;
        if (direction != 33 && direction != 130) {
            throw new IllegalArgumentException("direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}");
        }
        int childCount = getChildCount();
        if (!this.T3 || childCount <= 0 || this.f91962q == -1 || (selectedView = getSelectedView()) == null || !selectedView.hasFocus() || !(selectedView instanceof ViewGroup)) {
            return false;
        }
        View viewFindFocus = selectedView.findFocus();
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus((ViewGroup) selectedView, viewFindFocus, direction);
        if (viewFindNextFocus != null) {
            viewFindFocus.getFocusedRect(this.U3);
            offsetDescendantRectToMyCoords(viewFindFocus, this.U3);
            offsetRectIntoDescendantCoords(viewFindNextFocus, this.U3);
            if (viewFindNextFocus.requestFocus(direction, this.U3)) {
                return true;
            }
        }
        View viewFindNextFocus2 = FocusFinder.getInstance().findNextFocus((ViewGroup) getRootView(), viewFindFocus, direction);
        if (viewFindNextFocus2 != null) {
            return I1(viewFindNextFocus2, this);
        }
        return false;
    }

    private void G1(View selectedView, int direction, int newSelectedPosition, boolean newFocusAssigned) {
        View childAt;
        boolean z10;
        if (newSelectedPosition == -1) {
            throw new IllegalArgumentException("newSelectedPosition needs to be valid");
        }
        int i10 = this.f91962q;
        int i11 = this.f91947b;
        int i12 = i10 - i11;
        int i13 = newSelectedPosition - i11;
        if (direction == 33) {
            z10 = true;
            childAt = selectedView;
            selectedView = getChildAt(i13);
            i12 = i13;
            i13 = i12;
        } else {
            childAt = getChildAt(i13);
            z10 = false;
        }
        int childCount = getChildCount();
        if (selectedView != null) {
            selectedView.setSelected(!newFocusAssigned && z10);
            L1(selectedView, i12, childCount);
        }
        if (childAt != null) {
            childAt.setSelected((newFocusAssigned || z10) ? false : true);
            L1(childAt, i13, childCount);
        }
    }

    private boolean H1(View child) {
        ArrayList<c> arrayList = this.H3;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (child == arrayList.get(i10).f92026a) {
                return true;
            }
        }
        ArrayList<c> arrayList2 = this.I3;
        int size2 = arrayList2.size();
        for (int i11 = 0; i11 < size2; i11++) {
            if (child == arrayList2.get(i11).f92026a) {
                return true;
            }
        }
        return false;
    }

    private boolean I1(View child, View parent) {
        if (child == parent) {
            return true;
        }
        Object parent2 = child.getParent();
        return (parent2 instanceof ViewGroup) && I1((View) parent2, parent);
    }

    private int J1(int direction) {
        int i10 = this.f91947b;
        if (direction == 130) {
            int i11 = this.f91962q;
            int i12 = i11 != -1 ? i11 + 1 : i10;
            if (i12 >= this.U.getCount()) {
                return -1;
            }
            if (i12 < i10) {
                i12 = i10;
            }
            int lastVisiblePosition = getLastVisiblePosition();
            ListAdapter adapter = getAdapter();
            while (i12 <= lastVisiblePosition) {
                if (adapter.isEnabled(i12) && getChildAt(i12 - i10).getVisibility() == 0) {
                    return i12;
                }
                i12++;
            }
        } else {
            int childCount = (getChildCount() + i10) - 1;
            int childCount2 = this.f91962q;
            if (childCount2 == -1) {
                childCount2 = getChildCount() + i10;
            }
            int i13 = childCount2 - 1;
            if (i13 >= 0 && i13 < this.U.getCount()) {
                if (i13 <= childCount) {
                    childCount = i13;
                }
                ListAdapter adapter2 = getAdapter();
                while (childCount >= i10) {
                    if (adapter2.isEnabled(childCount) && getChildAt(childCount - i10).getVisibility() == 0) {
                        return childCount;
                    }
                    childCount--;
                }
            }
        }
        return -1;
    }

    private View K1(int position, int x10, boolean flow, int childrenTop, boolean selected) {
        View viewG;
        if (!this.f91959n && (viewG = this.f91853i1.g(position)) != null) {
            a2(viewG, position, x10, flow, childrenTop, selected, true);
            return viewG;
        }
        View viewQ0 = q0(position, this.N2);
        a2(viewQ0, position, x10, flow, childrenTop, selected, this.N2[0]);
        return viewQ0;
    }

    private void L1(View child, int childIndex, int numChildren) {
        int width = child.getWidth();
        N1(child);
        if (child.getMeasuredWidth() == width) {
            return;
        }
        V1(child);
        int measuredWidth = child.getMeasuredWidth() - width;
        while (true) {
            childIndex++;
            if (childIndex >= numChildren) {
                return;
            } else {
                getChildAt(childIndex).offsetLeftAndRight(measuredWidth);
            }
        }
    }

    private void N1(View child) {
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-2, -1);
        }
        int i10 = this.L1;
        Rect rect = this.f91872v1;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, rect.top + rect.bottom, layoutParams.height);
        int i11 = layoutParams.width;
        child.measure(i11 > 0 ? View.MeasureSpec.makeMeasureSpec(i11, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0), childMeasureSpec);
    }

    private void O1(View child, int position, int heightMeasureSpec) {
        AbsHListView.LayoutParams layoutParams = (AbsHListView.LayoutParams) child.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (AbsHListView.LayoutParams) generateDefaultLayoutParams();
            child.setLayoutParams(layoutParams);
        }
        layoutParams.f91878a = this.U.getItemViewType(position);
        layoutParams.f91880c = true;
        Rect rect = this.f91872v1;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(heightMeasureSpec, rect.top + rect.bottom, ((ViewGroup.LayoutParams) layoutParams).height);
        int i10 = ((ViewGroup.LayoutParams) layoutParams).width;
        child.measure(i10 > 0 ? View.MeasureSpec.makeMeasureSpec(i10, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0), childMeasureSpec);
    }

    private View R1(View oldSel, View newSel, int delta, int childrenLeft, int childrenRight) {
        View viewK1;
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        int i10 = this.f91962q;
        int iD1 = D1(childrenLeft, horizontalFadingEdgeLength, i10);
        int iE1 = E1(childrenLeft, horizontalFadingEdgeLength, i10);
        if (delta > 0) {
            View viewK2 = K1(i10 - 1, oldSel.getLeft(), true, this.f91872v1.top, false);
            int i11 = this.K3;
            viewK1 = K1(i10, viewK2.getRight() + i11, true, this.f91872v1.top, true);
            if (viewK1.getRight() > iE1) {
                int i12 = -Math.min(Math.min(viewK1.getLeft() - iD1, viewK1.getRight() - iE1), (childrenRight - childrenLeft) / 2);
                viewK2.offsetLeftAndRight(i12);
                viewK1.offsetLeftAndRight(i12);
            }
            if (this.f91861o2) {
                z1(this.f91962q + 1, viewK1.getRight() + i11);
                g1();
                y1(this.f91962q - 2, viewK1.getLeft() - i11);
            } else {
                y1(this.f91962q - 2, viewK1.getLeft() - i11);
                g1();
                z1(this.f91962q + 1, viewK1.getRight() + i11);
            }
        } else if (delta < 0) {
            viewK1 = newSel != null ? K1(i10, newSel.getLeft(), true, this.f91872v1.top, true) : K1(i10, oldSel.getLeft(), false, this.f91872v1.top, true);
            if (viewK1.getLeft() < iD1) {
                viewK1.offsetLeftAndRight(Math.min(Math.min(iD1 - viewK1.getLeft(), iE1 - viewK1.getRight()), (childrenRight - childrenLeft) / 2));
            }
            u1(viewK1, i10);
        } else {
            int left = oldSel.getLeft();
            viewK1 = K1(i10, left, true, this.f91872v1.top, true);
            if (left < childrenLeft && viewK1.getRight() < childrenLeft + 20) {
                viewK1.offsetLeftAndRight(childrenLeft - viewK1.getLeft());
            }
            u1(viewK1, i10);
        }
        return viewK1;
    }

    private int T1(View newFocus) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (I1(newFocus, getChildAt(i10))) {
                return this.f91947b + i10;
            }
        }
        throw new IllegalArgumentException("newFocus is not a child of any of the children of the list!");
    }

    private void V1(View child) {
        int measuredWidth = child.getMeasuredWidth();
        int measuredHeight = child.getMeasuredHeight();
        int i10 = this.f91872v1.top;
        int left = child.getLeft();
        child.layout(left, i10, measuredWidth + left, measuredHeight + i10);
    }

    private void W1(View v10, ArrayList<c> where) {
        int size = where.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (where.get(i10).f92026a == v10) {
                where.remove(i10);
                return;
            }
        }
    }

    private void Z1(int amount) {
        int i10;
        int i11;
        r0(amount);
        int width = getWidth();
        Rect rect = this.f91872v1;
        int i12 = width - rect.right;
        int i13 = rect.left;
        AbsHListView.l lVar = this.f91853i1;
        if (amount < 0) {
            int childCount = getChildCount();
            View childAt = getChildAt(childCount - 1);
            while (childAt.getRight() < i12 && (i11 = (this.f91947b + childCount) - 1) < this.f91965t - 1) {
                childAt = e1(childAt, i11);
                childCount++;
            }
            if (childAt.getBottom() < i12) {
                r0(i12 - childAt.getRight());
            }
            View childAt2 = getChildAt(0);
            while (childAt2.getRight() < i13) {
                if (lVar.q(((AbsHListView.LayoutParams) childAt2.getLayoutParams()).f91878a)) {
                    detachViewFromParent(childAt2);
                    lVar.c(childAt2, this.f91947b);
                } else {
                    removeViewInLayout(childAt2);
                }
                childAt2 = getChildAt(0);
                this.f91947b++;
            }
            return;
        }
        View childAt3 = getChildAt(0);
        while (childAt3.getLeft() > i13 && (i10 = this.f91947b) > 0) {
            childAt3 = f1(childAt3, i10);
            this.f91947b--;
        }
        if (childAt3.getLeft() > i13) {
            r0(i13 - childAt3.getLeft());
        }
        int childCount2 = getChildCount() - 1;
        View childAt4 = getChildAt(childCount2);
        while (childAt4.getLeft() > i12) {
            if (lVar.q(((AbsHListView.LayoutParams) childAt4.getLayoutParams()).f91878a)) {
                detachViewFromParent(childAt4);
                lVar.c(childAt4, this.f91947b + childCount2);
            } else {
                removeViewInLayout(childAt4);
            }
            childCount2--;
            childAt4 = getChildAt(childCount2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @TargetApi(11)
    private void a2(View child, int position, int x10, boolean flowDown, int childrenTop, boolean selected, boolean recycled) {
        SparseArrayCompat<Boolean> sparseArrayCompat;
        boolean z10 = selected && K0();
        boolean z11 = z10 != child.isSelected();
        int i10 = this.f91852h2;
        boolean z12 = i10 > 0 && i10 < 3 && this.f91842c2 == position;
        boolean z13 = z12 != child.isPressed();
        boolean z14 = !recycled || z11 || child.isLayoutRequested();
        AbsHListView.LayoutParams layoutParams = (AbsHListView.LayoutParams) child.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (AbsHListView.LayoutParams) generateDefaultLayoutParams();
        }
        int itemViewType = this.U.getItemViewType(position);
        layoutParams.f91878a = itemViewType;
        if ((!recycled || layoutParams.f91880c) && !(layoutParams.f91879b && itemViewType == -2)) {
            layoutParams.f91880c = false;
            if (itemViewType == -2) {
                layoutParams.f91879b = true;
            }
            addViewInLayout(child, flowDown ? -1 : 0, layoutParams, true);
        } else {
            attachViewToParent(child, flowDown ? -1 : 0, layoutParams);
        }
        if (z11) {
            child.setSelected(z10);
        }
        if (z13) {
            child.setPressed(z12);
        }
        if (this.M != 0 && (sparseArrayCompat = this.Q) != null) {
            if (child instanceof Checkable) {
                ((Checkable) child).setChecked(sparseArrayCompat.get(position, Boolean.FALSE).booleanValue());
            } else {
                child.setActivated(sparseArrayCompat.get(position, Boolean.FALSE).booleanValue());
            }
        }
        if (z14) {
            int i11 = this.L1;
            Rect rect = this.f91872v1;
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, rect.top + rect.bottom, ((ViewGroup.LayoutParams) layoutParams).height);
            int i12 = ((ViewGroup.LayoutParams) layoutParams).width;
            child.measure(i12 > 0 ? View.MeasureSpec.makeMeasureSpec(i12, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0), childMeasureSpec);
        } else {
            cleanupLayoutState(child);
        }
        int measuredWidth = child.getMeasuredWidth();
        int measuredHeight = child.getMeasuredHeight();
        int i13 = flowDown ? x10 : x10 - measuredWidth;
        if (z14) {
            child.layout(i13, childrenTop, measuredWidth + i13, measuredHeight + childrenTop);
        } else {
            child.offsetLeftAndRight(i13 - child.getLeft());
            child.offsetTopAndBottom(childrenTop - child.getTop());
        }
        if (this.f91837a2 && !child.isDrawingCacheEnabled()) {
            child.setDrawingCacheEnabled(true);
        }
        if (!recycled || ((AbsHListView.LayoutParams) child.getLayoutParams()).f91881d == position) {
            return;
        }
        child.jumpDrawablesToCurrentState();
    }

    private boolean b2() {
        return this.f91947b > 0 || getChildAt(0).getLeft() > getScrollX() + this.f91872v1.left;
    }

    private boolean c2() {
        int childCount = getChildCount();
        return (this.f91947b + childCount) - 1 < this.f91965t - 1 || getChildAt(childCount + (-1)).getRight() < (getScrollX() + getWidth()) - this.f91872v1.right;
    }

    private View e1(View theView, int position) {
        int i10 = position + 1;
        View viewQ0 = q0(i10, this.N2);
        a2(viewQ0, i10, theView.getRight() + this.K3, true, this.f91872v1.top, false, this.N2[0]);
        return viewQ0;
    }

    private View f1(View theView, int position) {
        int i10 = position - 1;
        View viewQ0 = q0(i10, this.N2);
        a2(viewQ0, i10, theView.getLeft() - this.K3, false, this.f91872v1.top, false, this.N2[0]);
        return viewQ0;
    }

    private void g1() {
        int childCount = getChildCount();
        if (childCount > 0) {
            int i10 = 0;
            if (this.f91861o2) {
                int right = getChildAt(childCount - 1).getRight() - (getWidth() - this.f91872v1.right);
                if (this.f91947b + childCount < this.f91965t) {
                    right += this.K3;
                }
                if (right <= 0) {
                    i10 = right;
                }
            } else {
                int left = getChildAt(0).getLeft() - this.f91872v1.left;
                if (this.f91947b != 0) {
                    left -= this.K3;
                }
                if (left >= 0) {
                    i10 = left;
                }
            }
            if (i10 != 0) {
                r0(-i10);
            }
        }
    }

    private int getArrowScrollPreviewLength() {
        return Math.max(2, getHorizontalFadingEdgeLength());
    }

    private int h1(int direction, int nextSelectedPosition) {
        int width = getWidth();
        Rect rect = this.f91872v1;
        int i10 = width - rect.right;
        int i11 = rect.left;
        int childCount = getChildCount();
        if (direction != 130) {
            int i12 = nextSelectedPosition != -1 ? nextSelectedPosition - this.f91947b : 0;
            int i13 = this.f91947b + i12;
            View childAt = getChildAt(i12);
            int arrowScrollPreviewLength = i13 > 0 ? getArrowScrollPreviewLength() + i11 : i11;
            if (childAt.getLeft() >= arrowScrollPreviewLength) {
                return 0;
            }
            if (nextSelectedPosition != -1 && childAt.getRight() - arrowScrollPreviewLength >= getMaxScrollAmount()) {
                return 0;
            }
            int left = arrowScrollPreviewLength - childAt.getLeft();
            if (this.f91947b == 0) {
                left = Math.min(left, i11 - getChildAt(0).getLeft());
            }
            return Math.min(left, getMaxScrollAmount());
        }
        int i14 = childCount - 1;
        int i15 = nextSelectedPosition != -1 ? nextSelectedPosition - this.f91947b : i14;
        int i16 = this.f91947b + i15;
        View childAt2 = getChildAt(i15);
        int arrowScrollPreviewLength2 = i16 < this.f91965t + (-1) ? i10 - getArrowScrollPreviewLength() : i10;
        if (childAt2.getRight() <= arrowScrollPreviewLength2) {
            return 0;
        }
        if (nextSelectedPosition != -1 && arrowScrollPreviewLength2 - childAt2.getLeft() >= getMaxScrollAmount()) {
            return 0;
        }
        int right = childAt2.getRight() - arrowScrollPreviewLength2;
        if (this.f91947b + childCount == this.f91965t) {
            right = Math.min(right, getChildAt(i14).getRight() - i10);
        }
        return Math.min(right, getMaxScrollAmount());
    }

    private int i1(int direction, View newFocus, int positionOfNewFocus) {
        int i10;
        int arrowScrollPreviewLength;
        newFocus.getDrawingRect(this.U3);
        offsetDescendantRectToMyCoords(newFocus, this.U3);
        if (direction == 33) {
            int i11 = this.U3.left;
            int i12 = this.f91872v1.left;
            if (i11 < i12) {
                i10 = i12 - i11;
                if (positionOfNewFocus <= 0) {
                    return i10;
                }
                arrowScrollPreviewLength = getArrowScrollPreviewLength();
                return i10 + arrowScrollPreviewLength;
            }
            return 0;
        }
        int width = getWidth() - this.f91872v1.right;
        Rect rect = this.U3;
        if (rect.bottom > width) {
            i10 = rect.right - width;
            if (positionOfNewFocus >= this.f91965t - 1) {
                return i10;
            }
            arrowScrollPreviewLength = getArrowScrollPreviewLength();
            return i10 + arrowScrollPreviewLength;
        }
        return 0;
    }

    private b k1(final int direction) {
        View viewFindNextFocusFromRect;
        int iJ1;
        View selectedView = getSelectedView();
        if (selectedView == null || !selectedView.hasFocus()) {
            if (direction == 130) {
                int arrowScrollPreviewLength = this.f91872v1.left + (this.f91947b > 0 ? getArrowScrollPreviewLength() : 0);
                if (selectedView != null && selectedView.getLeft() > arrowScrollPreviewLength) {
                    arrowScrollPreviewLength = selectedView.getLeft();
                }
                this.U3.set(arrowScrollPreviewLength, 0, arrowScrollPreviewLength, 0);
            } else {
                int width = (getWidth() - this.f91872v1.right) - ((this.f91947b + getChildCount()) - 1 < this.f91965t ? getArrowScrollPreviewLength() : 0);
                if (selectedView != null && selectedView.getRight() < width) {
                    width = selectedView.getRight();
                }
                this.U3.set(width, 0, width, 0);
            }
            viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, this.U3, direction);
        } else {
            viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, selectedView.findFocus(), direction);
        }
        if (viewFindNextFocusFromRect != null) {
            int iT1 = T1(viewFindNextFocusFromRect);
            int i10 = this.f91962q;
            if (i10 != -1 && iT1 != i10 && (iJ1 = J1(direction)) != -1 && ((direction == 130 && iJ1 < iT1) || (direction == 33 && iJ1 > iT1))) {
                return null;
            }
            int iI1 = i1(direction, viewFindNextFocusFromRect, iT1);
            int maxScrollAmount = getMaxScrollAmount();
            if (iI1 < maxScrollAmount) {
                viewFindNextFocusFromRect.requestFocus(direction);
                this.W3.c(iT1, iI1);
                return this.W3;
            }
            if (q1(viewFindNextFocusFromRect) < maxScrollAmount) {
                viewFindNextFocusFromRect.requestFocus(direction);
                this.W3.c(iT1, maxScrollAmount);
                return this.W3;
            }
        }
        return null;
    }

    private boolean l1(int direction) {
        View focusedChild;
        if (getChildCount() <= 0) {
            return false;
        }
        View selectedView = getSelectedView();
        int i10 = this.f91962q;
        int iJ1 = J1(direction);
        int iH1 = h1(direction, iJ1);
        View view = null;
        b bVarK1 = this.T3 ? k1(direction) : null;
        if (bVarK1 != null) {
            iJ1 = bVarK1.b();
            iH1 = bVarK1.a();
        }
        boolean z10 = bVarK1 != null;
        if (iJ1 != -1) {
            G1(selectedView, direction, iJ1, bVarK1 != null);
            setSelectedPositionInt(iJ1);
            setNextSelectedPositionInt(iJ1);
            selectedView = getSelectedView();
            if (this.T3 && bVarK1 == null && (focusedChild = getFocusedChild()) != null) {
                focusedChild.clearFocus();
            }
            f();
            i10 = iJ1;
            z10 = true;
        }
        if (iH1 > 0) {
            if (direction != 33) {
                iH1 = -iH1;
            }
            Z1(iH1);
            z10 = true;
        }
        if (this.T3 && bVarK1 == null && selectedView != null && selectedView.hasFocus()) {
            View viewFindFocus = selectedView.findFocus();
            if (!I1(viewFindFocus, this) || q1(viewFindFocus) > 0) {
                viewFindFocus.clearFocus();
            }
        }
        if (iJ1 != -1 || selectedView == null || I1(selectedView, this)) {
            view = selectedView;
        } else {
            d0();
            this.f91871u2 = -1;
        }
        if (!z10) {
            return false;
        }
        if (view != null) {
            y0(i10, view);
            this.f91860n2 = view.getLeft();
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        j0();
        return true;
    }

    private void m1(ArrayList<c> infos) {
        if (infos != null) {
            int size = infos.size();
            for (int i10 = 0; i10 < size; i10++) {
                AbsHListView.LayoutParams layoutParams = (AbsHListView.LayoutParams) infos.get(i10).f92026a.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.f91879b = false;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:108:0x0128  */
    /* JADX WARN: Code duplicated, block: B:110:0x012e  */
    /* JADX WARN: Code duplicated, block: B:128:0x0167  */
    @TargetApi(11)
    private boolean n1(int keyCode, int count, KeyEvent event) {
        boolean zG0;
        int i10;
        int i11;
        if (this.U == null || !this.f91843c3) {
            return false;
        }
        if (this.f91959n) {
            p0();
        }
        int action = event.getAction();
        if (action == 1) {
            zG0 = false;
        } else {
            if (keyCode != 62) {
                if (keyCode == 66) {
                    if (!event.hasNoModifiers()) {
                        zG0 = G0();
                        if (!zG0 && event.getRepeatCount() == 0 && getChildCount() > 0) {
                            o0();
                        }
                    } else {
                        zG0 = false;
                    }
                } else if (keyCode != 92) {
                    if (keyCode != 93) {
                        if (keyCode != 122) {
                            if (keyCode != 123) {
                                switch (keyCode) {
                                    case 19:
                                        if (!event.hasNoModifiers()) {
                                            zG0 = false;
                                        } else {
                                            zG0 = F1(33);
                                        }
                                        break;
                                    case 20:
                                        if (!event.hasNoModifiers()) {
                                            zG0 = false;
                                        } else {
                                            zG0 = F1(130);
                                        }
                                        break;
                                    case 21:
                                        if (event.hasNoModifiers()) {
                                            zG0 = G0();
                                            if (!zG0) {
                                                while (true) {
                                                    i10 = count - 1;
                                                    if (count > 0 && j1(33)) {
                                                        count = i10;
                                                        zG0 = true;
                                                    }
                                                }
                                                count = i10;
                                            }
                                        } else if (!event.hasModifiers(2) || (!G0() && !C1(33))) {
                                            zG0 = false;
                                        }
                                        break;
                                    case 22:
                                        if (event.hasNoModifiers()) {
                                            zG0 = G0();
                                            if (!zG0) {
                                                while (true) {
                                                    i11 = count - 1;
                                                    if (count > 0 && j1(130)) {
                                                        count = i11;
                                                        zG0 = true;
                                                    }
                                                }
                                                count = i11;
                                            }
                                        } else if (!event.hasModifiers(2) || (!G0() && !C1(130))) {
                                            zG0 = false;
                                        }
                                        break;
                                    case 23:
                                        if (!event.hasNoModifiers()) {
                                            zG0 = false;
                                        } else {
                                            zG0 = G0();
                                            if (!zG0) {
                                                o0();
                                            }
                                        }
                                        break;
                                    default:
                                        zG0 = false;
                                        break;
                                }
                            } else if (!event.hasNoModifiers() || (!G0() && !C1(130))) {
                                zG0 = false;
                            }
                        } else if (!event.hasNoModifiers() || (!G0() && !C1(33))) {
                            zG0 = false;
                        }
                    } else if (!event.hasNoModifiers() ? !event.hasModifiers(2) || (!G0() && !C1(130)) : !G0() && !S1(130)) {
                        zG0 = false;
                    }
                } else if (!event.hasNoModifiers() ? !event.hasModifiers(2) || (!G0() && !C1(33)) : !G0() && !S1(33)) {
                    zG0 = false;
                }
            } else if (event.hasNoModifiers()) {
                if (!G0()) {
                    S1(130);
                }
            } else if (event.hasModifiers(1) && !G0()) {
                S1(33);
            }
            zG0 = true;
        }
        if (zG0) {
            return true;
        }
        if (action == 0) {
            return super.onKeyDown(keyCode, event);
        }
        if (action == 1) {
            return super.onKeyUp(keyCode, event);
        }
        if (action != 2) {
            return false;
        }
        return super.onKeyMultiple(keyCode, count, event);
    }

    private void o1(int childCount) {
        if (this.f91947b != 0 || childCount <= 0) {
            return;
        }
        int left = getChildAt(0).getLeft();
        int i10 = this.f91872v1.left;
        int right = (getRight() - getLeft()) - this.f91872v1.right;
        int iMin = left - i10;
        View childAt = getChildAt(childCount - 1);
        int right2 = childAt.getRight();
        int i11 = (this.f91947b + childCount) - 1;
        if (iMin > 0) {
            int i12 = this.f91965t;
            if (i11 >= i12 - 1 && right2 <= right) {
                if (i11 == i12 - 1) {
                    g1();
                    return;
                }
                return;
            }
            if (i11 == i12 - 1) {
                iMin = Math.min(iMin, right2 - right);
            }
            r0(-iMin);
            if (i11 < this.f91965t - 1) {
                z1(i11 + 1, childAt.getRight() + this.K3);
                g1();
            }
        }
    }

    private void p1(int childCount) {
        if ((this.f91947b + childCount) - 1 != this.f91965t - 1 || childCount <= 0) {
            return;
        }
        int right = ((getRight() - getLeft()) - this.f91872v1.right) - getChildAt(childCount - 1).getRight();
        View childAt = getChildAt(0);
        int left = childAt.getLeft();
        if (right > 0) {
            int i10 = this.f91947b;
            if (i10 > 0 || left < this.f91872v1.top) {
                if (i10 == 0) {
                    right = Math.min(right, this.f91872v1.top - left);
                }
                r0(right);
                int i11 = this.f91947b;
                if (i11 > 0) {
                    y1(i11 - 1, childAt.getLeft() - this.K3);
                    g1();
                }
            }
        }
    }

    private int q1(View descendant) {
        descendant.getDrawingRect(this.U3);
        offsetDescendantRectToMyCoords(descendant, this.U3);
        int right = getRight() - getLeft();
        Rect rect = this.f91872v1;
        int i10 = right - rect.right;
        Rect rect2 = this.U3;
        int i11 = rect2.right;
        int i12 = rect.left;
        if (i11 < i12) {
            return i12 - i11;
        }
        int i13 = rect2.left;
        if (i13 > i10) {
            return i13 - i10;
        }
        return 0;
    }

    private void u1(View sel, int position) {
        int i10 = this.K3;
        if (this.f91861o2) {
            z1(position + 1, sel.getRight() + i10);
            g1();
            y1(position - 1, sel.getLeft() - i10);
        } else {
            y1(position - 1, sel.getLeft() - i10);
            g1();
            z1(position + 1, sel.getRight() + i10);
        }
    }

    private View v1(int nextLeft) {
        int iMin = Math.min(this.f91947b, this.f91962q);
        this.f91947b = iMin;
        int iMin2 = Math.min(iMin, this.f91965t - 1);
        this.f91947b = iMin2;
        if (iMin2 < 0) {
            this.f91947b = 0;
        }
        return z1(this.f91947b, nextLeft);
    }

    private View w1(int childrenLeft, int childrenRight) {
        int i10 = childrenRight - childrenLeft;
        int iA0 = A0();
        View viewK1 = K1(iA0, childrenLeft, true, this.f91872v1.top, true);
        this.f91947b = iA0;
        int measuredWidth = viewK1.getMeasuredWidth();
        if (measuredWidth <= i10) {
            viewK1.offsetLeftAndRight((i10 - measuredWidth) / 2);
        }
        u1(viewK1, iA0);
        if (this.f91861o2) {
            o1(getChildCount());
        } else {
            p1(getChildCount());
        }
        return viewK1;
    }

    private View x1(int selectedLeft, int childrenLeft, int childrenRight) {
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        int i10 = this.f91962q;
        int iD1 = D1(childrenLeft, horizontalFadingEdgeLength, i10);
        int iE1 = E1(childrenRight, horizontalFadingEdgeLength, i10);
        View viewK1 = K1(i10, selectedLeft, true, this.f91872v1.top, true);
        if (viewK1.getRight() > iE1) {
            viewK1.offsetLeftAndRight(-Math.min(viewK1.getLeft() - iD1, viewK1.getRight() - iE1));
        } else if (viewK1.getLeft() < iD1) {
            viewK1.offsetLeftAndRight(Math.min(iD1 - viewK1.getLeft(), iE1 - viewK1.getRight()));
        }
        u1(viewK1, i10);
        if (this.f91861o2) {
            o1(getChildCount());
        } else {
            p1(getChildCount());
        }
        return viewK1;
    }

    private View y1(int pos, int nextRight) {
        View view = null;
        int left = nextRight;
        while (true) {
            if (left <= 0 || pos < 0) {
                break;
            }
            boolean z10 = pos == this.f91962q;
            View viewK1 = K1(pos, left, false, this.f91872v1.top, z10);
            left = viewK1.getLeft() - this.K3;
            if (z10) {
                view = viewK1;
            }
            pos--;
        }
        int i10 = pos + 1;
        this.f91947b = i10;
        J0(i10, (getChildCount() + i10) - 1);
        return view;
    }

    private View z1(int pos, int nextLeft) {
        int right = getRight() - getLeft();
        View view = null;
        int right2 = nextLeft;
        while (true) {
            if (right2 >= right || pos >= this.f91965t) {
                break;
            }
            boolean z10 = pos == this.f91962q;
            View viewK1 = K1(pos, right2, true, this.f91872v1.top, z10);
            right2 = this.K3 + viewK1.getRight();
            if (z10) {
                view = viewK1;
            }
            pos++;
        }
        int i10 = this.f91947b;
        J0(i10, (getChildCount() + i10) - 1);
        return view;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
    boolean C1(int direction) {
        boolean z10 = true;
        if (direction == 33) {
            if (this.f91962q != 0) {
                int iO = o(0, true);
                if (iO >= 0) {
                    this.S = 1;
                    setSelectionInt(iO);
                    j0();
                }
            } else {
                z10 = false;
            }
        } else if (direction == 130) {
            int i10 = this.f91962q;
            int i11 = this.f91965t;
            if (i10 < i11 - 1) {
                int iO2 = o(i11 - 1, true);
                if (iO2 >= 0) {
                    this.S = 3;
                    setSelectionInt(iO2);
                    j0();
                }
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        if (z10 && !awakenScrollBars()) {
            awakenScrollBars();
            invalidate();
        }
        return z10;
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    protected void E0() {
        m1(this.H3);
        m1(this.I3);
        super.E0();
        this.S = 0;
    }

    public int[] M1(View child) {
        N1(child);
        return new int[]{child.getMeasuredWidth(), child.getMeasuredHeight()};
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    public void O0(int offset) {
        super.O0(offset);
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    public void P0(int position) {
        super.P0(position);
    }

    final int P1(int heightMeasureSpec, int startPosition, int endPosition, final int maxWidth, int disallowPartialChildPosition) {
        ListAdapter listAdapter = this.U;
        if (listAdapter == null) {
            Rect rect = this.f91872v1;
            return rect.left + rect.right;
        }
        Rect rect2 = this.f91872v1;
        int measuredWidth = rect2.left + rect2.right;
        int i10 = this.K3;
        int i11 = 0;
        if (i10 <= 0 || this.J3 == null) {
            i10 = 0;
        }
        if (endPosition == -1) {
            endPosition = listAdapter.getCount() - 1;
        }
        AbsHListView.l lVar = this.f91853i1;
        boolean zU1 = U1();
        boolean[] zArr = this.N2;
        while (startPosition <= endPosition) {
            View viewQ0 = q0(startPosition, zArr);
            O1(viewQ0, startPosition, heightMeasureSpec);
            if (startPosition > 0) {
                measuredWidth += i10;
            }
            if (zU1 && lVar.q(((AbsHListView.LayoutParams) viewQ0.getLayoutParams()).f91878a)) {
                lVar.c(viewQ0, -1);
            }
            measuredWidth += viewQ0.getMeasuredWidth();
            if (measuredWidth >= maxWidth) {
                return (disallowPartialChildPosition < 0 || startPosition <= disallowPartialChildPosition || i11 <= 0 || measuredWidth == maxWidth) ? maxWidth : i11;
            }
            if (disallowPartialChildPosition >= 0 && startPosition >= disallowPartialChildPosition) {
                i11 = measuredWidth;
            }
            startPosition++;
        }
        return measuredWidth;
    }

    final int[] Q1(int heightMeasureSpec, int startPosition, int endPosition, final int maxWidth, final int maxHeight, int disallowPartialChildPosition) {
        ListAdapter listAdapter = this.U;
        if (listAdapter == null) {
            Rect rect = this.f91872v1;
            return new int[]{rect.left + rect.right, rect.top + rect.bottom};
        }
        Rect rect2 = this.f91872v1;
        int i10 = rect2.left + rect2.right;
        int i11 = rect2.top + rect2.bottom;
        int i12 = this.K3;
        if (i12 <= 0 || this.J3 == null) {
            i12 = 0;
        }
        int count = endPosition == -1 ? listAdapter.getCount() - 1 : endPosition;
        AbsHListView.l lVar = this.f91853i1;
        boolean zU1 = U1();
        boolean[] zArr = this.N2;
        int iMax = 0;
        int iMax2 = 0;
        for (int i13 = startPosition; i13 <= count; i13++) {
            View viewQ0 = q0(i13, zArr);
            O1(viewQ0, i13, heightMeasureSpec);
            if (zU1 && lVar.q(((AbsHListView.LayoutParams) viewQ0.getLayoutParams()).f91878a)) {
                lVar.c(viewQ0, -1);
            }
            iMax = Math.max(iMax, viewQ0.getMeasuredWidth() + i12);
            iMax2 = Math.max(iMax2, viewQ0.getMeasuredHeight());
        }
        return new int[]{Math.min(i10 + iMax, maxWidth), Math.min(i11 + iMax2, maxHeight)};
    }

    boolean S1(int direction) {
        int iMin;
        boolean z10;
        int iO;
        if (direction != 33) {
            if (direction == 130) {
                iMin = Math.min(this.f91965t - 1, (this.f91962q + getChildCount()) - 1);
                z10 = true;
            } else {
                iMin = -1;
            }
            if (iMin >= 0 || (iO = o(iMin, z10)) < 0) {
                return false;
            }
            this.S = 4;
            this.f91948c = getPaddingLeft() + getHorizontalFadingEdgeLength();
            if (z10 && iO > this.f91965t - getChildCount()) {
                this.S = 3;
            }
            if (!z10 && iO < getChildCount()) {
                this.S = 1;
            }
            setSelectionInt(iO);
            j0();
            if (!awakenScrollBars()) {
                invalidate();
            }
            return true;
        }
        iMin = Math.max(0, (this.f91962q - getChildCount()) - 1);
        z10 = false;
        if (iMin >= 0) {
        }
        return false;
    }

    @ViewDebug.ExportedProperty(category = "list")
    protected boolean U1() {
        return true;
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    protected void X(boolean down) {
        int childCount = getChildCount();
        int right = 0;
        if (!down) {
            y1(this.f91947b - 1, childCount > 0 ? getChildAt(0).getLeft() - this.K3 : getWidth() - 0);
            o1(getChildCount());
        } else {
            if (childCount > 0) {
                right = this.K3 + getChildAt(childCount - 1).getRight();
            }
            z1(this.f91947b + childCount, right);
            p1(getChildCount());
        }
    }

    public boolean X1(View v10) {
        boolean z10 = false;
        if (this.I3.size() > 0) {
            ListAdapter listAdapter = this.U;
            if (listAdapter != null && ((it.sephiroth.android.library.widget.b) listAdapter).d(v10)) {
                AbsHListView.c cVar = this.T;
                if (cVar != null) {
                    cVar.onChanged();
                }
                z10 = true;
            }
            W1(v10, this.I3);
        }
        return z10;
    }

    public boolean Y1(View v10) {
        boolean z10 = false;
        if (this.H3.size() > 0) {
            ListAdapter listAdapter = this.U;
            if (listAdapter != null && ((it.sephiroth.android.library.widget.b) listAdapter).e(v10)) {
                AbsHListView.c cVar = this.T;
                if (cVar != null) {
                    cVar.onChanged();
                }
                z10 = true;
            }
            W1(v10, this.H3);
        }
        return z10;
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    protected int Z(int x10) {
        int childCount = getChildCount();
        if (childCount <= 0) {
            return -1;
        }
        if (this.f91861o2) {
            for (int i10 = childCount - 1; i10 >= 0; i10--) {
                if (x10 >= getChildAt(i10).getLeft()) {
                    return this.f91947b + i10;
                }
            }
            return -1;
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            if (x10 <= getChildAt(i11).getRight()) {
                return this.f91947b + i11;
            }
        }
        return -1;
    }

    public void a1(View v10) {
        b1(v10, null, true);
    }

    public void b1(View v10, Object data, boolean isSelectable) {
        AbsHListView.c cVar;
        c cVar2 = new c();
        cVar2.f92026a = v10;
        cVar2.f92027b = data;
        cVar2.f92028c = isSelectable;
        this.I3.add(cVar2);
        if (this.U == null || (cVar = this.T) == null) {
            return;
        }
        cVar.onChanged();
    }

    public void c1(View v10) {
        d1(v10, null, true);
    }

    @Override // it.sephiroth.android.library.widget.AdapterView, android.view.ViewGroup
    protected boolean canAnimate() {
        return super.canAnimate() && this.f91965t > 0;
    }

    public void d1(View v10, Object data, boolean isSelectable) {
        AbsHListView.c cVar;
        ListAdapter listAdapter = this.U;
        if (listAdapter != null && !(listAdapter instanceof it.sephiroth.android.library.widget.b)) {
            throw new IllegalStateException("Cannot add header view to list -- setAdapter has already been called.");
        }
        c cVar2 = new c();
        cVar2.f92026a = v10;
        cVar2.f92027b = data;
        cVar2.f92028c = isSelectable;
        this.H3.add(cVar2);
        if (this.U == null || (cVar = this.T) == null) {
            return;
        }
        cVar.onChanged();
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00e6 A[PHI: r5
      0x00e6: PHI (r5v14 int) = (r5v11 int), (r5v11 int), (r5v11 int), (r5v8 int), (r5v8 int) binds: [B:56:0x00f5, B:57:0x00f7, B:60:0x00fd, B:51:0x00e3, B:48:0x00dd] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        ListAdapter listAdapter;
        int left;
        boolean z10;
        int i10;
        ListAdapter listAdapter2;
        int i11;
        Paint paint;
        if (this.f91837a2) {
            this.f91840b2 = true;
        }
        int i12 = this.K3;
        Drawable drawable = this.M3;
        Drawable drawable2 = this.N3;
        int i13 = drawable != null ? 1 : 0;
        boolean z11 = drawable2 != null;
        boolean z12 = i12 > 0 && this.J3 != null;
        if (z12 || i13 != 0 || z11) {
            Rect rect = this.U3;
            rect.top = getPaddingTop();
            rect.bottom = (getBottom() - getTop()) - getPaddingBottom();
            int childCount = getChildCount();
            int size = this.H3.size();
            int i14 = this.f91965t;
            int size2 = (i14 - this.I3.size()) - 1;
            boolean z13 = this.Q3;
            boolean z14 = this.R3;
            int i15 = this.f91947b;
            boolean z15 = this.S3;
            ListAdapter listAdapter3 = this.U;
            boolean z16 = isOpaque() && !super.isOpaque();
            if (z16) {
                listAdapter = listAdapter3;
                if (this.V3 == null && this.O3) {
                    Paint paint2 = new Paint();
                    this.V3 = paint2;
                    paint2.setColor(getCacheColorHint());
                }
            } else {
                listAdapter = listAdapter3;
            }
            Paint paint3 = this.V3;
            int right = ((getRight() - getLeft()) - 0) + getScrollX();
            boolean z17 = z11;
            if (this.f91861o2) {
                boolean z18 = z12;
                ListAdapter listAdapter4 = listAdapter;
                int scrollX = getScrollX();
                if (childCount > 0 && i13 != 0) {
                    rect.left = scrollX;
                    rect.right = getChildAt(0).getLeft();
                    t1(canvas, drawable, rect);
                }
                int i16 = i13;
                while (i16 < childCount) {
                    if ((z13 || i15 + i16 >= size) && ((z14 || i15 + i16 < size2) && (left = getChildAt(i16).getLeft()) > 0)) {
                        z10 = z14;
                        if (z15 == 0) {
                            int i17 = i15 + i16;
                            if (listAdapter4.isEnabled(i17)) {
                                i10 = i15;
                                if (i16 == childCount - 1 || listAdapter4.isEnabled(i17 + 1)) {
                                }
                            } else {
                                i10 = i15;
                            }
                            if (z16) {
                                rect.left = left - i12;
                                rect.right = left;
                                canvas.drawRect(rect, paint3);
                            }
                        } else {
                            i10 = i15;
                        }
                        rect.left = left - i12;
                        rect.right = left;
                        r1(canvas, rect, i16 - 1);
                    } else {
                        z10 = z14;
                        i10 = i15;
                    }
                    i16++;
                    z14 = z10;
                    i15 = i10;
                }
                if (childCount > 0 && scrollX > 0) {
                    if (z17) {
                        int right2 = getRight();
                        rect.left = right2;
                        rect.right = right2 + scrollX;
                        s1(canvas, drawable2, rect);
                    } else if (z18) {
                        rect.left = right;
                        rect.right = right + i12;
                        r1(canvas, rect, -1);
                    }
                }
            } else {
                int scrollX2 = getScrollX();
                if (childCount > 0 && scrollX2 < 0) {
                    if (i13 != 0) {
                        rect.right = 0;
                        rect.left = scrollX2;
                        t1(canvas, drawable, rect);
                    } else if (z12) {
                        rect.right = 0;
                        rect.left = -i12;
                        r1(canvas, rect, -1);
                    }
                }
                int i18 = 0;
                int right3 = 0;
                while (i18 < childCount) {
                    if ((z13 || i15 + i18 >= size) && (z14 || i15 + i18 < size2)) {
                        right3 = getChildAt(i18).getRight();
                        if (!z12 || right3 >= right || (z17 && i18 == childCount - 1)) {
                            listAdapter2 = listAdapter;
                            i11 = right;
                        } else {
                            if (z15) {
                                listAdapter2 = listAdapter;
                                i11 = right;
                            } else {
                                int i19 = i15 + i18;
                                listAdapter2 = listAdapter;
                                if (listAdapter2.isEnabled(i19)) {
                                    i11 = right;
                                    if (i18 == childCount - 1 || listAdapter2.isEnabled(i19 + 1)) {
                                    }
                                } else {
                                    i11 = right;
                                }
                                if (z16) {
                                    rect.left = right3;
                                    rect.right = right3 + i12;
                                    paint = paint3;
                                    canvas.drawRect(rect, paint);
                                }
                            }
                            paint = paint3;
                            rect.left = right3;
                            rect.right = right3 + i12;
                            r1(canvas, rect, i18);
                        }
                        paint = paint3;
                    } else {
                        listAdapter2 = listAdapter;
                        i11 = right;
                        paint = paint3;
                    }
                    i18++;
                    paint3 = paint;
                    right = i11;
                    listAdapter = listAdapter2;
                }
                int right4 = getRight() + getScrollX();
                if (z17 && i15 + childCount == i14 && right4 > right3) {
                    rect.left = right3;
                    rect.right = right4;
                    s1(canvas, drawable2, rect);
                }
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        boolean zDispatchKeyEvent = super.dispatchKeyEvent(event);
        return (zDispatchKeyEvent || getFocusedChild() == null || event.getAction() != 0) ? zDispatchKeyEvent : onKeyDown(event.getKeyCode(), event);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View child, long drawingTime) {
        boolean zDrawChild = super.drawChild(canvas, child, drawingTime);
        if (this.f91840b2) {
            this.f91840b2 = false;
        }
        return zDrawChild;
    }

    @Deprecated
    public long[] getCheckItemIds() {
        SparseArrayCompat<Boolean> sparseArrayCompat;
        ListAdapter listAdapter = this.U;
        if (listAdapter != null && listAdapter.hasStableIds()) {
            return getCheckedItemIds();
        }
        if (this.M == 0 || (sparseArrayCompat = this.Q) == null || this.U == null) {
            return new long[0];
        }
        int size = sparseArrayCompat.size();
        long[] jArr = new long[size];
        ListAdapter listAdapter2 = this.U;
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            if (sparseArrayCompat.valueAt(i11).booleanValue()) {
                jArr[i10] = listAdapter2.getItemId(sparseArrayCompat.keyAt(i11));
                i10++;
            }
        }
        if (i10 == size) {
            return jArr;
        }
        long[] jArr2 = new long[i10];
        System.arraycopy(jArr, 0, jArr2, 0, i10);
        return jArr2;
    }

    public Drawable getDivider() {
        return this.J3;
    }

    public int getDividerWidth() {
        return this.K3;
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    public int getFooterViewsCount() {
        return this.I3.size();
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    public int getHeaderViewsCount() {
        return this.H3.size();
    }

    public boolean getItemsCanFocus() {
        return this.T3;
    }

    public int getMaxScrollAmount() {
        return (int) ((getRight() - getLeft()) * f92021a4);
    }

    public Drawable getOverscrollFooter() {
        return this.N3;
    }

    public Drawable getOverscrollHeader() {
        return this.M3;
    }

    @Override // android.view.View
    public boolean isOpaque() {
        boolean z10 = (this.f91840b2 && this.O3 && this.P3) || super.isOpaque();
        if (z10) {
            Rect rect = this.f91872v1;
            int paddingLeft = rect != null ? rect.left : getPaddingLeft();
            View childAt = getChildAt(0);
            if (childAt != null && childAt.getLeft() <= paddingLeft) {
                int width = getWidth();
                Rect rect2 = this.f91872v1;
                int paddingRight = width - (rect2 != null ? rect2.right : getPaddingRight());
                View childAt2 = getChildAt(getChildCount() - 1);
                if (childAt2 == null || childAt2.getRight() < paddingRight) {
                }
            }
            return false;
        }
        return z10;
    }

    boolean j1(int direction) {
        try {
            this.f91955j = true;
            boolean zL1 = l1(direction);
            if (zL1) {
                playSoundEffect(SoundEffectConstants.getContantForFocusDirection(direction));
            }
            return zL1;
        } finally {
            this.f91955j = false;
        }
    }

    @Override // it.sephiroth.android.library.widget.AdapterView
    protected int o(int position, boolean lookDown) {
        int iMin;
        ListAdapter listAdapter = this.U;
        if (listAdapter != null && !isInTouchMode()) {
            int count = listAdapter.getCount();
            if (!this.S3) {
                if (lookDown) {
                    iMin = Math.max(0, position);
                    while (iMin < count && !listAdapter.isEnabled(iMin)) {
                        iMin++;
                    }
                } else {
                    iMin = Math.min(position, count - 1);
                    while (iMin >= 0 && !listAdapter.isEnabled(iMin)) {
                        iMin--;
                    }
                }
                if (iMin < 0 || iMin >= count) {
                    return -1;
                }
                return iMin;
            }
            if (position >= 0 && position < count) {
                return position;
            }
        }
        return -1;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int childCount = getChildCount();
        if (childCount > 0) {
            for (int i10 = 0; i10 < childCount; i10++) {
                c1(getChildAt(i10));
            }
            removeAllViews();
        }
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View
    protected void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        super.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
        ListAdapter listAdapter = this.U;
        int i10 = -1;
        int i11 = 0;
        if (listAdapter != null && gainFocus && previouslyFocusedRect != null) {
            previouslyFocusedRect.offset(getScrollX(), getScrollY());
            if (listAdapter.getCount() < getChildCount() + this.f91947b) {
                this.S = 0;
                p0();
            }
            Rect rect = this.U3;
            int childCount = getChildCount();
            int i12 = this.f91947b;
            int left = 0;
            int i13 = Integer.MAX_VALUE;
            while (i11 < childCount) {
                if (listAdapter.isEnabled(i12 + i11)) {
                    View childAt = getChildAt(i11);
                    childAt.getDrawingRect(rect);
                    offsetDescendantRectToMyCoords(childAt, rect);
                    int iC0 = AbsHListView.c0(previouslyFocusedRect, rect, direction);
                    if (iC0 < i13) {
                        left = childAt.getLeft();
                        i10 = i11;
                        i13 = iC0;
                    }
                }
                i11++;
            }
            i11 = left;
        }
        if (i10 >= 0) {
            setSelectionFromLeft(i10 + this.f91947b, i11);
        } else {
            requestLayout();
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
        event.setClassName(HListView.class.getName());
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView, android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName(HListView.class.getName());
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return n1(keyCode, 1, event);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int keyCode, int repeatCount, KeyEvent event) {
        return n1(keyCode, repeatCount, event);
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        return n1(keyCode, 1, event);
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View
    @TargetApi(11)
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i10;
        int i11;
        int horizontalScrollbarHeight;
        int i12;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        ListAdapter listAdapter = this.U;
        int i13 = 0;
        int count = listAdapter == null ? 0 : listAdapter.getCount();
        this.f91965t = count;
        if (count <= 0 || !(mode == 0 || mode2 == 0)) {
            i10 = 0;
            i11 = 0;
        } else {
            View viewQ0 = q0(0, this.N2);
            O1(viewQ0, 0, heightMeasureSpec);
            int measuredWidth = viewQ0.getMeasuredWidth();
            int measuredHeight = viewQ0.getMeasuredHeight();
            int iCombineMeasuredStates = View.combineMeasuredStates(0, viewQ0.getMeasuredState());
            if (U1() && this.f91853i1.q(((AbsHListView.LayoutParams) viewQ0.getLayoutParams()).f91878a)) {
                this.f91853i1.c(viewQ0, -1);
            }
            i10 = iCombineMeasuredStates;
            i11 = measuredWidth;
            i13 = measuredHeight;
        }
        if (mode2 == 0) {
            Rect rect = this.f91872v1;
            horizontalScrollbarHeight = rect.top + rect.bottom + i13 + getHorizontalScrollbarHeight();
        } else {
            horizontalScrollbarHeight = (mode2 != Integer.MIN_VALUE || this.f91965t <= 0 || (i12 = this.L3) <= -1) ? size2 | ((-16777216) & i10) : Q1(heightMeasureSpec, i12, i12, size, size2, -1)[1];
        }
        if (mode == 0) {
            Rect rect2 = this.f91872v1;
            size = (getHorizontalFadingEdgeLength() * 2) + rect2.left + rect2.right + i11;
        }
        int iP1 = size;
        if (mode == Integer.MIN_VALUE) {
            iP1 = P1(heightMeasureSpec, 0, -1, iP1, -1);
        }
        setMeasuredDimension(iP1, horizontalScrollbarHeight);
        this.L1 = heightMeasureSpec;
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        View focusedChild;
        if (getChildCount() > 0 && (focusedChild = getFocusedChild()) != null) {
            int iIndexOfChild = this.f91947b + indexOfChild(focusedChild);
            int left = focusedChild.getLeft() - Math.max(0, focusedChild.getRight() - (w10 - getPaddingLeft()));
            if (this.X3 == null) {
                this.X3 = new d();
            }
            post(this.X3.a(iIndexOfChild, left));
        }
        super.onSizeChanged(w10, h10, oldw, oldh);
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (!this.Y3.onTouchEvent(ev)) {
            return super.onTouchEvent(ev);
        }
        getParent().getParent().requestDisallowInterceptTouchEvent(false);
        try {
            if (!(getParent().getParent() instanceof MyInnerScrollView)) {
                return true;
            }
            ((MyInnerScrollView) getParent().getParent()).getParentScrollView().setIsInnerScroll(false);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return true;
        }
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    protected void p0() {
        View view;
        View childAt;
        int i10;
        View view2;
        View viewFindFocus;
        View viewV1;
        boolean z10 = this.B;
        if (z10) {
            return;
        }
        boolean z11 = true;
        this.B = true;
        try {
            super.p0();
            invalidate();
            if (this.U == null) {
                E0();
                j0();
                if (z10) {
                    return;
                }
                this.B = false;
                return;
            }
            int left = this.f91872v1.left;
            int right = (getRight() - getLeft()) - this.f91872v1.right;
            int childCount = getChildCount();
            int i11 = this.S;
            if (i11 == 1) {
                view = null;
                childAt = null;
                i10 = 0;
                view2 = null;
            } else {
                if (i11 == 2) {
                    int i12 = this.f91960o - this.f91947b;
                    if (i12 >= 0 && i12 < childCount) {
                        childAt = getChildAt(i12);
                        view = null;
                    }
                    i10 = 0;
                    view2 = null;
                } else if (i11 != 3 && i11 != 4 && i11 != 5) {
                    int i13 = this.f91962q - this.f91947b;
                    View childAt2 = (i13 < 0 || i13 >= childCount) ? null : getChildAt(i13);
                    View childAt3 = getChildAt(0);
                    int i14 = this.f91960o;
                    int i15 = i14 >= 0 ? i14 - this.f91962q : 0;
                    View view3 = childAt2;
                    childAt = getChildAt(i13 + i15);
                    view = view3;
                    int i16 = i15;
                    view2 = childAt3;
                    i10 = i16;
                }
                view = null;
                childAt = null;
                i10 = 0;
                view2 = null;
            }
            boolean z12 = this.f91959n;
            if (z12) {
                l();
            }
            int i17 = this.f91965t;
            if (i17 == 0) {
                E0();
                j0();
                if (z10) {
                    return;
                }
                this.B = false;
                return;
            }
            if (i17 != this.U.getCount()) {
                throw new IllegalStateException("The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView(" + getId() + ", " + getClass() + ") with Adapter(" + this.U.getClass() + ")]");
            }
            setSelectedPositionInt(this.f91960o);
            int i18 = this.f91947b;
            AbsHListView.l lVar = this.f91853i1;
            if (z12) {
                for (int i19 = 0; i19 < childCount; i19++) {
                    lVar.c(getChildAt(i19), i18 + i19);
                }
            } else {
                lVar.f(childCount, i18);
            }
            View focusedChild = getFocusedChild();
            if (focusedChild != null) {
                if (!z12 || H1(focusedChild)) {
                    viewFindFocus = findFocus();
                    if (viewFindFocus != null) {
                        viewFindFocus.onStartTemporaryDetach();
                    }
                } else {
                    focusedChild = null;
                    viewFindFocus = null;
                }
                requestFocus();
            } else {
                focusedChild = null;
                viewFindFocus = null;
            }
            detachAllViewsFromParent();
            lVar.m();
            switch (this.S) {
                case 1:
                    this.f91947b = 0;
                    viewV1 = v1(left);
                    g1();
                    break;
                case 2:
                    viewV1 = childAt != null ? x1(childAt.getLeft(), left, right) : w1(left, right);
                    break;
                case 3:
                    viewV1 = y1(this.f91965t - 1, right);
                    g1();
                    break;
                case 4:
                    viewV1 = A1(A0(), this.f91948c);
                    break;
                case 5:
                    viewV1 = A1(this.f91949d, this.f91948c);
                    break;
                case 6:
                    viewV1 = R1(view, childAt, i10, left, right);
                    break;
                default:
                    if (childCount != 0) {
                        int i20 = this.f91962q;
                        if (i20 < 0 || i20 >= this.f91965t) {
                            int i21 = this.f91947b;
                            if (i21 < this.f91965t) {
                                if (view2 != null) {
                                    left = view2.getLeft();
                                }
                                viewV1 = A1(i21, left);
                            } else {
                                viewV1 = A1(0, left);
                            }
                        } else {
                            if (view != null) {
                                left = view.getLeft();
                            }
                            viewV1 = A1(i20, left);
                        }
                    } else if (this.f91861o2) {
                        setSelectedPositionInt(o(this.f91965t - 1, false));
                        viewV1 = y1(this.f91965t - 1, right);
                    } else {
                        setSelectedPositionInt(o(0, true));
                        viewV1 = v1(left);
                    }
                    break;
            }
            lVar.n();
            if (viewV1 != null) {
                if (this.T3 && hasFocus() && !viewV1.hasFocus()) {
                    if ((viewV1 != focusedChild || viewFindFocus == null || !viewFindFocus.requestFocus()) && !viewV1.requestFocus()) {
                        z11 = false;
                    }
                    if (z11) {
                        viewV1.setSelected(false);
                        this.f91848f1.setEmpty();
                    } else {
                        View focusedChild2 = getFocusedChild();
                        if (focusedChild2 != null) {
                            focusedChild2.clearFocus();
                        }
                        y0(-1, viewV1);
                    }
                } else {
                    y0(-1, viewV1);
                }
                this.f91860n2 = viewV1.getLeft();
            } else {
                int i22 = this.f91852h2;
                if (i22 <= 0 || i22 >= 3) {
                    this.f91860n2 = 0;
                    this.f91848f1.setEmpty();
                } else {
                    View childAt4 = getChildAt(this.f91842c2 - this.f91947b);
                    if (childAt4 != null) {
                        y0(this.f91842c2, childAt4);
                    }
                }
                if (hasFocus() && viewFindFocus != null) {
                    viewFindFocus.requestFocus();
                }
            }
            if (viewFindFocus != null && viewFindFocus.getWindowToken() != null) {
                viewFindFocus.onFinishTemporaryDetach();
            }
            this.S = 0;
            this.f91959n = false;
            Runnable runnable = this.J2;
            if (runnable != null) {
                post(runnable);
                this.J2 = null;
            }
            this.f91952g = false;
            setNextSelectedPositionInt(this.f91962q);
            X0();
            if (this.f91965t > 0) {
                f();
            }
            j0();
            if (z10) {
                return;
            }
            this.B = false;
        } catch (Throwable th) {
            if (!z10) {
                this.B = false;
            }
            throw th;
        }
    }

    void r1(Canvas canvas, Rect bounds, int childIndex) {
        Drawable drawable = this.J3;
        drawable.setBounds(bounds);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View child, Rect rect, boolean immediate) {
        int iMax;
        int i10 = rect.left;
        rect.offset(child.getLeft(), child.getTop());
        rect.offset(-child.getScrollX(), -child.getScrollY());
        int width = getWidth();
        int scrollX = getScrollX();
        int i11 = scrollX + width;
        int horizontalFadingEdgeLength = getHorizontalFadingEdgeLength();
        if (b2() && (this.f91962q > 0 || i10 > horizontalFadingEdgeLength)) {
            scrollX += horizontalFadingEdgeLength;
        }
        int right = getChildAt(getChildCount() - 1).getRight();
        if (c2() && (this.f91962q < this.f91965t - 1 || rect.right < right - horizontalFadingEdgeLength)) {
            i11 -= horizontalFadingEdgeLength;
        }
        int i12 = rect.right;
        if (i12 > i11 && rect.left > scrollX) {
            iMax = Math.min((rect.width() > width ? rect.left - scrollX : rect.right - i11) + 0, right - i11);
        } else if (rect.left >= scrollX || i12 >= i11) {
            iMax = 0;
        } else {
            iMax = Math.max(rect.width() > width ? 0 - (i11 - rect.right) : 0 - (scrollX - rect.left), getChildAt(0).getLeft() - scrollX);
        }
        boolean z10 = iMax != 0;
        if (z10) {
            Z1(-iMax);
            y0(-1, child);
            this.f91860n2 = child.getTop();
            invalidate();
        }
        return z10;
    }

    void s1(Canvas canvas, Drawable drawable, Rect bounds) {
        int minimumWidth = drawable.getMinimumWidth();
        canvas.save();
        canvas.clipRect(bounds);
        int i10 = bounds.right;
        int i11 = bounds.left;
        if (i10 - i11 < minimumWidth) {
            bounds.right = i11 + minimumWidth;
        }
        drawable.setBounds(bounds);
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView
    public void setCacheColorHint(int color) {
        boolean z10 = (color >>> 24) == 255;
        this.O3 = z10;
        if (z10) {
            if (this.V3 == null) {
                this.V3 = new Paint();
            }
            this.V3.setColor(color);
        }
        super.setCacheColorHint(color);
    }

    public void setDivider(Drawable divider) {
        if (divider != null) {
            this.K3 = divider.getIntrinsicWidth();
        } else {
            this.K3 = 0;
        }
        this.J3 = divider;
        this.P3 = divider == null || divider.getOpacity() == -1;
        requestLayout();
        invalidate();
    }

    public void setDividerWidth(int width) {
        this.K3 = width;
        requestLayout();
        invalidate();
    }

    public void setFooterDividersEnabled(boolean footerDividersEnabled) {
        this.R3 = footerDividersEnabled;
        invalidate();
    }

    public void setHeaderDividersEnabled(boolean headerDividersEnabled) {
        this.Q3 = headerDividersEnabled;
        invalidate();
    }

    public void setItemsCanFocus(boolean itemsCanFocus) {
        this.T3 = itemsCanFocus;
        if (itemsCanFocus) {
            return;
        }
        setDescendantFocusability(393216);
    }

    public void setOverscrollFooter(Drawable footer) {
        this.N3 = footer;
        invalidate();
    }

    public void setOverscrollHeader(Drawable header) {
        this.M3 = header;
        if (getScrollX() < 0) {
            invalidate();
        }
    }

    @Override // it.sephiroth.android.library.widget.AdapterView
    public void setSelection(int position) {
        setSelectionFromLeft(position, 0);
    }

    public void setSelectionAfterHeaderView() {
        int size = this.H3.size();
        if (size > 0) {
            this.f91960o = 0;
        } else if (this.U != null) {
            setSelection(size);
        } else {
            this.f91960o = size;
            this.S = 2;
        }
    }

    public void setSelectionFromLeft(int position, int x10) {
        if (this.U == null) {
            return;
        }
        if (isInTouchMode()) {
            this.f91871u2 = position;
        } else {
            position = o(position, true);
            if (position >= 0) {
                setNextSelectedPositionInt(position);
            }
        }
        if (position >= 0) {
            this.S = 4;
            this.f91948c = this.f91872v1.left + x10;
            if (this.f91952g) {
                this.f91949d = position;
                this.f91950e = this.U.getItemId(position);
            }
            AbsHListView.k kVar = this.f91859m2;
            if (kVar != null) {
                kVar.g();
            }
            requestLayout();
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0011  */
    @Override // it.sephiroth.android.library.widget.AbsHListView
    public void setSelectionInt(int position) {
        boolean z10;
        setNextSelectedPositionInt(position);
        int i10 = this.f91962q;
        if (i10 >= 0) {
            z10 = true;
            if (position != i10 - 1 && position != i10 + 1) {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        AbsHListView.k kVar = this.f91859m2;
        if (kVar != null) {
            kVar.g();
        }
        p0();
        if (z10) {
            awakenScrollBars();
        }
    }

    void t1(Canvas canvas, Drawable drawable, Rect bounds) {
        int minimumWidth = drawable.getMinimumWidth();
        canvas.save();
        canvas.clipRect(bounds);
        int i10 = bounds.right;
        if (i10 - bounds.left < minimumWidth) {
            bounds.left = i10 - minimumWidth;
        }
        drawable.setBounds(bounds);
        drawable.draw(canvas);
        canvas.restore();
    }

    public HListView(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.hlv_listViewStyle);
    }

    @Override // it.sephiroth.android.library.widget.AdapterView
    public ListAdapter getAdapter() {
        return this.U;
    }

    @Override // it.sephiroth.android.library.widget.AbsHListView, it.sephiroth.android.library.widget.AdapterView
    public void setAdapter(ListAdapter adapter) {
        AbsHListView.c cVar;
        ListAdapter listAdapter = this.U;
        if (listAdapter != null && (cVar = this.T) != null) {
            listAdapter.unregisterDataSetObserver(cVar);
        }
        E0();
        this.f91853i1.d();
        if (this.H3.size() > 0 || this.I3.size() > 0) {
            this.U = new it.sephiroth.android.library.widget.b(this.H3, this.I3, adapter);
        } else {
            this.U = adapter;
        }
        this.f91968w = -1;
        this.f91969x = Long.MIN_VALUE;
        super.setAdapter(adapter);
        ListAdapter listAdapter2 = this.U;
        if (listAdapter2 != null) {
            this.S3 = listAdapter2.areAllItemsEnabled();
            this.f91966u = this.f91965t;
            this.f91965t = this.U.getCount();
            e();
            AbsHListView.c cVar2 = new AbsHListView.c();
            this.T = cVar2;
            this.U.registerDataSetObserver(cVar2);
            this.f91853i1.p(this.U.getViewTypeCount());
            int iO = this.f91861o2 ? o(this.f91965t - 1, false) : o(0, true);
            setSelectedPositionInt(iO);
            setNextSelectedPositionInt(iO);
            if (this.f91965t == 0) {
                f();
            }
        } else {
            this.S3 = true;
            e();
            f();
        }
        requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HListView(Context context, AttributeSet attributeSet, int i10) {
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        boolean z10;
        super(context, attributeSet, i10);
        this.H3 = new ArrayList<>();
        this.I3 = new ArrayList<>();
        boolean z11 = true;
        this.S3 = true;
        int dimensionPixelSize = 0;
        this.T3 = false;
        this.U3 = new Rect();
        CharSequence[] textArray = null;
        this.W3 = new b();
        this.Y3 = new GestureDetector(new e());
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.HListView, i10, 0);
        int integer = -1;
        if (typedArrayObtainStyledAttributes != null) {
            textArray = typedArrayObtainStyledAttributes.getTextArray(0);
            drawable = typedArrayObtainStyledAttributes.getDrawable(1);
            drawable2 = typedArrayObtainStyledAttributes.getDrawable(7);
            drawable3 = typedArrayObtainStyledAttributes.getDrawable(6);
            dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
            boolean z12 = typedArrayObtainStyledAttributes.getBoolean(4, true);
            boolean z13 = typedArrayObtainStyledAttributes.getBoolean(3, true);
            integer = typedArrayObtainStyledAttributes.getInteger(5, -1);
            typedArrayObtainStyledAttributes.recycle();
            z10 = z13;
            z11 = z12;
        } else {
            drawable = null;
            drawable2 = null;
            drawable3 = null;
            z10 = true;
        }
        if (textArray != null) {
            setAdapter((ListAdapter) new ArrayAdapter(context, android.R.layout.simple_list_item_1, textArray));
        }
        if (drawable != null) {
            setDivider(drawable);
        }
        if (drawable2 != null) {
            setOverscrollHeader(drawable2);
        }
        if (drawable3 != null) {
            setOverscrollFooter(drawable3);
        }
        if (dimensionPixelSize != 0) {
            setDividerWidth(dimensionPixelSize);
        }
        this.Q3 = z11;
        this.R3 = z10;
        this.L3 = integer;
    }
}
