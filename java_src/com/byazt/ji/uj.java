package com.byazt.ji;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.beizi.fusion.widget.ScrollClickView;
import com.byazt.pm.u;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 222, 15})
public class uj extends tt {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public AtomicBoolean f15838m;
    public u my;
    public int nu;
    public String rh;
    public float sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f15839t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f15840u;
    public AtomicInteger yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f15841z;

    public uj(Context context) {
        super(context);
        this.f15840u = 0;
        this.yp = new AtomicInteger(Integer.MAX_VALUE);
        this.f15841z = Integer.MAX_VALUE;
        this.f15838m = new AtomicBoolean(true);
        this.nu = 0;
        this.rh = "up";
    }

    @Override // com.byazt.ji.tt
    public boolean c(Object... objArr) {
        Object obj;
        Object obj2;
        if (objArr == null || objArr.length <= 0) {
            return false;
        }
        Map<String, Object> map = this.f15836n;
        if (map != null) {
            Object obj3 = map.get(HmInputMappingContent.FIELD_DIRECTION);
            String strValueOf = "all";
            if (obj3 != null && !TextUtils.isEmpty(String.valueOf(obj3))) {
                strValueOf = String.valueOf(obj3);
            }
            this.rh = strValueOf;
            Object obj4 = this.f15836n.get("distance");
            if (obj4 == null) {
                this.f15840u = 0;
            } else {
                this.f15840u = com.byazt.cd.ve.c(String.valueOf(obj4), 0);
            }
            if (this.yp.get() == Integer.MAX_VALUE && (obj2 = this.f15836n.get("frequency")) != null) {
                this.yp.set(com.byazt.cd.ve.c(String.valueOf(obj2), Integer.MAX_VALUE));
            }
            if (this.f15841z == Integer.MAX_VALUE && (obj = this.f15836n.get("effectiveDuration")) != null) {
                this.f15841z = com.byazt.cd.ve.c(String.valueOf(obj), Integer.MAX_VALUE);
            }
            Object obj5 = this.f15836n.get("inView");
            if (obj5 != null) {
                this.nu = com.byazt.cd.ve.c(String.valueOf(obj5), 0);
            }
            this.f15838m.get();
        }
        MotionEvent motionEvent = (MotionEvent) objArr[0];
        c();
        u uVar = this.my;
        return uVar != null ? uVar.c(this.tt, motionEvent, this.f15833c, this, this.rh, this.f15840u, this.yp, this.nu, this.f15838m.get()) : c(this.tt, motionEvent);
    }

