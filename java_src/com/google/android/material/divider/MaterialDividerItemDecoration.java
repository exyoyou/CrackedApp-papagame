package com.google.android.material.divider;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.p0;
import com.google.android.material.resources.d;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialDividerItemDecoration extends RecyclerView.ItemDecoration {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f30594m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f30595n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f30596o = R.style.Widget_MaterialComponents_MaterialDivider;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private Drawable f30597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f30598f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ColorInt
    private int f30599g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f30600h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f30601i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f30602j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f30603k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Rect f30604l;

    public MaterialDividerItemDecoration(@NonNull Context context, int i10) {
        this(context, null, i10);
    }

    private void a(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        int height;
        int paddingTop;
        int i10;
        int i11;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            paddingTop = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), paddingTop, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            paddingTop = 0;
        }
        int i12 = paddingTop + this.f30601i;
        int i13 = height - this.f30602j;
        boolean zS = p0.s(recyclerView);
        int childCount = recyclerView.getChildCount();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = recyclerView.getChildAt(i14);
            if (s(recyclerView, childAt)) {
                recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.f30604l);
                int iRound = Math.round(childAt.getTranslationX());
                if (zS) {
                    i11 = this.f30604l.left + iRound;
                    i10 = this.f30598f + i11;
                } else {
                    i10 = iRound + this.f30604l.right;
                    i11 = i10 - this.f30598f;
                }
                this.f30597e.setBounds(i11, i12, i10, i13);
                this.f30597e.setAlpha(Math.round(childAt.getAlpha() * 255.0f));
                this.f30597e.draw(canvas);
            }
        }
        canvas.restore();
    }

    private void b(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        int width;
        int paddingLeft;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            paddingLeft = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(paddingLeft, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            paddingLeft = 0;
        }
        boolean zS = p0.s(recyclerView);
        int i10 = paddingLeft + (zS ? this.f30602j : this.f30601i);
        int i11 = width - (zS ? this.f30601i : this.f30602j);
        int childCount = recyclerView.getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = recyclerView.getChildAt(i12);
            if (s(recyclerView, childAt)) {
                recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.f30604l);
                int iRound = this.f30604l.bottom + Math.round(childAt.getTranslationY());
                this.f30597e.setBounds(i10, iRound - this.f30598f, i11, iRound);
                this.f30597e.setAlpha(Math.round(childAt.getAlpha() * 255.0f));
                this.f30597e.draw(canvas);
            }
        }
        canvas.restore();
    }

    private boolean s(@NonNull RecyclerView recyclerView, @NonNull View view) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        boolean z10 = adapter != null && childAdapterPosition == adapter.getItemCount() - 1;
        if (childAdapterPosition != -1) {
            return (!z10 || this.f30603k) && r(childAdapterPosition, adapter);
        }
        return false;
    }

    @ColorInt
    public int c() {
        return this.f30599g;
    }

    @Px
    public int d() {
        return this.f30602j;
    }

    @Px
    public int e() {
        return this.f30601i;
    }

    @Px
    public int f() {
        return this.f30598f;
    }

    public int g() {
        return this.f30600h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        rect.set(0, 0, 0, 0);
        if (s(recyclerView, view)) {
            if (this.f30600h == 1) {
                rect.bottom = this.f30598f;
            } else if (p0.s(recyclerView)) {
                rect.left = this.f30598f;
            } else {
                rect.right = this.f30598f;
            }
        }
    }

    public boolean h() {
        return this.f30603k;
    }

    public void i(@ColorInt int i10) {
        this.f30599g = i10;
        Drawable drawableWrap = DrawableCompat.wrap(this.f30597e);
        this.f30597e = drawableWrap;
        DrawableCompat.setTint(drawableWrap, i10);
    }

    public void j(@NonNull Context context, @ColorRes int i10) {
        i(ContextCompat.getColor(context, i10));
    }

    public void k(@Px int i10) {
        this.f30602j = i10;
    }

    public void l(@NonNull Context context, @DimenRes int i10) {
        k(context.getResources().getDimensionPixelOffset(i10));
    }

    public void m(@Px int i10) {
        this.f30601i = i10;
    }

    public void n(@NonNull Context context, @DimenRes int i10) {
        m(context.getResources().getDimensionPixelOffset(i10));
    }

    public void o(@Px int i10) {
        this.f30598f = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        if (this.f30600h == 1) {
            b(canvas, recyclerView);
        } else {
            a(canvas, recyclerView);
        }
    }

    public void p(@NonNull Context context, @DimenRes int i10) {
        o(context.getResources().getDimensionPixelSize(i10));
    }

    public void q(boolean z10) {
        this.f30603k = z10;
    }

    protected boolean r(int i10, @Nullable RecyclerView.Adapter<?> adapter) {
        return true;
    }

    public void setOrientation(int i10) {
        if (i10 == 0 || i10 == 1) {
            this.f30600h = i10;
            return;
        }
        throw new IllegalArgumentException("Invalid orientation: " + i10 + ". It should be either HORIZONTAL or VERTICAL");
    }

    public MaterialDividerItemDecoration(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, R.attr.materialDividerStyle, i10);
    }

    public MaterialDividerItemDecoration(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        this.f30604l = new Rect();
        TypedArray typedArrayK = g0.k(context, attributeSet, R.styleable.MaterialDivider, i10, f30596o, new int[0]);
        this.f30599g = d.a(context, typedArrayK, R.styleable.MaterialDivider_dividerColor).getDefaultColor();
        this.f30598f = typedArrayK.getDimensionPixelSize(R.styleable.MaterialDivider_dividerThickness, context.getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.f30601i = typedArrayK.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetStart, 0);
        this.f30602j = typedArrayK.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetEnd, 0);
        this.f30603k = typedArrayK.getBoolean(R.styleable.MaterialDivider_lastItemDecorated, true);
        typedArrayK.recycle();
        this.f30597e = new ShapeDrawable();
        i(this.f30599g);
        setOrientation(i11);
    }
}
