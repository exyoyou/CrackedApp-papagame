package com.join.kotlin.module.hmcloud.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.haima.hmcp.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0001=B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\b\u0010'\u001a\u00020(H\u0002J\b\u0010)\u001a\u00020(H\u0002J\b\u0010*\u001a\u00020(H\u0002J\u0010\u0010+\u001a\u00020(2\u0006\u0010,\u001a\u00020-H\u0002J\b\u0010.\u001a\u00020(H\u0002J\u0010\u0010/\u001a\u00020(2\u0006\u00100\u001a\u00020\fH\u0016J(\u00101\u001a\u00020(2\u0006\u00100\u001a\u00020\f2\u0006\u00102\u001a\u00020\b2\u0006\u00103\u001a\u00020\b2\u0006\u00104\u001a\u00020\bH\u0016J\u0010\u00105\u001a\u00020(2\u0006\u00100\u001a\u00020\fH\u0016J\u0010\u00106\u001a\u00020\u00102\u0006\u00107\u001a\u000208H\u0016J\u0018\u0010<\u001a\u00020(2\u0006\u00103\u001a\u00020\b2\u0006\u00104\u001a\u00020\bH\u0002R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0018\u00010\u000eR\u00020\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u001e\u0010\u001fR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010!\u001a\u0004\b#\u0010\u001fR\u000e\u0010%\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u00109\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010!\u001a\u0004\b:\u0010\u001f¨\u0006>"}, d2 = {"Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;", "Landroid/view/SurfaceView;", "Landroid/view/SurfaceHolder$Callback;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "mSurfaceHolder", "Landroid/view/SurfaceHolder;", "mRenderThread", "Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;", "isRendering", "", "mBallRadius", "", "mBallX", "mBallY", "mSpeedX", "mSpeedY", "mPulseRadius", "mPulseDirection", "mColorChangeCounter", "rainbowColors", "", "mBallPaint", "Landroid/graphics/Paint;", "getMBallPaint", "()Landroid/graphics/Paint;", "mBallPaint$delegate", "Lkotlin/Lazy;", "mDecorPaint", "getMDecorPaint", "mDecorPaint$delegate", "mSurfaceWidth", "mSurfaceHeight", "drawOneFrame", "", "updatePulsingEffect", "updateBallColor", "drawDecorations", "canvas", "Landroid/graphics/Canvas;", "updateBallPosition", "surfaceCreated", "holder", "surfaceChanged", "format", "width", "height", "surfaceDestroyed", "onTouchEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "mBackgroundPaint", "getMBackgroundPaint", "mBackgroundPaint$delegate", "createBackgroundGradient", "RenderThread", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAnimateSurfaceView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimateSurfaceView.kt\ncom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,286:1\n1#2:287\n*E\n"})
public final class AnimateSurfaceView extends SurfaceView implements SurfaceHolder.Callback {
    private boolean isRendering;

