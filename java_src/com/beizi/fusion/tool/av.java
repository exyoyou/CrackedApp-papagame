package com.beizi.fusion.tool;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.TaskBean;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class av implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f10578a = "TaskRunnable";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TaskBean.BackTaskArrayBean f10579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f10580c;

    public av(Context context, TaskBean.BackTaskArrayBean backTaskArrayBean) {
        this.f10580c = context;
        this.f10579b = backTaskArrayBean;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f10579b != null) {
            for (int i10 = 0; i10 < this.f10579b.getRepeatCount(); i10++) {
                if (this.f10579b.getMethod().equals("GET") && !TextUtils.isEmpty(this.f10579b.getContentUrl())) {
                    try {
                        EventBean eventBean = null;
                        x.a(at.a(this.f10580c, this.f10579b.getContentUrl(), null), this.f10579b.getUserAgent());
                        Thread.sleep(this.f10579b.getSleepTime());
                        List<String> report = this.f10579b.getReport();
                        if (report != null && report.size() > 0) {
                            int i11 = 0;
                            while (i11 < report.size()) {
                                if (!TextUtils.isEmpty(report.get(i11))) {
                                    if (x.a(at.a(this.f10580c, report.get(i11), eventBean), this.f10579b.getUserAgent()) != null) {
                                        EventCar.getInstance(this.f10580c).goRoadWithoutThread(new EventBean(com.beizi.fusion.c.b.f10061b, "", "520.200", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                                    } else {
                                        EventCar.getInstance(this.f10580c).goRoadWithoutThread(new EventBean(com.beizi.fusion.c.b.f10061b, "", "520.500", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                                    }
                                    Thread.sleep(this.f10579b.getSleepTime());
                                }
                                i11++;
                                eventBean = null;
                            }
                        }
                    } catch (Exception unused) {
                        EventCar.getInstance(this.f10580c).goRoadWithoutThread(new EventBean(com.beizi.fusion.c.b.f10061b, "", "510.500", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                    }
                }
            }
            EventCar.getInstance(this.f10580c).goRoadWithoutThread(new EventBean(com.beizi.fusion.c.b.f10061b, "", "510.200", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        }
    }
}
