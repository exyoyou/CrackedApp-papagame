package com.sigmob.sdk.nativead;

import android.content.Context;
import android.graphics.Typeface;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.common.al;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.SensorEntity;
import com.sigmob.sdk.base.views.ai;
import com.sigmob.sdk.base.views.ap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class x extends RelativeLayout implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f81522a = 100;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f81523b = 70;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f81524c = 30;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f81525d = 12;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static com.sigmob.sdk.base.views.r f81526n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static al.a f81527o;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BaseAdUnit f81528e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f81529f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.sigmob.sdk.base.views.r f81530g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f81531h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private al.a f81532i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f81533j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ClickCommon f81534k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private d f81535l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f81536m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f81537p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f81538q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f81539r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f81540s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Boolean f81541t;
    private String title;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f81542u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f81543v;

    /* JADX INFO: renamed from: com.sigmob.sdk.nativead.x$1, reason: invalid class name */
    class AnonymousClass1 implements al.c {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            x.this.f81534k.sld = "5";
            x.this.i();
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(float progress) {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(Map<String, Number> info) {
            if (info == null || x.this.f81533j) {
                return;
            }
            x.this.f81533j = true;
            Number number = info.get("turn_x");
            Number number2 = info.get("turn_y");
            Number number3 = info.get("turn_z");
            Number number4 = info.get("turn_time");
            if (number != null) {
                x.this.f81534k.turn_x = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                x.this.f81534k.turn_y = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                x.this.f81534k.turn_z = String.valueOf(number3.intValue());
            }
            x.this.f81534k.turn_time = String.valueOf(number4);
            x.this.f81530g.postDelayed(new Runnable() { // from class: com.sigmob.sdk.nativead.t0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81511b.b();
                }
            }, 400L);
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.nativead.x$2, reason: invalid class name */
    class AnonymousClass2 implements al.c {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            if (x.this.f81533j) {
                return;
            }
            x.this.f81534k.sld = "2";
            x.this.i();
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(float progress) {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(Map<String, Number> info) {
            Number number = info.get("x_max_acc");
            Number number2 = info.get("y_max_acc");
            Number number3 = info.get("z_max_acc");
            if (number != null && x.this.f81534k != null) {
                x.this.f81534k.x_max_acc = String.valueOf(number.intValue());
            }
            if (number2 != null && x.this.f81534k != null) {
                x.this.f81534k.y_max_acc = String.valueOf(number2.intValue());
            }
            if (number3 != null && x.this.f81534k != null) {
                x.this.f81534k.z_max_acc = String.valueOf(number3.intValue());
            }
            x.this.f81530g.postDelayed(new Runnable() { // from class: com.sigmob.sdk.nativead.u0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81514b.b();
                }
            }, 400L);
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.nativead.x$3, reason: invalid class name */
    class AnonymousClass3 implements al.c {
        AnonymousClass3() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            x.this.f81534k.sld = "5";
            x.this.i();
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(float progress) {
            if (x.this.f81530g instanceof com.sigmob.sdk.base.views.ag) {
                ((com.sigmob.sdk.base.views.ag) x.this.f81530g).a(progress);
            }
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(Map<String, Number> info) {
            if (info == null || x.this.f81533j) {
                return;
            }
            x.this.f81533j = true;
            Number number = info.get("turn_x");
            Number number2 = info.get("turn_y");
            Number number3 = info.get("turn_z");
            Number number4 = info.get("turn_time");
            if (number != null) {
                x.this.f81534k.turn_x = String.valueOf(number.intValue());
            }
            if (number2 != null) {
                x.this.f81534k.turn_y = String.valueOf(number2.intValue());
            }
            if (number3 != null) {
                x.this.f81534k.turn_z = String.valueOf(number3.intValue());
            }
            x.this.f81534k.turn_time = String.valueOf(number4);
            x.this.f81530g.postDelayed(new Runnable() { // from class: com.sigmob.sdk.nativead.v0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81515b.b();
                }
            }, 400L);
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.nativead.x$4, reason: invalid class name */
    class AnonymousClass4 implements al.c {
        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            x.this.f81534k.sld = "2";
            x.this.i();
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a() {
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(float progress) {
            if (x.this.f81530g instanceof ai) {
                ((ai) x.this.f81530g).a(progress);
            }
        }

        @Override // com.sigmob.sdk.base.common.al.c
        public void a(Map<String, Number> info) {
            if (info == null || x.this.f81533j) {
                return;
            }
            x.this.f81533j = true;
            Number number = info.get("x_max_acc");
            Number number2 = info.get("y_max_acc");
            Number number3 = info.get("z_max_acc");
            if (number != null && x.this.f81534k != null) {
                x.this.f81534k.x_max_acc = String.valueOf(number.intValue());
            }
            if (number2 != null && x.this.f81534k != null) {
                x.this.f81534k.y_max_acc = String.valueOf(number2.intValue());
            }
            if (number3 != null && x.this.f81534k != null) {
                x.this.f81534k.z_max_acc = String.valueOf(number3.intValue());
            }
            x.this.f81530g.postDelayed(new Runnable() { // from class: com.sigmob.sdk.nativead.w0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81521b.b();
                }
            }, 400L);
        }
    }

    public x(Context context, BaseAdUnit adUnit, int referenceWidth, int referenceHeight) {
        super(context);
        this.f81533j = false;
        this.f81541t = null;
        this.f81537p = Dips.dipsToIntPixels(100.0f, context);
        this.f81538q = Dips.dipsToIntPixels(70.0f, context);
        this.f81539r = Dips.dipsToIntPixels(30.0f, context);
        this.f81529f = Dips.dipsToIntPixels(0.5f, getContext());
        this.f81542u = referenceWidth;
        this.f81543v = referenceHeight;
        this.f81528e = adUnit;
        this.f81534k = adUnit.getClickCommon();
        a((int) adUnit.getWidgetId(0));
    }

    private void d() {
        this.f81540s = true;
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    private void e() {
        this.f81530g = new ap(getContext());
        this.title = "扭动或点击前往";
        al.a aVar = new al.a(getContext(), new AnonymousClass1(), al.d.WRING);
        this.f81532i = aVar;
        aVar.a(SensorEntity.format(this.f81528e));
    }

    private void f() {
        this.f81530g = new com.sigmob.sdk.base.views.y(getContext());
        this.title = "摇一摇或点击前往";
        al.a aVar = new al.a(getContext(), new AnonymousClass2(), al.d.SHAKE);
        this.f81532i = aVar;
        aVar.a(SensorEntity.format(this.f81528e));
    }

    private void g() {
        this.f81530g = new com.sigmob.sdk.base.views.ag(getContext());
        this.title = "前倾或点击前往";
        al.a aVar = new al.a(getContext(), new AnonymousClass3(), al.d.SLOPE);
        this.f81532i = aVar;
        aVar.a(SensorEntity.format(this.f81528e));
    }

    private void h() {
        this.f81530g = new ai(getContext());
        this.title = "晃动或点击前往";
        al.a aVar = new al.a(getContext(), new AnonymousClass4(), al.d.SWING);
        this.f81532i = aVar;
        aVar.a(SensorEntity.format(this.f81528e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        d dVar = this.f81535l;
        if (dVar == null) {
            return;
        }
        dVar.onAction();
    }

    protected void a() {
        if (this.f81536m && this.f81530g.getVisibility() == 0) {
            com.sigmob.sdk.base.views.r rVar = f81526n;
            if (rVar != null && rVar != this.f81530g) {
                rVar.b();
                f81526n = null;
            }
            al.a aVar = f81527o;
            if (aVar != null && aVar != this.f81532i) {
                aVar.b();
                f81527o = null;
            }
            this.f81533j = false;
            if (this.f81532i != null && this.f81536m && com.sigmob.sdk.base.utils.x.b(this)) {
                al.a aVar2 = f81527o;
                al.a aVar3 = this.f81532i;
                if (aVar2 != aVar3) {
                    f81527o = aVar3;
                    aVar3.a();
                }
                com.sigmob.sdk.base.views.r rVar2 = this.f81530g;
                if (rVar2 == null || rVar2 == f81526n || rVar2.getVisibility() != 0) {
                    return;
                }
                com.sigmob.sdk.base.views.r rVar3 = this.f81530g;
                f81526n = rVar3;
                rVar3.a();
            }
        }
    }

    public boolean getCreateWidgetViewResult() {
        return com.sigmob.sdk.base.utils.w.b(this.f81530g);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f81536m = true;
        d();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f81536m = false;
        this.f81540s = false;
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        b();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (this.f81540s) {
            this.f81540s = false;
            int iMin = Math.min(this.f81542u, this.f81543v);
            com.sigmob.sdk.base.utils.x.a(this.f81531h);
            if (iMin < this.f81539r) {
                com.sigmob.sdk.base.views.r rVar = this.f81530g;
                if (rVar != null) {
                    rVar.b();
                    this.f81530g.setVisibility(4);
                }
                al.a aVar = this.f81532i;
                if (aVar != null) {
                    aVar.b();
                }
                this.f81541t = Boolean.FALSE;
                return;
            }
            com.sigmob.sdk.base.views.r rVar2 = this.f81530g;
            if (rVar2 == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = rVar2.getLayoutParams();
            if (layoutParams != null && layoutParams.width != iMin) {
                layoutParams.width = iMin;
                layoutParams.height = iMin;
                this.f81530g.setLayoutParams(layoutParams);
            }
            Boolean bool = this.f81541t;
            if (bool != null && !bool.booleanValue()) {
                this.f81530g.a();
                this.f81530g.setVisibility(0);
                al.a aVar2 = this.f81532i;
                if (aVar2 != null) {
                    aVar2.a();
                }
            }
            if (iMin < this.f81537p) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) getParent();
            Context context = getContext();
            if (context == null || viewGroup == null || this.f81531h == null) {
                return;
            }
            int top = getTop() + this.f81530g.getMeasuredHeight();
            com.sigmob.sdk.base.utils.x.a(this.f81531h);
            int drawableId = ResourceUtil.getDrawableId(context, "sig_layout_background_radius");
            if (drawableId > 0) {
                this.f81531h.setBackgroundResource(drawableId);
            }
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 1;
            layoutParams2.setMargins(0, top + this.f81529f, 0, 0);
            viewGroup.addView(this.f81531h, layoutParams2);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        this.f81540s = true;
    }

    public void setMotionActionListener(d listener) {
        this.f81535l = listener;
    }

    public void a(int widgetId) {
        switch (widgetId) {
            case 138731:
                h();
                break;
            case 138733:
                g();
                break;
            case 138757:
                f();
                break;
            case 138758:
                e();
                break;
        }
        if (this.f81530g == null) {
            return;
        }
        this.f81534k.widget_id = widgetId;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f81530g.setId(ClientMetadata.generateViewId());
        addView(this.f81530g, layoutParams);
        TextView textView = new TextView(getContext());
        this.f81531h = textView;
        textView.setText(this.title);
        this.f81531h.setTextSize(2, 12.0f);
        this.f81531h.setTextColor(-1);
        this.f81531h.setTypeface(Typeface.DEFAULT_BOLD);
        this.f81531h.setId(ClientMetadata.generateViewId());
    }

    public void b() {
        com.sigmob.sdk.base.views.r rVar = this.f81530g;
        if (rVar != null) {
            rVar.b();
        }
        al.a aVar = this.f81532i;
        if (aVar != null) {
            aVar.b();
        }
        com.sigmob.sdk.base.views.r rVar2 = f81526n;
        if (rVar2 != null && rVar2 == this.f81530g) {
            f81526n = null;
        }
        al.a aVar2 = f81527o;
        if (aVar2 == null || aVar2 != this.f81532i) {
            return;
        }
        f81527o = null;
    }

    public void c() {
        com.sigmob.sdk.base.views.r rVar = f81526n;
        if (rVar != null && rVar == this.f81530g) {
            f81526n = null;
        }
        al.a aVar = f81527o;
        if (aVar != null && aVar == this.f81532i) {
            f81527o = null;
        }
        com.sigmob.sdk.base.views.r rVar2 = this.f81530g;
        if (rVar2 != null) {
            rVar2.b();
            com.sigmob.sdk.base.utils.x.a(this.f81530g);
            this.f81530g = null;
        }
        TextView textView = this.f81531h;
        if (textView != null) {
            com.sigmob.sdk.base.utils.x.a(textView);
            this.f81531h = null;
        }
        al.a aVar2 = this.f81532i;
        if (aVar2 != null) {
            aVar2.c();
            this.f81532i = null;
        }
    }
}