    /* JADX INFO: renamed from: mBackgroundPaint$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mBackgroundPaint;

    /* JADX INFO: renamed from: mBallPaint$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mBallPaint;
    private final float mBallRadius;
    private float mBallX;
    private float mBallY;
    private int mColorChangeCounter;

    /* JADX INFO: renamed from: mDecorPaint$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mDecorPaint;
    private float mPulseDirection;
    private float mPulseRadius;

    @Nullable
    private RenderThread mRenderThread;
    private float mSpeedX;
    private float mSpeedY;
    private int mSurfaceHeight;
    private SurfaceHolder mSurfaceHolder;
    private int mSurfaceWidth;

    @NotNull
    private final int[] rainbowColors;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView$RenderThread;", "Ljava/lang/Thread;", "<init>", "(Lcom/join/kotlin/module/hmcloud/ui/view/AnimateSurfaceView;)V", "run", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    private final class RenderThread extends Thread {
        public RenderThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            super.run();
            while (AnimateSurfaceView.this.isRendering) {
                AnimateSurfaceView.this.drawOneFrame();
                try {
                    Thread.sleep(16L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AnimateSurfaceView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void createBackgroundGradient(int width, int height) {
        getMBackgroundPaint().setShader(new LinearGradient(0.0f, 0.0f, width, height, Color.parseColor("#F5F5F5"), Color.parseColor("#E0E0E0"), Shader.TileMode.CLAMP));
    }

    private final void drawDecorations(Canvas canvas) {
        getMDecorPaint().setColor(Color.argb(100, (getMBallPaint().getColor() >> 16) & 255, (getMBallPaint().getColor() >> 8) & 255, getMBallPaint().getColor() & 255));
        canvas.drawCircle(this.mBallX, this.mBallY - 60.0f, 5.0f, getMDecorPaint());
        canvas.drawCircle(this.mBallX + 40.0f, this.mBallY, 5.0f, getMDecorPaint());
        canvas.drawCircle(this.mBallX, this.mBallY + 60.0f, 5.0f, getMDecorPaint());
        canvas.drawCircle(this.mBallX - 40.0f, this.mBallY, 5.0f, getMDecorPaint());
        float f10 = this.mBallX;
        double d10 = (this.mBallY + f10) / 50.0f;
        float fCos = f10 + (((float) Math.cos(d10)) * 80.0f);
        float fSin = this.mBallY + (((float) Math.sin(d10)) * 80.0f);
        Paint mDecorPaint = getMDecorPaint();
        int[] iArr = this.rainbowColors;
        mDecorPaint.setColor(iArr[(this.mColorChangeCounter + 1) % iArr.length]);
        canvas.drawCircle(fCos, fSin, 15.0f, getMDecorPaint());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drawOneFrame() throws Throwable {
        Canvas canvas;
        SurfaceHolder surfaceHolder = null;
        try {
            SurfaceHolder surfaceHolder2 = this.mSurfaceHolder;
            if (surfaceHolder2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mSurfaceHolder");
                surfaceHolder2 = null;
            }
            Canvas canvasLockCanvas = surfaceHolder2.lockCanvas();
            if (canvasLockCanvas == null) {
                if (canvasLockCanvas != null) {
                    SurfaceHolder surfaceHolder3 = this.mSurfaceHolder;
                    if (surfaceHolder3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mSurfaceHolder");
                    } else {
                        surfaceHolder = surfaceHolder3;
                    }
                    surfaceHolder.unlockCanvasAndPost(canvasLockCanvas);
                    return;
                }
                return;
            }
            try {
                canvasLockCanvas.drawRect(0.0f, 0.0f, this.mSurfaceWidth, this.mSurfaceHeight, getMBackgroundPaint());
                updateBallPosition();
                updatePulsingEffect();
                updateBallColor();
                drawDecorations(canvasLockCanvas);
                canvasLockCanvas.drawCircle(this.mBallX, this.mBallY, this.mBallRadius + this.mPulseRadius, getMBallPaint());
                SurfaceHolder surfaceHolder4 = this.mSurfaceHolder;
                if (surfaceHolder4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mSurfaceHolder");
                } else {
                    surfaceHolder = surfaceHolder4;
                }
                surfaceHolder.unlockCanvasAndPost(canvasLockCanvas);
            } catch (Throwable th) {
                canvas = canvasLockCanvas;
                th = th;
                if (canvas != null) {
                    SurfaceHolder surfaceHolder5 = this.mSurfaceHolder;
                    if (surfaceHolder5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mSurfaceHolder");
                    } else {
                        surfaceHolder = surfaceHolder5;
                    }
                    surfaceHolder.unlockCanvasAndPost(canvas);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            canvas = null;
        }
    }

    private final Paint getMBackgroundPaint() {
        return (Paint) this.mBackgroundPaint.getValue();
    }

    private final Paint getMBallPaint() {
        return (Paint) this.mBallPaint.getValue();
    }

    private final Paint getMDecorPaint() {
        return (Paint) this.mDecorPaint.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Paint mBackgroundPaint_delegate$lambda$8() {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        return paint;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Paint mBallPaint_delegate$lambda$1() {
        Paint paint = new Paint();
        paint.setColor(Color.parseColor("#FF4081"));
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        return paint;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Paint mDecorPaint_delegate$lambda$3() {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        return paint;
    }

    private final void updateBallColor() {
        int i10 = (this.mColorChangeCounter + 1) % 10;
        this.mColorChangeCounter = i10;
        if (i10 == 0) {
            float f10 = this.mBallX;
            int[] iArr = this.rainbowColors;
            getMBallPaint().setColor(this.rainbowColors[(i10 + ((int) (f10 % iArr.length))) % iArr.length]);
        }
    }

    private final void updateBallPosition() {
        float f10 = this.mBallX;
        float f11 = this.mSpeedX;
        float f12 = f10 + f11;
        this.mBallX = f12;
        float f13 = this.mBallY;
        float f14 = this.mSpeedY;
        float f15 = f13 + f14;
        this.mBallY = f15;
        float f16 = this.mBallRadius;
        if (f12 - f16 <= 0.0f) {
            this.mBallX = f16;
            this.mSpeedX = -f11;
        } else {
            float f17 = f12 + f16;
            int i10 = this.mSurfaceWidth;
            if (f17 >= i10) {
                this.mBallX = i10 - f16;
                this.mSpeedX = -f11;
            }
        }
        if (f15 - f16 <= 0.0f) {
            this.mBallY = f16;
            this.mSpeedY = -f14;
            return;
        }
        float f18 = f15 + f16;
        int i11 = this.mSurfaceHeight;
        if (f18 >= i11) {
            this.mBallY = i11 - f16;
            this.mSpeedY = -f14;
        }
    }

    private final void updatePulsingEffect() {
        float f10 = this.mPulseRadius;
        float f11 = this.mPulseDirection;
        float f12 = f10 + (0.5f * f11);
        this.mPulseRadius = f12;
        if (f12 > 10.0f || f12 < 0.0f) {
            this.mPulseDirection = f11 * (-1.0f);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getAction() != 0) {
            return super.onTouchEvent(event);
        }
        this.mBallX = event.getX();
        this.mBallY = event.getY();
        double d10 = 255;
        getMBallPaint().setColor(Color.rgb((int) (Math.random() * d10), (int) (Math.random() * d10), (int) (Math.random() * d10)));
        return true;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(@NotNull SurfaceHolder holder, int format, int width, int height) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        this.mSurfaceWidth = width;
        this.mSurfaceHeight = height;
        this.mBallX = width / 2.0f;
        this.mBallY = height / 2.0f;
        createBackgroundGradient(width, height);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(@NotNull SurfaceHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        this.isRendering = true;
        RenderThread renderThread = new RenderThread();
        renderThread.start();
        this.mRenderThread = renderThread;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(@NotNull SurfaceHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        this.isRendering = false;
        RenderThread renderThread = this.mRenderThread;
        if (renderThread != null) {
            try {
                renderThread.join(500L);
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
            this.mRenderThread = null;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AnimateSurfaceView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ AnimateSurfaceView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AnimateSurfaceView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.mBallRadius = 50.0f;
        this.mBallX = 50.0f + 100.0f;
        this.mBallY = 50.0f + 100.0f;
        this.mSpeedX = 8.0f;
        this.mSpeedY = 6.0f;
        this.mPulseDirection = 1.0f;
        this.rainbowColors = new int[]{SupportMenu.CATEGORY_MASK, -16776961, Constants.LEVEL_SDK, InputDeviceCompat.SOURCE_ANY, -65281, -16711681, Color.parseColor("#FF9500"), Color.parseColor("#9C27B0"), Color.parseColor("#4CAF50")};
        this.mBallPaint = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.module.hmcloud.ui.view.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AnimateSurfaceView.mBallPaint_delegate$lambda$1();
            }
        });
        this.mDecorPaint = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.module.hmcloud.ui.view.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AnimateSurfaceView.mDecorPaint_delegate$lambda$3();
            }
        });
        SurfaceHolder holder = getHolder();
        this.mSurfaceHolder = holder;
        if (holder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSurfaceHolder");
            holder = null;
        }
        holder.addCallback(this);
        this.mBackgroundPaint = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.module.hmcloud.ui.view.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AnimateSurfaceView.mBackgroundPaint_delegate$lambda$8();
            }
        });
    }
}
