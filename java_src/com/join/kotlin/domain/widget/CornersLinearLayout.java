package com.join.kotlin.domain.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.join.android.app.mgsim.wufun.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bB!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u000bJ\u0018\u0010 \u001a\u00020!2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010&\u001a\u00020!2\u0006\u0010'\u001a\u00020(H\u0016R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0014\"\u0004\b\u001c\u0010\u0016R\u001a\u0010\u001d\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0014\"\u0004\b\u001f\u0010\u0016R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/join/kotlin/domain/widget/CornersLinearLayout;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "corner", "", "getCorner", "()F", "setCorner", "(F)V", "conner_top_left", "getConner_top_left", "()I", "setConner_top_left", "(I)V", "conner_top_right", "getConner_top_right", "setConner_top_right", "conner_bottom_left", "getConner_bottom_left", "setConner_bottom_left", "conner_bottom_right", "getConner_bottom_right", "setConner_bottom_right", "init", "", "clipPath", "Landroid/graphics/Path;", "rectF", "Landroid/graphics/RectF;", MediationConstant.RIT_TYPE_DRAW, "canvas", "Landroid/graphics/Canvas;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CornersLinearLayout extends LinearLayout {

    @NotNull
    private final Path clipPath;
    private int conner_bottom_left;
    private int conner_bottom_right;
    private int conner_top_left;
    private int conner_top_right;
    private float corner;

    @NotNull
    private final RectF rectF;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CornersLinearLayout(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.clipPath = new Path();
        this.rectF = new RectF();
    }

    private final void init(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.CornersLinearLayout);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.corner = typedArrayObtainStyledAttributes.getDimension(4, 0.0f);
        this.conner_top_left = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.conner_top_right = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.conner_bottom_left = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.conner_bottom_right = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        int width = getWidth();
        int height = getHeight();
        if (width <= 0 || height <= 0) {
            super.draw(canvas);
            return;
        }
        this.rectF.set(0.0f, 0.0f, width, height);
        this.clipPath.reset();
        float f10 = this.corner;
        if (f10 > 0.0f) {
            this.clipPath.addRoundRect(this.rectF, f10, f10, Path.Direction.CCW);
        } else {
            int i10 = this.conner_top_left;
            int i11 = this.conner_top_right;
            int i12 = this.conner_bottom_right;
            int i13 = this.conner_bottom_left;
            this.clipPath.addRoundRect(this.rectF, new float[]{i10, i10, i11, i11, i12, i12, i13, i13}, Path.Direction.CCW);
        }
        int iSave = canvas.save();
        canvas.clipPath(this.clipPath);
        try {
            super.draw(canvas);
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    public final int getConner_bottom_left() {
        return this.conner_bottom_left;
    }

    public final int getConner_bottom_right() {
        return this.conner_bottom_right;
    }

    public final int getConner_top_left() {
        return this.conner_top_left;
    }

    public final int getConner_top_right() {
        return this.conner_top_right;
    }

    public final float getCorner() {
        return this.corner;
    }

    public final void setConner_bottom_left(int i10) {
        this.conner_bottom_left = i10;
    }

    public final void setConner_bottom_right(int i10) {
        this.conner_bottom_right = i10;
    }

    public final void setConner_top_left(int i10) {
        this.conner_top_left = i10;
    }

    public final void setConner_top_right(int i10) {
        this.conner_top_right = i10;
    }

    public final void setCorner(float f10) {
        this.corner = f10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CornersLinearLayout(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.clipPath = new Path();
        this.rectF = new RectF();
        init(context, attrs);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CornersLinearLayout(@NotNull Context context, @NotNull AttributeSet attrs, int i10) {
        super(context, attrs, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.clipPath = new Path();
        this.rectF = new RectF();
        init(context, attrs);
    }
}
