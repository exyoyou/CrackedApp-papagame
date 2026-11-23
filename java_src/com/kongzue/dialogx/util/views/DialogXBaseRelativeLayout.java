package com.kongzue.dialogx.util.views;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.RelativeLayout;
import androidx.annotation.Px;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.interfaces.h;
import com.kongzue.dialogx.interfaces.j;
import com.kongzue.dialogx.interfaces.o;
import com.kongzue.dialogx.interfaces.z;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class DialogXBaseRelativeLayout extends RelativeLayout {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static boolean f74268s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private z f74269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference<BaseDialog> f74270c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f74271d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f74272e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f74273f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f74274g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private d f74275h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private FitSystemBarUtils f74276i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f74277j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f74278k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    float f74279l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    float f74280m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private WeakReference<View> f74281n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected Rect f74282o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    boolean f74283p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    float f74284q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int[] f74285r;

    class a implements FitSystemBarUtils.g {
        a() {
        }

        @Override // com.kongzue.dialogx.util.views.FitSystemBarUtils.g
        public void a(int i10, int i11, int i12, int i13) {
            DialogXBaseRelativeLayout.this.h("KONGZUE DEBUG DIALOGX: unsafeRect t=" + i11 + " b=" + i13);
            DialogXBaseRelativeLayout dialogXBaseRelativeLayout = DialogXBaseRelativeLayout.this;
            if (dialogXBaseRelativeLayout.f74282o == null) {
                dialogXBaseRelativeLayout.f74282o = new Rect();
            }
            Insets insets = null;
            if (Build.VERSION.SDK_INT >= 23 && DialogXBaseRelativeLayout.this.getRootWindowInsets() != null) {
                WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(DialogXBaseRelativeLayout.this.getRootWindowInsets());
                boolean zIsVisible = windowInsetsCompat.isVisible(WindowInsetsCompat.Type.navigationBars());
                if (!windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime()) && zIsVisible) {
                    Insets insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
                    if (insets2.bottom != i13 || insets2.top != i11 || insets2.left != i10 || insets2.right != i12) {
                        insets = insets2;
                    }
                }
            }
            if (insets != null) {
                DialogXBaseRelativeLayout.this.f74282o.left = Math.max(insets.left, i10);
                DialogXBaseRelativeLayout.this.f74282o.top = Math.max(insets.top, i11);
                DialogXBaseRelativeLayout.this.f74282o.right = Math.max(insets.right, i12);
                DialogXBaseRelativeLayout.this.f74282o.bottom = Math.max(insets.bottom, i13);
            } else {
                Rect rect = DialogXBaseRelativeLayout.this.f74282o;
                rect.left = i10;
                rect.top = i11;
                rect.right = i12;
                rect.bottom = i13;
            }
            if (DialogXBaseRelativeLayout.this.f74269b != null) {
                DialogXBaseRelativeLayout.this.f74269b.a(DialogXBaseRelativeLayout.this.f74282o);
            }
            DialogXBaseRelativeLayout dialogXBaseRelativeLayout2 = DialogXBaseRelativeLayout.this;
            Rect rect2 = dialogXBaseRelativeLayout2.f74282o;
            dialogXBaseRelativeLayout2.setUnsafePadding(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }

        @Override // com.kongzue.dialogx.util.views.FitSystemBarUtils.g
        public int b(FitSystemBarUtils.Orientation orientation) {
            int i10 = b.f74287a[orientation.ordinal()];
            if (i10 == 1) {
                return DialogXBaseRelativeLayout.this.f74285r[0];
            }
            if (i10 == 2) {
                return DialogXBaseRelativeLayout.this.f74285r[1];
            }
            if (i10 == 3) {
                return DialogXBaseRelativeLayout.this.f74285r[2];
            }
            if (i10 != 4) {
                return 0;
            }
            return DialogXBaseRelativeLayout.this.f74285r[3];
        }

        @Override // com.kongzue.dialogx.util.views.FitSystemBarUtils.g
        public boolean c(FitSystemBarUtils.Orientation orientation) {
            return true;
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f74287a;

        static {
            int[] iArr = new int[FitSystemBarUtils.Orientation.values().length];
            f74287a = iArr;
            try {
                iArr[FitSystemBarUtils.Orientation.Start.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74287a[FitSystemBarUtils.Orientation.Top.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f74287a[FitSystemBarUtils.Orientation.End.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f74287a[FitSystemBarUtils.Orientation.Bottom.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static abstract class c {
        public abstract void a();

        public void b() {
        }
    }

    public interface d {
        boolean onBackPressed();
    }

    public DialogXBaseRelativeLayout(Context context) {
        super(context);
        this.f74271d = true;
        this.f74272e = true;
        this.f74273f = true;
        this.f74277j = false;
        this.f74282o = new Rect();
        this.f74283p = true;
        this.f74285r = new int[4];
        c(null);
    }

    private void c(AttributeSet attributeSet) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            setForceDarkAllowed(false);
        }
        if (this.f74277j) {
            return;
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.DialogXBaseRelativeLayout);
            this.f74272e = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DialogXBaseRelativeLayout_baseFocusable, true);
            this.f74271d = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DialogXBaseRelativeLayout_autoSafeArea, true);
            this.f74273f = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DialogXBaseRelativeLayout_interceptBack, true);
            typedArrayObtainStyledAttributes.recycle();
            this.f74277j = true;
        }
        if (this.f74272e) {
            setFocusable(true);
            setFocusableInTouchMode(true);
        }
        k(0.0f);
        if (getParentDialog() != null && getParentDialog().A() != DialogX.IMPL_MODE.VIEW) {
            setFitsSystemWindows(true);
        }
        setClipChildren(false);
        setClipToPadding(false);
        if (i10 >= 26) {
            setDefaultFocusHighlightEnabled(false);
        }
        h("KONGZUE DEBUG DIALOGX: create fitSystemBarUtils");
        this.f74276i = FitSystemBarUtils.p(this, new a());
    }

    private boolean d(BaseDialog baseDialog) {
        return (getParentDialog() instanceof h) || (findViewWithTag("DialogXSafetyArea") instanceof j);
    }

    public void b(View view) {
        if (view != this) {
            this.f74281n = new WeakReference<>(view);
        }
    }

    @Override // android.view.View
    public boolean callOnClick() {
        if (isEnabled()) {
            return super.callOnClick();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        h("#dispatchKeyEvent: KeyCode=" + keyEvent.getKeyCode());
        return (isAttachedToWindow() && keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 4 && this.f74273f && this.f74275h != null && !this.f74270c.get().h0()) ? this.f74275h.onBackPressed() : super.dispatchKeyEvent(keyEvent);
    }

    public boolean e() {
        return this.f74271d;
    }

    public boolean f() {
        return this.f74272e;
    }

    public boolean g() {
        return this.f74273f;
    }

    public FitSystemBarUtils getFitSystemBarUtils() {
        return this.f74276i;
    }

    public z getOnSafeInsetsChangeListener() {
        return this.f74269b;
    }

    public BaseDialog getParentDialog() {
        WeakReference<BaseDialog> weakReference = this.f74270c;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public int getRootPaddingBottom() {
        return this.f74285r[3];
    }

    public int getRootPaddingLeft() {
        return this.f74285r[0];
    }

    public int getRootPaddingRight() {
        return this.f74285r[2];
    }

    public int getRootPaddingTop() {
        return this.f74285r[1];
    }

    public float getSafeHeight() {
        int measuredHeight = getMeasuredHeight();
        Rect rect = this.f74282o;
        return (measuredHeight - rect.bottom) - rect.top;
    }

    public Rect getUnsafePlace() {
        return this.f74282o;
    }

    public int getUseAreaHeight() {
        return getHeight() - getRootPaddingBottom();
    }

    public int getUseAreaWidth() {
        return getWidth() - getRootPaddingRight();
    }

    protected void h(String str) {
        if (f74268s) {
            boolean z10 = DialogX.f73590b;
        }
    }

    public void i() {
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || viewFindFocus == this) {
            requestFocus();
        } else {
            viewFindFocus.requestFocus();
        }
    }

    public DialogXBaseRelativeLayout j(boolean z10) {
        this.f74271d = z10;
        return this;
    }

    public DialogXBaseRelativeLayout k(float f10) {
        this.f74284q = f10;
        if (getBackground() != null) {
            getBackground().mutate().setAlpha((int) (f10 * 255.0f));
        }
        return this;
    }

    public DialogXBaseRelativeLayout l(boolean z10) {
        this.f74273f = z10;
        return this;
    }

    public DialogXBaseRelativeLayout m(d dVar) {
        this.f74275h = dVar;
        return this;
    }

    public DialogXBaseRelativeLayout n(c cVar) {
        this.f74274g = cVar;
        return this;
    }

    public DialogXBaseRelativeLayout o(z zVar) {
        this.f74269b = zVar;
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || getParentDialog() == null || getParentDialog().N() == null) {
            return;
        }
        c cVar = this.f74274g;
        if (cVar != null) {
            cVar.b();
        }
        this.f74283p = (getResources().getConfiguration().uiMode & 48) == 16;
        if (this.f74272e) {
            requestFocus();
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f74283p == ((configuration.uiMode & 48) == 16) || DialogX.f73592d != DialogX.THEME.AUTO || getParentDialog() == null) {
            return;
        }
        getParentDialog().A0();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        c cVar = this.f74274g;
        if (cVar != null) {
            cVar.a();
        }
        FitSystemBarUtils fitSystemBarUtils = this.f74276i;
        if (fitSystemBarUtils != null) {
            fitSystemBarUtils.C();
        }
        this.f74276i = null;
        this.f74269b = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f74278k = true;
            this.f74279l = motionEvent.getX();
            this.f74280m = motionEvent.getY();
        } else if (action == 1 && this.f74278k && findFocus() != this && getParentDialog() != null) {
            float fO = getParentDialog().o(5.0f);
            if (Math.abs(motionEvent.getX() - this.f74279l) <= fO && Math.abs(motionEvent.getY() - this.f74280m) <= fO) {
                callOnClick();
            }
        }
        if (getParentDialog() instanceof o) {
            return super.onTouchEvent(motionEvent);
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 2);
        return super.onTouchEvent(motionEvent);
    }

    public DialogXBaseRelativeLayout p(BaseDialog baseDialog) {
        this.f74270c = new WeakReference<>(baseDialog);
        if (baseDialog != null && baseDialog.A() != DialogX.IMPL_MODE.VIEW) {
            setFitsSystemWindows(true);
        }
        if (this.f74282o != null) {
            h("KONGZUE DEBUG DIALOGX: setParentDialog()=" + getParentDialog());
            Rect rect = this.f74282o;
            setUnsafePadding(rect.left, rect.top, rect.right, rect.bottom);
        } else {
            h("KONGZUE DEBUG DIALOGX: setParentDialog() unsafePlace is null");
        }
        return this;
    }

    @Override // android.view.View
    public boolean performClick() {
        if (isEnabled()) {
            return super.performClick();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i10, Rect rect) {
        WeakReference<View> weakReference;
        if (getParentDialog() != null && (getParentDialog() instanceof o)) {
            return false;
        }
        if (i10 == 130 && (weakReference = this.f74281n) != null && weakReference.get() != null && this.f74281n.get() != this) {
            return this.f74281n.get().requestFocus();
        }
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || viewFindFocus == this) {
            return super.requestFocus(i10, rect);
        }
        viewFindFocus.requestFocus();
        return true;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        drawable.setAlpha((int) (this.f74284q * 255.0f));
        super.setBackground(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        setBackground(new ColorDrawable(i10));
    }

    public void setRootPadding(int i10, int i11, int i12, int i13) {
        int[] iArr = this.f74285r;
        iArr[0] = i10;
        iArr[1] = i11;
        iArr[2] = i12;
        iArr[3] = i13;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setUnsafePadding(@Px int i10, @Px int i11, @Px int i12, @Px int i13) {
        h("KONGZUE DEBUG DIALOGX: setUnsafePadding=" + getParentDialog() + " t=" + i11 + " b=" + i13);
        if (DialogX.U) {
            h("  KONGZUE DEBUG DIALOGX: ignoreUnsafeInsetsHorizontal, start and end set 0");
            i10 = 0;
            i12 = 0;
        }
        if (d(getParentDialog())) {
            h("  KONGZUE DEBUG DIALOGX: Dialog is align bottom");
            View viewFindViewWithTag = findViewWithTag("DialogXSafetyArea");
            if (viewFindViewWithTag instanceof j) {
                int dialogXSafetyMode = ((j) viewFindViewWithTag).getDialogXSafetyMode();
                boolean z10 = (dialogXSafetyMode & 1) != 0;
                boolean z11 = (dialogXSafetyMode & 2) != 0;
                boolean z12 = (dialogXSafetyMode & 4) != 0;
                boolean z13 = (dialogXSafetyMode & 8) != 0;
                h("    KONGZUE DEBUG DIALOGX: dialogXSafetyArea" + viewFindViewWithTag + " hasLeft=" + z11 + "hasTop=" + z10 + " hasRight=" + z13 + " hasBottom=" + z12);
                viewFindViewWithTag.setPadding(z11 ? i10 : 0, z10 ? i11 : 0, z13 ? i12 : 0, z12 ? i13 : 0);
                if (z10) {
                    i11 = 0;
                }
                if (z11) {
                    i10 = 0;
                }
                if (z13) {
                    i12 = 0;
                }
                if (z12) {
                }
            } else {
                ViewGroup viewGroup = (ViewGroup) findViewById(R.id.bkg);
                if (!((h) getParentDialog()).a() && viewGroup != null) {
                    h("    KONGZUE DEBUG DIALOGX: bkgView.setPadding b=" + i13);
                    viewGroup.setPadding(0, 0, 0, i13);
                }
            }
            i13 = 0;
        }
        if (e()) {
            h("  KONGZUE DEBUG DIALOGX: root.setPadding t=" + i11 + " b=" + i13);
            setPadding(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        if (i10 == 8 && getAlpha() == 0.0f) {
            setAlpha(0.01f);
        }
        super.setVisibility(i10);
    }

    public DialogXBaseRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f74271d = true;
        this.f74272e = true;
        this.f74273f = true;
        this.f74277j = false;
        this.f74282o = new Rect();
        this.f74283p = true;
        this.f74285r = new int[4];
        c(attributeSet);
    }

    public DialogXBaseRelativeLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f74271d = true;
        this.f74272e = true;
        this.f74273f = true;
        this.f74277j = false;
        this.f74282o = new Rect();
        this.f74283p = true;
        this.f74285r = new int[4];
        c(attributeSet);
    }
}
