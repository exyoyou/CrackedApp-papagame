package com.beizi.fusion.tool;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.TaskBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f10581a = "AppLinkRunnable";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TaskBean.BackTaskArrayBean f10582b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f10583c;

    public c(Context context, TaskBean.BackTaskArrayBean backTaskArrayBean) {
        this.f10583c = context;
        this.f10582b = backTaskArrayBean;
    }

    private void a() {
        int i10;
        try {
            ArrayList arrayList = new ArrayList();
            List<TaskBean.BackTaskArrayBean.AppLinkBean> apps = this.f10582b.getApps();
            if (apps == null || apps.size() <= 0) {
                return;
            }
            Iterator<TaskBean.BackTaskArrayBean.AppLinkBean> it2 = apps.iterator();
            while (true) {
                i10 = 0;
                if (!it2.hasNext()) {
                    break;
                }
                TaskBean.BackTaskArrayBean.AppLinkBean next = it2.next();
                String strValueOf = au.a(this.f10583c, next.getTestLink()) ? String.valueOf(1) : String.valueOf(0);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("appLinkId", next.getAppLinkId());
                jSONObject.put("isLink", strValueOf);
                arrayList.add(jSONObject.toString());
            }
            List<String> report = this.f10582b.getReport();
            if (report == null || report.size() <= 0) {
                return;
            }
            while (i10 < report.size()) {
                if (!TextUtils.isEmpty(report.get(i10))) {
                    EventCar.getInstance(this.f10583c).goRoadWithoutThread(new EventBean(com.beizi.fusion.c.b.f10061b, "", "590.200", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), "", arrayList.toString(), report.get(i10), false));
                }
                i10++;
                arrayList = arrayList;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f10582b != null) {
            try {
                if (System.currentTimeMillis() - au.p(this.f10583c).longValue() < 86400000) {
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            for (int i10 = 0; i10 < this.f10582b.getRepeatCount(); i10++) {
                if (this.f10582b.getMethod().equalsIgnoreCase("GET")) {
                    try {
                        a();
                    } catch (Exception e11) {
                        e11.printStackTrace();
                        EventCar.getInstance(this.f10583c).goRoadWithoutThread(new EventBean(com.beizi.fusion.c.b.f10061b, "", "510.500", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
                    }
                }
            }
            EventCar.getInstance(this.f10583c).goRoadWithoutThread(new EventBean(com.beizi.fusion.c.b.f10061b, "", "510.200", "", com.beizi.fusion.c.b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
        }
    }
}
