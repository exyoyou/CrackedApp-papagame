package com.byazt.b;

import android.text.TextUtils;
import com.byazt.zz.my;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 137})
public class nu implements my {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f11816c;

    public nu(String str) {
        this.f11816c = c(str);
    }

    @Override // com.byazt.zz.my
    public long c(int i10, int i11) {
        long[] jArr = this.f11816c;
        if (jArr == null || jArr.length <= 0) {
            return 0L;
        }
        int length = i10 - 1;
        if (length < 0) {
            length = 0;
        }
        if (length > jArr.length - 1) {
            length = jArr.length - 1;
        }
        return jArr[length];
    }

    private long[] c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] strArrSplit = str.split(",");
            if (strArrSplit.length == 0) {
                return null;
            }
            long[] jArr = new long[strArrSplit.length];
            for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                jArr[i10] = Long.parseLong(strArrSplit[i10]);
            }
            return jArr;
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
            return null;
        }
    }
}
