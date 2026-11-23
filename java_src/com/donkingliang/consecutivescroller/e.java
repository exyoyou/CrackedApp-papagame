package com.donkingliang.consecutivescroller;

import android.graphics.Rect;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static Method f26223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static Method f26224b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static Method f26225c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Rect f26226d = new Rect();

    private static void a(List<View> views, View view, int touchX, int touchY) {
        if (t(view) && w(view, touchX, touchY)) {
            views.add(view);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    a(views, viewGroup.getChildAt(i10), touchX, touchY);
                }
            }
        }
    }

    static boolean b(View view) {
        return t(view) && (view.canScrollHorizontally(1) || view.canScrollHorizontally(-1));
    }

    static boolean c(View view) {
        return t(view) && (d(view, 1) || d(view, -1));
    }

    static boolean d(View view, int direction) {
        View viewP = p(view);
        if (viewP.getVisibility() == 8) {
            return false;
        }
        if (viewP instanceof AbsListView) {
            return ((AbsListView) viewP).canScrollList(direction);
        }
        if (!(viewP instanceof RecyclerView)) {
            return viewP.canScrollVertically(direction);
        }
        RecyclerView recyclerView = (RecyclerView) viewP;
        if ((recyclerView.canScrollHorizontally(1) || recyclerView.canScrollHorizontally(-1)) && !recyclerView.canScrollVertically(direction)) {
            return false;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (layoutManager != null && adapter != null && adapter.getItemCount() > 0) {
            if (layoutManager.findViewByPosition(direction > 0 ? adapter.getItemCount() - 1 : 0) == null) {
                return true;
            }
            int childCount = recyclerView.getChildCount();
            if (direction > 0) {
                for (int i10 = childCount - 1; i10 >= 0; i10--) {
                    View childAt = recyclerView.getChildAt(i10);
                    Rect rect = f26226d;
                    recyclerView.getDecoratedBoundsWithMargins(childAt, rect);
                    if (rect.bottom > recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                        return true;
                    }
                }
                return false;
            }
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt2 = recyclerView.getChildAt(i11);
                Rect rect2 = f26226d;
                recyclerView.getDecoratedBoundsWithMargins(childAt2, rect2);
                if (rect2.top < recyclerView.getPaddingTop()) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static int e(View view) {
        View viewP = p(view);
        if (viewP instanceof ScrollingView) {
            return ((ScrollingView) viewP).computeVerticalScrollExtent();
        }
        try {
            if (f26225c == null) {
                Method declaredMethod = View.class.getDeclaredMethod("computeVerticalScrollExtent", new Class[0]);
                f26225c = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            Object objInvoke = f26225c.invoke(viewP, new Object[0]);
            if (objInvoke != null) {
                return ((Integer) objInvoke).intValue();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return viewP.getHeight();
    }

    /* JADX WARN: Multi-variable type inference failed */
    static int f(View view) {
        View viewP = p(view);
        if (viewP instanceof ScrollingView) {
            return ((ScrollingView) viewP).computeVerticalScrollOffset();
        }
        try {
            if (f26223a == null) {
                Method declaredMethod = View.class.getDeclaredMethod("computeVerticalScrollOffset", new Class[0]);
                f26223a = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            Object objInvoke = f26223a.invoke(viewP, new Object[0]);
            if (objInvoke != null) {
                return ((Integer) objInvoke).intValue();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return viewP.getScrollY();
    }

    /* JADX WARN: Multi-variable type inference failed */
    static int g(View view) {
        View viewP = p(view);
        if (viewP instanceof ScrollingView) {
            return ((ScrollingView) viewP).computeVerticalScrollRange();
        }
        try {
            if (f26224b == null) {
                Method declaredMethod = View.class.getDeclaredMethod("computeVerticalScrollRange", new Class[0]);
                f26224b = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            Object objInvoke = f26224b.invoke(viewP, new Object[0]);
            if (objInvoke != null) {
                return ((Integer) objInvoke).intValue();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return viewP.getHeight();
    }

    static boolean h(List<Integer> offsets1, List<Integer> offsets2) {
        if (offsets1.size() != offsets2.size()) {
            return false;
        }
        int size = offsets1.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!offsets1.get(i10).equals(offsets2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    static List<ConsecutiveScrollerLayout> i(View rootView, int touchX, int touchY) {
        ArrayList arrayList = new ArrayList();
        for (View view : r(rootView, touchX, touchY)) {
            if (view instanceof ConsecutiveScrollerLayout) {
                arrayList.add((ConsecutiveScrollerLayout) view);
            }
        }
        return arrayList;
    }

    static int j(View rootView, MotionEvent ev, int pointerIndex) {
        float x10;
        if (Build.VERSION.SDK_INT >= 29) {
            x10 = ev.getRawX(pointerIndex);
        } else {
            int[] iArr = new int[2];
            rootView.getLocationOnScreen(iArr);
            x10 = iArr[0] + ev.getX(pointerIndex);
        }
        return (int) x10;
    }

    static int k(View rootView, MotionEvent ev, int pointerIndex) {
        float y10;
        if (Build.VERSION.SDK_INT >= 29) {
            y10 = ev.getRawY(pointerIndex);
        } else {
            int[] iArr = new int[2];
            rootView.getLocationOnScreen(iArr);
            y10 = iArr[1] + ev.getY(pointerIndex);
        }
        return (int) y10;
    }

    static int l(View view) {
        if (t(view) && d(view, 1)) {
            return Math.max((g(view) - f(view)) - e(view), 1);
        }
        return 0;
    }

    static View m(View view) {
        int i10;
        View viewFindViewById;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if ((layoutParams instanceof ConsecutiveScrollerLayout.LayoutParams) && (i10 = ((ConsecutiveScrollerLayout.LayoutParams) layoutParams).f26210f) != -1 && (viewFindViewById = view.findViewById(i10)) != null) {
                return viewFindViewById;
            }
        }
        return view;
    }

    static List<Integer> n(List<View> views) {
        ArrayList arrayList = new ArrayList();
        Iterator<View> it2 = views.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(f(it2.next())));
        }
        return arrayList;
    }

    static int o(View view) {
        if (t(view) && d(view, -1)) {
            return Math.min(-f(view), -1);
        }
        return 0;
    }

    static View p(View view) {
        View viewM = m(view);
        while (viewM instanceof a) {
            View currentScrollerView = ((a) viewM).getCurrentScrollerView();
            if (viewM == currentScrollerView) {
                return currentScrollerView;
            }
            viewM = currentScrollerView;
        }
        return viewM;
    }

    static View q(ConsecutiveScrollerLayout csl, int touchX, int touchY) {
        int childCount = csl.getChildCount();
        View view = null;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = csl.getChildAt(i10);
            if (childAt.getVisibility() == 0 && w(childAt, touchX, touchY) && (view == null || ViewCompat.getZ(childAt) > ViewCompat.getZ(view) || (ViewCompat.getZ(childAt) == ViewCompat.getZ(view) && csl.v(childAt) > csl.v(view)))) {
                view = childAt;
            }
        }
        return view;
    }

    static List<View> r(View rootView, int touchX, int touchY) {
        ArrayList arrayList = new ArrayList();
        a(arrayList, rootView, touchX, touchY);
        return arrayList;
    }

    static boolean s(View view) {
        while ((view.getParent() instanceof ViewGroup) && !(view.getParent() instanceof ConsecutiveScrollerLayout)) {
            view = (View) view.getParent();
        }
        if (view.getParent() instanceof ConsecutiveScrollerLayout) {
            return t(view);
        }
        return false;
    }

    static boolean t(View view) {
        if (view == null) {
            return false;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConsecutiveScrollerLayout.LayoutParams) {
            return ((ConsecutiveScrollerLayout.LayoutParams) layoutParams).f26205a;
        }
        return true;
    }

    static boolean u(View rootView, int touchX, int touchY) {
        for (View view : r(rootView, touchX, touchY)) {
            if (view.canScrollHorizontally(1) || view.canScrollHorizontally(-1)) {
                return true;
            }
        }
        return false;
    }

    static boolean v(View rootView, int touchX, int touchY) {
        List<ConsecutiveScrollerLayout> listI = i(rootView, touchX, touchY);
        for (int size = listI.size() - 1; size >= 0; size--) {
            ConsecutiveScrollerLayout consecutiveScrollerLayout = listI.get(size);
            View viewQ = q(consecutiveScrollerLayout, touchX, touchY);
            if (viewQ != null && consecutiveScrollerLayout.M(viewQ) && consecutiveScrollerLayout.l0(viewQ) && !((ConsecutiveScrollerLayout.LayoutParams) viewQ.getLayoutParams()).f26208d) {
                return true;
            }
        }
        return false;
    }

    static boolean w(View view, int x10, int y10) {
        if (view == null) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        return x10 >= i10 && x10 <= view.getMeasuredWidth() + i10 && y10 >= i11 && y10 <= view.getMeasuredHeight() + i11;
    }

    static boolean x(RecyclerView view) {
        if ("InterceptRequestLayout".equals(view.getTag())) {
            try {
                Method declaredMethod = RecyclerView.class.getDeclaredMethod("startInterceptRequestLayout", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(view, new Object[0]);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    static void y(RecyclerView view) {
        if ("InterceptRequestLayout".equals(view.getTag())) {
            try {
                Method declaredMethod = RecyclerView.class.getDeclaredMethod("stopInterceptRequestLayout", Boolean.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(view, Boolean.FALSE);
            } catch (Exception unused) {
            }
        }
    }
}
