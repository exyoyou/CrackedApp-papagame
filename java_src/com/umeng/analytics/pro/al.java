package com.umeng.analytics.pro;

import com.umeng.commonsdk.debug.UMRTLog;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public class al implements ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Set<Integer> f84262a;

    public al(Set<Integer> set) {
        this.f84262a = null;
        this.f84262a = new HashSet(set);
    }

    @Override // com.umeng.analytics.pro.ac
    public boolean a() {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            int i10 = 7;
            int i11 = calendar.get(7) - 1;
            if (i11 != 0) {
                i10 = i11;
            }
            Set<Integer> set = this.f84262a;
            if (set != null && set.contains(Integer.valueOf(i10))) {
                return true;
            }
            String str = "";
            Iterator<Integer> it2 = this.f84262a.iterator();
            while (it2.hasNext()) {
                str = str + it2.next() + ",";
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "WeekOn skipped. day of week: " + i10 + "; config: " + str);
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
