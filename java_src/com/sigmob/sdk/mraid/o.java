package com.sigmob.sdk.mraid;

import android.content.Context;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.al;
import com.sigmob.sdk.base.mta.PointCategory;
import com.umeng.analytics.pro.bm;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class o extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected al.a f81048c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected com.sigmob.sdk.mraid2.j f81049d;

    protected o(String uniqueId) {
        super(uniqueId);
    }

    protected al.a a(Context context) {
        return new al.a(context, new al.c() { // from class: com.sigmob.sdk.mraid.o.1
            @Override // com.sigmob.sdk.base.common.al.c
            public void a() {
                o oVar = o.this;
                com.sigmob.sdk.mraid2.j jVar = oVar.f81049d;
                if (jVar == null) {
                    return;
                }
                jVar.a(oVar.f81045a, "twist", "began", new HashMap<>());
            }

            @Override // com.sigmob.sdk.base.common.al.c
            public void a(float progress) {
            }

            @Override // com.sigmob.sdk.base.common.al.c
            public void a(Map<String, Number> info) {
                if (info == null || o.this.f81049d == null) {
                    return;
                }
                HashMap<String, Object> map = new HashMap<>();
                Number number = info.get("turn_x");
                Number number2 = info.get("turn_y");
                Number number3 = info.get("turn_z");
                Number number4 = info.get("turn_time");
                map.put("x", String.valueOf(number));
                map.put("y", String.valueOf(number2));
                map.put(bm.aH, String.valueOf(number3));
                map.put("time", number4);
                o oVar = o.this;
                oVar.f81049d.a(oVar.f81045a, "twist", PointCategory.END, map);
            }
        }, al.d.WRING);
    }

    public abstract void a(float progress);

    protected al.a b(Context context) {
        al.a aVar = new al.a(context, new al.c() { // from class: com.sigmob.sdk.mraid.o.2
            @Override // com.sigmob.sdk.base.common.al.c
            public void a() {
                o oVar = o.this;
                com.sigmob.sdk.mraid2.j jVar = oVar.f81049d;
                if (jVar == null) {
                    return;
                }
                jVar.a(oVar.f81045a, "shake", "began", new HashMap<>());
            }

            @Override // com.sigmob.sdk.base.common.al.c
            public void a(float progress) {
            }

            @Override // com.sigmob.sdk.base.common.al.c
            public void a(Map<String, Number> info) {
                if (info == null || o.this.f81049d == null) {
                    return;
                }
                HashMap<String, Object> map = new HashMap<>();
                Number number = info.get("x_max_acc");
                Number number2 = info.get("y_max_acc");
                Number number3 = info.get("z_max_acc");
                map.put("x", String.valueOf(number));
                map.put("y", String.valueOf(number2));
                map.put(bm.aH, String.valueOf(number3));
                o oVar = o.this;
                oVar.f81049d.a(oVar.f81045a, "shake", PointCategory.END, map);
            }
        }, al.d.SHAKE);
        aVar.a(1);
        return aVar;
    }

    public abstract void b(float progress);

    protected al.a c(Context context) {
        al.a aVar = new al.a(context, new al.c() { // from class: com.sigmob.sdk.mraid.o.3
            @Override // com.sigmob.sdk.base.common.al.c
            public void a() {
                o oVar = o.this;
                com.sigmob.sdk.mraid2.j jVar = oVar.f81049d;
                if (jVar == null) {
                    return;
                }
                jVar.a(oVar.f81045a, "swing", "began", new HashMap<>());
            }

            @Override // com.sigmob.sdk.base.common.al.c
            public void a(float progress) {
                o.this.a(progress);
                if (o.this.f81049d == null) {
                    return;
                }
                HashMap<String, Object> map = new HashMap<>();
                map.put("progress", Integer.valueOf((int) (progress * 100.0f)));
                o oVar = o.this;
                oVar.f81049d.a(oVar.f81045a, "swing", "progress", map);
            }

            @Override // com.sigmob.sdk.base.common.al.c
            public void a(Map<String, Number> info) {
                if (info == null || o.this.f81049d == null) {
                    return;
                }
                HashMap<String, Object> map = new HashMap<>();
                Number number = info.get("x_max_acc");
                Number number2 = info.get("y_max_acc");
                Number number3 = info.get("z_max_acc");
                map.put("x", String.valueOf(number));
                map.put("y", String.valueOf(number2));
                map.put(bm.aH, String.valueOf(number3));
                o oVar = o.this;
                oVar.f81049d.a(oVar.f81045a, "swing", PointCategory.END, map);
            }
        }, al.d.SWING);
        aVar.a(1);
        return aVar;
    }

    protected al.a d(Context context) {
        al.a aVar = new al.a(context, new al.c() { // from class: com.sigmob.sdk.mraid.o.4
            @Override // com.sigmob.sdk.base.common.al.c
            public void a() {
                o oVar = o.this;
                com.sigmob.sdk.mraid2.j jVar = oVar.f81049d;
                if (jVar == null) {
                    return;
                }
                jVar.a(oVar.f81045a, "slope", "began", new HashMap<>());
            }

            @Override // com.sigmob.sdk.base.common.al.c
            public void a(float progress) {
                o.this.b(progress);
                if (o.this.f81049d == null) {
                    return;
                }
                HashMap<String, Object> map = new HashMap<>();
                map.put("progress", Integer.valueOf((int) (progress * 100.0f)));
                o oVar = o.this;
                oVar.f81049d.a(oVar.f81045a, "slope", "progress", map);
            }

            @Override // com.sigmob.sdk.base.common.al.c
            public void a(Map<String, Number> info) {
                if (info == null || o.this.f81049d == null) {
                    return;
                }
                HashMap<String, Object> map = new HashMap<>();
                Number number = info.get("turn_x");
                Number number2 = info.get("turn_y");
                Number number3 = info.get("turn_z");
                Number number4 = info.get("turn_time");
                map.put("x", String.valueOf(number));
                map.put("y", String.valueOf(number2));
                map.put(bm.aH, String.valueOf(number3));
                map.put("time", number4);
                o oVar = o.this;
                oVar.f81049d.a(oVar.f81045a, "slope", PointCategory.END, map);
            }
        }, al.d.SLOPE);
        aVar.a(1);
        return aVar;
    }

    public void e(int shakeTimeThreshold) {
        al.a aVar = this.f81048c;
        if (aVar == null) {
            return;
        }
        aVar.f(shakeTimeThreshold);
    }

    public void a(int level) {
        al.a aVar = this.f81048c;
        if (aVar == null) {
            return;
        }
        aVar.c(level);
    }

    public void b(int sensitivityRaw) {
        al.a aVar = this.f81048c;
        if (aVar == null) {
            return;
        }
        aVar.b(sensitivityRaw);
    }

    public void c(int shakeTriggerType) {
        al.a aVar = this.f81048c;
        if (aVar == null) {
            return;
        }
        aVar.d(shakeTriggerType);
    }

    public void d() {
        al.a aVar = this.f81048c;
        if (aVar == null) {
            return;
        }
        aVar.a();
    }

    protected void a(Context context, int type) {
        al.a aVarB;
        if (type == 0) {
            aVarB = b(context);
        } else if (type == 1) {
            aVarB = a(context);
        } else if (type == 2) {
            aVarB = d(context);
        } else {
            if (type != 3) {
                SigmobLog.e("Motion type is not support.");
                return;
            }
            aVarB = c(context);
        }
        this.f81048c = aVarB;
    }

    public void d(int widgetIntervalTime) {
        al.a aVar = this.f81048c;
        if (aVar == null) {
            return;
        }
        aVar.e(widgetIntervalTime);
    }

    protected void a(Context context, String type) {
        al.a aVarB;
        type.hashCode();
        switch (type) {
            case "shake":
                aVarB = b(context);
                break;
            case "slope":
                aVarB = d(context);
                break;
            case "swing":
                aVarB = c(context);
                break;
            case "twist":
                aVarB = a(context);
                break;
            default:
                SigmobLog.e("Motion type is not support.");
                return;
        }
        this.f81048c = aVarB;
    }

    public void a(com.sigmob.sdk.mraid2.j motionListener) {
        this.f81049d = motionListener;
    }
}
