package com.join.mgps.customview.wheel.picker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.MediaDescriptionCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.core.view.GravityCompat;
import com.google.android.material.timepicker.TimeModel;
import com.join.mgps.customview.wheel.picker.entity.WheelItem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimerTask;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class WheelView extends View {
    private static final int L1 = 5;
    private static final float R1 = 0.8f;
    public static final float T = 2.0f;
    public static final int U = -1;
    public static final int V = 16;
    public static final int W = -16611122;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public static final int f67056b1 = -8139290;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public static final int f67057f1 = 220;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public static final float f67058i1 = 2.0f;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public static final int f67059l1 = 3;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final int f67060p0 = -4473925;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private static final float f67061p1 = 13.0f;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private static final int f67062q1 = 1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private static final int f67063r1 = 2;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private static final int f67064v1 = 3;
    private float A;
    private float B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private float K;
    private long L;
    private int M;
    private int N;
    private int O;
    private int P;
    private float Q;
    private boolean R;
    private boolean S;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f67065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GestureDetector f67066c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f67067d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f67068e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f67069f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ScheduledFuture<?> f67070g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Paint f67071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Paint f67072i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Paint f67073j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Paint f67074k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<WheelItem> f67075l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f67076m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f67077n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f67078o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f67079p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f67080q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f67081r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Typeface f67082s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f67083t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f67084u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private c f67085v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f67086w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f67087x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f67088y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f67089z;

    private static class StringItem implements WheelItem {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f67090b;

        /* synthetic */ StringItem(String str, a aVar) {
            this(str);
        }

        @Override // com.join.mgps.customview.wheel.picker.entity.WheelItem
        public String getName() {
            return this.f67090b;
        }

        private StringItem(String name) {
            this.f67090b = name;
        }
    }

    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onFling(MotionEvent e10, MotionEvent e11, float velocityX, float velocityY) {
            WheelView.this.C(velocityY);
            return true;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (WheelView.this.f67067d != null) {
                WheelView.this.f67067d.onSelected(WheelView.this.D);
            }
            if (WheelView.this.f67068e != null) {
                WheelView.this.f67068e.a(true, WheelView.this.D, ((WheelItem) WheelView.this.f67075l.get(WheelView.this.D)).getName());
            }
        }
    }

    private static class d extends TimerTask {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f67103b = 2.1474836E9f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final float f67104c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final WheelView f67105d;

        d(WheelView view, float velocityY) {
            this.f67105d = view;
            this.f67104c = velocityY;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            if (this.f67103b == 2.1474836E9f) {
                if (Math.abs(this.f67104c) <= 2000.0f) {
                    this.f67103b = this.f67104c;
                } else if (this.f67104c > 0.0f) {
                    this.f67103b = 2000.0f;
                } else {
                    this.f67103b = -2000.0f;
                }
            }
            if (Math.abs(this.f67103b) >= 0.0f && Math.abs(this.f67103b) <= 20.0f) {
                this.f67105d.o();
                this.f67105d.f67065b.sendEmptyMessage(2000);
                return;
            }
            int i10 = (int) ((this.f67103b * 10.0f) / 1000.0f);
            float f10 = i10;
            this.f67105d.B -= f10;
            if (!this.f67105d.f67088y) {
                float f11 = this.f67105d.f67081r;
                float f12 = (-this.f67105d.C) * f11;
                float itemCount = ((this.f67105d.getItemCount() - 1) - this.f67105d.C) * f11;
                double d10 = ((double) f11) * 0.25d;
                if (((double) this.f67105d.B) - d10 < f12) {
                    f12 = this.f67105d.B + f10;
                } else if (((double) this.f67105d.B) + d10 > itemCount) {
                    itemCount = this.f67105d.B + f10;
                }
                if (this.f67105d.B <= f12) {
                    this.f67103b = 40.0f;
                    this.f67105d.B = (int) f12;
                } else if (this.f67105d.B >= itemCount) {
                    this.f67105d.B = (int) itemCount;
                    this.f67103b = -40.0f;
                }
            }
            float f13 = this.f67103b;
            if (f13 < 0.0f) {
                this.f67103b = f13 + 20.0f;
            } else {
                this.f67103b = f13 - 20.0f;
            }
            this.f67105d.f67065b.sendEmptyMessage(1000);
        }
    }

    @Deprecated
    public static class e extends c {
    }

    private static class f extends Handler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final int f67106b = 1000;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final int f67107c = 2000;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final int f67108d = 3000;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final WheelView f67109a;

        f(WheelView view) {
            this.f67109a = view;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message msg) {
            int i10 = msg.what;
            if (i10 == 1000) {
                this.f67109a.invalidate();
            } else if (i10 == 2000) {
                this.f67109a.D(2);
            } else {
                if (i10 != 3000) {
                    return;
                }
                this.f67109a.t();
            }
        }
    }

    public interface g {
        void onSelected(int index);
    }

    @Deprecated
    public interface h {
        void a(boolean isUserScroll, int index, String item);
    }

    @Deprecated
    public interface i extends h {
    }

    private static class j extends TimerTask {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f67110b = Integer.MAX_VALUE;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f67111c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f67112d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final WheelView f67113e;

        j(WheelView view, int offset) {
            this.f67113e = view;
            this.f67112d = offset;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (this.f67110b == Integer.MAX_VALUE) {
                this.f67110b = this.f67112d;
            }
            int i10 = this.f67110b;
            int i11 = (int) (i10 * 0.1f);
            this.f67111c = i11;
            if (i11 == 0) {
                if (i10 < 0) {
                    this.f67111c = -1;
                } else {
                    this.f67111c = 1;
                }
            }
            if (Math.abs(i10) <= 1) {
                this.f67113e.o();
                this.f67113e.f67065b.sendEmptyMessage(3000);
                return;
            }
            this.f67113e.B += this.f67111c;
            if (!this.f67113e.f67088y) {
                float f10 = this.f67113e.f67081r;
                float f11 = (-this.f67113e.C) * f10;
                float itemCount = ((this.f67113e.getItemCount() - 1) - this.f67113e.C) * f10;
                if (this.f67113e.B <= f11 || this.f67113e.B >= itemCount) {
                    this.f67113e.B -= this.f67111c;
                    this.f67113e.o();
                    this.f67113e.f67065b.sendEmptyMessage(3000);
                    return;
                }
            }
            this.f67113e.f67065b.sendEmptyMessage(1000);
            this.f67110b -= this.f67111c;
        }
    }

    public WheelView(Context context) {
        this(context, null);
    }

    private void A() {
        int i10;
        if (this.f67075l == null) {
            return;
        }
        v();
        int i11 = (int) (this.f67081r * (this.F - 1));
        this.G = (int) (((double) (i11 * 2)) / 3.141592653589793d);
        this.I = (int) (((double) i11) / 3.141592653589793d);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (this.R) {
            this.H = View.MeasureSpec.getSize(this.M);
        } else if (layoutParams == null || (i10 = layoutParams.width) <= 0) {
            this.H = this.f67077n;
            if (this.f67087x < 0) {
                this.f67087x = q6.a.H(getContext(), f67061p1);
            }
            this.H += this.f67087x * 2;
            if (!TextUtils.isEmpty(this.f67076m)) {
                this.H += z(this.f67072i, this.f67076m);
            }
        } else {
            this.H = i10;
        }
        int i12 = this.G;
        float f10 = this.f67081r;
        this.f67089z = (i12 - f10) / 2.0f;
        this.A = (i12 + f10) / 2.0f;
        if (this.C == -1) {
            if (this.f67088y) {
                this.C = (this.f67075l.size() + 1) / 2;
            } else {
                this.C = 0;
            }
        }
        this.E = this.C;
    }

    private void B(String contentText) {
        Rect rect = new Rect();
        this.f67072i.getTextBounds(contentText, 0, contentText.length(), rect);
        int i10 = this.f67080q;
        for (int iWidth = rect.width(); iWidth > this.H; iWidth = rect.width()) {
            i10--;
            this.f67072i.setTextSize(i10);
            this.f67072i.getTextBounds(contentText, 0, contentText.length(), rect);
        }
        this.f67071h.setTextSize(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(float velocityY) {
        o();
        this.f67070g = Executors.newSingleThreadScheduledExecutor().scheduleWithFixedDelay(new d(this, velocityY), 0L, 5L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(int actionType) {
        o();
        if (actionType == 2 || actionType == 3) {
            float f10 = this.B;
            float f11 = this.f67081r;
            int i10 = (int) (((f10 % f11) + f11) % f11);
            this.J = i10;
            if (i10 > f11 / 2.0f) {
                this.J = (int) (f11 - i10);
            } else {
                this.J = -i10;
            }
        }
        this.f67070g = Executors.newSingleThreadScheduledExecutor().scheduleWithFixedDelay(new j(this, this.J), 0L, 10L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        ScheduledFuture<?> scheduledFuture = this.f67070g;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.f67070g.cancel(true);
        this.f67070g = null;
    }

    private int p(int index) {
        if (index < 0) {
            return p(index + this.f67075l.size());
        }
        return index > this.f67075l.size() + (-1) ? p(index - this.f67075l.size()) : index;
    }

    private void q() {
        if (isInEditMode()) {
            setItems(new String[]{"李玉江", "男", "贵州", "穿青人"});
        }
    }

    private void r() {
        Paint paint = new Paint();
        this.f67071h = paint;
        paint.setAntiAlias(true);
        this.f67071h.setColor(this.f67083t);
        this.f67071h.setTypeface(this.f67082s);
        this.f67071h.setTextSize(this.f67080q);
        Paint paint2 = new Paint();
        this.f67072i = paint2;
        paint2.setAntiAlias(true);
        this.f67072i.setColor(this.f67084u);
        this.f67072i.setTextScaleX(1.0f);
        this.f67072i.setTypeface(this.f67082s);
        this.f67072i.setTextSize(this.f67080q);
        Paint paint3 = new Paint();
        this.f67073j = paint3;
        paint3.setAntiAlias(true);
        this.f67073j.setColor(this.f67085v.f67097c);
        this.f67073j.setStrokeWidth(this.f67085v.f67102h);
        this.f67073j.setAlpha(this.f67085v.f67100f);
        Paint paint4 = new Paint();
        this.f67074k = paint4;
        paint4.setAntiAlias(true);
        this.f67074k.setColor(this.f67085v.f67098d);
        this.f67074k.setAlpha(this.f67085v.f67099e);
        setLayerType(1, null);
    }

    private void s(Context context) {
        this.f67065b = new f(this);
        GestureDetector gestureDetector = new GestureDetector(context, new a());
        this.f67066c = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        r();
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (this.f67067d == null && this.f67068e == null) {
            return;
        }
        postDelayed(new b(), 200L);
    }

    private void u() {
        float f10 = this.f67086w;
        if (f10 < 1.5f) {
            this.f67086w = 1.5f;
        } else if (f10 > 4.0f) {
            this.f67086w = 4.0f;
        }
    }

    private void v() {
        Rect rect = new Rect();
        for (int i10 = 0; i10 < this.f67075l.size(); i10++) {
            String strY = y(this.f67075l.get(i10));
            this.f67072i.getTextBounds(strY, 0, strY.length(), rect);
            int iWidth = rect.width();
            if (iWidth > this.f67077n) {
                this.f67077n = iWidth;
            }
            this.f67072i.getTextBounds("测试", 0, 2, rect);
            this.f67078o = rect.height() + 2;
        }
        this.f67081r = this.f67086w * this.f67078o;
    }

    private void w(String content) {
        Rect rect = new Rect();
        this.f67072i.getTextBounds(content, 0, content.length(), rect);
        int i10 = this.N;
        if (i10 == 3) {
            this.O = q6.a.H(getContext(), 8.0f);
        } else if (i10 == 5) {
            this.O = (this.H - rect.width()) - ((int) this.Q);
        } else {
            if (i10 != 17) {
                return;
            }
            this.O = (int) (((double) (this.H - rect.width())) * 0.5d);
        }
    }

    private void x(String content) {
        Rect rect = new Rect();
        this.f67071h.getTextBounds(content, 0, content.length(), rect);
        int i10 = this.N;
        if (i10 == 3) {
            this.P = q6.a.H(getContext(), 8.0f);
        } else if (i10 == 5) {
            this.P = (this.H - rect.width()) - ((int) this.Q);
        } else {
            if (i10 != 17) {
                return;
            }
            this.P = (int) (((double) (this.H - rect.width())) * 0.5d);
        }
    }

    private String y(Object item) {
        if (item == null) {
            return "";
        }
        if (item instanceof WheelItem) {
            return ((WheelItem) item).getName();
        }
        return item instanceof Integer ? String.format(Locale.getDefault(), TimeModel.f32343i, Integer.valueOf(((Integer) item).intValue())) : item.toString();
    }

    private int z(Paint paint, String str) {
        if (str == null || str.length() <= 0) {
            return 0;
        }
        int length = str.length();
        float[] fArr = new float[length];
        paint.getTextWidths(str, fArr);
        int iCeil = 0;
        for (int i10 = 0; i10 < length; i10++) {
            iCeil += (int) Math.ceil(fArr[i10]);
        }
        return iCeil;
    }

    protected int getItemCount() {
        List<WheelItem> list = this.f67075l;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public final int getSelectedIndex() {
        return this.D;
    }

    /* JADX WARN: Code duplicated, block: B:87:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:89:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:91:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:92:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:96:0x0302  */
    /* JADX WARN: Instruction removed from duplicated block: B:89:0x02f5, please report this as an issue */
    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float fPow;
        int i10;
        int i11;
        List<WheelItem> list = this.f67075l;
        if (list == null || list.size() == 0) {
            return;
        }
        String[] strArr = new String[this.F];
        int size = this.C + (((int) (this.B / this.f67081r)) % this.f67075l.size());
        this.E = size;
        if (this.f67088y) {
            if (size < 0) {
                this.E = this.f67075l.size() + this.E;
            }
            if (this.E > this.f67075l.size() - 1) {
                this.E -= this.f67075l.size();
            }
        } else {
            if (size < 0) {
                this.E = 0;
            }
            if (this.E > this.f67075l.size() - 1) {
                this.E = this.f67075l.size() - 1;
            }
        }
        float f10 = this.B % this.f67081r;
        int i12 = 0;
        while (true) {
            int i13 = this.F;
            if (i12 >= i13) {
                break;
            }
            int i14 = this.E - ((i13 / 2) - i12);
            if (this.f67088y) {
                strArr[i12] = this.f67075l.get(p(i14)).getName();
            } else if (i14 < 0) {
                strArr[i12] = "";
            } else if (i14 > this.f67075l.size() - 1) {
                strArr[i12] = "";
            } else {
                strArr[i12] = this.f67075l.get(i14).getName();
            }
            i12++;
        }
        c cVar = this.f67085v;
        if (cVar.f67095a) {
            float f11 = cVar.f67101g;
            int i15 = this.H;
            float f12 = this.f67089z;
            float f13 = 1.0f - f11;
            canvas.drawLine(i15 * f11, f12, i15 * f13, f12, this.f67073j);
            int i16 = this.H;
            float f14 = this.A;
            canvas.drawLine(i16 * f11, f14, i16 * f13, f14, this.f67073j);
        }
        c cVar2 = this.f67085v;
        if (cVar2.f67096b) {
            this.f67074k.setColor(cVar2.f67098d);
            this.f67074k.setAlpha(this.f67085v.f67099e);
            canvas.drawRect(0.0f, this.f67089z, this.H, this.A, this.f67074k);
        }
        for (int i17 = 0; i17 < this.F; i17++) {
            canvas.save();
            double d10 = ((this.f67081r * i17) - f10) / this.I;
            float f15 = (float) (90.0d - ((d10 / 3.141592653589793d) * 180.0d));
            if (f15 >= 90.0f || f15 <= -90.0f) {
                canvas.restore();
            } else {
                String strY = y(strArr[i17]);
                String str = (this.f67069f || TextUtils.isEmpty(this.f67076m) || TextUtils.isEmpty(strY)) ? strY : strY + this.f67076m;
                if (this.S) {
                    B(str);
                    this.N = 17;
                } else {
                    this.N = GravityCompat.START;
                }
                w(str);
                x(str);
                String str2 = strY;
                float fCos = (float) ((((double) this.I) - (Math.cos(d10) * ((double) this.I))) - ((Math.sin(d10) * ((double) this.f67078o)) / 2.0d));
                canvas.translate(0.0f, fCos);
                float f16 = this.f67089z;
                if (fCos > f16 || this.f67078o + fCos < f16) {
                    float f17 = this.A;
                    if (fCos <= f17 && this.f67078o + fCos >= f17) {
                        canvas.save();
                        canvas.clipRect(0.0f, 0.0f, this.H, this.A - fCos);
                        canvas.scale(1.0f, ((float) Math.sin(d10)) * 1.0f);
                        canvas.drawText(str, this.O, this.f67078o - this.Q, this.f67072i);
                        canvas.restore();
                        canvas.save();
                        canvas.clipRect(0.0f, this.A - fCos, this.H, (int) this.f67081r);
                        canvas.scale(1.0f, ((float) Math.sin(d10)) * R1);
                        canvas.drawText(str, this.P, this.f67078o, this.f67071h);
                        canvas.restore();
                    } else if (fCos >= f16) {
                        int i18 = this.f67078o;
                        if (i18 + fCos <= f17) {
                            canvas.clipRect(0, 0, this.H, i18);
                            float f18 = this.f67078o - this.Q;
                            Iterator<WheelItem> it2 = this.f67075l.iterator();
                            int i19 = 0;
                            while (it2.hasNext()) {
                                String str3 = str2;
                                if (it2.next().getName().equals(str3)) {
                                    this.D = i19;
                                    break;
                                } else {
                                    i19++;
                                    str2 = str3;
                                }
                            }
                            if (this.f67069f && !TextUtils.isEmpty(this.f67076m)) {
                                str = str + this.f67076m;
                            }
                            canvas.drawText(str, this.O, f18, this.f67072i);
                        } else {
                            canvas.save();
                            canvas.clipRect(0.0f, 0.0f, this.H, this.f67081r);
                            canvas.scale(1.0f, ((float) Math.sin(d10)) * R1);
                            fPow = (float) Math.pow(Math.abs(f15) / 90.0f, 2.2d);
                            i10 = this.f67079p;
                            if (i10 != 0) {
                                Paint paint = this.f67071h;
                                if (i10 > 0) {
                                    i11 = 1;
                                } else {
                                    i11 = -1;
                                }
                                paint.setTextSkewX(i11 * (f15 <= 0.0f ? 1 : -1) * 0.5f * fPow);
                                this.f67071h.setAlpha((int) ((1.0f - fPow) * 255.0f));
                            }
                            canvas.drawText(str, this.P + (this.f67079p * fPow), this.f67078o, this.f67071h);
                            canvas.restore();
                        }
                    } else {
                        canvas.save();
                        canvas.clipRect(0.0f, 0.0f, this.H, this.f67081r);
                        canvas.scale(1.0f, ((float) Math.sin(d10)) * R1);
                        fPow = (float) Math.pow(Math.abs(f15) / 90.0f, 2.2d);
                        i10 = this.f67079p;
                        if (i10 != 0) {
                            Paint paint2 = this.f67071h;
                            if (i10 > 0) {
                                i11 = 1;
                            } else {
                                i11 = -1;
                            }
                            paint2.setTextSkewX(i11 * (f15 <= 0.0f ? 1 : -1) * 0.5f * fPow);
                            this.f67071h.setAlpha((int) ((1.0f - fPow) * 255.0f));
                        }
                        canvas.drawText(str, this.P + (this.f67079p * fPow), this.f67078o, this.f67071h);
                        canvas.restore();
                    }
                    canvas.restore();
                    this.f67072i.setTextSize(this.f67080q);
                } else {
                    canvas.save();
                    canvas.clipRect(0.0f, 0.0f, this.H, this.f67089z - fCos);
                    canvas.scale(1.0f, ((float) Math.sin(d10)) * R1);
                    canvas.drawText(str, this.P, this.f67078o, this.f67071h);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0.0f, this.f67089z - fCos, this.H, (int) this.f67081r);
                    canvas.scale(1.0f, ((float) Math.sin(d10)) * 1.0f);
                    canvas.drawText(str, this.O, this.f67078o - this.Q, this.f67072i);
                    canvas.restore();
                }
                canvas.restore();
                this.f67072i.setTextSize(this.f67080q);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        this.M = widthMeasureSpec;
        A();
        setMeasuredDimension(this.H, this.G);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        boolean zOnTouchEvent = this.f67066c.onTouchEvent(event);
        ViewParent parent = getParent();
        int action = event.getAction();
        if (action == 0) {
            this.L = System.currentTimeMillis();
            o();
            this.K = event.getRawY();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        } else if (action != 2) {
            if (!zOnTouchEvent) {
                float y10 = event.getY();
                int i10 = this.I;
                double dAcos = Math.acos((i10 - y10) / i10) * ((double) this.I);
                float f10 = this.f67081r;
                this.J = (int) (((((int) ((dAcos + ((double) (f10 / 2.0f))) / ((double) f10))) - (this.F / 2)) * f10) - (((this.B % f10) + f10) % f10));
                if (System.currentTimeMillis() - this.L > 120) {
                    D(3);
                } else {
                    D(1);
                }
            }
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(false);
            }
        } else {
            float rawY = this.K - event.getRawY();
            this.K = event.getRawY();
            this.B += rawY;
            if (!this.f67088y) {
                float f11 = (-this.C) * this.f67081r;
                float size = (this.f67075l.size() - 1) - this.C;
                float f12 = this.f67081r;
                float f13 = size * f12;
                float f14 = this.B;
                if (((double) f14) - (((double) f12) * 0.25d) < f11) {
                    f11 = f14 - rawY;
                } else if (((double) f14) + (((double) f12) * 0.25d) > f13) {
                    f13 = f14 - rawY;
                }
                if (f14 < f11) {
                    this.B = (int) f11;
                } else if (f14 > f13) {
                    this.B = (int) f13;
                }
            }
        }
        if (event.getAction() != 0) {
            invalidate();
        }
        return true;
    }

    public final void setCycleDisable(boolean cycleDisable) {
        this.f67088y = !cycleDisable;
    }

    public void setDividerColor(@ColorInt int color) {
        this.f67085v.b(color);
        this.f67073j.setColor(color);
    }

    public void setDividerConfig(c config) {
        if (config == null) {
            this.f67085v.h(false);
            this.f67085v.f(false);
            return;
        }
        this.f67085v = config;
        this.f67073j.setColor(config.f67097c);
        this.f67073j.setStrokeWidth(config.f67102h);
        this.f67073j.setAlpha(config.f67100f);
        this.f67074k.setColor(config.f67098d);
        this.f67074k.setAlpha(config.f67099e);
    }

    public final void setGravity(int gravity) {
        this.N = gravity;
    }

    public final void setItems(List<?> items) {
        this.f67075l.clear();
        for (Object obj : items) {
            if (obj instanceof WheelItem) {
                this.f67075l.add((WheelItem) obj);
            } else {
                if (!(obj instanceof CharSequence) && !(obj instanceof Number)) {
                    throw new IllegalArgumentException("please implements " + WheelItem.class.getName());
                }
                this.f67075l.add(new StringItem(obj.toString(), null));
            }
        }
        A();
        invalidate();
    }

    public final void setLabel(String label, boolean onlyShowCenterLabel) {
        this.f67076m = label;
        this.f67069f = onlyShowCenterLabel;
    }

    @Deprecated
    public void setLineConfig(c config) {
        setDividerConfig(config);
    }

    public final void setLineSpaceMultiplier(@FloatRange(from = 2.0d, to = 4.0d) float multiplier) {
        this.f67086w = multiplier;
        u();
    }

    public final void setOffset(@IntRange(from = 1, to = MediaDescriptionCompat.BT_FOLDER_TYPE_PLAYLISTS) int offset) {
        if (offset < 1 || offset > 5) {
            throw new IllegalArgumentException("must between 1 and 5");
        }
        int i10 = (offset * 2) + 1;
        if (offset % 2 != 0) {
            offset--;
        }
        setVisibleItemCount(i10 + offset);
    }

    public final void setOnItemSelectListener(g onItemSelectListener) {
        this.f67067d = onItemSelectListener;
    }

    @Deprecated
    public final void setOnWheelListener(h listener) {
        this.f67068e = listener;
    }

    @Deprecated
    public void setPadding(int padding) {
        setTextPadding(padding);
    }

    public final void setSelectedIndex(int index) {
        List<WheelItem> list = this.f67075l;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f67075l.size();
        if (index == 0 || (index > 0 && index < size && index != this.D)) {
            this.C = index;
            this.B = 0.0f;
            this.J = 0;
            invalidate();
        }
    }

    public void setTextColor(@ColorInt int colorNormal, @ColorInt int colorFocus) {
        this.f67083t = colorNormal;
        this.f67084u = colorFocus;
        this.f67071h.setColor(colorNormal);
        this.f67072i.setColor(colorFocus);
    }

    public void setTextPadding(int textPadding) {
        this.f67087x = q6.a.H(getContext(), textPadding);
    }

    public final void setTextSize(float size) {
        if (size > 0.0f) {
            int i10 = (int) (getContext().getResources().getDisplayMetrics().density * size);
            this.f67080q = i10;
            this.f67071h.setTextSize(i10);
            this.f67072i.setTextSize(this.f67080q);
        }
    }

    public void setTextSizeAutoFit(boolean textSizeAutoFit) {
        this.S = textSizeAutoFit;
    }

    public void setTextSkewXOffset(int textSkewXOffset) {
        this.f67079p = textSkewXOffset;
        if (textSkewXOffset != 0) {
            this.f67072i.setTextScaleX(1.0f);
        }
    }

    public final void setTypeface(Typeface font) {
        this.f67082s = font;
        this.f67071h.setTypeface(font);
        this.f67072i.setTypeface(this.f67082s);
    }

    public void setUseWeight(boolean useWeight) {
        this.R = useWeight;
    }

    public final void setVisibleItemCount(int count) {
        if (count % 2 == 0) {
            throw new IllegalArgumentException("must be odd");
        }
        if (count != this.F) {
            this.F = count;
        }
    }

    public WheelView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f67069f = true;
        this.f67075l = new ArrayList();
        this.f67079p = 0;
        this.f67080q = 16;
        this.f67082s = Typeface.DEFAULT;
        this.f67083t = f67060p0;
        this.f67084u = W;
        this.f67085v = new c();
        this.f67086w = 2.0f;
        this.f67087x = -1;
        this.f67088y = true;
        this.B = 0.0f;
        this.C = -1;
        this.F = 7;
        this.J = 0;
        this.K = 0.0f;
        this.L = 0L;
        this.N = 17;
        this.O = 0;
        this.P = 0;
        this.R = false;
        this.S = true;
        float f10 = getResources().getDisplayMetrics().density;
        if (f10 < 1.0f) {
            this.Q = 2.4f;
        } else if (1.0f <= f10 && f10 < 2.0f) {
            this.Q = 3.6f;
        } else if (1.0f <= f10 && f10 < 2.0f) {
            this.Q = 4.5f;
        } else if (2.0f <= f10 && f10 < 3.0f) {
            this.Q = 6.0f;
        } else if (f10 >= 3.0f) {
            this.Q = f10 * 2.5f;
        }
        u();
        s(context);
    }

    public final void setLabel(String label) {
        setLabel(label, true);
    }

    public void setTextColor(@ColorInt int color) {
        this.f67083t = color;
        this.f67084u = color;
        this.f67071h.setColor(color);
        this.f67072i.setColor(color);
    }

    public static class c {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final float f67093i = 0.0f;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final float f67094j = 1.0f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected boolean f67095a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected boolean f67096b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected int f67097c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected int f67098d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        protected int f67099e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        protected int f67100f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        protected float f67101g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        protected float f67102h;

        public c() {
            this.f67095a = true;
            this.f67096b = false;
            this.f67097c = WheelView.f67056b1;
            this.f67098d = WheelView.f67060p0;
            this.f67099e = 100;
            this.f67100f = 220;
            this.f67101g = 0.1f;
            this.f67102h = 2.0f;
        }

        public c a(@IntRange(from = 1, to = 255) int alpha) {
            this.f67100f = alpha;
            return this;
        }

        public c b(@ColorInt int color) {
            this.f67097c = color;
            return this;
        }

        public c c(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float ratio) {
            this.f67101g = ratio;
            return this;
        }

        public c d(@IntRange(from = 1, to = 255) int alpha) {
            this.f67099e = alpha;
            return this;
        }

        public c e(@ColorInt int color) {
            this.f67096b = true;
            this.f67098d = color;
            return this;
        }

        public c f(boolean shadowVisible) {
            this.f67096b = shadowVisible;
            if (shadowVisible && this.f67097c == -8139290) {
                this.f67097c = this.f67098d;
                this.f67100f = 255;
            }
            return this;
        }

        public c g(float thick) {
            this.f67102h = thick;
            return this;
        }

        public c h(boolean visible) {
            this.f67095a = visible;
            return this;
        }

        public String toString() {
            return "visible=" + this.f67095a + ",color=" + this.f67097c + ",alpha=" + this.f67100f + ",thick=" + this.f67102h;
        }

        public c(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float ratio) {
            this.f67095a = true;
            this.f67096b = false;
            this.f67097c = WheelView.f67056b1;
            this.f67098d = WheelView.f67060p0;
            this.f67099e = 100;
            this.f67100f = 220;
            this.f67102h = 2.0f;
            this.f67101g = ratio;
        }
    }

    public final void setItems(List<?> items, int index) {
        setItems(items);
        setSelectedIndex(index);
    }

    public final void setItems(String[] list) {
        setItems(Arrays.asList(list));
    }

    public final void setItems(List<String> list, String item) {
        int iIndexOf = list.indexOf(item);
        if (iIndexOf == -1) {
            iIndexOf = 0;
        }
        setItems(list, iIndexOf);
    }

    public final void setItems(String[] list, int index) {
        setItems(Arrays.asList(list), index);
    }

    public final void setItems(String[] items, String item) {
        setItems(Arrays.asList(items), item);
    }
}
