package com.psk.kotlin.util;

import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.ui.findgame.data.FindChoiceBannerData;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.event.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import q5.f;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0014\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014J\u000e\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0012\u0010 \u001a\u00020\u001b2\b\u0010!\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\"\u001a\u00020\u001b2\b\u0010!\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010#\u001a\u00020\u001b2\b\u0010!\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010$\u001a\u00020\u001b2\b\u0010!\u001a\u0004\u0018\u00010\nH\u0002J\u000e\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020'J\u0010\u0010(\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\nH\u0002R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0006R \u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006)"}, d2 = {"Lcom/psk/kotlin/util/DownloadViewPresenter;", "", "showDataList", "", "Lcom/psk/kotlin/util/CommonListMainData;", "<init>", "(Ljava/util/List;)V", "downloadTasksMap", "", "", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "getDownloadTasksMap", "()Ljava/util/Map;", "setDownloadTasksMap", "(Ljava/util/Map;)V", "downloadTasks", "getDownloadTasks", "()Ljava/util/List;", "setDownloadTasks", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "getAdapter", "()Landroidx/recyclerview/widget/RecyclerView$Adapter;", "setAdapter", "(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V", "initData", "", "adapterx", "onEventMainThread", "downloadTaskEvent", "Lcom/join/mgps/event/DownloadTaskEvent;", "receiveStart", "downloadTask", "receiveSuccess", "receiveDelete", "receiveError", "updateDowState", "collectionBeanSubBusiness", "Lcom/join/mgps/dto/CollectionBeanSub;", "updateDowStateList", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DownloadViewPresenter {
    public RecyclerView.Adapter<RecyclerView.ViewHolder> adapter;

    @NotNull
    private List<DownloadTask> downloadTasks;

    @NotNull
    private Map<String, DownloadTask> downloadTasksMap;

    @NotNull
    private List<CommonListMainData> showDataList;

    public DownloadViewPresenter(@NotNull List<CommonListMainData> showDataList) {
        Intrinsics.checkNotNullParameter(showDataList, "showDataList");
        this.showDataList = showDataList;
        this.downloadTasksMap = new LinkedHashMap();
        this.downloadTasks = new ArrayList();
    }

    private final void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.downloadTasks.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            String crc_link_type_val = next.getCrc_link_type_val();
            Intrinsics.checkNotNull(downloadTask);
            if (Intrinsics.areEqual(crc_link_type_val, downloadTask.getCrc_link_type_val())) {
                this.downloadTasksMap.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CommonListMainData commonListMainData : this.showDataList) {
                    if (commonListMainData.getType() == 2) {
                        Object any = commonListMainData.getAny();
                        Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub");
                        CollectionBeanSub collectionBeanSub = (CollectionBeanSub) any;
                        if (collectionBeanSub.getMod_info() != null) {
                            DownloadTask downloadTask2 = this.downloadTasksMap.get(collectionBeanSub.getMod_info().getMod_game_id());
                            DownloadTask downloadTask3 = this.downloadTasksMap.get(collectionBeanSub.getGame_id());
                            if (downloadTask2 == null && downloadTask3 == null) {
                                collectionBeanSub.setDownloadTask(null);
                            } else if (downloadTask2 != null) {
                                collectionBeanSub.setDownloadTask(downloadTask2);
                            } else if (downloadTask3 != null) {
                                collectionBeanSub.setDownloadTask(downloadTask3);
                            } else if (Intrinsics.areEqual(collectionBeanSub.getGame_id(), downloadTask.getCrc_link_type_val())) {
                                collectionBeanSub.setDownloadTask(null);
                            }
                        } else if (Intrinsics.areEqual(collectionBeanSub.getGame_id(), downloadTask.getCrc_link_type_val())) {
                            collectionBeanSub.setDownloadTask(null);
                        }
                    }
                }
                break;
            }
        }
        getAdapter().notifyDataSetChanged();
    }

    private final void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            getAdapter().notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private final void receiveStart(DownloadTask downloadTask) {
        UtilsMy.U4(downloadTask);
        Map<String, DownloadTask> map = this.downloadTasksMap;
        Intrinsics.checkNotNull(downloadTask);
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        getAdapter().notifyDataSetChanged();
    }

    private final void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        updateDowStateList(downloadTask);
        DownloadTask downloadTask2 = this.downloadTasksMap.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        getAdapter().notifyDataSetChanged();
    }

    private final void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (CommonListMainData commonListMainData : this.showDataList) {
                if (commonListMainData.getType() == 3) {
                    Object any = commonListMainData.getAny();
                    Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData");
                    CollectionBeanSub game_info = ((FindChoiceBannerData) any).getGame_info();
                    if (game_info.getMod_info() != null) {
                        ModInfoBean mod_info = game_info.getMod_info();
                        DownloadTask downloadTask2 = this.downloadTasksMap.get(mod_info.getMain_game_id());
                        boolean z10 = true;
                        boolean z11 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                        DownloadTask downloadTask3 = this.downloadTasksMap.get(mod_info.getMod_game_id());
                        if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                            z10 = false;
                        }
                        if (z10 && z11) {
                            if (Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), game_info.getCrc_sign_id())) {
                                game_info.setDownloadTask(downloadTask);
                                return;
                            }
                        } else if (z10) {
                            if (game_info.getMod_info() != null && Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), game_info.getMod_info().getMod_game_id())) {
                                game_info.setDownloadTask(downloadTask);
                                return;
                            }
                        } else if (!z11) {
                            DownloadTask downloadTaskG = game_info.getMod_info() != null ? f.M().G(game_info.getMod_info().getMod_game_id()) : null;
                            if (downloadTaskG == null) {
                                downloadTaskG = f.M().G(game_info.getCrc_sign_id());
                            }
                            if (downloadTaskG != null && Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), downloadTaskG.getCrc_link_type_val())) {
                                game_info.setDownloadTask(downloadTask);
                                return;
                            }
                        } else if (Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), game_info.getCrc_sign_id())) {
                            game_info.setDownloadTask(downloadTask);
                            return;
                        }
                    } else if (Intrinsics.areEqual(game_info.getGame_id(), downloadTask.getCrc_link_type_val())) {
                        game_info.setDownloadTask(downloadTask);
                        return;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @NotNull
    public final RecyclerView.Adapter<RecyclerView.ViewHolder> getAdapter() {
        RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
        if (adapter != null) {
            return adapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        return null;
    }

    @NotNull
    public final List<DownloadTask> getDownloadTasks() {
        return this.downloadTasks;
    }

    @NotNull
    public final Map<String, DownloadTask> getDownloadTasksMap() {
        return this.downloadTasksMap;
    }

    public final void initData(@NotNull RecyclerView.Adapter<RecyclerView.ViewHolder> adapterx) {
        Intrinsics.checkNotNullParameter(adapterx, "adapterx");
        List<DownloadTask> listD = f.M().d();
        this.downloadTasks = listD;
        if (listD.size() > 0) {
            for (DownloadTask downloadTask : this.downloadTasks) {
                Map<String, DownloadTask> map = this.downloadTasksMap;
                String crc_link_type_val = downloadTask.getCrc_link_type_val();
                Intrinsics.checkNotNullExpressionValue(crc_link_type_val, "getCrc_link_type_val(...)");
                map.put(crc_link_type_val, downloadTask);
            }
        }
        setAdapter(adapterx);
    }

    public final void onEventMainThread(@NotNull r downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        int iC = downloadTaskEvent.c();
        if (iC != 2 && iC != 3) {
            if (iC != 5) {
                if (iC == 6) {
                    receiveError(downloadTaskA);
                    return;
                } else if (iC == 7) {
                    receiveDelete(downloadTaskA);
                    return;
                } else if (iC != 48) {
                    switch (iC) {
                    }
                }
            }
            receiveSuccess(downloadTaskA);
            return;
        }
        receiveStart(downloadTaskA);
    }

    public final void setAdapter(@NotNull RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        Intrinsics.checkNotNullParameter(adapter, "<set-?>");
        this.adapter = adapter;
    }

    public final void setDownloadTasks(@NotNull List<DownloadTask> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.downloadTasks = list;
    }

    public final void setDownloadTasksMap(@NotNull Map<String, DownloadTask> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.downloadTasksMap = map;
    }

    public final void updateDowState(@NotNull CollectionBeanSub collectionBeanSubBusiness) {
        Intrinsics.checkNotNullParameter(collectionBeanSubBusiness, "collectionBeanSubBusiness");
        if (this.downloadTasksMap.get(collectionBeanSubBusiness.getGame_id()) != null) {
            collectionBeanSubBusiness.setDownloadTask(this.downloadTasksMap.get(collectionBeanSubBusiness.getGame_id()));
        }
    }
}
