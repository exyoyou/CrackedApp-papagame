package com.kongzue.dialogx.dialogs;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.core.internal.view.SupportMenu;
import androidx.lifecycle.LifecycleOwner;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.interfaces.DialogXStyle;
import com.kongzue.dialogx.interfaces.p;
import com.kongzue.dialogx.interfaces.q;
import com.kongzue.dialogx.interfaces.r;
import com.kongzue.dialogx.interfaces.t;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class GuideDialog extends CustomDialog {

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    protected STAGE_LIGHT_TYPE f73647b2;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    protected Drawable f73648c2;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    protected float f73649d2;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    protected Integer f73650e2;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    protected t<GuideDialog> f73651f2;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    protected int[] f73652g2;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    View f73653h2;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    int[] f73654i2;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    Paint f73655j2;

    public enum STAGE_LIGHT_TYPE {
        RECTANGLE,
        SQUARE_OUTSIDE,
        SQUARE_INSIDE,
        CIRCLE_OUTSIDE,
        CIRCLE_INSIDE
    }

    class a extends r<CustomDialog> {
        a(View view) {
            super(view);
        }

        @Override // com.kongzue.dialogx.interfaces.r
        public void onBind(CustomDialog customDialog, View view) {
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (GuideDialog.this.q3().a(GuideDialog.this, view)) {
                return;
            }
            GuideDialog.this.E1();
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f73658a;

        static {
            int[] iArr = new int[STAGE_LIGHT_TYPE.values().length];
            f73658a = iArr;
            try {
                iArr[STAGE_LIGHT_TYPE.CIRCLE_OUTSIDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73658a[STAGE_LIGHT_TYPE.CIRCLE_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73658a[STAGE_LIGHT_TYPE.RECTANGLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73658a[STAGE_LIGHT_TYPE.SQUARE_INSIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f73658a[STAGE_LIGHT_TYPE.SQUARE_OUTSIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected GuideDialog() {
        this.f73647b2 = STAGE_LIGHT_TYPE.CIRCLE_OUTSIDE;
        this.f73650e2 = null;
        this.f73652g2 = new int[4];
        this.R = R.anim.anim_dialogx_alpha_enter;
        this.S = R.anim.anim_dialogx_default_exit;
        this.f73621p0 = 81;
    }

    public static GuideDialog A4(Bitmap bitmap) {
        return new GuideDialog(bitmap).M0();
    }

    public static GuideDialog B4(Bitmap bitmap, CustomDialog.ALIGN align) {
        GuideDialog guideDialog = new GuideDialog(bitmap, align);
        guideDialog.T = align;
        return guideDialog.M0();
    }

    public static GuideDialog C4(Drawable drawable) {
        return new GuideDialog(drawable).M0();
    }

    public static GuideDialog D4(Drawable drawable, CustomDialog.ALIGN align) {
        return new GuideDialog(drawable, align).M0();
    }

    public static GuideDialog E4(View view, int i10) {
        return new GuideDialog(view, i10).M0();
    }

    public static GuideDialog F4(View view, int i10, int i11) {
        return new GuideDialog(view, i10, i11).M0();
    }

    public static GuideDialog G4(View view, Bitmap bitmap) {
        return new GuideDialog(view, bitmap).M0();
    }

    public static GuideDialog H4(View view, Bitmap bitmap, int i10) {
        return new GuideDialog(view, bitmap, i10).M0();
    }

    public static GuideDialog I4(View view, Drawable drawable) {
        return new GuideDialog(view, drawable).M0();
    }

    public static GuideDialog J4(View view, Drawable drawable, int i10) {
        return new GuideDialog(view, drawable, i10).M0();
    }

    public static GuideDialog K4(View view, STAGE_LIGHT_TYPE stage_light_type) {
        return new GuideDialog(view, stage_light_type).M0();
    }

    public static GuideDialog L4(View view, STAGE_LIGHT_TYPE stage_light_type, int i10) {
        return new GuideDialog(view, stage_light_type, i10).M0();
    }

    public static GuideDialog M4(View view, STAGE_LIGHT_TYPE stage_light_type, int i10, int i11) {
        return new GuideDialog(view, stage_light_type, i10, i11).M0();
    }

    public static GuideDialog N4(View view, STAGE_LIGHT_TYPE stage_light_type, Bitmap bitmap) {
        return new GuideDialog(view, stage_light_type, bitmap).M0();
    }

    public static GuideDialog O4(View view, STAGE_LIGHT_TYPE stage_light_type, Bitmap bitmap, int i10) {
        return new GuideDialog(view, stage_light_type, bitmap, i10).M0();
    }

    public static GuideDialog P4(View view, STAGE_LIGHT_TYPE stage_light_type, Drawable drawable) {
        return new GuideDialog(view, stage_light_type, drawable).M0();
    }

    public static GuideDialog Q4(View view, STAGE_LIGHT_TYPE stage_light_type, Drawable drawable, int i10) {
        return new GuideDialog(view, stage_light_type, drawable, i10).M0();
    }

    public static GuideDialog R4(View view, STAGE_LIGHT_TYPE stage_light_type, r<CustomDialog> rVar, int i10) {
        return new GuideDialog(view, stage_light_type, rVar, i10).M0();
    }

    public static GuideDialog S4(r<CustomDialog> rVar) {
        GuideDialog guideDialog = new GuideDialog(rVar);
        guideDialog.M0();
        return guideDialog;
    }

    public static GuideDialog T4(r<CustomDialog> rVar, CustomDialog.ALIGN align) {
        GuideDialog guideDialog = new GuideDialog(rVar);
        guideDialog.T = align;
        guideDialog.M0();
        return guideDialog;
    }

    public static GuideDialog i3() {
        return new GuideDialog();
    }

    private Paint s3() {
        if (this.f73655j2 == null) {
            Paint paint = new Paint();
            this.f73655j2 = paint;
            paint.setColor(SupportMenu.CATEGORY_MASK);
            this.f73655j2.setStyle(Paint.Style.FILL);
            this.f73655j2.setAntiAlias(true);
        }
        return this.f73655j2;
    }

    public static GuideDialog x4(int i10) {
        return new GuideDialog(i10).M0();
    }

    public static GuideDialog y4(int i10, CustomDialog.ALIGN align) {
        GuideDialog guideDialog = new GuideDialog(i10, align);
        guideDialog.T = align;
        return guideDialog.M0();
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: A3, reason: merged with bridge method [inline-methods] */
    public GuideDialog q2(int i10) {
        this.f73621p0 = i10;
        if (w1() != null) {
            this.f73619i1 = new int[4];
            w1().getLocationInWindow(this.f73619i1);
        }
        N2(true);
        return this;
    }

    public GuideDialog B3(View view) {
        x1(view);
        int[] iArr = new int[4];
        this.f73619i1 = iArr;
        view.getLocationInWindow(iArr);
        N2(true);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: C3, reason: merged with bridge method [inline-methods] */
    public GuideDialog r2(View view, int i10) {
        x1(view);
        this.f73621p0 = i10;
        int[] iArr = new int[4];
        this.f73619i1 = iArr;
        view.getLocationInWindow(iArr);
        N2(true);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: D3, reason: merged with bridge method [inline-methods] */
    public GuideDialog s2(View view, int i10, int i11, int i12, int i13, int i14) {
        this.f73620l1 = new int[]{i11, i12, i13, i14};
        return r2(view, i10);
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: E3, reason: merged with bridge method [inline-methods] */
    public GuideDialog t2(int i10, int i11) {
        this.R = i10;
        this.S = i11;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: F3, reason: merged with bridge method [inline-methods] */
    public GuideDialog u2(boolean z10) {
        super.u2(z10);
        return this;
    }

    public GuideDialog G3(int i10) {
        this.f73652g2 = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    public GuideDialog H3(int i10, int i11, int i12, int i13) {
        this.f73652g2 = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    public GuideDialog I3(int[] iArr) {
        this.f73652g2 = iArr;
        return this;
    }

    public GuideDialog J3(int i10) {
        this.f73652g2[3] = i10;
        x0();
        return this;
    }

    public GuideDialog K3(int i10) {
        this.f73652g2[0] = i10;
        x0();
        return this;
    }

    public GuideDialog L3(int i10) {
        this.f73652g2[2] = i10;
        x0();
        return this;
    }

    public GuideDialog M3(int i10) {
        this.f73652g2[1] = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: N3, reason: merged with bridge method [inline-methods] */
    public GuideDialog v2(int i10, int i11, int i12, int i13) {
        this.f73620l1 = new int[]{i10, i11, i12, i13};
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    public CustomDialog.f O1() {
        return this.Q;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: O3, reason: merged with bridge method [inline-methods] */
    public GuideDialog w2(int[] iArr) {
        this.f73620l1 = iArr;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: P3, reason: merged with bridge method [inline-methods] */
    public GuideDialog x2(int i10) {
        this.f73620l1[3] = i10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    public com.kongzue.dialogx.interfaces.g<CustomDialog> Q1() {
        return this.Y;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: Q3, reason: merged with bridge method [inline-methods] */
    public GuideDialog y2(int i10) {
        this.f73620l1[0] = i10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: R3, reason: merged with bridge method [inline-methods] */
    public GuideDialog z2(int i10) {
        this.f73620l1[2] = i10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: S3, reason: merged with bridge method [inline-methods] */
    public GuideDialog A2(int i10) {
        this.f73620l1[1] = i10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: T3, reason: merged with bridge method [inline-methods] */
    public GuideDialog B2(boolean z10) {
        this.W = z10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: U3, reason: merged with bridge method [inline-methods] */
    public GuideDialog C2(boolean z10) {
        this.V = z10 ? BaseDialog.BOOLEAN.TRUE : BaseDialog.BOOLEAN.FALSE;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: V3, reason: merged with bridge method [inline-methods] */
    public GuideDialog D2(r<CustomDialog> rVar) {
        this.M = rVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog, com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: W3, reason: merged with bridge method [inline-methods] */
    public GuideDialog F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: X3, reason: merged with bridge method [inline-methods] */
    public GuideDialog F2(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: Y3, reason: merged with bridge method [inline-methods] */
    public GuideDialog G2(com.kongzue.dialogx.interfaces.f<CustomDialog> fVar) {
        this.N = fVar;
        if (this.f74071r) {
            fVar.b(this.P);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: Z3, reason: merged with bridge method [inline-methods] */
    public GuideDialog H2(com.kongzue.dialogx.interfaces.g<CustomDialog> gVar) {
        this.Y = gVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: a4, reason: merged with bridge method [inline-methods] */
    public GuideDialog I0(boolean z10) {
        this.f74067n = z10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: b4, reason: merged with bridge method [inline-methods] */
    public GuideDialog J2(long j10) {
        this.f74076w = j10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: c4, reason: merged with bridge method [inline-methods] */
    public GuideDialog K2(int i10) {
        this.R = i10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: d4, reason: merged with bridge method [inline-methods] */
    public GuideDialog L2(long j10) {
        this.f74077x = j10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: e4, reason: merged with bridge method [inline-methods] */
    public GuideDialog M2(int i10) {
        this.S = i10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: f4, reason: merged with bridge method [inline-methods] */
    public GuideDialog N2(boolean z10) {
        super.N2(z10);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: g3, reason: merged with bridge method [inline-methods] */
    public GuideDialog y1(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: g4, reason: merged with bridge method [inline-methods] */
    public GuideDialog O2(int i10) {
        this.f73618f1 = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog, com.kongzue.dialogx.interfaces.BaseDialog
    public void h() {
        E1();
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: h3, reason: merged with bridge method [inline-methods] */
    public GuideDialog z1() {
        L0(F());
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: h4, reason: merged with bridge method [inline-methods] */
    public GuideDialog P2(@ColorInt int i10) {
        this.f73650e2 = Integer.valueOf(i10);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    protected void i2(int[] iArr) {
        if (Arrays.equals(iArr, this.f73654i2) || O1() == null) {
            return;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(O1().f73630a.getWidth(), O1().f73630a.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        int i10 = iArr[0];
        int[] iArr2 = this.f73652g2;
        int i11 = i10 + iArr2[0];
        int i12 = iArr[1] + iArr2[1];
        int i13 = iArr[2] + iArr2[2];
        int i14 = iArr[3] + iArr2[3];
        int i15 = i13 / 2;
        int i16 = i14 / 2;
        View view = this.f73653h2;
        if (view != null) {
            float f10 = i11;
            if (view.getX() != f10 || this.f73653h2.getY() != i12) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f73653h2.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = new RelativeLayout.LayoutParams(i13, i14);
                } else {
                    layoutParams.width = i13;
                    layoutParams.height = i14;
                }
                this.f73653h2.setLayoutParams(layoutParams);
                this.f73653h2.setX(f10);
                this.f73653h2.setY(i12);
            }
        }
        int i17 = c.f73658a[this.f73647b2.ordinal()];
        if (i17 == 1) {
            canvas.drawCircle(i11 + i15, i12 + i16, (int) Math.sqrt((i15 * i15) + (i16 * i16)), s3());
        } else if (i17 == 2) {
            canvas.drawCircle(i11 + i15, i12 + i16, Math.min(i13, i14) / 2, s3());
        } else if (i17 == 3) {
            RectF rectF = new RectF(i11, i12, i11 + i13, i12 + i14);
            float f11 = this.f73649d2;
            canvas.drawRoundRect(rectF, f11, f11, s3());
        } else if (i17 == 4) {
            int iMin = Math.min(i13, i14);
            int i18 = i11 + i15;
            int i19 = iMin / 2;
            int i20 = i18 - i19;
            int i21 = (i12 + i16) - i19;
            RectF rectF2 = new RectF(i20, i21, i20 + iMin, i21 + iMin);
            float f12 = this.f73649d2;
            canvas.drawRoundRect(rectF2, f12, f12, s3());
        } else if (i17 == 5) {
            int iMax = Math.max(i13, i14);
            int i22 = i11 + i15;
            int i23 = iMax / 2;
            int i24 = i22 - i23;
            int i25 = (i12 + i16) - i23;
            RectF rectF3 = new RectF(i24, i25, i24 + iMax, i25 + iMax);
            float f13 = this.f73649d2;
            canvas.drawRoundRect(rectF3, f13, f13, s3());
        }
        this.f73655j2.setXfermode(null);
        Integer num = this.f73650e2;
        canvas.drawColor(num == null ? v(R.color.black50) : num.intValue(), PorterDuff.Mode.SRC_OUT);
        O1().f73630a.setBackground(new BitmapDrawable(getResources(), bitmapCreateBitmap));
        this.f73654i2 = Arrays.copyOf(iArr, 4);
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: i4, reason: merged with bridge method [inline-methods] */
    public GuideDialog U2(p<CustomDialog> pVar) {
        this.O = pVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: j3, reason: merged with bridge method [inline-methods] */
    public GuideDialog C1(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: j4, reason: merged with bridge method [inline-methods] */
    public GuideDialog V2(q<CustomDialog> qVar) {
        this.X = qVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: k3, reason: merged with bridge method [inline-methods] */
    public GuideDialog D1() {
        this.f74069p.clear();
        return this;
    }

    public GuideDialog k4(t<GuideDialog> tVar) {
        this.f73651f2 = tVar;
        x0();
        return this;
    }

    public int[] l3() {
        return this.f73652g2;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: l4, reason: merged with bridge method [inline-methods] */
    public GuideDialog W2(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    public int m3() {
        return this.f73652g2[3];
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: m4, reason: merged with bridge method [inline-methods] */
    public GuideDialog X2(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog, com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    public int n3() {
        return this.f73652g2[0];
    }

    public GuideDialog n4(float f10) {
        this.f73649d2 = f10;
        x0();
        return this;
    }

    public int o3() {
        return this.f73652g2[2];
    }

    public GuideDialog o4(STAGE_LIGHT_TYPE stage_light_type) {
        this.f73647b2 = stage_light_type;
        x0();
        return this;
    }

    public int p3() {
        return this.f73652g2[1];
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: p4, reason: merged with bridge method [inline-methods] */
    public GuideDialog Y2(DialogXStyle dialogXStyle) {
        this.f74072s = dialogXStyle;
        return this;
    }

    public t<GuideDialog> q3() {
        return this.f73651f2;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: q4, reason: merged with bridge method [inline-methods] */
    public GuideDialog Z2(DialogX.THEME theme) {
        this.f74073t = theme;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void r0() {
        super.r0();
        if (this.M == null && this.f73648c2 != null) {
            O1().f73631b.setFocusable(false);
            O1().f73631b.setFocusableInTouchMode(false);
            O1().f73631b.setOnClickListener(null);
            O1().f73631b.setClickable(false);
            ImageView imageView = new ImageView(N());
            imageView.setImageDrawable(this.f73648c2);
            imageView.setAdjustViewBounds(true);
            imageView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
            a aVar = new a(imageView);
            this.M = aVar;
            aVar.bindParent(O1().f73631b, this.P);
        }
        if (q3() != null && w1() != null) {
            View view = new View(N());
            this.f73653h2 = view;
            view.setOnClickListener(new b());
            O1().f73630a.addView(this.f73653h2);
            return;
        }
        View view2 = this.f73653h2;
        if (view2 == null || !(view2.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) this.f73653h2.getParent()).removeView(this.f73653h2);
    }

    public float r3() {
        return this.f73649d2;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: r4, reason: merged with bridge method [inline-methods] */
    public GuideDialog L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void s0() {
        super.s0();
        if (w1() == null) {
            Integer num = this.f73650e2;
            super.P2(num == null ? v(R.color.black50) : num.intValue());
        }
    }

    public GuideDialog s4(int i10) {
        this.f73648c2 = getResources().getDrawable(i10);
        x0();
        return this;
    }

    public STAGE_LIGHT_TYPE t3() {
        return this.f73647b2;
    }

    public GuideDialog t4(Bitmap bitmap) {
        this.f73648c2 = new BitmapDrawable(getResources(), bitmap);
        x0();
        return this;
    }

    public Drawable u3() {
        return this.f73648c2;
    }

    public GuideDialog u4(Drawable drawable) {
        this.f73648c2 = drawable;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: v3, reason: merged with bridge method [inline-methods] */
    public GuideDialog g2(com.kongzue.dialogx.interfaces.i<CustomDialog> iVar) {
        this.f74066m = iVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: v4, reason: merged with bridge method [inline-methods] */
    public GuideDialog b3(int i10) {
        this.f73617b1 = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: w3, reason: merged with bridge method [inline-methods] */
    public GuideDialog j2(com.kongzue.dialogx.interfaces.i<CustomDialog> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: w4, reason: merged with bridge method [inline-methods] */
    public GuideDialog M0() {
        super.M0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: x3, reason: merged with bridge method [inline-methods] */
    public GuideDialog l2() {
        this.M.clean();
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: y3, reason: merged with bridge method [inline-methods] */
    public GuideDialog n2(int i10, com.kongzue.dialogx.interfaces.i<CustomDialog> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: z3, reason: merged with bridge method [inline-methods] */
    public GuideDialog o2(CustomDialog.ALIGN align) {
        this.T = align;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.CustomDialog
    /* JADX INFO: renamed from: z4, reason: merged with bridge method [inline-methods] */
    public GuideDialog d3(Activity activity) {
        super.d3(activity);
        return this;
    }

    public GuideDialog(View view, STAGE_LIGHT_TYPE stage_light_type) {
        this();
        x1(view);
        this.f73647b2 = stage_light_type;
    }

    public GuideDialog(View view, STAGE_LIGHT_TYPE stage_light_type, r<CustomDialog> rVar, int i10) {
        this();
        x1(view);
        this.f73647b2 = stage_light_type;
        this.M = rVar;
        this.f73621p0 = i10;
    }

    public GuideDialog(View view, STAGE_LIGHT_TYPE stage_light_type, int i10, int i11) {
        this();
        x1(view);
        this.f73648c2 = getResources().getDrawable(i10);
        this.f73647b2 = stage_light_type;
        this.f73621p0 = i11;
    }

    public GuideDialog(View view, STAGE_LIGHT_TYPE stage_light_type, Bitmap bitmap, int i10) {
        this();
        x1(view);
        this.f73648c2 = new BitmapDrawable(getResources(), bitmap);
        this.f73647b2 = stage_light_type;
        this.f73621p0 = i10;
    }

    public GuideDialog(View view, STAGE_LIGHT_TYPE stage_light_type, Drawable drawable, int i10) {
        this();
        x1(view);
        this.f73648c2 = drawable;
        this.f73647b2 = stage_light_type;
        this.f73621p0 = i10;
    }

    public GuideDialog(int i10) {
        this();
        this.f73648c2 = getResources().getDrawable(i10);
    }

    public GuideDialog(Bitmap bitmap) {
        this();
        this.f73648c2 = new BitmapDrawable(getResources(), bitmap);
    }

    public GuideDialog(Drawable drawable) {
        this();
        this.f73648c2 = drawable;
    }

    public GuideDialog(int i10, CustomDialog.ALIGN align) {
        this();
        this.f73648c2 = getResources().getDrawable(i10);
        this.T = align;
    }

    public GuideDialog(Bitmap bitmap, CustomDialog.ALIGN align) {
        this();
        this.f73648c2 = new BitmapDrawable(getResources(), bitmap);
        this.T = align;
    }

    public GuideDialog(Drawable drawable, CustomDialog.ALIGN align) {
        this();
        this.f73648c2 = drawable;
        this.T = align;
    }

    public GuideDialog(r<CustomDialog> rVar) {
        this();
        this.M = rVar;
    }

    public GuideDialog(r<CustomDialog> rVar, CustomDialog.ALIGN align) {
        this();
        this.M = rVar;
        this.T = align;
    }

    public GuideDialog(View view, int i10) {
        this();
        x1(view);
        this.f73648c2 = getResources().getDrawable(i10);
    }

    public GuideDialog(View view, Bitmap bitmap) {
        this();
        x1(view);
        this.f73648c2 = new BitmapDrawable(getResources(), bitmap);
    }

    public GuideDialog(View view, Drawable drawable) {
        this();
        x1(view);
        this.f73648c2 = drawable;
    }

    public GuideDialog(View view, STAGE_LIGHT_TYPE stage_light_type, int i10) {
        this();
        x1(view);
        this.f73647b2 = stage_light_type;
        this.f73648c2 = getResources().getDrawable(i10);
    }

    public GuideDialog(View view, STAGE_LIGHT_TYPE stage_light_type, Bitmap bitmap) {
        this();
        x1(view);
        this.f73647b2 = stage_light_type;
        this.f73648c2 = new BitmapDrawable(getResources(), bitmap);
    }

    public GuideDialog(View view, STAGE_LIGHT_TYPE stage_light_type, Drawable drawable) {
        this();
        x1(view);
        this.f73647b2 = stage_light_type;
        this.f73648c2 = drawable;
    }

    public GuideDialog(View view, int i10, int i11) {
        this();
        x1(view);
        this.f73621p0 = i11;
        this.f73648c2 = getResources().getDrawable(i10);
    }

    public GuideDialog(View view, Bitmap bitmap, int i10) {
        this();
        x1(view);
        this.f73621p0 = i10;
        this.f73648c2 = new BitmapDrawable(getResources(), bitmap);
    }

    public GuideDialog(View view, Drawable drawable, int i10) {
        this();
        x1(view);
        this.f73621p0 = i10;
        this.f73648c2 = drawable;
    }
}
