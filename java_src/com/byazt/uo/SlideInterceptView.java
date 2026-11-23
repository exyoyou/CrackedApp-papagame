package com.byazt.uo;

import android.content.Context;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.aas.pf;
import com.byazt.dna.qp;
import com.byazt.ete.gr;
import com.byazt.ete.s;
import com.byazt.nr.d;
import com.byazt.omf.gt;
import com.byazt.ouz.n;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 139, 2293})
public class SlideInterceptView extends View implements qp.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f20871a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f20872c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final com.byazt.dq.c f20873da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c f20874i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f20875n;
    public final d sl;
    public boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Map<Integer, tt> f20876t;
    public float tt;
    public MotionEvent uj;
    public long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final s f20877x;

    public interface c {
        n c();

        void c(View view, gr grVar);
    }

    @com.byazt.zqa.c(c = {0, 1, 139, 1491})
    private static class tt {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f20878a = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f20879c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f20880n;
        public MotionEvent sp;
        public float tt;
        public float uj;
        public long ve;

        public tt(float f10, float f11, long j10, MotionEvent motionEvent) {
            this.f20879c = f10;
            this.tt = f11;
            this.ve = j10;
            this.uj = f10;
            this.f20880n = f11;
            this.sp = motionEvent;
        }
    }

    public SlideInterceptView(Context context, s sVar, c cVar) {
        super(context);
        this.sp = false;
        this.f20873da = new com.byazt.dq.c();
        this.sl = new d(this);
        this.f20876t = new HashMap();
        this.f20877x = sVar;
        this.f20874i = cVar;
    }

    private boolean c(float f10, float f11, int i10, int i11) {
        boolean z10 = (i10 & 1) == 1;
        boolean z11 = (i10 & 2) == 2;
        boolean z12 = (i10 & 4) == 4;
        boolean z13 = (i10 & 8) == 8;
        if (z10 && (-f11) > i11) {
            return true;
        }
        if (z11 && f11 > i11) {
            return true;
        }
        if (!z12 || (-f10) <= i11) {
            return z13 && f10 > ((float) i11);
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:37:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:53:0x0110  */
    /* JADX WARN: Code duplicated, block: B:56:0x0119 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:57:0x011a A[RETURN] */
    private boolean tt(MotionEvent motionEvent) {
        boolean z10;
        c cVar;
        c cVar2;
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        this.f20875n = motionEvent.getX();
        this.f20871a = motionEvent.getY();
        this.uj = motionEvent;
        float f10 = x10 - this.f20872c;
        float f11 = y10 - this.tt;
        long jCurrentTimeMillis = System.currentTimeMillis() - this.ve;
        int iRh = this.f20877x.rh();
        int iVe = pf.ve(getContext(), this.f20877x.my());
        int iGu = this.f20877x.gu();
        int iVe2 = pf.ve(getContext(), this.f20877x.gr());
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                this.sl.removeMessages(1);
                if (c(f10, f11, iRh, iVe)) {
                    if (!this.sp) {
                        this.sp = true;
                        cVar2 = this.f20874i;
                        if (cVar2 != null) {
                            cVar2.c(this, c(x10, y10, motionEvent, (byte) 2));
                        }
                    }
                } else if (!c(f10, f11, jCurrentTimeMillis, iGu, iVe2)) {
                    z10 = this.sp ? false : true;
                } else if (!this.sp) {
                    this.sp = true;
                    cVar = this.f20874i;
                    if (cVar != null) {
                        cVar.c(this, c(x10, y10, motionEvent, (byte) 5));
                    }
                }
            } else if (action != 2) {
                if (action == 3) {
                    float rawX = motionEvent.getRawX();
                    if (motionEvent.getRawY() == 0.0f && rawX == 0.0f) {
                        this.sl.removeMessages(1);
                    } else {
                        this.sl.removeMessages(1);
                        if (c(f10, f11, iRh, iVe)) {
                            if (!this.sp) {
                                this.sp = true;
                                cVar2 = this.f20874i;
                                if (cVar2 != null) {
                                    cVar2.c(this, c(x10, y10, motionEvent, (byte) 2));
                                }
                            }
                        } else if (!c(f10, f11, jCurrentTimeMillis, iGu, iVe2)) {
                            if (!this.sp) {
                                this.sp = true;
                                cVar = this.f20874i;
                                if (cVar != null) {
                                    cVar.c(this, c(x10, y10, motionEvent, (byte) 5));
                                }
                            }
                        } else if (this.sp) {
                        }
                    }
                }
            } else if (this.f20877x.qy() == 1 && c(f10, f11, iRh, iVe)) {
                if (!this.sp) {
                    this.sp = true;
                    c cVar3 = this.f20874i;
                    if (cVar3 != null) {
                        cVar3.c(this, c(x10, y10, motionEvent, (byte) 2));
                    }
                }
            } else if (c(f10, f11, jCurrentTimeMillis, iGu, iVe2) && !this.sp) {
                this.sp = true;
                c cVar4 = this.f20874i;
                if (cVar4 != null) {
                    cVar4.c(this, c(x10, y10, motionEvent, (byte) 5));
                }
            }
            if (z10) {
                this.f20873da.c(this);
            }
            if (this.sp) {
                return false;
            }
            return true;
        }
        this.f20872c = x10;
        this.tt = y10;
        this.ve = System.currentTimeMillis();
        if (iGu > 0) {
            this.sl.sendEmptyMessageDelayed(1, iGu);
        }
        if (z10) {
            this.f20873da.c(this);
        }
        if (this.sp) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0097  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:49:0x0116  */
    /* JADX WARN: Code duplicated, block: B:51:0x0130  */
    private boolean ve(MotionEvent motionEvent) {
        tt ttVar;
        int iGu;
        tt ttVar2;
        boolean z10;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        if (actionMasked == 0) {
            ttVar = new tt(motionEvent.getX(actionIndex), motionEvent.getY(actionIndex), System.currentTimeMillis(), motionEvent);
            this.f20876t.put(Integer.valueOf(pointerId), ttVar);
            if (actionMasked == 0) {
                float f10 = ttVar.f20879c;
                this.f20872c = f10;
                float f11 = ttVar.tt;
                this.tt = f11;
                this.ve = ttVar.ve;
                this.f20875n = f10;
                this.f20871a = f11;
                this.uj = motionEvent;
                iGu = this.f20877x.gu();
                if (iGu > 0) {
                    this.sl.sendEmptyMessageDelayed(1, iGu);
                }
            }
        } else if (actionMasked == 1) {
            ttVar2 = this.f20876t.get(Integer.valueOf(pointerId));
            if (ttVar2 != null && !ttVar2.f20878a) {
                c(ttVar2, ttVar2.uj - ttVar2.f20879c, ttVar2.f20880n - ttVar2.tt, System.currentTimeMillis() - ttVar2.ve, ttVar2.uj, ttVar2.f20880n, motionEvent, true);
            }
            this.f20876t.remove(Integer.valueOf(pointerId));
            if (actionMasked == 1) {
                this.sl.removeMessages(1);
                if (this.sp && this.f20876t.isEmpty()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    this.f20873da.c(this);
                }
                this.f20876t.clear();
                this.sp = false;
            }
        } else if (actionMasked == 2) {
            boolean z11 = false;
            for (int i10 = 0; i10 < motionEvent.getPointerCount(); i10++) {
                tt ttVar3 = this.f20876t.get(Integer.valueOf(motionEvent.getPointerId(i10)));
                if (ttVar3 != null && !ttVar3.f20878a) {
                    float x10 = motionEvent.getX(i10);
                    float y10 = motionEvent.getY(i10);
                    ttVar3.uj = x10;
                    ttVar3.f20880n = y10;
                    ttVar3.sp = motionEvent;
                    if (c(ttVar3, x10 - ttVar3.f20879c, y10 - ttVar3.tt, System.currentTimeMillis() - ttVar3.ve, x10, y10, motionEvent, false)) {
                        z11 = true;
                    }
                }
            }
            if (motionEvent.getPointerCount() > 0) {
                this.f20875n = motionEvent.getX(0);
                this.f20871a = motionEvent.getY(0);
                this.uj = motionEvent;
            }
            if (z11) {
                this.sp = true;
            }
        } else if (actionMasked == 3) {
            this.sl.removeMessages(1);
            this.f20876t.clear();
            this.sp = false;
        } else if (actionMasked == 5) {
            ttVar = new tt(motionEvent.getX(actionIndex), motionEvent.getY(actionIndex), System.currentTimeMillis(), motionEvent);
            this.f20876t.put(Integer.valueOf(pointerId), ttVar);
            if (actionMasked == 0) {
                float f12 = ttVar.f20879c;
                this.f20872c = f12;
                float f13 = ttVar.tt;
                this.tt = f13;
                this.ve = ttVar.ve;
                this.f20875n = f12;
                this.f20871a = f13;
                this.uj = motionEvent;
                iGu = this.f20877x.gu();
                if (iGu > 0) {
                    this.sl.sendEmptyMessageDelayed(1, iGu);
                }
            }
        } else if (actionMasked == 6) {
            ttVar2 = this.f20876t.get(Integer.valueOf(pointerId));
            if (ttVar2 != null) {
                c(ttVar2, ttVar2.uj - ttVar2.f20879c, ttVar2.f20880n - ttVar2.tt, System.currentTimeMillis() - ttVar2.ve, ttVar2.uj, ttVar2.f20880n, motionEvent, true);
            }
            this.f20876t.remove(Integer.valueOf(pointerId));
            if (actionMasked == 1) {
                this.sl.removeMessages(1);
                if (this.sp) {
                    z10 = false;
                } else {
                    z10 = false;
                }
                if (z10) {
                    this.f20873da.c(this);
                }
                this.f20876t.clear();
                this.sp = false;
            }
        }
        return !this.sp;
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f20873da.c(motionEvent)) {
            return false;
        }
        com.byazt.dq.c cVar = this.f20873da;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getId());
        cVar.c(this, sb2.toString(), motionEvent);
        c(motionEvent);
        return gt.tt().tw() ? ve(motionEvent) : tt(motionEvent);
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        if (!gt.tt().tw()) {
            if (!c(this.f20875n - this.f20872c, this.f20871a - this.tt, System.currentTimeMillis() - this.ve, this.f20877x.gu(), pf.ve(getContext(), this.f20877x.gr())) || this.sp) {
                return;
            }
            this.sp = true;
            c cVar = this.f20874i;
            if (cVar != null) {
                cVar.c(this, c(this.f20875n, this.f20871a, this.uj, (byte) 5));
                return;
            }
            return;
        }
        Iterator<Map.Entry<Integer, tt>> it2 = this.f20876t.entrySet().iterator();
        boolean z10 = false;
        while (it2.hasNext()) {
            tt value = it2.next().getValue();
            if (value != null && !value.f20878a && c(value.uj - value.f20879c, value.f20880n - value.tt, System.currentTimeMillis() - value.ve, this.f20877x.gu(), pf.ve(getContext(), this.f20877x.gr()))) {
                value.f20878a = true;
                c cVar2 = this.f20874i;
                if (cVar2 != null) {
                    cVar2.c(this, c(value, value.uj, value.f20880n, value.sp, (byte) 5));
                }
                z10 = true;
            }
        }
        if (z10) {
            this.sp = true;
        }
    }

    private void c(MotionEvent motionEvent) {
        n nVarC;
        c cVar = this.f20874i;
        if (cVar == null || (nVarC = cVar.c()) == null) {
            return;
        }
        nVarC.ve(motionEvent.getDeviceId());
        nVarC.tt(motionEvent.getSource());
        nVarC.uj(motionEvent.getToolType(0));
    }

    private boolean c(tt ttVar, float f10, float f11, long j10, float f12, float f13, MotionEvent motionEvent, boolean z10) {
        int iRh = this.f20877x.rh();
        int iVe = pf.ve(getContext(), this.f20877x.my());
        int iGu = this.f20877x.gu();
        int iVe2 = pf.ve(getContext(), this.f20877x.gr());
        if ((z10 || this.f20877x.qy() == 1) && !ttVar.f20878a) {
            if (c(f10, f11, iRh, iVe)) {
                ttVar.f20878a = true;
                c cVar = this.f20874i;
                if (cVar != null) {
                    cVar.c(this, c(ttVar, f12, f13, motionEvent, (byte) 2));
                }
                return true;
            }
        }
        if (ttVar.f20878a || !c(f10, f11, j10, iGu, iVe2)) {
            return false;
        }
        ttVar.f20878a = true;
        c cVar2 = this.f20874i;
        if (cVar2 != null) {
            cVar2.c(this, c(ttVar, f12, f13, motionEvent, (byte) 5));
        }
        return true;
    }

    private boolean c(float f10, float f11, long j10, int i10, int i11) {
        if (i10 <= 0 || j10 < i10) {
            return false;
        }
        float f12 = i11;
        return Math.abs(f10) <= f12 && Math.abs(f11) <= f12;
    }

    private gr c(float f10, float f11, MotionEvent motionEvent, byte b10) {
        gr.c cVar = new gr.c();
        cVar.uj(this.f20872c);
        cVar.ve(this.tt);
        cVar.tt(f10);
        cVar.c(f11);
        cVar.c(b10);
        cVar.c(b10 == 1);
        cVar.tt(this.ve);
        cVar.c(System.currentTimeMillis());
        return cVar.c();
    }

    private gr c(tt ttVar, float f10, float f11, MotionEvent motionEvent, byte b10) {
        gr.c cVar = new gr.c();
        cVar.uj(ttVar.f20879c);
        cVar.ve(ttVar.tt);
        cVar.tt(f10);
        cVar.c(f11);
        cVar.c(b10 == 1);
        cVar.c(b10);
        cVar.tt(ttVar.ve);
        cVar.c(System.currentTimeMillis());
        return cVar.c();
    }

    public void c() {
        this.sl.removeMessages(1);
        this.f20876t.clear();
    }
}
