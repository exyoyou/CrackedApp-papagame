package com.join.mgps.recycler;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\"\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/join/mgps/recycler/ViewPager2SlowScrollHelper;", "", "vp", "Landroidx/viewpager2/widget/ViewPager2;", "duration", "", "<init>", "(Landroidx/viewpager2/widget/ViewPager2;J)V", "getDuration", "()J", "setDuration", "(J)V", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "mAccessibilityProvider", "mScrollEventAdapter", "onSetNewCurrentItemMethod", "Ljava/lang/reflect/Method;", "getRelativeScrollPositionMethod", "notifyProgrammaticScrollMethod", "setCurrentItem", "", "item", "", "smoothScrollToPosition", "context", "Landroid/content/Context;", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "getSlowLinearSmoothScroller", "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;", "replaceDecelerateInterpolator", "linearSmoothScroller", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ViewPager2SlowScrollHelper {
    private long duration;

    @NotNull
    private final Method getRelativeScrollPositionMethod;

    @NotNull
    private final Object mAccessibilityProvider;

    @NotNull
    private final Object mScrollEventAdapter;

    @NotNull
    private final Method notifyProgrammaticScrollMethod;

    @NotNull
    private final Method onSetNewCurrentItemMethod;

    @NotNull
    private final RecyclerView recyclerView;

    @NotNull
    private final ViewPager2 vp;

    public static final class a extends LinearSmoothScroller {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return super.calculateSpeedPerPixel(displayMetrics) * 20;
        }
    }

    public static final class b extends DecelerateInterpolator {
        b() {
        }

        @Override // android.view.animation.DecelerateInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            return f10;
        }
    }

    public ViewPager2SlowScrollHelper(@NotNull ViewPager2 vp, long j10) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException {
        Intrinsics.checkNotNullParameter(vp, "vp");
        this.vp = vp;
        this.duration = j10;
        Field declaredField = ViewPager2.class.getDeclaredField("mRecyclerView");
        declaredField.setAccessible(true);
        Object obj = declaredField.get(vp);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
        RecyclerView recyclerView = (RecyclerView) obj;
        this.recyclerView = recyclerView;
        recyclerView.getLayoutManager();
        Field declaredField2 = ViewPager2.class.getDeclaredField("mAccessibilityProvider");
        declaredField2.setAccessible(true);
        Object obj2 = declaredField2.get(vp);
        this.mAccessibilityProvider = obj2;
        Method declaredMethod = obj2.getClass().getDeclaredMethod("onSetNewCurrentItem", new Class[0]);
        this.onSetNewCurrentItemMethod = declaredMethod;
        declaredMethod.setAccessible(true);
        Field declaredField3 = ViewPager2.class.getDeclaredField("mScrollEventAdapter");
        declaredField3.setAccessible(true);
        Object obj3 = declaredField3.get(vp);
        this.mScrollEventAdapter = obj3;
        Method declaredMethod2 = obj3.getClass().getDeclaredMethod("getRelativeScrollPosition", new Class[0]);
        this.getRelativeScrollPositionMethod = declaredMethod2;
        declaredMethod2.setAccessible(true);
        Method declaredMethod3 = obj3.getClass().getDeclaredMethod("notifyProgrammaticScroll", Integer.TYPE, Boolean.TYPE);
        this.notifyProgrammaticScrollMethod = declaredMethod3;
        declaredMethod3.setAccessible(true);
    }

    private final RecyclerView.SmoothScroller getSlowLinearSmoothScroller(Context context) {
        return new a(context);
    }

    private final void replaceDecelerateInterpolator(RecyclerView.SmoothScroller linearSmoothScroller) throws IllegalAccessException, NoSuchFieldException {
        Field declaredField = LinearSmoothScroller.class.getDeclaredField("mDecelerateInterpolator");
        declaredField.setAccessible(true);
        declaredField.set(linearSmoothScroller, new b());
    }

    private final void smoothScrollToPosition(int item, Context context, RecyclerView.LayoutManager layoutManager) throws IllegalAccessException, NoSuchFieldException {
        RecyclerView.SmoothScroller slowLinearSmoothScroller = getSlowLinearSmoothScroller(context);
        replaceDecelerateInterpolator(slowLinearSmoothScroller);
        slowLinearSmoothScroller.setTargetPosition(item);
        if (layoutManager != null) {
            layoutManager.startSmoothScroll(slowLinearSmoothScroller);
        }
    }

    public final long getDuration() {
        return this.duration;
    }

    public final void setCurrentItem(int item) throws IllegalAccessException, NoSuchFieldException, InvocationTargetException {
        RecyclerView.Adapter adapter = this.vp.getAdapter();
        Intrinsics.checkNotNull(adapter, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.Adapter<*>");
        if (adapter.getItemCount() <= 0) {
            return;
        }
        int iCoerceAtMost = RangesKt___RangesKt.coerceAtMost(RangesKt___RangesKt.coerceAtLeast(item, 0), adapter.getItemCount() - 1);
        if ((iCoerceAtMost == this.vp.getCurrentItem() && this.vp.getScrollState() == 0) || iCoerceAtMost == this.vp.getCurrentItem()) {
            return;
        }
        this.vp.setCurrentItem(iCoerceAtMost);
        this.onSetNewCurrentItemMethod.invoke(this.mAccessibilityProvider, new Object[0]);
        this.notifyProgrammaticScrollMethod.invoke(this.mScrollEventAdapter, Integer.valueOf(iCoerceAtMost), Boolean.TRUE);
        Context context = this.vp.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        smoothScrollToPosition(iCoerceAtMost, context, this.recyclerView.getLayoutManager());
    }

    public final void setDuration(long j10) {
        this.duration = j10;
    }
}
