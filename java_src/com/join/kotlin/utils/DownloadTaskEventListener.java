package com.join.kotlin.utils;

import androidx.core.app.NotificationCompat;
import com.join.mgps.event.r;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/join/kotlin/utils/DownloadTaskEventListener;", "", "onDownloadTaskEvent", "", NotificationCompat.CATEGORY_EVENT, "Lcom/join/mgps/event/DownloadTaskEvent;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface DownloadTaskEventListener {
    void onDownloadTaskEvent(@NotNull r rVar);
}
