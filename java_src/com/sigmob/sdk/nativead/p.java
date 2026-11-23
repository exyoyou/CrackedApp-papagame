package com.sigmob.sdk.nativead;

import android.content.Context;
import android.graphics.Rect;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.czhj.sdk.logger.SigmobLog;

/* JADX INFO: loaded from: classes3.dex */
public class p extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ad f81448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f81449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f81450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f81451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f81452e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f81453f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f81454g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f81455h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f81456i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f81457j;

    public p(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (a() && e()) {
            ViewGroup viewGroup = (ViewGroup) getParent();
            int iA = a(viewGroup);
            int height = viewGroup.getHeight() * viewGroup.getWidth();
            boolean z10 = height > 0 && ((float) iA) >= (((float) this.f81452e) / 100.0f) * ((float) height);
            if (iA > 0) {
                this.f81456i = true;
                a aVar = this.f81451d;
                if (aVar != null) {
                    aVar.f();
                }
            } else {
                this.f81456i = false;
                this.f81453f = 0L;
                a aVar2 = this.f81451d;
                if (aVar2 != null) {
                    aVar2.e();
                }
            }
            if (iA <= 0) {
                a aVar3 = this.f81451d;
                if (aVar3 == null || !this.f81456i) {
                    return;
                }
                aVar3.e();
                return;
            }
            if (z10 && this.f81456i) {
                if (this.f81453f == 0) {
                    this.f81453f = System.currentTimeMillis();
                }
                boolean z11 = this.f81453f > 0 && System.currentTimeMillis() - this.f81453f >= ((long) this.f81454g) * 1000;
                a aVar4 = this.f81451d;
                if (aVar4 != null) {
                    aVar4.d();
                }
                a aVar5 = this.f81451d;
                if (aVar5 != null) {
                    aVar5.a(z11);
                    return;
                }
                return;
            }
            a aVar6 = this.f81451d;
            if (aVar6 != null) {
                aVar6.c();
            }
            a aVar7 = this.f81451d;
            if (aVar7 != null) {
                aVar7.a(false);
            }
        } else {
            a aVar8 = this.f81451d;
            if (aVar8 != null && this.f81456i) {
                aVar8.e();
            }
            this.f81456i = false;
        }
        this.f81453f = 0L;
    }

    private void c() {
        f();
        this.f81448a = null;
    }

    private void d() {
        ad adVar = this.f81448a;
        if (adVar == null || !adVar.b()) {
            return;
        }
        SigmobLog.d("-----------startTimer----------");
        this.f81448a.removeCallbacksAndMessages(null);
        this.f81448a.a();
        this.f81448a.a(false);
    }

    private boolean e() {
        return this.f81449b && this.f81455h == 0 && this.f81450c;
    }

    private void f() {
        b();
        ad adVar = this.f81448a;
        if (adVar == null || adVar.b()) {
            return;
        }
        SigmobLog.d("-----------stopTimer----------");
        this.f81448a.removeCallbacksAndMessages(null);
        this.f81448a.a(true);
    }

    public int a(View view) {
        Rect rect = new Rect();
        if (view.isShown() && view.getGlobalVisibleRect(rect)) {
            return rect.height() * rect.width();
        }
        return 0;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f81449b = true;
        SigmobLog.d("---------onAttachedToWindow---------");
        d();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f81449b = false;
        SigmobLog.d("---------onDetachedFromWindow----------");
        f();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        SigmobLog.d("---------onFinishTemporaryDetach-------------");
        d();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        SigmobLog.d("---------onStartTemporaryDetach-----------");
        f();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        SigmobLog.d("---------onVisibilityChanged---------" + visibility);
        this.f81457j = visibility;
        if (visibility == 0) {
            d();
        } else {
            f();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
        SigmobLog.d("---------onWindowFocusChanged: hasWindowFocus: " + hasWindowFocus);
        this.f81450c = hasWindowFocus;
        if (this.f81456i) {
            b();
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        this.f81455h = visibility;
        SigmobLog.d("---------onWindowVisibilityChanged: visibility: " + visibility);
        if (visibility == 0) {
            d();
        } else {
            f();
        }
    }

    public void setAdVisibilityStatusChangeListener(a statusChangeListener) {
        this.f81451d = statusChangeListener;
    }

    public p(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public p(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f81449b = false;
        this.f81450c = true;
        this.f81453f = 0L;
        this.f81454g = 0;
        this.f81455h = -1;
        this.f81456i = false;
        this.f81457j = -1;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
    }

    public void a(int impression_percent, int impression_time) {
        this.f81450c = true;
        if (this.f81448a != null) {
            c();
        }
        this.f81450c = true;
        this.f81452e = impression_percent;
        this.f81454g = impression_time;
        this.f81448a = new ad(Looper.getMainLooper()) { // from class: com.sigmob.sdk.nativead.p.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                if (87108 == msg.what && com.sigmob.sdk.base.utils.w.b(p.this.f81451d)) {
                    p.this.b();
                    a();
                }
            }
        };
        d();
    }

    public boolean a() {
        return getVisibility() == 0 && this.f81457j == 0 && getParent() != null;
    }
}
