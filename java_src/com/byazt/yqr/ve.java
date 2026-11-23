package com.byazt.yqr;

import android.content.Context;
import android.os.Build;
import com.byazt.fk.da;
import com.byazt.fk.u;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 982, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap<String, tt> f22403c = new ConcurrentHashMap<>();

    public static synchronized void c(Context context, u uVar, da.c cVar) {
        try {
            if (uVar == null) {
                com.byazt.lt.tt.c(" url、dir and hash is must property   in VideoInfoModel");
                return;
            }
            if (Build.VERSION.SDK_INT >= 23) {
                ConcurrentHashMap<String, tt> concurrentHashMap = f22403c;
                tt ttVar = concurrentHashMap.get(uVar.getFileNameKey());
                if (ttVar == null) {
                    ttVar = new tt(context, uVar);
                    concurrentHashMap.put(uVar.getFileNameKey(), ttVar);
                    uVar.getPreloadSize();
                    uVar.getFileNameKey();
                }
                ttVar.c(cVar);
            }
            uVar.getPreloadSize();
            uVar.getFileNameKey();
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void c(u uVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            tt ttVarRemove = f22403c.remove(uVar.getFileNameKey());
            if (ttVarRemove != null) {
                ttVarRemove.c(true);
            }
            uVar.getPreloadSize();
            uVar.getFileNameKey();
        }
    }
}
