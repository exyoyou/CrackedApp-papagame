package cn.fly.tools;

import cn.fly.commons.ac;
import cn.fly.tools.proguard.PublicMemberKeeper;
import cn.fly.tools.utils.i;
import java.util.ArrayList;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public class MDP implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Object f1685a = new Object();

    public static Object get(String str, ArrayList<Object> arrayList) {
        return get(str, arrayList, false, 0);
    }

    private static Object a(String str, BlockingQueue blockingQueue) throws InterruptedException {
        int i10;
        if ("gia".equals(str) || "gal".equals(str) || "gsl".equals(str) || "giafce".equals(str)) {
            i10 = 30000;
        } else {
            i10 = "glctn".equals(str) ? 60000 : 3000;
        }
        return blockingQueue.poll(i10, TimeUnit.MILLISECONDS);
    }

    public static Object get(String str, ArrayList<Object> arrayList, int i10) {
        return get(str, arrayList, false, i10);
    }

    public static Object get(String str, ArrayList<Object> arrayList, boolean z10) {
        return get(str, arrayList, z10, 0);
    }

    public static Object get(final String str, final ArrayList<Object> arrayList, boolean z10, int i10) {
        Object objPoll;
        if (z10) {
            return cn.fly.tools.c.a.a(str, arrayList);
        }
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        ac.f1044c.execute(new i() { // from class: cn.fly.tools.MDP.1
            @Override // cn.fly.tools.utils.i
            public void a() {
                Object objA = cn.fly.tools.c.a.a(str, arrayList);
                if (objA == null) {
                    objA = MDP.f1685a;
                }
                linkedBlockingQueue.offer(objA);
            }
        });
        try {
            if (i10 <= 0) {
                objPoll = a(str, linkedBlockingQueue);
            } else {
                objPoll = linkedBlockingQueue.poll(i10, TimeUnit.MILLISECONDS);
            }
            if (objPoll == f1685a) {
                return null;
            }
            return objPoll;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }
}
