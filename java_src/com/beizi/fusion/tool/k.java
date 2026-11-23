package com.beizi.fusion.tool;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.TaskBean;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static k f10623b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f10624a = "ClipUtil";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f10625c;

    private k(Context context) {
        this.f10625c = context.getApplicationContext();
    }

    public static k a(Context context) {
        if (f10623b == null) {
            synchronized (k.class) {
                if (f10623b == null) {
                    f10623b = new k(context);
                }
            }
        }
        return f10623b;
    }

    public void a(final TaskBean.BackTaskArrayBean backTaskArrayBean) {
        if (backTaskArrayBean != null && !TextUtils.isEmpty(backTaskArrayBean.getContentUrl())) {
            EventCar.getInstance(this.f10625c).goRoad(new EventBean(com.beizi.fusion.c.b.f10061b, "", "510.200", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
            final List<String> report = backTaskArrayBean.getReport();
            if (report == null || report.size() <= 0) {
                return;
            }
            e.b().e().execute(new Runnable() { // from class: com.beizi.fusion.tool.k.1
                @Override // java.lang.Runnable
                public void run() {
                    for (int i10 = 0; i10 < report.size(); i10++) {
                        if (!TextUtils.isEmpty((CharSequence) report.get(i10))) {
                            if (x.a(at.a(k.this.f10625c, (String) report.get(i10), null), backTaskArrayBean.getUserAgent()) != null) {
                                EventCar.getInstance(k.this.f10625c).goRoadWithoutThread(new EventBean(com.beizi.fusion.c.b.f10061b, "", "520.200", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                            } else {
                                EventCar.getInstance(k.this.f10625c).goRoadWithoutThread(new EventBean(com.beizi.fusion.c.b.f10061b, "", "520.500", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                            }
                            try {
                                Thread.sleep(backTaskArrayBean.getSleepTime());
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
            });
            return;
        }
        EventCar.getInstance(this.f10625c).goRoad(new EventBean(com.beizi.fusion.c.b.f10061b, "", "510.500", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
    }
}
