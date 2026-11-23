package com.baidu.mobads.sdk.internal.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
final class ScrollEventAdapter extends RecyclerView.OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f7976a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f7977b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f7978c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f7979d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f7980e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f7981f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ViewPager2.OnPageChangeCallback f7982g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final ViewPager2 f7983h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final RecyclerView f7984i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    private final LinearLayoutManager f7985j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f7986k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f7987l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ScrollEventValues f7988m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f7989n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f7990o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f7991p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f7992q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f7993r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f7994s;

    @Retention(RetentionPolicy.SOURCE)
    private @interface AdapterState {
    }

    private static final class ScrollEventValues {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f7995a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f7996b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f7997c;

        ScrollEventValues() {
        }

        void a() {
            this.f7995a = -1;
            this.f7996b = 0.0f;
            this.f7997c = 0;
        }
    }

    ScrollEventAdapter(@NonNull ViewPager2 viewPager2) {
        this.f7983h = viewPager2;
        RecyclerView recyclerView = viewPager2.f8007j;
        this.f7984i = recyclerView;
        this.f7985j = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.f7988m = new ScrollEventValues();
        i();
    }

    private void a(boolean z10) {
        this.f7994s = z10;
        this.f7986k = z10 ? 4 : 1;
        int i10 = this.f7990o;
        if (i10 != -1) {
            this.f7989n = i10;
            this.f7990o = -1;
        } else if (this.f7989n == -1) {
            this.f7989n = l();
        }
        a(1);
    }

    private void i() {
        this.f7986k = 0;
        this.f7987l = 0;
        this.f7988m.a();
        this.f7989n = -1;
        this.f7990o = -1;
        this.f7991p = false;
        this.f7992q = false;
        this.f7994s = false;
        this.f7993r = false;
    }

    private void j() {
        int top;
        ScrollEventValues scrollEventValues = this.f7988m;
        int iFindFirstVisibleItemPosition = this.f7985j.findFirstVisibleItemPosition();
        scrollEventValues.f7995a = iFindFirstVisibleItemPosition;
        if (iFindFirstVisibleItemPosition == -1) {
            scrollEventValues.a();
            return;
        }
        View viewFindViewByPosition = this.f7985j.findViewByPosition(iFindFirstVisibleItemPosition);
        if (viewFindViewByPosition == null) {
            scrollEventValues.a();
            return;
        }
        int leftDecorationWidth = this.f7985j.getLeftDecorationWidth(viewFindViewByPosition);
        int rightDecorationWidth = this.f7985j.getRightDecorationWidth(viewFindViewByPosition);
        int topDecorationHeight = this.f7985j.getTopDecorationHeight(viewFindViewByPosition);
        int bottomDecorationHeight = this.f7985j.getBottomDecorationHeight(viewFindViewByPosition);
        ViewGroup.LayoutParams layoutParams = viewFindViewByPosition.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            leftDecorationWidth += marginLayoutParams.leftMargin;
            rightDecorationWidth += marginLayoutParams.rightMargin;
            topDecorationHeight += marginLayoutParams.topMargin;
            bottomDecorationHeight += marginLayoutParams.bottomMargin;
        }
        int height = viewFindViewByPosition.getHeight() + topDecorationHeight + bottomDecorationHeight;
        int width = viewFindViewByPosition.getWidth() + leftDecorationWidth + rightDecorationWidth;
        if (this.f7985j.getOrientation() == 0) {
            top = (viewFindViewByPosition.getLeft() - leftDecorationWidth) - this.f7984i.getPaddingLeft();
            if (this.f7983h.c()) {
                top = -top;
            }
            height = width;
        } else {
            top = (viewFindViewByPosition.getTop() - topDecorationHeight) - this.f7984i.getPaddingTop();
        }
        int i10 = -top;
        scrollEventValues.f7997c = i10;
        if (i10 >= 0) {
            scrollEventValues.f7996b = height == 0 ? 0.0f : i10 / height;
        } else {
            if (!new AnimateLayoutChangeDetector(this.f7985j).a()) {
                throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(scrollEventValues.f7997c)));
            }
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        }
    }

    private boolean k() {
        int i10 = this.f7986k;
        return i10 == 1 || i10 == 4;
    }

    private int l() {
        return this.f7985j.findFirstVisibleItemPosition();
    }

    void b() {
        this.f7986k = 4;
        a(true);
    }

    void c() {
        if (!f() || this.f7994s) {
            this.f7994s = false;
            j();
            ScrollEventValues scrollEventValues = this.f7988m;
            if (scrollEventValues.f7997c != 0) {
                a(2);
                return;
            }
            int i10 = scrollEventValues.f7995a;
            if (i10 != this.f7989n) {
                b(i10);
            }
            a(0);
            i();
        }
    }

    int d() {
        return this.f7987l;
    }

    boolean e() {
        return this.f7987l == 0;
    }

    boolean f() {
        return this.f7987l == 1;
    }

    boolean g() {
        return this.f7994s;
    }

    double h() {
        j();
        ScrollEventValues scrollEventValues = this.f7988m;
        return ((double) scrollEventValues.f7995a) + ((double) scrollEventValues.f7996b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i10) {
        boolean z10 = true;
        if (!(this.f7986k == 1 && this.f7987l == 1) && i10 == 1) {
            a(false);
            return;
        }
        if (k() && i10 == 2) {
            if (this.f7992q) {
                a(2);
                this.f7991p = true;
                return;
            }
            return;
        }
        if (k() && i10 == 0) {
            j();
            if (this.f7992q) {
                ScrollEventValues scrollEventValues = this.f7988m;
                if (scrollEventValues.f7997c == 0) {
                    int i11 = this.f7989n;
                    int i12 = scrollEventValues.f7995a;
                    if (i11 != i12) {
                        b(i12);
                    }
                } else {
                    z10 = false;
                }
            } else {
                int i13 = this.f7988m.f7995a;
                if (i13 != -1) {
                    a(i13, 0.0f, 0);
                }
            }
            if (z10) {
                a(0);
                i();
            }
        }
        if (this.f7986k == 2 && i10 == 0 && this.f7993r) {
            j();
            ScrollEventValues scrollEventValues2 = this.f7988m;
            if (scrollEventValues2.f7997c == 0) {
                int i14 = this.f7990o;
                int i15 = scrollEventValues2.f7995a;
                if (i14 != i15) {
                    if (i15 == -1) {
                        i15 = 0;
                    }
                    b(i15);
                }
                a(0);
                i();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0022  */
    /* JADX WARN: Code duplicated, block: B:19:0x002f  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(@NonNull RecyclerView recyclerView, int i10, int i11) {
        boolean z10;
        int i12;
        this.f7992q = true;
        j();
        if (this.f7991p) {
            this.f7991p = false;
            if (i11 <= 0) {
                if (i11 == 0) {
                    z10 = (i10 < 0) == this.f7983h.c();
                }
            }
            if (z10) {
                ScrollEventValues scrollEventValues = this.f7988m;
                if (scrollEventValues.f7997c != 0) {
                    i12 = scrollEventValues.f7995a + 1;
                } else {
                    i12 = this.f7988m.f7995a;
                }
            } else {
                i12 = this.f7988m.f7995a;
            }
            this.f7990o = i12;
            if (this.f7989n != i12) {
                b(i12);
            }
        } else if (this.f7986k == 0) {
            int i13 = this.f7988m.f7995a;
            if (i13 == -1) {
                i13 = 0;
            }
            b(i13);
        }
        ScrollEventValues scrollEventValues2 = this.f7988m;
        int i14 = scrollEventValues2.f7995a;
        if (i14 == -1) {
            i14 = 0;
        }
        a(i14, scrollEventValues2.f7996b, scrollEventValues2.f7997c);
        ScrollEventValues scrollEventValues3 = this.f7988m;
        int i15 = scrollEventValues3.f7995a;
        int i16 = this.f7990o;
        if ((i15 == i16 || i16 == -1) && scrollEventValues3.f7997c == 0 && this.f7987l != 1) {
            a(0);
            i();
        }
    }

    private void b(int i10) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f7982g;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(i10);
        }
    }

    void a() {
        this.f7993r = true;
    }

    void a(int i10, boolean z10) {
        this.f7986k = z10 ? 2 : 3;
        this.f7994s = false;
        boolean z11 = this.f7990o != i10;
        this.f7990o = i10;
        a(2);
        if (z11) {
            b(i10);
        }
    }

    void a(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f7982g = onPageChangeCallback;
    }

    private void a(int i10) {
        if ((this.f7986k == 3 && this.f7987l == 0) || this.f7987l == i10) {
            return;
        }
        this.f7987l = i10;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f7982g;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(i10);
        }
    }

    private void a(int i10, float f10, int i11) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f7982g;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrolled(i10, f10, i11);
        }
    }
}
