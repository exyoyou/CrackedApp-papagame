package com.byazt.dq;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.cd.x;
import com.byazt.sz.m;
import com.byazt.sz.rh;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1212, 46})
public class n {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public m f13058da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public m f13059i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public c f13060m;
    public String sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Context f13062t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f13063u;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f13065z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13057c = 0;
    public int tt = Integer.MAX_VALUE;
    public int ve = Integer.MAX_VALUE;
    public AtomicBoolean uj = new AtomicBoolean(true);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f13061n = Float.MIN_VALUE;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f13056a = Float.MIN_VALUE;
    public Map<Integer, Float> sp = new HashMap();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Map<Integer, Float> f13064x = new HashMap();

    public n(Context context, m mVar, boolean z10, boolean z11, boolean z12) {
        this.f13062t = context;
        this.f13059i = mVar;
        this.f13063u = z10;
        this.yp = z11;
        this.f13065z = z12;
        ve();
    }

    private void ve() {
        if (this.yp) {
            this.f13060m = new c();
        }
        m mVar = this.f13059i;
        if (mVar == null) {
            return;
        }
        this.f13057c = mVar.ve().optInt("slideThreshold");
        this.sl = this.f13059i.ve().optString("slideDirection");
        this.tt = this.f13059i.ve().optInt("frequency", Integer.MAX_VALUE);
        this.ve = this.f13059i.ve().optInt("effectiveDuration", Integer.MAX_VALUE);
        this.uj.get();
    }

    public void tt() {
        this.f13061n = Float.MIN_VALUE;
        this.f13056a = Float.MIN_VALUE;
        this.sp.clear();
        this.f13064x.clear();
    }

