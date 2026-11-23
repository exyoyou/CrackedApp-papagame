package com.haima.hmcp.utils;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.haima.hmcp.Constants;
import com.join.mgps.activity.posting.PostingActivity_;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes5.dex */
public class ClipboardUtils {
    private static final String TAG = "ClipboardUtils";
    private static Context sContext;
    private static Queue<String> clipboardQueue = new LinkedList();
    private static Handler handler = new Handler(Looper.getMainLooper());
    private static volatile boolean isRunnableScheduled = false;
    public static volatile boolean isClipboardReceived = false;
    private static int delayMillis = 200;
    private static Runnable setClipboardRunnable = new Runnable() { // from class: com.haima.hmcp.utils.ClipboardUtils.1
        @Override // java.lang.Runnable
        public void run() {
            LogUtils.e(ClipboardUtils.TAG, "==setClipboardRunnable=>run");
            if (ClipboardUtils.clipboardQueue.isEmpty()) {
                return;
            }
            String str = (String) ClipboardUtils.clipboardQueue.poll();
            ClipboardUtils.isClipboardReceived = true;
            ClipboardUtils.setClipboard(str);
            if (ClipboardUtils.clipboardQueue.isEmpty()) {
                boolean unused = ClipboardUtils.isRunnableScheduled = false;
            } else {
                ClipboardUtils.handler.postDelayed(this, ClipboardUtils.delayMillis);
            }
        }
    };

    public static void clear() {
        isClipboardReceived = false;
        isRunnableScheduled = false;
    }

    public static boolean isClipboardReceived() {
        return isClipboardReceived;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setClipboard(String str) {
        ClipData clipDataNewPlainText = ClipData.newPlainText(PostingActivity_.LABEL_EXTRA, str);
        ClipboardManager clipboardManager = (ClipboardManager) sContext.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD);
        LogUtils.e(TAG, "==setClipboardRunnable=>setPrimaryClip content=" + str);
        if (clipboardManager != null) {
            clipboardManager.setPrimaryClip(clipDataNewPlainText);
        }
    }

    public static void setClipboardContent(Context context, String str) {
        if (sContext == null) {
            sContext = context;
        }
        clipboardQueue.offer(str);
        if (isRunnableScheduled) {
            return;
        }
        handler.post(setClipboardRunnable);
        isRunnableScheduled = true;
    }

    public static void setClipboardReceived(boolean z10) {
        isClipboardReceived = z10;
    }
}
