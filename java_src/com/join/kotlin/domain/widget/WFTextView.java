package com.join.kotlin.domain.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.android.app.mgsim.wufun.R;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016R$\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R$\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R$\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010R$\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/join/kotlin/domain/widget/WFTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", HmInputMappingContent.FIELD_VALUE, "", "cornerRadius", "getCornerRadius", "()F", "setCornerRadius", "(F)V", "cornerTopLeft", "getCornerTopLeft", "setCornerTopLeft", "cornerTopRight", "getCornerTopRight", "setCornerTopRight", "cornerBottomRight", "getCornerBottomRight", "setCornerBottomRight", "cornerBottomLeft", "getCornerBottomLeft", "setCornerBottomLeft", "clipPath", "Landroid/graphics/Path;", "rectF", "Landroid/graphics/RectF;", MediationConstant.RIT_TYPE_DRAW, "", "canvas", "Landroid/graphics/Canvas;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WFTextView extends AppCompatTextView {

    @NotNull
    private final Path clipPath;
    private float cornerBottomLeft;
    private float cornerBottomRight;
    private float cornerRadius;
    private float cornerTopLeft;
    private float cornerTopRight;

    @NotNull
    private final RectF rectF;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WFTextView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
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
        float f10 = this.cornerRadius;
        if (f10 > 0.0f) {
            this.clipPath.addRoundRect(this.rectF, f10, f10, Path.Direction.CCW);
        } else {
            float f11 = this.cornerTopLeft;
            float f12 = this.cornerTopRight;
            float f13 = this.cornerBottomRight;
            float f14 = this.cornerBottomLeft;
            this.clipPath.addRoundRect(this.rectF, new float[]{f11, f11, f12, f12, f13, f13, f14, f14}, Path.Direction.CCW);
        }
        int iSave = canvas.save();
        canvas.clipPath(this.clipPath);
        try {
            super.draw(canvas);
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    public final float getCornerBottomLeft() {
        return this.cornerBottomLeft;
    }

    public final float getCornerBottomRight() {
        return this.cornerBottomRight;
    }

    public final float getCornerRadius() {
        return this.cornerRadius;
    }

    public final float getCornerTopLeft() {
        return this.cornerTopLeft;
    }

    public final float getCornerTopRight() {
        return this.cornerTopRight;
    }

    public final void setCornerBottomLeft(float f10) {
        this.cornerBottomLeft = f10;
        invalidate();
    }

    public final void setCornerBottomRight(float f10) {
        this.cornerBottomRight = f10;
        invalidate();
    }

    public final void setCornerRadius(float f10) {
        this.cornerRadius = f10;
        invalidate();
    }

    public final void setCornerTopLeft(float f10) {
        this.cornerTopLeft = f10;
        invalidate();
    }

    public final void setCornerTopRight(float f10) {
        this.cornerTopRight = f10;
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WFTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ WFTextView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public WFTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.clipPath = new Path();
        this.rectF = new RectF();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WFTextView);
            Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            setCornerRadius(typedArrayObtainStyledAttributes.getDimension(4, 0.0f));
            setCornerTopLeft(typedArrayObtainStyledAttributes.getDimension(2, 0.0f));
            setCornerTopRight(typedArrayObtainStyledAttributes.getDimension(3, 0.0f));
            setCornerBottomRight(typedArrayObtainStyledAttributes.getDimension(1, 0.0f));
            setCornerBottomLeft(typedArrayObtainStyledAttributes.getDimension(0, 0.0f));
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
