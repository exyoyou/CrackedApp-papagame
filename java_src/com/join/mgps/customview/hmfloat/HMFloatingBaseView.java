package com.join.mgps.customview.hmfloat;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u000bJ\b\u0010-\u001a\u00020.H\u0016J\b\u0010/\u001a\u00020.H\u0016J\u0012\u00100\u001a\u00020\r2\b\u00101\u001a\u0004\u0018\u000102H\u0016J\u0016\u00103\u001a\u00020.2\u0006\u00104\u001a\u00020\u00162\u0006\u00105\u001a\u00020\u0016J\b\u00106\u001a\u00020\rH\u0016J\u0012\u0010=\u001a\u00020.2\b\u0010\u0002\u001a\u0004\u0018\u000108H\u0016J\b\u0010>\u001a\u00020.H\u0016J\u0012\u0010?\u001a\u00020.2\b\u0010@\u001a\u0004\u0018\u00010AH\u0014J\f\u0010B\u001a\u00020\n*\u00020\nH\u0004R\u001a\u0010\f\u001a\u00020\rX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u001a\u0010\u0015\u001a\u00020\u0016X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0016X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\u000e\u0010\u001e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001a\u0010%\u001a\u00020\nX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001a\u0010*\u001a\u00020\nX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010'\"\u0004\b,\u0010)R\u001c\u00107\u001a\u0004\u0018\u000108X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<¨\u0006C"}, d2 = {"Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "enableDraggable", "", "getEnableDraggable", "()Z", "setEnableDraggable", "(Z)V", "autoDock", "getAutoDock", "setAutoDock", "mLastX", "", "getMLastX", "()F", "setMLastX", "(F)V", "mLastY", "getMLastY", "setMLastY", "isMoved", "mWindowManager", "Lcom/join/mgps/customview/hmfloat/HMFloatWindowManager;", "getMWindowManager", "()Lcom/join/mgps/customview/hmfloat/HMFloatWindowManager;", "setMWindowManager", "(Lcom/join/mgps/customview/hmfloat/HMFloatWindowManager;)V", "mWidth", "getMWidth", "()I", "setMWidth", "(I)V", "mHeight", "getMHeight", "setMHeight", "init", "", "initWindowManager", "onTouchEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "move", "dx", "dy", "performClick", "mWindowToken", "Landroid/app/Activity;", "getMWindowToken", "()Landroid/app/Activity;", "setMWindowToken", "(Landroid/app/Activity;)V", "show", "hide", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "dpToPx", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class HMFloatingBaseView extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f66510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f66511c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f66512d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f66513e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f66514f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private j f66515g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f66516h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f66517i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private Activity f66518j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMFloatingBaseView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        c();
    }

    protected final int a(int i10) {
        return (int) (i10 * getContext().getResources().getDisplayMetrics().density);
    }

    public void b() {
        j jVar = this.f66515g;
        if (jVar != null) {
            jVar.z();
        }
    }

    public void c() {
        this.f66512d = 0.0f;
        this.f66513e = a(100);
        d();
    }

    public void d() {
        if (this.f66515g != null) {
            return;
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        j jVar = new j(context);
        this.f66515g = jVar;
        jVar.E(this);
    }

    public final void e(float f10, float f11) {
        j jVar = this.f66515g;
        if (jVar != null) {
            jVar.v(f10, f11);
        }
    }

    public void f(@Nullable Activity activity) {
        if (activity == null) {
            return;
        }
        if (!Intrinsics.areEqual(this.f66518j, activity)) {
            if (getParent() != null && (getParent() instanceof ViewGroup)) {
                ViewParent parent = getParent();
                Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent).removeView(this);
            }
            j jVar = this.f66515g;
            if (jVar != null) {
                jVar.z();
            }
            d();
            this.f66518j = activity;
        }
        if (this.f66515g == null) {
            d();
        }
        j jVar2 = this.f66515g;
        int[] iArrH = jVar2 != null ? jVar2.h() : null;
        if (iArrH != null) {
            if (!(iArrH.length == 0)) {
                this.f66512d = iArrH[0];
                this.f66513e = iArrH[1];
            }
        }
        j jVar3 = this.f66515g;
        if (jVar3 != null) {
            jVar3.M(activity, this, (int) this.f66512d, (int) this.f66513e, this.f66516h, this.f66517i);
        }
    }

    /* JADX INFO: renamed from: getAutoDock, reason: from getter */
    protected final boolean getF66511c() {
        return this.f66511c;
    }

    /* JADX INFO: renamed from: getEnableDraggable, reason: from getter */
    protected final boolean getF66510b() {
        return this.f66510b;
    }

    /* JADX INFO: renamed from: getMHeight, reason: from getter */
    protected final int getF66517i() {
        return this.f66517i;
    }

    /* JADX INFO: renamed from: getMLastX, reason: from getter */
    protected final float getF66512d() {
        return this.f66512d;
    }

    /* JADX INFO: renamed from: getMLastY, reason: from getter */
    protected final float getF66513e() {
        return this.f66513e;
    }

    /* JADX INFO: renamed from: getMWidth, reason: from getter */
    protected final int getF66516h() {
        return this.f66516h;
    }

    @Nullable
    /* JADX INFO: renamed from: getMWindowManager, reason: from getter */
    protected final j getF66515g() {
        return this.f66515g;
    }

    @Nullable
    /* JADX INFO: renamed from: getMWindowToken, reason: from getter */
    protected final Activity getF66518j() {
        return this.f66518j;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(@Nullable Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        j jVar = this.f66515g;
        if (jVar != null) {
            jVar.u(newConfig);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent event) {
        if (!this.f66510b) {
            return super.onTouchEvent(event);
        }
        Integer numValueOf = event != null ? Integer.valueOf(event.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.f66512d = event.getRawX();
            this.f66513e = event.getRawY();
            this.f66514f = false;
            return true;
        }
        if (numValueOf != null && numValueOf.intValue() == 2) {
            float rawX = event.getRawX() - this.f66512d;
            float rawY = event.getRawY() - this.f66513e;
            this.f66512d = event.getRawX();
            this.f66513e = event.getRawY();
            if (Math.sqrt((rawX * rawX) + (rawY * rawY)) > 10.0d) {
                this.f66514f = true;
            }
            e(rawX, rawY);
            return true;
        }
        if (numValueOf != null && numValueOf.intValue() == 1) {
            if (!this.f66514f) {
                performClick();
            }
            this.f66514f = false;
            j jVar = this.f66515g;
            if (jVar != null) {
                jVar.w();
            }
        }
        return super.onTouchEvent(event);
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    protected final void setAutoDock(boolean z10) {
        this.f66511c = z10;
    }

    protected final void setEnableDraggable(boolean z10) {
        this.f66510b = z10;
    }

    protected final void setMHeight(int i10) {
        this.f66517i = i10;
    }

    protected final void setMLastX(float f10) {
        this.f66512d = f10;
    }

    protected final void setMLastY(float f10) {
        this.f66513e = f10;
    }

    protected final void setMWidth(int i10) {
        this.f66516h = i10;
    }

    protected final void setMWindowManager(@Nullable j jVar) {
        this.f66515g = jVar;
    }

    protected final void setMWindowToken(@Nullable Activity activity) {
        this.f66518j = activity;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMFloatingBaseView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        c();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMFloatingBaseView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        c();
    }
}
