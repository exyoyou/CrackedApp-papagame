package com.join.kotlin.utils;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.g;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.base.impl.GInfo;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d1;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.w0;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.event.r;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import com.php25.PDownload.d;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import q5.f;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bJ\u0006\u0010\u000f\u001a\u00020\fJ\u0010\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\b\u0010\u0013\u001a\u00020\fH\u0002J\u0006\u0010.\u001a\u00020\fJ\u0010\u0010/\u001a\u00020\f2\b\u00100\u001a\u0004\u0018\u00010\u0012J(\u00101\u001a\u00020\f2\b\u00100\u001a\u0004\u0018\u00010\u00122\u0010\b\u0002\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f03H\u0086\bø\u0001\u0000J\u0006\u00104\u001a\u00020\fJ\b\u00105\u001a\u00020\fH\u0002J\u0006\u00106\u001a\u00020\u001fJ\u0006\u00107\u001a\u00020\u001fJ\u0014\u00108\u001a\u0004\u0018\u00010\u00162\b\u00109\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010:\u001a\u00020\f2\b\u0010;\u001a\u0004\u0018\u00010\u0016J\u0010\u0010<\u001a\u00020\f2\b\u0010;\u001a\u0004\u0018\u00010\u0016J\u0010\u0010=\u001a\u00020\f2\b\u0010;\u001a\u0004\u0018\u00010\u0016J\u0010\u0010>\u001a\u00020\f2\b\u0010;\u001a\u0004\u0018\u00010\u0016J\u0010\u0010?\u001a\u00020\f2\b\u0010;\u001a\u0004\u0018\u00010\u0016J\u0010\u0010@\u001a\u00020\f2\b\u0010;\u001a\u0004\u0018\u00010\u0016J\u0010\u0010A\u001a\u0004\u0018\u00010\u00162\u0006\u0010B\u001a\u00020CJ\u000e\u0010A\u001a\u00020\u00162\u0006\u0010D\u001a\u00020\u0016J\u000e\u0010E\u001a\u00020\f2\u0006\u0010B\u001a\u00020CJ\u0016\u0010F\u001a\u00020\f2\u0006\u0010G\u001a\u00020H2\u0006\u0010B\u001a\u00020CJ\u0016\u0010I\u001a\u00020\f2\u0006\u00109\u001a\u00020\u00052\u0006\u0010J\u001a\u00020+J\u0006\u0010K\u001a\u00020\fJ\u0017\u0010L\u001a\u0004\u0018\u00010+2\b\u00109\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010MJ\u0006\u0010N\u001a\u00020\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\u0017\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00160\u0018j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0016`\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010!\"\u0004\b&\u0010#R6\u0010'\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00160\u0018j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0016`\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001b\"\u0004\b)\u0010\u001dR>\u0010*\u001a&\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010+0\u0018j\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010+`\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001b\"\u0004\b-\u0010\u001d\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006O"}, d2 = {"Lcom/join/kotlin/utils/DlTaskManager;", "", "<init>", "()V", "TAG", "", "downloadTaskEventListeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/join/kotlin/utils/DownloadTaskEventListener;", "globalEventBusRegistered", "", "registerDownloadTaskListener", "", "listener", "unregisterDownloadTaskListener", "ensureGlobalDownloadEventBus", "onGlobalDownloadTaskEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/join/mgps/event/DownloadTaskEvent;", "registerGlobalEventBusIfNeeded", "downloadTasksMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadedMap", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "getDownloadedMap", "()Ljava/util/HashMap;", "setDownloadedMap", "(Ljava/util/HashMap;)V", "downloadedNum", "", "getDownloadedNum", "()I", "setDownloadedNum", "(I)V", "downloadingNum", "getDownloadingNum", "setDownloadingNum", "downloadingMap", "getDownloadingMap", "setDownloadingMap", "cloudArchiveTimeMap", "", "getCloudArchiveTimeMap", "setCloudArchiveTimeMap", "init", "onEventMainThread", "downloadTaskEvent", "onNotifyDataSet", "call", "Lkotlin/Function0;", "updateDownloadedNum", "recomputeDownloadingNum", "getDownloadedSize", "getDownloadingSize", "getTaskByGameId", "gameId", "onStart", "task", "onStop", "onSuccess", "onDelete", "onError", "onTaskChanged", "getTask", "downInfo", "Lcom/join/kotlin/base/impl/Downloadable;", "beanTask", "updateDownloadTask", "performDownloadClick", "mContext", "Landroid/content/Context;", "updateCloudArchiveTime", "archiveTime", "onUpdateCloudArchiveTime", "getCloudArchiveTime", "(Ljava/lang/String;)Ljava/lang/Long;", "clearCloudArchiveTime", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDlTaskManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,520:1\n1788#2,4:521\n1#3:525\n*S KotlinDebug\n*F\n+ 1 DlTaskManager.kt\ncom/join/kotlin/utils/DlTaskManager\n*L\n197#1:521,4\n*E\n"})
public final class DlTaskManager {

    @NotNull
    private static final String TAG = "DlTaskManager";
    private static int downloadedNum;
    private static int downloadingNum;
    private static volatile boolean globalEventBusRegistered;

    @NotNull
    public static final DlTaskManager INSTANCE = new DlTaskManager();

    @NotNull
    private static final CopyOnWriteArrayList<DownloadTaskEventListener> downloadTaskEventListeners = new CopyOnWriteArrayList<>();

    @NotNull
    private static final ConcurrentHashMap<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap<>();

    @NotNull
    private static HashMap<String, DownloadTask> downloadedMap = new HashMap<>();

    @NotNull
    private static HashMap<String, DownloadTask> downloadingMap = new HashMap<>();

    @NotNull
    private static HashMap<String, Long> cloudArchiveTimeMap = new HashMap<>();

    private DlTaskManager() {
    }

    private final DownloadTask getTaskByGameId(String gameId) {
        return downloadTasksMap.get(gameId);
    }

    public static /* synthetic */ void onNotifyDataSet$default(DlTaskManager dlTaskManager, r rVar, Function0 call, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            call = new Function0<Unit>() { // from class: com.join.kotlin.utils.DlTaskManager.onNotifyDataSet.1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        Intrinsics.checkNotNullParameter(call, "call");
        if (rVar == null) {
            return;
        }
        int iC = rVar.c();
        if (iC != 2 && iC != 3 && iC != 5 && iC != 6 && iC != 7 && iC != 42 && iC != 48) {
            switch (iC) {
            }
            return;
        }
        call.invoke();
    }

    private final void recomputeDownloadingNum() {
        Collection<DownloadTask> collectionValues = downloadedMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
        Collection<DownloadTask> collection = collectionValues;
        int i10 = 0;
        if (!collection.isEmpty()) {
            Iterator<T> it2 = collection.iterator();
            int i11 = 0;
            while (it2.hasNext()) {
                if ((((DownloadTask) it2.next()).getStatus() == 3) && (i11 = i11 + 1) < 0) {
                    CollectionsKt__CollectionsKt.throwCountOverflow();
                }
            }
            i10 = i11;
        }
        downloadingNum = downloadingMap.size() + i10;
    }

    private final void registerGlobalEventBusIfNeeded() {
        if (globalEventBusRegistered) {
            return;
        }
        DlTaskManager dlTaskManager = INSTANCE;
        synchronized (dlTaskManager) {
            if (globalEventBusRegistered) {
                return;
            }
            c cVarF = c.f();
            if (!cVarF.o(dlTaskManager)) {
                cVarF.v(dlTaskManager);
            }
            globalEventBusRegistered = true;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void clearCloudArchiveTime() {
        cloudArchiveTimeMap.clear();
        Iterator<Map.Entry<String, DownloadTask>> it2 = downloadedMap.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().setCloudArchiveTime("");
        }
    }

    public final void ensureGlobalDownloadEventBus() {
        registerGlobalEventBusIfNeeded();
    }

    @Nullable
    public final Long getCloudArchiveTime(@Nullable String gameId) {
        return cloudArchiveTimeMap.get(gameId);
    }

    @NotNull
    public final HashMap<String, Long> getCloudArchiveTimeMap() {
        return cloudArchiveTimeMap;
    }

    @NotNull
    public final HashMap<String, DownloadTask> getDownloadedMap() {
        return downloadedMap;
    }

    public final int getDownloadedNum() {
        return downloadedNum;
    }

    public final int getDownloadedSize() {
        return downloadedMap.size();
    }

    @NotNull
    public final HashMap<String, DownloadTask> getDownloadingMap() {
        return downloadingMap;
    }

    public final int getDownloadingNum() {
        return downloadingNum;
    }

    public final int getDownloadingSize() {
        return downloadingNum;
    }

    @Nullable
    public final DownloadTask getTask(@NotNull Downloadable downInfo) {
        Intrinsics.checkNotNullParameter(downInfo, "downInfo");
        DownloadTask downloadTask = downInfo.getDownloadTask();
        if (downloadTask == null) {
            return null;
        }
        return getTask(downloadTask);
    }

    public final void init() {
        List<DownloadTask> listD = f.M().d();
        if (listD != null && listD.size() > 0) {
            for (DownloadTask downloadTask : listD) {
                ConcurrentHashMap<String, DownloadTask> concurrentHashMap = downloadTasksMap;
                if (!concurrentHashMap.containsKey(downloadTask.getCrc_link_type_val())) {
                    concurrentHashMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
                }
            }
        }
        List<DownloadTask> listR = f.M().r();
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                downloadingMap.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadedNum();
        registerGlobalEventBusIfNeeded();
    }

    public final void onDelete(@Nullable DownloadTask task) {
        if (task == null) {
            return;
        }
        downloadTasksMap.remove(task.getCrc_link_type_val());
        if (downloadedMap.containsKey(task.getCrc_link_type_val())) {
            downloadedMap.remove(task.getCrc_link_type_val());
        }
        if (downloadingMap.containsKey(task.getCrc_link_type_val())) {
            downloadingMap.remove(task.getCrc_link_type_val());
        }
        updateDownloadedNum();
    }

    public final void onError(@Nullable DownloadTask task) {
        if (task == null) {
            return;
        }
        downloadingMap.remove(task.getCrc_link_type_val());
        onTaskChanged(task);
        updateDownloadedNum();
    }

    public final void onEventMainThread(@Nullable r rVar) {
        if (rVar == null) {
            return;
        }
        DownloadTask downloadTaskA = rVar.a();
        int iC = rVar.c();
        if (iC != 2) {
            if (iC == 3) {
                onStop(downloadTaskA);
                return;
            }
            if (iC != 42) {
                if (iC != 48) {
                    switch (iC) {
                        case 6:
                            onError(downloadTaskA);
                            break;
                        case 7:
                            onDelete(downloadTaskA);
                            break;
                        case 8:
                            onTaskChanged(downloadTaskA);
                            break;
                        case 12:
                        case 13:
                            onTaskChanged(downloadTaskA);
                            break;
                    }
                    return;
                }
                onSuccess(downloadTaskA);
                return;
            }
            if (downloadTaskA != null) {
                ConcurrentHashMap<String, DownloadTask> concurrentHashMap = downloadTasksMap;
                if (!concurrentHashMap.containsKey(downloadTaskA.getCrc_link_type_val())) {
                    concurrentHashMap.put(downloadTaskA.getCrc_link_type_val(), downloadTaskA);
                }
                onTaskChanged(downloadTaskA);
                return;
            }
            return;
        }
        onStart(downloadTaskA);
    }

    @Subscribe(priority = 100, threadMode = ThreadMode.MAIN)
    public final void onGlobalDownloadTaskEvent(@NotNull r event) {
        Intrinsics.checkNotNullParameter(event, "event");
        onEventMainThread(event);
        Iterator<DownloadTaskEventListener> it2 = downloadTaskEventListeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
        while (it2.hasNext()) {
            try {
                it2.next().onDownloadTaskEvent(event);
            } catch (Exception unused) {
            }
        }
    }

    public final void onNotifyDataSet(@Nullable r rVar, @NotNull Function0<Unit> call) {
        Intrinsics.checkNotNullParameter(call, "call");
        if (rVar == null) {
            return;
        }
        int iC = rVar.c();
        if (iC != 2 && iC != 3 && iC != 5 && iC != 6 && iC != 7 && iC != 42 && iC != 48) {
            switch (iC) {
            }
            return;
        }
        call.invoke();
    }

    public final void onStart(@Nullable DownloadTask task) {
        if (task == null) {
            return;
        }
        ConcurrentHashMap<String, DownloadTask> concurrentHashMap = downloadTasksMap;
        if (!concurrentHashMap.containsKey(task.getCrc_link_type_val())) {
            concurrentHashMap.put(task.getCrc_link_type_val(), task);
        }
        if (!downloadedMap.containsKey(task.getCrc_link_type_val())) {
            downloadedMap.put(task.getCrc_link_type_val(), task);
        }
        if (!downloadingMap.containsKey(task.getCrc_link_type_val())) {
            downloadingMap.put(task.getCrc_link_type_val(), task);
        }
        onTaskChanged(task);
        updateDownloadedNum();
    }

    public final void onStop(@Nullable DownloadTask task) {
        if (task == null) {
            return;
        }
        if (downloadingMap.containsKey(task.getCrc_link_type_val())) {
            downloadingMap.remove(task.getCrc_link_type_val());
        }
        onTaskChanged(task);
        updateDownloadedNum();
    }

    public final void onSuccess(@Nullable DownloadTask task) {
        if (task == null) {
            return;
        }
        ConcurrentHashMap<String, DownloadTask> concurrentHashMap = downloadTasksMap;
        if (!concurrentHashMap.containsKey(task.getCrc_link_type_val())) {
            concurrentHashMap.put(task.getCrc_link_type_val(), task);
        }
        if (downloadedMap.containsKey(task.getCrc_link_type_val())) {
            downloadedMap.remove(task.getCrc_link_type_val());
        }
        if (downloadingMap.containsKey(task.getCrc_link_type_val())) {
            downloadingMap.remove(task.getCrc_link_type_val());
        }
        onTaskChanged(task);
        updateDownloadedNum();
    }

    public final void onTaskChanged(@Nullable DownloadTask task) {
        if (task == null) {
            return;
        }
        DownloadTask taskByGameId = getTaskByGameId(task.getCrc_link_type_val());
        if (taskByGameId == null) {
            downloadTasksMap.put(task.getCrc_link_type_val(), task);
            return;
        }
        taskByGameId.setSpeed(task.getSpeed());
        taskByGameId.setCurrentSize(task.getCurrentSize());
        taskByGameId.setProgress(task.getProgress());
        taskByGameId.setStatus(task.getStatus());
        String resource_path = task.getResource_path();
        if (!(resource_path == null || resource_path.length() == 0)) {
            taskByGameId.setResource_path(task.getResource_path());
        }
        String gameZipPath = task.getGameZipPath();
        if (!(gameZipPath == null || gameZipPath.length() == 0)) {
            taskByGameId.setGameZipPath(task.getGameZipPath());
        }
        String path = task.getPath();
        if (path == null || path.length() == 0) {
            return;
        }
        taskByGameId.setPath(task.getPath());
    }

    public final void onUpdateCloudArchiveTime() {
        Long l10;
        if (cloudArchiveTimeMap.isEmpty() || downloadedMap.isEmpty()) {
            return;
        }
        for (Map.Entry<String, DownloadTask> entry : downloadedMap.entrySet()) {
            String crc_link_type_val = entry.getValue().getCrc_link_type_val();
            Intrinsics.checkNotNullExpressionValue(crc_link_type_val, "getCrc_link_type_val(...)");
            String strReplace$default = StringsKt__StringsJVMKt.replace$default(crc_link_type_val, "cld_", "", false, 4, (Object) null);
            if (cloudArchiveTimeMap.containsKey(strReplace$default) && (l10 = cloudArchiveTimeMap.get(strReplace$default)) != null && l10.longValue() > 0) {
                entry.getValue().setCloudArchiveTime(e0.D(l10.longValue(), "yyyy/MM/dd"));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003d  */
    public final void performDownloadClick(@NotNull Context mContext, @NotNull Downloadable downInfo) {
        GInfo gInfo;
        GInfo gInfo2;
        String crc_link_type_val;
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(downInfo, "downInfo");
        ExtBean extBeanCopy = downInfo.getExtBean().copy();
        if (downInfo.hasGInfo()) {
            GInfo gInfo3 = downInfo.getGInfo();
            if (w0.p(gInfo3 != null ? gInfo3.getTagInfo() : null)) {
                t.l(mContext).R1(Event.gameStart, extBeanCopy.buildScene().toExt());
            } else {
                t.l(mContext).R1(Event.commonClick, extBeanCopy.buildScene().toExt());
            }
        } else {
            t.l(mContext).R1(Event.commonClick, extBeanCopy.buildScene().toExt());
        }
        if (downInfo.isH5Game()) {
            IntentUtil.getInstance().intentActivity(mContext, downInfo.getIntentDataBean());
            if (downInfo.getDownloadTask() != null) {
                UtilsMy.j3(downInfo.getDownloadTask(), mContext);
                return;
            }
            return;
        }
        if (downInfo.isCpsGame() && d1.c()) {
            GInfo gInfo4 = downInfo.getGInfo();
            if (d1.a(gInfo4 != null ? gInfo4.getTagInfo() : null) && !downInfo.isHmCloud()) {
                d1.b();
                return;
            }
        }
        if (downInfo.isHmCloud() && (gInfo2 = downInfo.getGInfo()) != null && (w0.m(gInfo2.getTagInfo()) || w0.k(gInfo2.getTagInfo()))) {
            DownloadTask downloadTaskI = w0.i(downInfo);
            if (downloadTaskI == null || (crc_link_type_val = downloadTaskI.getCrc_link_type_val()) == null) {
                return;
            }
            String strReplace$default = StringsKt__StringsJVMKt.replace$default(crc_link_type_val, "cld_", "", false, 4, (Object) null);
            if (strReplace$default.length() == 0) {
                return;
            }
            w0.h().s(mContext, strReplace$default, downInfo.getExtBean());
            return;
        }
        downInfo.setDownloadTask(getTask(downInfo));
        DownloadTask downloadTask = downInfo.getDownloadTask();
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (downloadTask != null) {
            GInfo gInfo5 = downInfo.getGInfo();
            if (gInfo5 != null && gInfo5.needPurchase()) {
                status = 43;
            }
        }
        GInfo gInfo6 = downInfo.getGInfo();
        Integer numValueOf = gInfo6 != null ? Integer.valueOf(gInfo6.getDownStatus()) : null;
        if (downloadTask == null && downInfo.hasGInfo()) {
            GInfo gInfo7 = downInfo.getGInfo();
            Intrinsics.checkNotNull(gInfo7);
            if (gInfo7.isAndroidGame()) {
                g gVarT0 = g.t0(mContext);
                GInfo gInfo8 = downInfo.getGInfo();
                Intrinsics.checkNotNull(gInfo8);
                if (APKUtils.g(gVarT0, mContext, gInfo8.getPackageName(), null, 4, null)) {
                    g gVarT1 = g.t0(mContext);
                    GInfo gInfo9 = downInfo.getGInfo();
                    Intrinsics.checkNotNull(gInfo9);
                    int iD = gVarT1.n(mContext, String.valueOf(gInfo9.getPackageName())).d();
                    GInfo gInfo10 = downInfo.getGInfo();
                    Intrinsics.checkNotNull(gInfo10);
                    if (iD >= gInfo10.getVersionCode()) {
                        APKUtils.b bVar = APKUtils.f34739a;
                        GInfo gInfo11 = downInfo.getGInfo();
                        Intrinsics.checkNotNull(gInfo11);
                        bVar.U(mContext, String.valueOf(gInfo11.getPackageName()));
                        return;
                    }
                }
            }
            GInfo gInfo12 = downInfo.getGInfo();
            Intrinsics.checkNotNull(gInfo12);
            if (!gInfo12.needPurchase()) {
                UtilsMy.T2(mContext, downInfo);
                return;
            }
            GInfo gInfo13 = downInfo.getGInfo();
            Intrinsics.checkNotNull(gInfo13);
            UtilsMy.z4(mContext, gInfo13.getGameId());
            return;
        }
        if (downloadTask != null && (status == 2 || status == 10)) {
            d.i(downloadTask);
            return;
        }
        if (downloadTask != null && (status == 3 || status == 6)) {
            d.c(downloadTask, mContext);
            return;
        }
        if (status == 12 || status == 27) {
            return;
        }
        if (downloadTask != null && status == 13) {
            d.l(mContext, downloadTask);
            return;
        }
        if (downloadTask != null && status == 5) {
            UtilsMy.q4(mContext, downloadTask, "", extBeanCopy.buildScene());
            return;
        }
        if (status == 9) {
            if ((downloadTask != null ? downloadTask.getCrc_link_type_val() : null) == null || Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), "")) {
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 5) {
                UtilsMy.l1(mContext, downloadTask);
                return;
            }
            UtilsMy.W4(downloadTask, downloadTask.getCrc_link_type_val());
            d.b(downloadTask);
            downloadTask.setVer(downloadTask.getVer());
            downloadTask.setVer_name(downloadTask.getVer_name());
            downloadTask.setUrl(downloadTask.getUrl());
            downloadTask.setCfg_ver(downloadTask.getCfg_ver());
            downloadTask.setCfg_ver_name(downloadTask.getCfg_ver_name());
            downloadTask.setCfg_down_url(downloadTask.getCfg_down_url());
            d.c(downloadTask, mContext);
            return;
        }
        if (status == 42) {
            if ((downloadTask != null ? downloadTask.getCrc_link_type_val() : null) == null || Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), "")) {
                return;
            }
            UtilsMy.W4(downloadTask, downloadTask.getCrc_link_type_val());
            downloadTask.setVer(downloadTask.getVer());
            downloadTask.setVer_name(downloadTask.getVer_name());
            downloadTask.setUrl(downloadTask.getUrl());
            downloadTask.setCfg_ver(downloadTask.getCfg_ver());
            downloadTask.setCfg_ver_name(downloadTask.getCfg_ver_name());
            downloadTask.setCfg_down_url(downloadTask.getCfg_down_url());
            UtilsMy.O4(mContext, downloadTask);
            return;
        }
        if (downloadTask != null && 11 == status) {
            UtilsMy.w4(downloadTask, mContext);
            return;
        }
        if (43 == status) {
            UtilsMy.z4(mContext, downloadTask != null ? downloadTask.getCrc_link_type_val() : null);
            return;
        }
        if (downloadTask == null || !downInfo.hasGInfo() || (gInfo = downInfo.getGInfo()) == null) {
            return;
        }
        if (gInfo.needPurchase()) {
            UtilsMy.z4(mContext, downloadTask.getCrc_link_type_val());
        } else if (numValueOf != null && numValueOf.intValue() == 5) {
            UtilsMy.l1(mContext, downloadTask);
        } else {
            UtilsMy.U0(mContext, downloadTask, downloadTask.getTp_down_url(), 0, 0);
        }
    }

    public final void registerDownloadTaskListener(@NotNull DownloadTaskEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        CopyOnWriteArrayList<DownloadTaskEventListener> copyOnWriteArrayList = downloadTaskEventListeners;
        if (copyOnWriteArrayList.contains(listener)) {
            return;
        }
        copyOnWriteArrayList.add(listener);
    }

    public final void setCloudArchiveTimeMap(@NotNull HashMap<String, Long> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        cloudArchiveTimeMap = map;
    }

    public final void setDownloadedMap(@NotNull HashMap<String, DownloadTask> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        downloadedMap = map;
    }

    public final void setDownloadedNum(int i10) {
        downloadedNum = i10;
    }

    public final void setDownloadingMap(@NotNull HashMap<String, DownloadTask> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        downloadingMap = map;
    }

    public final void setDownloadingNum(int i10) {
        downloadingNum = i10;
    }

    public final void unregisterDownloadTaskListener(@NotNull DownloadTaskEventListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        downloadTaskEventListeners.remove(listener);
    }

    public final void updateCloudArchiveTime(@NotNull String gameId, long archiveTime) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        cloudArchiveTimeMap.put(gameId, Long.valueOf(archiveTime));
    }

    public final void updateDownloadTask(@NotNull Downloadable downInfo) {
        Intrinsics.checkNotNullParameter(downInfo, "downInfo");
        GInfo gInfo = downInfo.getGInfo();
        DownloadTask taskByGameId = getTaskByGameId(gInfo != null ? gInfo.getGameId() : null);
        boolean z10 = taskByGameId != null && taskByGameId.getStatus() == 5;
        GInfo gInfo2 = downInfo.getGInfo();
        DownloadTask taskByGameId2 = getTaskByGameId(gInfo2 != null ? gInfo2.getModGameId() : null);
        boolean z11 = taskByGameId2 != null && taskByGameId2.getStatus() == 5;
        if (z11 || z10) {
            downInfo.getExtBean().setTypeCode("game");
        } else {
            GInfo gInfo3 = downInfo.getGInfo();
            if (w0.p(gInfo3 != null ? gInfo3.getTagInfo() : null)) {
                downInfo.getExtBean().setTypeCode("cloudGame");
            }
        }
        if (z11 && z10) {
            downInfo.setDownloadTask(taskByGameId);
            return;
        }
        if (z10) {
            downInfo.setDownloadTask(taskByGameId);
            return;
        }
        if (z11) {
            downInfo.setDownloadTask(taskByGameId2);
            return;
        }
        if (taskByGameId2 != null) {
            downInfo.setDownloadTask(taskByGameId2);
        } else if (taskByGameId != null) {
            downInfo.setDownloadTask(taskByGameId);
        } else {
            downInfo.setDownloadTask(null);
        }
    }

    public final void updateDownloadedNum() {
        downloadedNum = f.M().U(MApplication.f3182z);
        recomputeDownloadingNum();
    }

    @NotNull
    public final DownloadTask getTask(@NotNull DownloadTask beanTask) {
        String string;
        DownloadTask taskByGameId;
        Intrinsics.checkNotNullParameter(beanTask, "beanTask");
        String crc_link_type_val = beanTask.getCrc_link_type_val();
        if (crc_link_type_val != null && (string = StringsKt__StringsKt.trim((CharSequence) crc_link_type_val).toString()) != null) {
            if (!(string.length() > 0)) {
                string = null;
            }
            if (string == null || (taskByGameId = getTaskByGameId(string)) == null) {
                return beanTask;
            }
            if (taskByGameId.getStatus() != beanTask.getStatus()) {
                taskByGameId.setStatus(beanTask.getStatus());
            }
            return taskByGameId;
        }
        return beanTask;
    }
}