    private void c() {
        if (this.f15841z == Integer.MAX_VALUE || this.tt == null || System.currentTimeMillis() - this.tt.gu() < this.f15841z) {
            return;
        }
        this.f15838m.set(false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:12:0x001f  */
    /* JADX WARN: Code duplicated, block: B:21:0x0054  */
    /* JADX WARN: Code duplicated, block: B:23:0x005c  */
    /* JADX WARN: Code duplicated, block: B:24:0x005e  */
    /* JADX WARN: Code duplicated, block: B:26:0x0066  */
    /* JADX WARN: Code duplicated, block: B:27:0x0068  */
    /* JADX WARN: Code duplicated, block: B:29:0x0070  */
    /* JADX WARN: Code duplicated, block: B:30:0x0072  */
    /* JADX WARN: Code duplicated, block: B:32:0x007a  */
    /* JADX WARN: Code duplicated, block: B:33:0x007c  */
    /* JADX WARN: Code duplicated, block: B:35:0x0084  */
    /* JADX WARN: Code duplicated, block: B:36:0x0086  */
    /* JADX WARN: Code duplicated, block: B:38:0x0089 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x008b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x008d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x008f  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:44:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:47:0x00af  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:51:0x00bc A[RETURN] */
    private boolean c(com.byazt.xj.ve veVar, MotionEvent motionEvent) {
        float x10;
        float y10;
        int iTt;
        int iTt2;
        byte b10;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.sl = motionEvent.getX();
            this.f15839t = motionEvent.getY();
        } else if (action == 1) {
            x10 = motionEvent.getX();
            y10 = motionEvent.getY();
            if (this.f15840u != 0 && this.f15833c != null) {
                return c(veVar, x10, y10);
            }
            iTt = com.byazt.cd.x.tt(this.f15834da, x10 - this.sl);
            iTt2 = com.byazt.cd.x.tt(this.f15834da, y10 - this.f15839t);
            switch (this.rh) {
                case "up":
                    b10 = 0;
                    break;
                case "all":
                    b10 = 4;
                    break;
                case "down":
                    b10 = 1;
                    break;
                case "left":
                    b10 = 2;
                    break;
                case "right":
                    b10 = 3;
                    break;
                default:
                    b10 = -1;
                    break;
            }
            if (b10 != 0) {
                iTt = -iTt2;
            } else if (b10 != 1) {
                iTt = iTt2;
            } else if (b10 != 2) {
                iTt = -iTt;
            } else if (b10 != 3) {
                iTt = (int) Math.abs(Math.sqrt(Math.pow(iTt, 2.0d) + Math.pow(iTt2, 2.0d)));
            }
            if (iTt >= this.f15840u) {
                return false;
            }
            if (this.f15833c != null) {
                this.sl = 0.0f;
                this.f15839t = 0.0f;
                return c(veVar, x10, y10);
            }
        } else if (action == 3) {
            float rawX = motionEvent.getRawX();
            if (motionEvent.getRawY() != 0.0f || rawX != 0.0f) {
                x10 = motionEvent.getX();
                y10 = motionEvent.getY();
                if (this.f15840u != 0) {
                }
                iTt = com.byazt.cd.x.tt(this.f15834da, x10 - this.sl);
                iTt2 = com.byazt.cd.x.tt(this.f15834da, y10 - this.f15839t);
                switch (this.rh) {
                    case 3739:
                        if (r6.equals("up")) {
                            b10 = -1;
                        } else {
                            b10 = 0;
                        }
                        break;
                    case 96673:
                        if (r6.equals("all")) {
                            b10 = -1;
                        } else {
                            b10 = 4;
                        }
                        break;
                    case 3089570:
                        if (r6.equals(ScrollClickView.DIR_DOWN)) {
                            b10 = -1;
                        } else {
                            b10 = 1;
                        }
                        break;
                    case 3317767:
                        if (r6.equals(ScrollClickView.DIR_LEFT)) {
                            b10 = -1;
                        } else {
                            b10 = 2;
                        }
                        break;
                    case 108511772:
                        if (r6.equals(ScrollClickView.DIR_RIGHT)) {
                            b10 = -1;
                        } else {
                            b10 = 3;
                        }
                        break;
                    default:
                        b10 = -1;
                        break;
                }
                if (b10 != 0) {
                    iTt = -iTt2;
                } else if (b10 != 1) {
                    iTt = iTt2;
                } else if (b10 != 2) {
                    iTt = -iTt;
                } else if (b10 != 3) {
                    iTt = (int) Math.abs(Math.sqrt(Math.pow(iTt, 2.0d) + Math.pow(iTt2, 2.0d)));
                }
                if (iTt >= this.f15840u) {
                    return false;
                }
                if (this.f15833c != null) {
                    this.sl = 0.0f;
                    this.f15839t = 0.0f;
                    return c(veVar, x10, y10);
                }
            }
        }
        return true;
    }

    private boolean c(com.byazt.xj.ve veVar, float f10, float f11) {
        if (this.yp.get() <= 0 || !this.f15838m.get()) {
            return false;
        }
        if (this.nu == 1 && !c(veVar.i(), f10, f11)) {
            return false;
        }
        this.f15833c.c(veVar, this.f15832a, this.ve.tt(), this.ve);
        if (this.yp.get() != Integer.MAX_VALUE) {
            this.yp.decrementAndGet();
        }
        return true;
    }

    private boolean c(View view, float f10, float f11) {
        return f10 >= 0.0f && f10 < ((float) view.getWidth()) && f11 >= 0.0f && f11 < ((float) view.getHeight());
    }

    public void c(u uVar) {
        this.my = uVar;
    }
}
