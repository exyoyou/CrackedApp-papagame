package com.byazt.xyr;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.byazt.ete.ic;
import com.byazt.nr.m;
import com.byazt.ogz.t;
import com.byazt.omf.gt;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.googlecode.mp4parser.boxes.mp4.samplegrouping.d;
import com.umeng.analytics.pro.bm;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FIND_STREAM_INFO_PROBE_DURATION, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f22122c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final t f22123da;
    public final String gt;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f22125m;
    public volatile SensorEventListener my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f22126n;
    public int nu;
    public float[] qy;
    public int rh;
    public float[] rl;
    public int sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f22127t;
    public volatile boolean tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile JSONArray f22128u;
    public View uj;
    public volatile boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile JSONObject f22129x;
    public volatile JSONArray yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile JSONArray f22130z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f22121a = -1;
    public long sp = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<JSONObject> f22124i = new ArrayList();

    public sp(ic icVar) {
        this.gt = icVar.zm();
        t tVarHl = gt.tt().hl();
        this.f22123da = tVarHl;
        com.byazt.dj.tt ttVarIj = icVar.ij();
        if (tVarHl == null || ttVarIj == null) {
            return;
        }
        int iGt = ttVarIj.gt();
        this.f22122c = tVarHl.c(iGt);
        this.tt = tVarHl.tt(iGt);
        this.ve = tVarHl.ve(iGt) && tt();
    }

    private boolean tt() {
        com.byazt.nr.n nVarC = com.byazt.nr.n.c(gt.getContext());
        return (nVarC.c(10) == null || nVarC.c(4) == null || nVarC.c(15) == null) ? false : true;
    }

    private void uj() {
        if (this.ve && this.my == null) {
            this.f22128u = new JSONArray();
            this.yp = new JSONArray();
            this.f22130z = new JSONArray();
            this.rl = new float[9];
            this.qy = new float[3];
            this.sl = this.f22123da.tt();
            this.f22127t = this.f22123da.ve();
            this.my = new SensorEventListener() { // from class: com.byazt.xyr.sp.1
                @Override // android.hardware.SensorEventListener
                public void onAccuracyChanged(Sensor sensor, int i10) {
                }

                @Override // android.hardware.SensorEventListener
                public void onSensorChanged(SensorEvent sensorEvent) {
                    sp.this.c(sensorEvent);
                }
            };
            com.byazt.nr.n nVarC = com.byazt.nr.n.c(gt.getContext());
            nVarC.c(this.my, nVarC.c(10), this.f22127t);
            nVarC.c(this.my, nVarC.c(4), this.f22127t);
            nVarC.c(this.my, nVarC.c(15), this.f22127t);
        }
    }

    private void ve() {
        Object objUj = com.byazt.rgb.tt.uj(this.gt, 1);
        if (objUj instanceof JSONArray) {
            ((JSONArray) objUj).put(this.f22129x);
        } else {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(this.f22129x);
            com.byazt.rgb.tt.c(this.gt, 1, jSONArray);
        }
        this.f22129x = null;
    }

    public void c(ViewGroup viewGroup, MotionEvent motionEvent, boolean z10) {
        if (this.f22122c) {
            try {
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action != 1) {
                        if (action == 2) {
                            this.f22124i.add(c(motionEvent));
                            return;
                        } else if (action != 3) {
                            return;
                        }
                    }
                    View view = this.uj;
                    if (view != null && view.equals(c(viewGroup, motionEvent.getX(), motionEvent.getY())) && this.f22126n && z10) {
                        return;
                    }
                    if (this.f22129x != null) {
                        this.f22129x.putOpt("ended", c(motionEvent));
                        this.f22129x.putOpt("moves", c(this.f22124i, this.f22123da.c()));
                    }
                    ve();
                    return;
                }
                this.uj = c(viewGroup, motionEvent.getX(), motionEvent.getY());
                this.f22126n = z10;
                this.f22121a = motionEvent.getEventTime();
                this.f22129x = new JSONObject();
                this.f22129x.putOpt("began", c(motionEvent));
                this.f22124i.clear();
            } catch (Exception e10) {
                m.c(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(com.byazt.xj.ve veVar) {
        try {
            com.byazt.rgb.tt.c(this.gt, 0, new c(veVar).c());
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    private void tt(JSONArray jSONArray, SensorEvent sensorEvent) {
        if (jSONArray == null || sensorEvent == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", Math.round(((double) sensorEvent.values[0]) * 100.0d) / 100.0d);
            jSONObject.put("y", Math.round(((double) sensorEvent.values[1]) * 100.0d) / 100.0d);
            jSONObject.put(bm.aH, Math.round(((double) sensorEvent.values[2]) * 100.0d) / 100.0d);
            jSONObject.put("ts", (sensorEvent.timestamp - this.sp) / C.MICROS_PER_SECOND);
        } catch (Exception e10) {
            m.c(e10);
        }
        jSONArray.put(jSONObject);
    }

    private JSONArray c(List<JSONObject> list, int i10) {
        if (list.isEmpty()) {
            return null;
        }
        int size = list.size();
        int i11 = 0;
        int i12 = size > i10 ? (size / i10) - 1 : 0;
        JSONArray jSONArray = new JSONArray();
        if (i12 > 0) {
            while (i11 < i10) {
                i11++;
                int i13 = (i11 * i12) - 1;
                if (i13 < size) {
                    jSONArray.put(list.get(i13));
                }
            }
        } else {
            int iMin = Math.min(size, i10);
            while (i11 < iMin) {
                jSONArray.put(list.get(i11));
                i11++;
            }
        }
        return jSONArray;
    }

    private View c(ViewGroup viewGroup, float f10, float f11) {
        View view = null;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt.getVisibility() == 0 && c(f10, f11, childAt)) {
                if (childAt instanceof ViewGroup) {
                    View viewC = c((ViewGroup) childAt, f10, f11);
                    if (viewC != null) {
                        childAt = viewC;
                    }
                    if (childAt.isClickable()) {
                        return childAt;
                    }
                    view = childAt;
                } else if (childAt.isClickable()) {
                    return childAt;
                }
            }
        }
        return view;
    }

    private boolean c(float f10, float f11, View view) {
        return f10 >= ((float) view.getLeft()) && f10 <= ((float) view.getRight()) && f11 >= ((float) view.getTop()) && f11 <= ((float) view.getBottom());
    }

    private JSONObject c(MotionEvent motionEvent) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("nums", motionEvent.getPointerCount());
            jSONObject.put("x", String.format("%.2f", Float.valueOf(motionEvent.getX())));
            jSONObject.put("y", String.format("%.2f", Float.valueOf(motionEvent.getY())));
            jSONObject.put("ts", motionEvent.getEventTime() - this.f22121a);
        } catch (Exception e10) {
            m.c(e10);
        }
        return jSONObject;
    }

    public void c() {
        if (this.my != null) {
            this.my = null;
            com.byazt.nr.n.c(gt.getContext()).c(this.my);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("accelerometer", this.f22128u);
                jSONObject.putOpt("gyro", this.yp);
                jSONObject.putOpt("device", this.f22130z);
                com.byazt.rgb.tt.c(this.gt, 2, jSONObject);
            } catch (Exception e10) {
                m.c(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(SensorEvent sensorEvent) {
        int i10;
        int type = sensorEvent.sensor.getType();
        if (this.sp < 0) {
            this.sp = sensorEvent.timestamp;
        }
        if (type == 4) {
            int i11 = this.nu;
            if (i11 < this.sl) {
                this.nu = i11 + 1;
                tt(this.yp, sensorEvent);
            }
        } else if (type == 10) {
            int i12 = this.f22125m;
            if (i12 < this.sl) {
                this.f22125m = i12 + 1;
                tt(this.f22128u, sensorEvent);
            }
        } else if (type == 15 && (i10 = this.rh) < this.sl) {
            this.rh = i10 + 1;
            c(this.f22130z, sensorEvent);
        }
        int i13 = this.f22125m;
        int i14 = this.sl;
        if (i13 < i14 || this.nu < i14 || this.rh < i14) {
            return;
        }
        c();
    }

    private void c(JSONArray jSONArray, SensorEvent sensorEvent) {
        float[] fArr;
        float[] fArr2;
        if (jSONArray == null || sensorEvent == null || (fArr = this.rl) == null || this.qy == null || (fArr2 = sensorEvent.values) == null || fArr2.length < 4) {
            return;
        }
        SensorManager.getRotationMatrixFromVector(fArr, fArr2);
        SensorManager.getOrientation(this.rl, this.qy);
        float degrees = (float) Math.toDegrees(this.qy[0]);
        float degrees2 = (float) Math.toDegrees(this.qy[1]);
        float degrees3 = (float) Math.toDegrees(this.qy[2]);
        float f10 = (degrees + 360.0f) % 360.0f;
        float fMax = Math.max(-90.0f, Math.min(90.0f, degrees2));
        float f11 = (degrees3 + 360.0f) % 360.0f;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("pitch", Math.round(((double) fMax) * 100.0d) / 100.0d);
            jSONObject.put(d.f33665b, Math.round(((double) f11) * 100.0d) / 100.0d);
            jSONObject.put("yaw", Math.round(((double) f10) * 100.0d) / 100.0d);
            jSONObject.put("ts", (sensorEvent.timestamp - this.sp) / C.MICROS_PER_SECOND);
        } catch (Exception e10) {
            m.c(e10);
        }
        jSONArray.put(jSONObject);
    }

    public void c(final com.byazt.xj.ve veVar) {
        uj();
        if (this.tt) {
            this.tt = false;
            final View viewI = veVar.i();
            if (viewI != null) {
                viewI.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.xyr.sp.2
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        viewI.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                        sp.this.tt(veVar);
                    }
                });
            }
        }
    }
}
