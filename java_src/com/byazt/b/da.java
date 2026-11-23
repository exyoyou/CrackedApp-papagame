package com.byazt.b;

import com.byazt.zz.my;
import com.haima.hmcp.cloud.BaseCloudFileManager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 72})
public class da implements my {
    @Override // com.byazt.zz.my
    public long c(int i10, int i11) {
        if (i10 == 1) {
            return BaseCloudFileManager.ACK_TIMEOUT;
        }
        if (i10 == 2) {
            return 15000L;
        }
        if (i10 == 3) {
            return 30000L;
        }
        if (i10 > 3) {
            return e0.a.f90863b;
        }
        return 0L;
    }
}
