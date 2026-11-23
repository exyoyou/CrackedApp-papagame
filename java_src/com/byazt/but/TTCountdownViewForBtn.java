package com.byazt.but;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.aas.pf;
import com.byazt.dna.qp;
import com.byazt.nr.d;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 672, 673})
public class TTCountdownViewForBtn extends LinearLayout implements qp.c, uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AtomicBoolean f12092a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d f12093c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f12094i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public c f12095n;
    public int sp;
    public Context tt;
    public TextView uj;
    public TextView ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f12096x;

    public TTCountdownViewForBtn(Context context) {
        super(context);
        this.f12092a = new AtomicBoolean(true);
        this.f12093c = new d(Looper.getMainLooper(), this);
        this.sp = 5;
        this.f12096x = 1;
        this.f12094i = false;
        this.tt = context;
        uj();
    }

    private void a() {
        try {
            if (this.f12094i || this.ve == null) {
                return;
            }
            sp();
            int i10 = this.f12096x;
            if (i10 < this.sp + 1) {
                this.f12096x = i10 + 1;
                this.f12093c.sendEmptyMessageDelayed(1, 1000L);
            } else {
                c cVar = this.f12095n;
                if (cVar != null) {
                    cVar.c();
                }
            }
        } catch (Exception unused) {
        }
    }

    private void n() {
        d dVar = this.f12093c;
        if (dVar != null) {
            dVar.removeMessages(1);
        }
        this.f12096x = 1;
    }

    private void sp() {
        if (this.ve != null) {
            StringBuilder sb2 = new StringBuilder();
            int i10 = this.f12096x;
            int i11 = this.sp;
            sb2.append(i10 <= i11 ? i11 - i10 : 0);
            sb2.append("s");
            this.ve.setText(sb2.toString());
        }
    }

    private void uj() {
        setOrientation(0);
        setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#99333333"));
        int iVe = pf.ve(this.tt, 14.0f);
        gradientDrawable.setCornerRadius(iVe);
        int i10 = iVe * 2;
        gradientDrawable.setSize(i10, i10);
        setBackground(gradientDrawable);
        this.ve = new TextView(this.tt);
        int iVe2 = pf.ve(this.tt, 6.0f);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.ve.setTextColor(-1);
        this.ve.setTextSize(2, 14.0f);
        addView(this.ve, layoutParams);
        View view = new View(this.tt);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.width = pf.ve(this.tt, 1.0f);
        layoutParams2.height = pf.ve(this.tt, 12.0f);
        layoutParams2.leftMargin = iVe2;
        layoutParams2.rightMargin = iVe2;
        view.setBackgroundColor(-1);
        addView(view, layoutParams2);
        this.uj = new TextView(this.tt);
        ViewGroup.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        this.uj.setTextColor(-1);
        this.uj.setTextSize(2, 14.0f);
        this.uj.setText("跳过");
        addView(this.uj, layoutParams3);
    }

    @Override // com.byazt.but.uj
    public void c() {
        if (this.f12094i) {
            return;
        }
        n();
        a();
    }

    @Override // com.byazt.but.uj
    public View getView() {
        return this;
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        if (message.what == 1) {
            a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        n();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        this.f12092a.set(z10);
        if (this.f12094i) {
            return;
        }
        if (this.f12092a.get()) {
            ve();
        } else {
            tt();
        }
    }

    @Override // com.byazt.but.uj
    public void setCountDownTime(int i10) {
        this.sp = i10;
        sp();
        n();
    }

    @Override // com.byazt.but.uj
    public void setCountdownListener(c cVar) {
        this.f12095n = cVar;
        this.f12092a.get();
    }

    public void tt() {
        try {
            d dVar = this.f12093c;
            if (dVar != null) {
                dVar.removeMessages(1);
            }
        } catch (Throwable unused) {
        }
    }

    public void ve() {
        try {
            a();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.but.uj
    public void c(boolean z10) {
        this.f12094i = z10;
        if (z10) {
            n();
        }
    }
}
