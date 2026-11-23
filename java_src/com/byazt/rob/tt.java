package com.byazt.rob;

import android.os.Bundle;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1211, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static tt f19490c;
    public Map<Integer, Bundle> tt = Collections.synchronizedMap(new HashMap());

    private tt() {
    }

    public static synchronized tt c() {
        if (f19490c == null) {
            f19490c = new tt();
        }
        return f19490c;
    }

    public void tt(int i10) {
        this.tt.remove(Integer.valueOf(i10));
    }

    public void c(int i10, Bundle bundle) {
        this.tt.put(Integer.valueOf(i10), bundle);
    }

    public Bundle c(int i10) {
        return this.tt.get(Integer.valueOf(i10));
    }
}
