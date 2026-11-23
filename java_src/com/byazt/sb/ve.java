package com.byazt.sb;

import com.byazt.jtc.uj;
import com.join.mgps.Util.v0;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1065, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TimeUnit f19571c = TimeUnit.SECONDS;

    public static ExecutorService c() {
        uj ujVar = new uj(1, 2, 30L, f19571c, new LinkedBlockingQueue(), new c(v0.f50057a));
        ujVar.allowCoreThreadTimeOut(true);
        return ujVar;
    }
}