    public void c() {
        if (this.ve == Integer.MAX_VALUE) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.byazt.dq.n.1
            @Override // java.lang.Runnable
            public void run() {
                n.this.uj.set(false);
            }
        }, this.ve);
    }

    private void c(int i10) {
        this.sp.remove(Integer.valueOf(i10));
        this.f13064x.remove(Integer.valueOf(i10));
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0047  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:49:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:54:0x010f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0114 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x0116  */
    /* JADX WARN: Code duplicated, block: B:60:0x011f  */
    /* JADX WARN: Code duplicated, block: B:62:0x0126  */
    private boolean tt(rh rhVar, com.byazt.xj.ve veVar, MotionEvent motionEvent, boolean z10) {
        float fFloatValue;
        float fFloatValue2;
        float x10;
        float y10;
        int iTt;
        int iTt2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        if (actionMasked == 0) {
            this.sp.put(Integer.valueOf(pointerId), Float.valueOf(motionEvent.getX(actionIndex)));
            this.f13064x.put(Integer.valueOf(pointerId), Float.valueOf(motionEvent.getY(actionIndex)));
            Objects.toString(this.sp.get(Integer.valueOf(pointerId)));
            Objects.toString(this.f13064x.get(Integer.valueOf(pointerId)));
        } else {
            if (actionMasked == 1) {
                if (this.sp.containsKey(Integer.valueOf(pointerId)) && this.f13064x.containsKey(Integer.valueOf(pointerId))) {
                    fFloatValue = this.sp.get(Integer.valueOf(pointerId)).floatValue();
                    fFloatValue2 = this.f13064x.get(Integer.valueOf(pointerId)).floatValue();
                    x10 = motionEvent.getX(actionIndex);
                    y10 = motionEvent.getY(actionIndex);
                    if (!this.f13063u && Math.abs(x10 - fFloatValue) <= 10.0f && Math.abs(y10 - fFloatValue2) <= 10.0f && rhVar != null) {
                        c(pointerId);
                        rhVar.c(this.f13058da, veVar, veVar);
                        return true;
                    }
                    if (this.f13057c != 0 && rhVar != null) {
                        c(pointerId);
                        c(rhVar, this.f13059i, veVar);
                        return true;
                    }
                    iTt = x.tt(this.f13062t, x10 - fFloatValue);
                    iTt2 = x.tt(this.f13062t, y10 - fFloatValue2);
                    if (TextUtils.equals(this.sl, "up")) {
                        iTt = -iTt2;
                    } else if (!TextUtils.equals(this.sl, ScrollClickView.DIR_DOWN)) {
                        iTt = iTt2;
                    } else if (TextUtils.equals(this.sl, ScrollClickView.DIR_LEFT)) {
                        iTt = -iTt;
                    } else if (!TextUtils.equals(this.sl, ScrollClickView.DIR_RIGHT)) {
                        iTt = (int) Math.abs(Math.sqrt(Math.pow(iTt, 2.0d) + Math.pow(iTt2, 2.0d)));
                    }
                    if (iTt >= this.f13057c) {
                        c(pointerId);
                        c(veVar);
                    } else if (rhVar != null) {
                        c(pointerId);
                        c(rhVar, this.f13059i, veVar);
                        return true;
                    }
                }
                return false;
            }
            if (actionMasked == 3) {
                for (int i10 = 0; i10 < motionEvent.getPointerCount(); i10++) {
                    int pointerId2 = motionEvent.getPointerId(i10);
                    if (this.sp.containsKey(Integer.valueOf(pointerId2)) && this.f13064x.containsKey(Integer.valueOf(pointerId2))) {
                        c(pointerId2);
                    }
                }
                return false;
            }
            if (actionMasked == 5) {
                this.sp.put(Integer.valueOf(pointerId), Float.valueOf(motionEvent.getX(actionIndex)));
                this.f13064x.put(Integer.valueOf(pointerId), Float.valueOf(motionEvent.getY(actionIndex)));
                Objects.toString(this.sp.get(Integer.valueOf(pointerId)));
                Objects.toString(this.f13064x.get(Integer.valueOf(pointerId)));
            } else if (actionMasked == 6) {
                if (this.sp.containsKey(Integer.valueOf(pointerId))) {
                    fFloatValue = this.sp.get(Integer.valueOf(pointerId)).floatValue();
                    fFloatValue2 = this.f13064x.get(Integer.valueOf(pointerId)).floatValue();
                    x10 = motionEvent.getX(actionIndex);
                    y10 = motionEvent.getY(actionIndex);
                    if (!this.f13063u) {
                    }
                    if (this.f13057c != 0) {
                    }
                    iTt = x.tt(this.f13062t, x10 - fFloatValue);
                    iTt2 = x.tt(this.f13062t, y10 - fFloatValue2);
                    if (TextUtils.equals(this.sl, "up")) {
                        iTt = -iTt2;
                    } else if (!TextUtils.equals(this.sl, ScrollClickView.DIR_DOWN)) {
                        iTt = iTt2;
                    } else if (TextUtils.equals(this.sl, ScrollClickView.DIR_LEFT)) {
                        iTt = -iTt;
                    } else if (!TextUtils.equals(this.sl, ScrollClickView.DIR_RIGHT)) {
                        iTt = (int) Math.abs(Math.sqrt(Math.pow(iTt, 2.0d) + Math.pow(iTt2, 2.0d)));
                    }
                    if (iTt >= this.f13057c) {
                        c(pointerId);
                        c(veVar);
                    } else if (rhVar != null) {
                        c(pointerId);
                        c(rhVar, this.f13059i, veVar);
                        return true;
                    }
                }
                return false;
            }
        }
        return true;
    }

    public boolean c(rh rhVar, com.byazt.xj.ve veVar, MotionEvent motionEvent, boolean z10) {
        c cVar = this.f13060m;
        if (cVar != null) {
            if (cVar.c(motionEvent)) {
                return false;
            }
            this.f13060m.c(veVar, motionEvent);
        }
        if (this.f13065z) {
            return tt(rhVar, veVar, motionEvent, z10);
        }
        return ve(rhVar, veVar, motionEvent, z10);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0030  */
    /* JADX WARN: Code duplicated, block: B:36:0x008c  */
    /* JADX WARN: Code duplicated, block: B:37:0x008e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0098  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00af  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:49:0x00cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:53:0x00da  */
    private boolean ve(rh rhVar, com.byazt.xj.ve veVar, MotionEvent motionEvent, boolean z10) {
        float x10;
        float y10;
        int iTt;
        int iTt2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f13061n = motionEvent.getX();
            this.f13056a = motionEvent.getY();
        } else if (action == 1) {
            x10 = motionEvent.getX();
            y10 = motionEvent.getY();
            if (!this.f13063u && Math.abs(x10 - this.f13061n) <= 10.0f && Math.abs(y10 - this.f13056a) <= 10.0f && rhVar != null) {
                tt();
                rhVar.c(this.f13058da, veVar, veVar);
                return true;
            }
            if (this.f13057c != 0 && rhVar != null) {
                tt();
                c(rhVar, this.f13059i, veVar);
                return true;
            }
            iTt = x.tt(this.f13062t, x10 - this.f13061n);
            iTt2 = x.tt(this.f13062t, y10 - this.f13056a);
            if (TextUtils.equals(this.sl, "up")) {
                iTt = -iTt2;
            } else if (!TextUtils.equals(this.sl, ScrollClickView.DIR_DOWN)) {
                iTt = iTt2;
            } else if (TextUtils.equals(this.sl, ScrollClickView.DIR_LEFT)) {
                iTt = -iTt;
            } else if (!TextUtils.equals(this.sl, ScrollClickView.DIR_RIGHT)) {
                iTt = (int) Math.abs(Math.sqrt(Math.pow(iTt, 2.0d) + Math.pow(iTt2, 2.0d)));
            }
            if (iTt >= this.f13057c) {
                tt();
                c(veVar);
                return false;
            }
            if (rhVar != null) {
                tt();
                c(rhVar, this.f13059i, veVar);
                return true;
            }
            tt();
        } else if (action == 3) {
            if (this.f13061n == Float.MIN_VALUE || this.f13056a == Float.MIN_VALUE) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            if (motionEvent.getRawY() != 0.0f || rawX != 0.0f) {
                x10 = motionEvent.getX();
                y10 = motionEvent.getY();
                if (!this.f13063u) {
                }
                if (this.f13057c != 0) {
                }
                iTt = x.tt(this.f13062t, x10 - this.f13061n);
                iTt2 = x.tt(this.f13062t, y10 - this.f13056a);
                if (TextUtils.equals(this.sl, "up")) {
                    iTt = -iTt2;
                } else if (!TextUtils.equals(this.sl, ScrollClickView.DIR_DOWN)) {
                    iTt = iTt2;
                } else if (TextUtils.equals(this.sl, ScrollClickView.DIR_LEFT)) {
                    iTt = -iTt;
                } else if (!TextUtils.equals(this.sl, ScrollClickView.DIR_RIGHT)) {
                    iTt = (int) Math.abs(Math.sqrt(Math.pow(iTt, 2.0d) + Math.pow(iTt2, 2.0d)));
                }
                if (iTt >= this.f13057c) {
                    tt();
                    c(veVar);
                    return false;
                }
                if (rhVar != null) {
                    tt();
                    c(rhVar, this.f13059i, veVar);
                    return true;
                }
                tt();
            }
        }
        return true;
    }

    private void c(com.byazt.xj.ve veVar) {
        c cVar = this.f13060m;
        if (cVar != null) {
            cVar.c(veVar);
        }
    }

    private void c(rh rhVar, m mVar, com.byazt.xj.ve veVar) {
        if (this.tt <= 0) {
            c(veVar);
            return;
        }
        if (!this.uj.get()) {
            c(veVar);
            return;
        }
        rhVar.c(mVar, veVar, veVar);
        int i10 = this.tt;
        if (i10 != Integer.MAX_VALUE) {
            this.tt = i10 - 1;
        }
    }

    public n(Context context, m mVar, m mVar2, boolean z10, boolean z11, boolean z12) {
        this.f13062t = context;
        this.f13059i = mVar;
        this.f13058da = mVar2;
        this.f13063u = z10;
        this.yp = z11;
        this.f13065z = z12;
        ve();
    }
}
