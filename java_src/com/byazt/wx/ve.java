package com.byazt.wx;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DrawFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.byazt.jl.i;
import com.byazt.nr.m;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 525, 54})
public abstract class ve<Decoder extends i<?, ?>> extends Drawable implements i.c, tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f21688c = "ve";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set<Object> f21689a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f21690da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Runnable f21691i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Matrix f21692n;
    public final Set<WeakReference<Drawable.Callback>> sl;
    public Bitmap sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f21693t;
    public final Paint tt;
    public final DrawFilter uj;
    public final Decoder ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Handler f21694x;

    public ve(com.byazt.zt.tt ttVar) {
        Paint paint = new Paint();
        this.tt = paint;
        this.uj = new PaintFlagsDrawFilter(0, 3);
        this.f21692n = new Matrix();
        this.f21689a = new HashSet();
        this.f21694x = new Handler(Looper.getMainLooper()) { // from class: com.byazt.wx.ve.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i10 = message.what;
                if (i10 == 1) {
                    Iterator it2 = new ArrayList(ve.this.f21689a).iterator();
                    while (it2.hasNext()) {
                        it2.next();
                    }
                } else {
                    if (i10 != 2) {
                        return;
                    }
                    Iterator it3 = new ArrayList(ve.this.f21689a).iterator();
                    while (it3.hasNext()) {
                        it3.next();
                    }
                }
            }
        };
        this.f21691i = new Runnable() { // from class: com.byazt.wx.ve.2
            @Override // java.lang.Runnable
            public void run() {
                ve.this.invalidateSelf();
            }
        };
        this.f21690da = true;
        this.sl = new HashSet();
        this.f21693t = false;
        paint.setAntiAlias(true);
        this.ve = (Decoder) tt(ttVar, this);
    }

    private void n() {
        ArrayList arrayList = new ArrayList();
        Drawable.Callback callback = getCallback();
        boolean z10 = false;
        for (WeakReference weakReference : new HashSet(this.sl)) {
            Drawable.Callback callback2 = (Drawable.Callback) weakReference.get();
            if (callback2 == null) {
                arrayList.add(weakReference);
            } else if (callback2 == callback) {
                z10 = true;
            } else {
                callback2.invalidateDrawable(this);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.sl.remove((WeakReference) it2.next());
        }
        if (z10) {
            return;
        }
        this.sl.add(new WeakReference<>(callback));
    }

    private void uj() {
        this.ve.tt(this);
        if (this.f21690da) {
            this.ve.i();
        } else {
            this.ve.n();
        }
    }

    private void ve() {
        this.ve.c(this);
        if (this.f21690da) {
            this.ve.x();
        } else {
            if (this.ve.da()) {
                return;
            }
            this.ve.x();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Bitmap bitmap = this.sp;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        canvas.setDrawFilter(this.uj);
        canvas.drawBitmap(this.sp, this.f21692n, this.tt);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.Callback getCallback() {
        return super.getCallback();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f21693t) {
            return -1;
        }
        try {
            return this.ve.a().height();
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f21693t) {
            return -1;
        }
        try {
            return this.ve.a().width();
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        Iterator it2 = new HashSet(this.sl).iterator();
        while (it2.hasNext()) {
            Drawable.Callback callback = (Drawable.Callback) ((WeakReference) it2.next()).get();
            if (callback != null && callback != getCallback()) {
                callback.invalidateDrawable(this);
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.ve.da();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.tt.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i10, int i11, int i12, int i13) {
        super.setBounds(i10, i11, i12, i13);
        boolean zTt = this.ve.tt(getBounds().width(), getBounds().height());
        this.f21692n.setScale(((getBounds().width() * 1.0f) * this.ve.t()) / this.ve.a().width(), ((getBounds().height() * 1.0f) * this.ve.t()) / this.ve.a().height());
        if (zTt) {
            this.sp = Bitmap.createBitmap(this.ve.a().width() / this.ve.t(), this.ve.a().height() / this.ve.t(), Bitmap.Config.ARGB_4444);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.tt.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        n();
        if (this.f21690da) {
            if (z10) {
                if (!isRunning()) {
                    ve();
                }
            } else if (isRunning()) {
                uj();
            }
        }
        return super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.ve.da()) {
            this.ve.i();
        }
        this.ve.sl();
        ve();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        uj();
    }

    public abstract Decoder tt(com.byazt.zt.tt ttVar, i.c cVar);

    @Override // com.byazt.jl.i.c
    public void tt(ByteBuffer byteBuffer) {
        if (isRunning()) {
            Bitmap bitmap = this.sp;
            if (bitmap == null || bitmap.isRecycled()) {
                this.sp = Bitmap.createBitmap(this.ve.a().width() / this.ve.t(), this.ve.a().height() / this.ve.t(), Bitmap.Config.ARGB_4444);
            }
            byteBuffer.rewind();
            if (byteBuffer.remaining() < this.sp.getByteCount()) {
                m.uj(f21688c, "onRender:Buffer not large enough for pixels");
            } else {
                this.sp.copyPixelsFromBuffer(byteBuffer);
                this.f21694x.post(this.f21691i);
            }
        }
    }

    @Override // com.byazt.jl.i.c
    public void c() {
        Message.obtain(this.f21694x, 1).sendToTarget();
    }

    @Override // com.byazt.jl.i.c
    public void tt() {
        Message.obtain(this.f21694x, 2).sendToTarget();
    }
}
