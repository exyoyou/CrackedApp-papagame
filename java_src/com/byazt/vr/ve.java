package com.byazt.vr;

import android.content.Context;
import android.os.Handler;
import com.byazt.mg.da;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1683, 54})
public final class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<c> f21330c;

    private ve(Handler handler, Context context) {
        ArrayList arrayList = new ArrayList(3);
        this.f21330c = arrayList;
        arrayList.add(new tt(handler, 0L, 15000L));
    }

    public static ve c(Handler handler, Context context) {
        return new ve(handler, context);
    }

    public void c() {
        da.c("[ScheduleTaskManager] execute, task size=" + this.f21330c.size());
        Iterator<c> it2 = this.f21330c.iterator();
        while (it2.hasNext()) {
            try {
                it2.next().c();
            } catch (Throwable unused) {
            }
        }
    }
}
