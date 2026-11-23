package com.umeng.analytics.pro;

import com.umeng.commonsdk.debug.UMRTLog;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public class af implements ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Set<Integer> f84251a;

    public af(Set<Integer> set) {
        this.f84251a = null;
        this.f84251a = new HashSet(set);
    }

    @Override // com.umeng.analytics.pro.ac
    public boolean a() {
        try {
            int i10 = Calendar.getInstance().get(11);
            Set<Integer> set = this.f84251a;
            if (set != null && set.contains(Integer.valueOf(i10))) {
                return true;
            }
            String str = "";
            Iterator<Integer> it2 = this.f84251a.iterator();
            while (it2.hasNext()) {
                str = str + it2.next() + ",";
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "HourOn skipped. hour of day: " + i10 + "; config: " + str);
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.umeng.analytics.pro.ac
    public boolean b() {
        return !a();
    }

    @Override // com.umeng.analytics.pro.ac
    public long c() {
        return 0L;
    }
}
