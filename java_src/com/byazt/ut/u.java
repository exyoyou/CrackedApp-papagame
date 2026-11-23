package com.byazt.ut;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.dna.nb;
import com.byazt.dna.qp;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 834, 67})
public class u implements qp, Function {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Handler f20987a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile ThreadPoolExecutor f20988c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile Handler f20989n;
    public volatile Handler sp;
    public ThreadPoolExecutor tt;
    public volatile ScheduledExecutorService uj;
    public volatile ThreadPoolExecutor ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.bu.c f20990x = new com.byazt.bu.c();

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case -3:
                ats_setAtsField((SparseArray) sparseArray.get(1));
                return null;
            case -2:
                return ats_getAtsField();
            case -1:
                release();
                return null;
            case 0:
            default:
                return null;
            case 1:
                return getNormalExecutor();
            case 2:
                return getIoExecutor();
            case 3:
                return getFastExecutor();
            case 4:
                return newCachedThreadPool(((Integer) sparseArray.get(1)).intValue(), ((Integer) sparseArray.get(2)).intValue());
            case 5:
                return getIOHandler();
            case 6:
                return getCsjMainHandler();
            case 7:
                return getMainHandler();
            case 8:
                return getAIDLExecutor();
            case 9:
                return getScheduledThreadPool();
            case 10:
                executeFastTask((Runnable) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue());
                return null;
            case 11:
                executeFastTask((Runnable) sparseArray.get(1));
                return null;
            case 12:
                executeNormalTask((Runnable) sparseArray.get(1));
                return null;
            case 13:
                return obtainHandler((String) sparseArray.get(1));
            case 14:
                Object nbVar = sparseArray.get(1);
                Object obj2 = sparseArray.get(2);
                if (nbVar != null) {
                    nbVar = new nb(n0.c.a(nbVar));
                }
                return obtainHandler((qp.c) nbVar, (String) obj2);
            case 15:
                recycleHandler((Handler) sparseArray.get(1));
                return null;
            case 16:
                updateSettings((JSONObject) sparseArray.get(1));
                return null;
            case 17:
                postIOTask((Runnable) sparseArray.get(1));
                return null;
        }
    }

    public SparseArray ats_getAtsField() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(1, this.f20988c);
        sparseArray.put(2, this.tt);
        sparseArray.put(3, this.ve);
        sparseArray.put(4, this.uj);
        sparseArray.put(5, this.f20989n);
        sparseArray.put(6, this.f20987a);
        sparseArray.put(7, this.sp);
        return sparseArray;
    }

    public void ats_setAtsField(SparseArray sparseArray) {
        Object obj = sparseArray.get(1);
        if (obj != null) {
            this.f20988c = (ThreadPoolExecutor) obj;
        }
        Object obj2 = sparseArray.get(2);
        if (obj2 != null) {
            this.tt = (ThreadPoolExecutor) obj2;
        }
        Object obj3 = sparseArray.get(3);
        if (obj3 != null) {
            this.ve = (ThreadPoolExecutor) obj3;
        }
        Object obj4 = sparseArray.get(4);
        if (obj4 != null) {
            this.uj = (ScheduledExecutorService) obj4;
        }
        Object obj5 = sparseArray.get(5);
        if (obj5 != null) {
            this.f20989n = (Handler) obj5;
        }
        Object obj6 = sparseArray.get(6);
        if (obj6 != null) {
            this.f20987a = (Handler) obj6;
        }
        Object obj7 = sparseArray.get(7);
        if (obj7 != null) {
            this.sp = (Handler) obj7;
        }
    }

    @Override // com.byazt.dna.qp
    public void executeFastTask(Runnable runnable, int i10) {
        getFastExecutor().execute(runnable);
    }

    @Override // com.byazt.dna.qp
    public void executeNormalTask(Runnable runnable) {
        getNormalExecutor().execute(runnable);
    }

    @Override // com.byazt.dna.qp
    public ExecutorService getAIDLExecutor() {
        if (this.ve == null) {
            this.ve = com.byazt.bwm.i.tt.u();
        }
        return this.ve;
    }

    @Override // com.byazt.dna.qp
    public Handler getCsjMainHandler() {
        if (this.f20989n == null) {
            synchronized (u.class) {
                if (this.f20989n == null) {
                    this.f20989n = this.f20990x.c("csj_main");
                }
            }
        }
        return this.f20989n;
    }

    @Override // com.byazt.dna.qp
    public ExecutorService getFastExecutor() {
        if (this.tt == null) {
            this.tt = com.byazt.bwm.i.tt.da();
        }
        return this.tt;
    }

    @Override // com.byazt.dna.qp
    public Handler getIOHandler() {
        if (this.sp == null) {
            synchronized (u.class) {
                if (this.sp == null) {
                    this.sp = this.f20990x.c("csj_io");
                }
            }
        }
        return this.sp;
    }

    @Override // com.byazt.dna.qp
    public ExecutorService getIoExecutor() {
        return com.byazt.bwm.i.tt.u();
    }

    @Override // com.byazt.dna.qp
    public Handler getMainHandler() {
        if (this.f20987a == null) {
            synchronized (u.class) {
                if (this.f20987a == null) {
                    this.f20987a = new Handler(Looper.getMainLooper());
                }
            }
        }
        return this.f20987a;
    }

    @Override // com.byazt.dna.qp
    public ExecutorService getNormalExecutor() {
        if (this.f20988c == null) {
            this.f20988c = com.byazt.bwm.i.tt.i();
        }
        return this.f20988c;
    }

    @Override // com.byazt.dna.qp
    public ScheduledExecutorService getScheduledThreadPool() {
        if (this.uj == null) {
            this.uj = com.byazt.bwm.i.tt.t();
        }
        return this.uj;
    }

    @Override // com.byazt.dna.qp
    public ExecutorService newCachedThreadPool(int i10, int i11) {
        return null;
    }

    @Override // com.byazt.dna.qp
    public Handler obtainHandler(@Nullable String str) {
        return this.f20990x.c(str);
    }

    @Override // com.byazt.dna.qp
    public void postIOTask(Runnable runnable) {
        getIOHandler().post(runnable);
    }

    @Override // com.byazt.dna.qp
    public void recycleHandler(@NonNull Handler handler) {
        this.f20990x.c(handler);
    }

    public void release() {
        this.f20990x.c();
    }

    @Override // com.byazt.dna.qp
    public void updateSettings(JSONObject jSONObject) {
        com.byazt.bwm.i.tt.c(jSONObject);
    }

    @Override // com.byazt.dna.qp
    public void executeFastTask(Runnable runnable) {
        getFastExecutor().execute(runnable);
    }

    @Override // com.byazt.dna.qp
    public Handler obtainHandler(qp.c cVar, @Nullable String str) {
        return this.f20990x.c(cVar, str);
    }
}
