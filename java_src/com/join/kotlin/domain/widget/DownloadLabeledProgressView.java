package com.join.kotlin.domain.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.posting.PostingActivity_;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0019\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u001a\u001a\u00020\u001bH\u0002J\b\u0010\u001c\u001a\u00020\u001bH\u0002J(\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u0007H\u0014J\u0006\u0010\"\u001a\u00020\u001bJ\u0018\u0010#\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u0007H\u0002J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u0007H\u0002J\b\u0010&\u001a\u00020\u001bH\u0002J\u000e\u0010'\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u0007J\u000e\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u0007J\u000e\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020\u0007J\u000e\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\u0014J\u0006\u0010.\u001a\u00020\u0014J\u000e\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u0007J\u000e\u00101\u001a\u00020\u001b2\u0006\u00102\u001a\u00020\u000fJ\u000e\u00103\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/join/kotlin/domain/widget/DownloadLabeledProgressView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "progressBar", "Landroid/widget/ProgressBar;", PostingActivity_.LABEL_EXTRA, "Landroid/widget/TextView;", "cornerRadiusPx", "", "fixedCornerRadiusPx", "Ljava/lang/Integer;", "lastCapsuleRadiusPx", "progressBarVisible", "", "progressPercent", "useDrawableSolid", "solidDrawableResId", "solidColorDrawable", "Landroid/graphics/drawable/GradientDrawable;", "setDefaultSolid", "", "setClipOutlineCompat", "onSizeChanged", IAdInterListener.AdReqParam.WIDTH, "h", "oldw", "oldh", "setCapsuleCornerRadius", "updateCapsuleCornerRadiusFromSize", "applyCornerRadiusPx", "radiusPx", "applyRootSolidBackground", "setCornerRadiusPx", "setSolidColor", TypedValues.Custom.S_COLOR, "setSolidBackgroundResource", "resId", "setProgressBarVisible", "visible", "isProgressBarVisible", "setProgressPercent", "percent", "setLabelTextSizePixel", "px", "setLabelTextColor", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DownloadLabeledProgressView extends FrameLayout {
    private float cornerRadiusPx;

    @Nullable
    private Integer fixedCornerRadiusPx;

    @JvmField
    @NotNull
    public final TextView label;
    private int lastCapsuleRadiusPx;

    @NotNull
    private final ProgressBar progressBar;
    private boolean progressBarVisible;
    private int progressPercent;

    @NotNull
    private final GradientDrawable solidColorDrawable;
    private int solidDrawableResId;
    private boolean useDrawableSolid;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public DownloadLabeledProgressView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void applyCornerRadiusPx(int radiusPx) {
        float f10 = radiusPx;
        this.cornerRadiusPx = f10;
        this.solidColorDrawable.setCornerRadius(f10);
        if (this.useDrawableSolid) {
            return;
        }
        setBackground(this.solidColorDrawable);
    }

    private final void applyRootSolidBackground() {
        int i10;
        if (this.useDrawableSolid && (i10 = this.solidDrawableResId) != 0) {
            setBackgroundResource(i10);
        } else {
            this.solidColorDrawable.setCornerRadius(this.cornerRadiusPx);
            setBackground(this.solidColorDrawable);
        }
    }

    private final void setClipOutlineCompat() {
        int width = getWidth();
        int height = getHeight();
        if (width <= 0 || height <= 0) {
            setClipToOutline(false);
            setOutlineProvider(null);
        } else {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.join.kotlin.domain.widget.DownloadLabeledProgressView.setClipOutlineCompat.1
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    Intrinsics.checkNotNullParameter(outline, "outline");
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), DownloadLabeledProgressView.this.cornerRadiusPx);
                }
            });
            setClipToOutline(true);
        }
    }

    private final void setDefaultSolid() {
        setSolidColor(ContextCompat.getColor(getContext(), R.color.dl_solid_default));
    }

    private final void updateCapsuleCornerRadiusFromSize(int w10, int h10) {
        int iMin;
        if (this.fixedCornerRadiusPx == null && w10 > 0 && h10 > 0 && (iMin = Math.min(w10, h10) / 2) != this.lastCapsuleRadiusPx) {
            this.lastCapsuleRadiusPx = iMin;
            applyCornerRadiusPx(iMin);
        }
    }

    /* JADX INFO: renamed from: isProgressBarVisible, reason: from getter */
    public final boolean getProgressBarVisible() {
        return this.progressBarVisible;
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        updateCapsuleCornerRadiusFromSize(w10, h10);
        setClipOutlineCompat();
    }

    public final void setCapsuleCornerRadius() {
        this.fixedCornerRadiusPx = null;
        this.lastCapsuleRadiusPx = -1;
        updateCapsuleCornerRadiusFromSize(getWidth(), getHeight());
    }

    public final void setCornerRadiusPx(int radiusPx) {
        if (radiusPx < 0) {
            return;
        }
        this.fixedCornerRadiusPx = Integer.valueOf(radiusPx);
        this.lastCapsuleRadiusPx = -1;
        applyCornerRadiusPx(radiusPx);
        setClipOutlineCompat();
    }

    public final void setLabelTextColor(int color) {
        this.label.setTextColor(color);
    }

    public final void setLabelTextSizePixel(float px) {
        this.label.setTextSize(0, px);
    }

    public final void setProgressBarVisible(boolean visible) {
        if (this.progressBarVisible == visible) {
            if (visible) {
                this.progressBar.setProgress(this.progressPercent);
            }
        } else {
            this.progressBarVisible = visible;
            this.progressBar.setVisibility(visible ? 0 : 8);
            this.progressBar.setProgress(this.progressPercent);
        }
    }

    public final void setProgressPercent(int percent) {
        int iMax = Math.max(0, Math.min(100, percent));
        this.progressPercent = iMax;
        if (this.progressBarVisible) {
            this.progressBar.setProgress(iMax);
        }
    }

    public final void setSolidBackgroundResource(int resId) {
        if (resId == 0) {
            return;
        }
        this.useDrawableSolid = true;
        this.solidDrawableResId = resId;
        applyRootSolidBackground();
    }

    public final void setSolidColor(int color) {
        this.useDrawableSolid = false;
        this.solidDrawableResId = 0;
        this.solidColorDrawable.setColor(color);
        this.solidColorDrawable.setCornerRadius(this.cornerRadiusPx);
        applyRootSolidBackground();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public DownloadLabeledProgressView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ DownloadLabeledProgressView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public DownloadLabeledProgressView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.lastCapsuleRadiusPx = -1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        this.solidColorDrawable = gradientDrawable;
        ProgressBar progressBar = new ProgressBar(context, null, android.R.attr.progressBarStyleHorizontal);
        progressBar.setMax(100);
        progressBar.setIndeterminate(false);
        progressBar.setProgress(0);
        progressBar.setClickable(false);
        progressBar.setFocusable(false);
        progressBar.setPadding(0, 0, 0, 0);
        progressBar.setMinimumHeight(0);
        Drawable drawable = ContextCompat.getDrawable(context, R.drawable.dlp_horizontal_progress);
        progressBar.setProgressDrawable(drawable != null ? drawable.mutate() : null);
        this.progressBar = progressBar;
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setClickable(false);
        textView.setFocusable(false);
        this.label = textView;
        addView(progressBar, new FrameLayout.LayoutParams(-1, -1));
        addView(textView, new FrameLayout.LayoutParams(-1, -1));
        progressBar.setVisibility(8);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DownloadLabeledProgressView, i10, 0);
            Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            try {
                this.cornerRadiusPx = typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
                textView.setTextColor(typedArrayObtainStyledAttributes.getColor(1, ContextCompat.getColor(context, R.color.white)));
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            this.cornerRadiusPx = 0.0f;
            textView.setTextColor(ContextCompat.getColor(context, R.color.white));
        }
        setDefaultSolid();
        setClipOutlineCompat();
    }
}
