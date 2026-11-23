package com.byazt.w;

import android.util.SparseArray;
import com.byazt.c.AbsDownloadListener;
import com.byazt.c.IDownloadListener;
import com.byazt.c.my;
import com.byazt.m.BaseException;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1017, 54})
public class ve {
    public static void c(int i10, SparseArray<IDownloadListener> sparseArray, boolean z10, DownloadInfo downloadInfo, BaseException baseException) {
        SparseArray<IDownloadListener> sparseArrayClone;
        if (!z10 || sparseArray == null) {
            return;
        }
        try {
            if (sparseArray.size() <= 0) {
                return;
            }
            synchronized (sparseArray) {
                sparseArrayClone = sparseArray.clone();
            }
            for (int i11 = 0; i11 < sparseArrayClone.size(); i11++) {
                IDownloadListener iDownloadListener = sparseArrayClone.get(sparseArrayClone.keyAt(i11));
                if (iDownloadListener != null) {
                    if (i10 == 1) {
                        iDownloadListener.onPrepare(downloadInfo);
                    } else if (i10 == 2) {
                        iDownloadListener.onStart(downloadInfo);
                    } else if (i10 == 4) {
                        iDownloadListener.onProgress(downloadInfo);
                    } else if (i10 == 5) {
                        iDownloadListener.onRetry(downloadInfo, baseException);
                    } else if (i10 == 6) {
                        iDownloadListener.onFirstStart(downloadInfo);
                    } else if (i10 == 7) {
                        iDownloadListener.onRetryDelay(downloadInfo, baseException);
                    } else if (i10 != 11) {
                        switch (i10) {
                            case -7:
                                if (iDownloadListener instanceof AbsDownloadListener) {
                                    ((AbsDownloadListener) iDownloadListener).onIntercept(downloadInfo);
                                }
                                break;
                            case -6:
                                iDownloadListener.onFirstSuccess(downloadInfo);
                                break;
                            case -5:
                            case -2:
                                iDownloadListener.onPause(downloadInfo);
                                break;
                            case -4:
                                iDownloadListener.onCanceled(downloadInfo);
                                break;
                            case -3:
                                iDownloadListener.onSuccessed(downloadInfo);
                                break;
                            case -1:
                                iDownloadListener.onFailed(downloadInfo, baseException);
                                break;
                        }
                    } else if (iDownloadListener instanceof my) {
                        ((my) iDownloadListener).c(downloadInfo);
                    }
                }
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }
}
