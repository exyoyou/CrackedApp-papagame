package com.byazt.b;

import com.byazt.ev.DownloadStatus;
import com.byazt.t.DownloadInfo;
import com.byazt.t.DownloadTask;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 46})
public class n extends c {
    public static com.byazt.u.uj tt;

    public n() {
        tt = new com.byazt.u.uj();
    }

    public static Runnable n(List<Future> list) {
        BlockingQueue<Runnable> queue;
        Runnable runnable;
        if (list != null && !list.isEmpty()) {
            try {
                ExecutorService executorServiceNu = com.byazt.zz.ve.nu();
                if ((executorServiceNu instanceof ThreadPoolExecutor) && (queue = ((ThreadPoolExecutor) executorServiceNu).getQueue()) != null && !queue.isEmpty()) {
                    Iterator<Future> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            runnable = null;
                            break;
                        }
                        Future next = it2.next();
                        if ((next instanceof Runnable) && queue.remove(next)) {
                            runnable = (Runnable) next;
                            break;
                        }
                    }
                    if (runnable != null) {
                        list.remove(runnable);
                        return runnable;
                    }
                }
            } catch (Throwable th) {
                com.byazt.x.c.uj("DefaultDownloadEngine", "getUnstartedTask() error: " + th.toString());
            }
        }
        return null;
    }

    public static List<Future> uj(List<Runnable> list) {
        ExecutorService executorServiceNu = com.byazt.zz.ve.nu();
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Runnable> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(executorServiceNu.submit(it2.next()));
        }
        return arrayList;
    }

    public static void ve(List<Callable<Object>> list) throws InterruptedException {
        ExecutorService executorServiceNu = com.byazt.zz.ve.nu();
        if (executorServiceNu != null) {
            executorServiceNu.invokeAll(list);
        }
    }

    @Override // com.byazt.b.c
    public boolean c(int i10) {
        DownloadInfo downloadInfoUj;
        com.byazt.u.uj ujVar = tt;
        if (ujVar == null || !ujVar.c(i10) || (downloadInfoUj = uj(i10)) == null) {
            return false;
        }
        if (DownloadStatus.isDownloading(downloadInfoUj.getStatus())) {
            return true;
        }
        tt(i10);
        return false;
    }

    @Override // com.byazt.b.c
    public void tt(int i10) {
        com.byazt.u.uj ujVar = tt;
        if (ujVar == null) {
            return;
        }
        ujVar.ve(i10);
    }

    @Override // com.byazt.b.c
    public com.byazt.u.ve ve(int i10) {
        com.byazt.u.uj ujVar = tt;
        if (ujVar == null) {
            return null;
        }
        return ujVar.tt(i10);
    }

    @Override // com.byazt.b.c
    public void c(com.byazt.u.ve veVar) {
        com.byazt.u.uj ujVar = tt;
        if (ujVar == null) {
            return;
        }
        ujVar.tt(veVar);
    }

    @Override // com.byazt.b.c
    public void c(int i10, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.byazt.x.c.tt("DownloadTask", "start doDownload for task : ".concat(String.valueOf(i10)));
        tt.c(new com.byazt.u.ve(downloadTask, this.f11804c));
    }

    @Override // com.byazt.b.c
    public List<Integer> c() {
        return tt.c();
    }

    @Override // com.byazt.b.c
    public void c(int i10, long j10) {
        com.byazt.u.uj ujVar = tt;
        if (ujVar == null) {
            return;
        }
        ujVar.c(i10, j10);
    }
}
