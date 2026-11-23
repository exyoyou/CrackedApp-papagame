package com.byazt.wrq;

import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.e.DownloadShortInfo;
import com.byazt.omf.p;
import com.byazt.su.DownloadController;
import com.byazt.su.DownloadModel;
import com.byazt.su.DownloadStatusChangeListener;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.function.Function;
import java.util.function.LongSupplier;
import n0.a;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1557, 13})
public abstract class tt extends com.byazt.fb.uj implements DownloadStatusChangeListener, LongSupplier {
    public int mCurrentPercent;

    private void setCurrentPercent(int i10) {
        this.mCurrentPercent = i10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.byazt.fb.uj
    public <T> T applyFunction(int i10, PluginValueSet pluginValueSet, Class<T> cls) {
        if (pluginValueSet == null) {
            return null;
        }
        if (!com.byazt.lq.uj.c(p.uj)) {
            pluginValueSet = com.byazt.rl.c.c((SparseArray<Object>) pluginValueSet.objectValue(-99999979, SparseArray.class)).tt();
        }
        switch (i10) {
            case 223600:
                onIdle();
                return null;
            case 223601:
                if (pluginValueSet != null) {
                    PluginValueSet pluginValueSetTt = com.byazt.rl.c.c((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).tt();
                    onDownloadStart(n0.c.a(pluginValueSetTt.objectValue(223201, a.a())), n0.c.a(pluginValueSetTt.objectValue(223203, a.a())));
                }
                return null;
            case 223602:
                if (pluginValueSet != null) {
                    PluginValueSet pluginValueSetTt2 = com.byazt.rl.c.c((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).tt();
                    onDownloadActive(n0.c.a(pluginValueSetTt2.objectValue(223607, a.a())), ((Integer) pluginValueSetTt2.objectValue(223608, Integer.class)).intValue());
                }
                return null;
            case 223603:
                if (pluginValueSet != null) {
                    PluginValueSet pluginValueSetTt3 = com.byazt.rl.c.c((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).tt();
                    onDownloadPaused(n0.c.a(pluginValueSetTt3.objectValue(223607, a.a())), ((Integer) pluginValueSetTt3.objectValue(223608, Integer.class)).intValue());
                }
                return null;
            case 223604:
                if (pluginValueSet != null) {
                    onDownloadFailed(n0.c.a(com.byazt.rl.c.c((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).tt().objectValue(223607, a.a())));
                }
                return null;
            case 223605:
                if (pluginValueSet != null) {
                    onInstalled(n0.c.a(com.byazt.rl.c.c((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).tt().objectValue(223607, a.a())));
                }
                return null;
            case 223606:
                if (pluginValueSet != null) {
                    onDownloadFinished(n0.c.a(com.byazt.rl.c.c((SparseArray<Object>) pluginValueSet.objectValue(-999902, SparseArray.class)).tt().objectValue(223607, a.a())));
                }
                return null;
            default:
                return null;
        }
    }

    @Override // java.util.function.LongSupplier
    public long getAsLong() {
        return -99999981L;
    }

    public int getCurrentPercent() {
        return this.mCurrentPercent;
    }

    public abstract void onDownloadActive(long j10, long j11, String str);

    @Override // com.byazt.su.DownloadStatusChangeListener
    public void onDownloadActive(DownloadShortInfo downloadShortInfo, int i10) {
        if (downloadShortInfo == null) {
            return;
        }
        setCurrentPercent(i10);
        onDownloadActive(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName);
    }

    public abstract void onDownloadFailed(long j10, long j11, String str);

    @Override // com.byazt.su.DownloadStatusChangeListener
    public void onDownloadFailed(DownloadShortInfo downloadShortInfo) {
        if (downloadShortInfo == null) {
            return;
        }
        onDownloadFailed(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName);
    }

    public abstract void onDownloadFinished(long j10, long j11, String str);

    @Override // com.byazt.su.DownloadStatusChangeListener
    public void onDownloadFinished(DownloadShortInfo downloadShortInfo) {
        if (downloadShortInfo == null) {
            return;
        }
        onDownloadFinished(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName);
    }

    public abstract void onDownloadPaused(long j10, long j11, String str);

    @Override // com.byazt.su.DownloadStatusChangeListener
    public void onDownloadPaused(DownloadShortInfo downloadShortInfo, int i10) {
        if (downloadShortInfo == null) {
            return;
        }
        setCurrentPercent(i10);
        onDownloadPaused(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName);
    }

    public abstract void onDownloadStart();

    @Override // com.byazt.su.DownloadStatusChangeListener
    public void onDownloadStart(DownloadModel downloadModel, DownloadController downloadController) {
        if (downloadModel == null) {
            return;
        }
        setCurrentPercent(0);
        onDownloadStart();
    }

    public abstract void onInstalled(long j10, long j11, String str);

    @Override // com.byazt.su.DownloadStatusChangeListener
    public void onInstalled(DownloadShortInfo downloadShortInfo) {
        if (downloadShortInfo == null) {
            return;
        }
        setCurrentPercent(100);
        String str = downloadShortInfo.fileName;
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        onInstalled(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, str);
    }

    private void onDownloadFailed(Function<SparseArray<Object>, Object> function) {
        PluginValueSet pluginValueSetTt;
        if (function == null || (pluginValueSetTt = com.byazt.yxi.ve.tt(function)) == null) {
            return;
        }
        onDownloadFailed(pluginValueSetTt.longValue(223704), pluginValueSetTt.longValue(223705), pluginValueSetTt.stringValue(223706));
    }

    private void onDownloadFinished(Function<SparseArray<Object>, Object> function) {
        PluginValueSet pluginValueSetTt;
        if (function == null || (pluginValueSetTt = com.byazt.yxi.ve.tt(function)) == null) {
            return;
        }
        onDownloadFinished(pluginValueSetTt.longValue(223704), pluginValueSetTt.longValue(223705), pluginValueSetTt.stringValue(223706));
    }

    private void onDownloadActive(Function<SparseArray<Object>, Object> function, int i10) {
        PluginValueSet pluginValueSetTt;
        if (function == null || (pluginValueSetTt = com.byazt.yxi.ve.tt(function)) == null) {
            return;
        }
        onDownloadActive(pluginValueSetTt.longValue(223704), pluginValueSetTt.longValue(223705), pluginValueSetTt.stringValue(223706));
    }

    private void onDownloadPaused(Function<SparseArray<Object>, Object> function, int i10) {
        PluginValueSet pluginValueSetTt;
        if (function == null || (pluginValueSetTt = com.byazt.yxi.ve.tt(function)) == null) {
            return;
        }
        onDownloadPaused(pluginValueSetTt.longValue(223704), pluginValueSetTt.longValue(223705), pluginValueSetTt.stringValue(223706));
    }

    private void onDownloadStart(Function<SparseArray<Object>, Object> function, Function<SparseArray<Object>, Object> function2) {
        if (function == null || com.byazt.yxi.ve.tt(function) == null) {
            return;
        }
        onDownloadStart();
    }

    private void onInstalled(Function<SparseArray<Object>, Object> function) {
        PluginValueSet pluginValueSetTt;
        if (function == null || (pluginValueSetTt = com.byazt.yxi.ve.tt(function)) == null) {
            return;
        }
        long jLongValue = pluginValueSetTt.longValue(223704);
        long jLongValue2 = pluginValueSetTt.longValue(223705);
        String strStringValue = pluginValueSetTt.stringValue(223706);
        if (strStringValue == null) {
            strStringValue = "";
        }
        onInstalled(jLongValue, jLongValue2, strStringValue);
    }
}
