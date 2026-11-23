package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import android.content.Intent;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter;
import com.join.kotlin.ui.cloudarchive.data.ArchiveArgs;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.data.ModDataRequest;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.HMCloudMainActivity_;
import com.join.mgps.activity.RewardAdDialogActivity;
import com.join.mgps.ad.RewardAdParams;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dto.PlayCfgBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SingleGameAdCfgBean;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.wrapper.UserPrefs;
import com.psk.kotlin.util.CommonListMainData;
import com.sigmob.sdk.base.mta.PointCategory;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J.\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020\r2\u0006\u0010,\u001a\u00020-2\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0006J\u0016\u0010/\u001a\u00020)2\u0006\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u000202J\u0016\u00103\u001a\u00020)2\u0006\u00104\u001a\u0002052\u0006\u00100\u001a\u00020\u0011J\u000e\u00106\u001a\u00020)2\u0006\u00100\u001a\u00020\u0011J\u0016\u00107\u001a\u00020)2\u0006\u00104\u001a\u0002052\u0006\u00100\u001a\u00020\u0011J\u000e\u00108\u001a\u00020)2\u0006\u00109\u001a\u00020:J\u0010\u0010;\u001a\u00020)2\u0006\u00100\u001a\u00020\u0011H\u0002J\u0010\u0010<\u001a\u00020)2\u0006\u00100\u001a\u00020\u0011H\u0002J&\u0010=\u001a\u00020)2\u0006\u00104\u001a\u0002052\u0006\u00100\u001a\u00020\u00112\u0006\u0010>\u001a\u00020\u001b2\u0006\u0010?\u001a\u00020!J(\u0010@\u001a\u00020)2\b\u00104\u001a\u0004\u0018\u0001052\b\u0010A\u001a\u0004\u0018\u00010\u001b2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020)0CR&\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR \u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR&\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\t\"\u0004\b\u0013\u0010\u000bR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR \u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u000bR \u0010$\u001a\b\u0012\u0004\u0012\u00020%0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\t\"\u0004\b'\u0010\u000b¨\u0006D"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "listArchive", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/psk/kotlin/util/CommonListMainData;", "getListArchive", "()Landroidx/lifecycle/MutableLiveData;", "setListArchive", "(Landroidx/lifecycle/MutableLiveData;)V", "cloud_archive_local_path", "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "getCloud_archive_local_path", "setCloud_archive_local_path", "localAllArchive", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getLocalAllArchive", "setLocalAllArchive", PointCategory.REQUEST, "Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;", "getRequest", "()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;", "setRequest", "(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;)V", "packageName", "", "getPackageName", "()Ljava/lang/String;", "setPackageName", "(Ljava/lang/String;)V", "showPosition", "", "getShowPosition", "setShowPosition", "loadBindData", "Lcom/join/kotlin/domain/common/LoadBindindData;", "getLoadBindData", "setLoadBindData", "loadAllArchives", "", "packagename", "modGameArchivePathData", "archiveId", "", "lists", "onitemChanged", HMCloudMainActivity_.ARCHIVE_DATA_EXTRA, "adapter", "Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;", "delMyDownloadArchive", "context", "Landroid/content/Context;", "updateItemData", "delMyArchiveFromCloud", "onRecivedDownLoadEVent", "archiveDownEvent", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;", "changeLocalDataDel", "locallAddArchive", "commentArchive", "type", "from", "startGameADCheck", "gameId", com.alipay.sdk.authjs.a.f7128m, "Lkotlin/Function0;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nModGameCloudViewModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModGameCloudViewModle.kt\ncom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,697:1\n774#2:698\n865#2,2:699\n1021#2,2:701\n*S KotlinDebug\n*F\n+ 1 ModGameCloudViewModle.kt\ncom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle\n*L\n365#1:698\n365#1:699,2\n102#1:701,2\n*E\n"})
public final class ModGameCloudViewModle extends ViewModel {

    @NotNull
    private MutableLiveData<List<CommonListMainData>> listArchive = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<ModGameArchivePathData> cloud_archive_local_path = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<List<ArchiveData>> localAllArchive = new MutableLiveData<>();

    @NotNull
    private ModDataRequest request = new ModDataRequest();

    @NotNull
    private String packageName = "";

    @NotNull
    private MutableLiveData<Integer> showPosition = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();

    public ModGameCloudViewModle() {
        this.listArchive.setValue(new ArrayList());
        this.showPosition.setValue(1);
    }

    private final void changeLocalDataDel(ArchiveData archiveData) {
        ArrayList arrayList;
        List<ArchiveData> value;
        List<ArchiveData> value2 = this.localAllArchive.getValue();
        if (value2 != null) {
            arrayList = new ArrayList();
            for (Object obj : value2) {
                if (Intrinsics.areEqual(((ArchiveData) obj).getId(), archiveData.getId())) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList == null || !(!arrayList.isEmpty()) || (value = this.localAllArchive.getValue()) == null) {
            return;
        }
        value.remove(arrayList.get(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAllArchives$lambda$1(ModGameArchivePathData modGameArchivePathData, List list, ModGameCloudViewModle modGameCloudViewModle, final long j10) {
        List<CloudArchiveTable> listQ = t6.g.t().q(modGameArchivePathData.getGameId());
        ArrayList arrayList = new ArrayList();
        if (list != null && (list.isEmpty() ^ true)) {
            arrayList.add(list.get(0));
        }
        if (listQ != null) {
            for (CloudArchiveTable cloudArchiveTable : listQ) {
                ArchiveData archiveData = (ArchiveData) JsonMapper.getInstance().fromJson(cloudArchiveTable.getArchiveDataJson(), ArchiveData.class);
                archiveData.setUserId(cloudArchiveTable.getUserId());
                archiveData.setArchiveLocalZipPath(cloudArchiveTable.getArchiveZipPath());
                archiveData.setArchiveLocalPath(cloudArchiveTable.getArchiveFiles());
                archiveData.setMainArchiveLocalPath(cloudArchiveTable.getArchiveFolder());
                archiveData.setMainArchiveLocalPath2(cloudArchiveTable.getMainArchiveLocalPath2());
                archiveData.setId(cloudArchiveTable.getArchiveId());
                archiveData.setIsFirstRun(cloudArchiveTable.getIsFirstRun());
                Intrinsics.checkNotNull(archiveData);
                arrayList.add(archiveData);
            }
        }
        if (arrayList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle$loadAllArchives$lambda$1$$inlined$sortByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t10, T t11) {
                    long addTime;
                    ArchiveData archiveData2 = (ArchiveData) t11;
                    long addTime2 = 2147483646;
                    if (Intrinsics.areEqual(archiveData2.getId(), "0")) {
                        addTime = 2147483647L;
                    } else {
                        addTime = Intrinsics.areEqual(archiveData2.getId(), String.valueOf(j10)) ? 2147483646L : archiveData2.getAddTime();
                    }
                    Long lValueOf = Long.valueOf(addTime);
                    ArchiveData archiveData3 = (ArchiveData) t10;
                    if (Intrinsics.areEqual(archiveData3.getId(), "0")) {
                        addTime2 = 2147483647L;
                    } else if (!Intrinsics.areEqual(archiveData3.getId(), String.valueOf(j10))) {
                        addTime2 = archiveData3.getAddTime();
                    }
                    return ComparisonsKt__ComparisonsKt.compareValues(lValueOf, Long.valueOf(addTime2));
                }
            });
        }
        modGameCloudViewModle.localAllArchive.postValue(arrayList);
    }

    private final void locallAddArchive(ArchiveData archiveData) {
        ArchiveData next;
        CloudArchiveTable cloudArchiveTableP = t6.g.t().p(archiveData.getId());
        if (cloudArchiveTableP == null) {
            return;
        }
        List<CommonListMainData> value = this.listArchive.getValue();
        Intrinsics.checkNotNull(value);
        int i10 = 0;
        boolean z10 = false;
        for (CommonListMainData commonListMainData : value) {
            if (commonListMainData.getAny() instanceof ArchiveData) {
                Object any = commonListMainData.getAny();
                Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                ArchiveData archiveData2 = (ArchiveData) any;
                if (Intrinsics.areEqual(archiveData2.getId(), archiveData.getId())) {
                    archiveData.setIsFirstRun(cloudArchiveTableP.getIsFirstRun());
                    archiveData2.setIsFirstRun(cloudArchiveTableP.getIsFirstRun());
                    archiveData.setArchiveLocalZipPath(cloudArchiveTableP.getArchiveZipPath());
                    archiveData2.setMainArchiveLocalPath(cloudArchiveTableP.getArchiveFolder());
                    archiveData2.setMainArchiveLocalPath2(cloudArchiveTableP.getMainArchiveLocalPath2());
                    archiveData2.setArchiveLocalPath(cloudArchiveTableP.getArchiveFiles());
                    archiveData2.setUserId(cloudArchiveTableP.getUserId());
                    archiveData.setUserId(cloudArchiveTableP.getUserId());
                    z10 = true;
                }
            }
        }
        ArchiveData archiveData3 = (ArchiveData) JsonMapper.getInstance().fromJson(cloudArchiveTableP.getArchiveDataJson(), ArchiveData.class);
        archiveData3.setArchiveLocalZipPath(cloudArchiveTableP.getArchiveZipPath());
        archiveData3.setId(cloudArchiveTableP.getArchiveId());
        archiveData3.setUserId(cloudArchiveTableP.getUserId());
        archiveData3.setShowType(2);
        archiveData3.setIsFirstRun(cloudArchiveTableP.getIsFirstRun());
        archiveData3.setMainArchiveLocalPath(cloudArchiveTableP.getArchiveFolder());
        archiveData3.setMainArchiveLocalPath2(cloudArchiveTableP.getMainArchiveLocalPath2());
        archiveData3.setArchiveLocalPath(cloudArchiveTableP.getArchiveFiles());
        List<ArchiveData> value2 = this.localAllArchive.getValue();
        Intrinsics.checkNotNull(value2);
        Iterator<ArchiveData> it2 = value2.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!Intrinsics.areEqual(next.getId(), cloudArchiveTableP.getArchiveId()));
        if (next != null) {
            next.setArchiveLocalZipPath(cloudArchiveTableP.getArchiveZipPath());
            next.setId(cloudArchiveTableP.getArchiveId());
            next.setShowType(2);
            next.setIsFirstRun(cloudArchiveTableP.getIsFirstRun());
            next.setMainArchiveLocalPath(cloudArchiveTableP.getArchiveFolder());
            next.setMainArchiveLocalPath2(cloudArchiveTableP.getMainArchiveLocalPath2());
            next.setArchiveLocalPath(cloudArchiveTableP.getArchiveFiles());
        } else {
            List<ArchiveData> value3 = this.localAllArchive.getValue();
            if (value3 != null) {
                Intrinsics.checkNotNull(archiveData3);
                value3.add(archiveData3);
            }
        }
        if (z10) {
            MutableLiveData<List<CommonListMainData>> mutableLiveData = this.listArchive;
            mutableLiveData.setValue(mutableLiveData.getValue());
            return;
        }
        Integer value4 = this.showPosition.getValue();
        if (value4 != null && value4.intValue() == 1) {
            return;
        }
        try {
            if (this.listArchive.getValue() != null) {
                List<CommonListMainData> value5 = this.listArchive.getValue();
                Intrinsics.checkNotNull(value5);
                if (value5.size() > 0) {
                    List<CommonListMainData> value6 = this.listArchive.getValue();
                    Intrinsics.checkNotNull(value6);
                    if (value6.get(0).getAny() instanceof ArchiveData) {
                        List<CommonListMainData> value7 = this.listArchive.getValue();
                        Intrinsics.checkNotNull(value7);
                        Object any2 = value7.get(0).getAny();
                        Intrinsics.checkNotNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                        if (Intrinsics.areEqual(((ArchiveData) any2).getId(), "0")) {
                            i10 = 1;
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        List<CommonListMainData> value8 = this.listArchive.getValue();
        if (value8 != null) {
            Intrinsics.checkNotNull(archiveData3);
            value8.add(i10, new CommonListMainData(3, archiveData3, null, null, 12, null));
        }
        MutableLiveData<List<CommonListMainData>> mutableLiveData2 = this.listArchive;
        mutableLiveData2.setValue(mutableLiveData2.getValue());
    }

    public final void commentArchive(@NotNull final Context context, @NotNull final ArchiveData archiveData, @NotNull String type, final int from) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(type, "type");
        if (archiveData.getIsFirstRun() <= 1) {
            a3.b(context).d("请先启动此存档后再点评");
            return;
        }
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        ArchiveArgs archiveArgs = new ArchiveArgs();
        archiveArgs.setArchiveId(archiveData.getId());
        archiveArgs.setGameId(archiveData.getGame_id());
        archiveArgs.setCommentType(type);
        archiveArgs.setUid(AccountUtil_.getInstance_(context).getAccountData().getUid());
        requestModel.setArgs(archiveArgs);
        if (Intrinsics.areEqual(type, "NEGATIVE")) {
            com.join.mgps.rpc.impl.i.P0().N0().s1(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle.commentArchive.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<?>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<?>> call, Response<ResponseModel<?>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    ResponseModel<?> responseModelBody = response.body();
                    boolean z10 = false;
                    if (responseModelBody != null && responseModelBody.getCode() == 200) {
                        z10 = true;
                    }
                    if (!z10) {
                        a3 a3VarB = a3.b(context);
                        ResponseModel<?> responseModelBody2 = response.body();
                        a3VarB.d(responseModelBody2 != null ? responseModelBody2.getMessage() : null);
                        return;
                    }
                    archiveData.setIsUnLike(1);
                    ArchiveData archiveData2 = archiveData;
                    archiveData2.setNegativeCount(archiveData2.getNegativeCount() + 1);
                    archiveData2.setNegativeCount(archiveData2.getNegativeCount());
                    com.join.mgps.Util.j0.a().c(new ArchiveDownEvent(10, archiveData));
                    this.getListArchive().setValue(this.getListArchive().getValue());
                    if (from == 1) {
                        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(context);
                        Event event = Event.giveCloudDisLike;
                        Ext from2 = new Ext().setFrom("1");
                        ArchiveData archiveData3 = archiveData;
                        tVarL.R1(event, from2.setGameId(archiveData3 != null ? archiveData3.getGame_id() : null));
                        return;
                    }
                    com.papa.sim.statistic.t tVarL2 = com.papa.sim.statistic.t.l(context);
                    Event event2 = Event.giveCloudDisLike;
                    Ext from3 = new Ext().setFrom("2");
                    ArchiveData archiveData4 = archiveData;
                    tVarL2.R1(event2, from3.setGameId(archiveData4 != null ? archiveData4.getGame_id() : null));
                }
            });
        } else if (archiveData.getIsLike() == 0) {
            com.join.mgps.rpc.impl.i.P0().N0().s1(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle.commentArchive.2
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<?>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<?>> call, Response<ResponseModel<?>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    ResponseModel<?> responseModelBody = response.body();
                    boolean z10 = false;
                    if (responseModelBody != null && responseModelBody.getCode() == 200) {
                        z10 = true;
                    }
                    if (!z10) {
                        a3 a3VarB = a3.b(context);
                        ResponseModel<?> responseModelBody2 = response.body();
                        a3VarB.d(responseModelBody2 != null ? responseModelBody2.getMessage() : null);
                        return;
                    }
                    archiveData.setIsLike(1);
                    ArchiveData archiveData2 = archiveData;
                    archiveData2.setLikeCount(archiveData2.getLikeCount() + 1);
                    archiveData2.setLikeCount(archiveData2.getLikeCount());
                    com.join.mgps.Util.j0.a().c(new ArchiveDownEvent(10, archiveData));
                    this.getListArchive().setValue(this.getListArchive().getValue());
                    if (from == 1) {
                        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(context);
                        Event event = Event.giveCloudLike;
                        Ext from2 = new Ext().setFrom("1");
                        ArchiveData archiveData3 = archiveData;
                        tVarL.R1(event, from2.setGameId(archiveData3 != null ? archiveData3.getGame_id() : null));
                        return;
                    }
                    com.papa.sim.statistic.t tVarL2 = com.papa.sim.statistic.t.l(context);
                    Event event2 = Event.giveCloudLike;
                    Ext from3 = new Ext().setFrom("2");
                    ArchiveData archiveData4 = archiveData;
                    tVarL2.R1(event2, from3.setGameId(archiveData4 != null ? archiveData4.getGame_id() : null));
                }
            });
        }
    }

    public final void delMyArchiveFromCloud(@NotNull final Context context, @NotNull final ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        ArchiveArgs archiveArgs = new ArchiveArgs();
        archiveArgs.setArchiveId(archiveData.getId());
        archiveArgs.setGameId(archiveData.getGame_id());
        archiveArgs.setUid(AccountUtil_.getInstance_(context).getAccountData().getUid());
        requestModel.setArgs(archiveArgs);
        com.join.mgps.rpc.impl.i.P0().N0().R0(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle.delMyArchiveFromCloud.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<?>> call, Throwable t10) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t10, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<?>> call, Response<ResponseModel<?>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                ResponseModel<?> responseModelBody = response.body();
                boolean z10 = false;
                if (responseModelBody != null && responseModelBody.getCode() == 200) {
                    z10 = true;
                }
                if (!z10) {
                    a3.b(context).d(response.message());
                    return;
                }
                List<CommonListMainData> value = ModGameCloudViewModle.this.getListArchive().getValue();
                Intrinsics.checkNotNull(value);
                for (int size = value.size() - 1; -1 < size; size--) {
                    List<CommonListMainData> value2 = ModGameCloudViewModle.this.getListArchive().getValue();
                    Intrinsics.checkNotNull(value2);
                    if (value2.get(size).getAny() instanceof ArchiveData) {
                        List<CommonListMainData> value3 = ModGameCloudViewModle.this.getListArchive().getValue();
                        Intrinsics.checkNotNull(value3);
                        Object any = value3.get(size).getAny();
                        Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                        if (Intrinsics.areEqual(((ArchiveData) any).getId(), archiveData.getId())) {
                            List<CommonListMainData> value4 = ModGameCloudViewModle.this.getListArchive().getValue();
                            Intrinsics.checkNotNull(value4);
                            value4.remove(size);
                            ModGameCloudViewModle.this.getListArchive().setValue(ModGameCloudViewModle.this.getListArchive().getValue());
                            return;
                        }
                    }
                }
            }
        });
    }

    public final void delMyDownloadArchive(@NotNull final Context context, @NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        if (Intrinsics.areEqual(archiveData.getId(), "0")) {
            archiveData.setArchiveDesc("我的默认存档(暂无)");
            archiveData.setAddTime(0L);
            archiveData.setShowText("启动");
            archiveData.setStatus(8);
            archiveData.setId("0");
            archiveData.setUserId(0);
            CloudArchiveTable cloudArchiveTableS = t6.g.t().s(archiveData.getGame_id(), 0);
            if (cloudArchiveTableS != null) {
                ArchiveData archiveData2 = (ArchiveData) JsonMapper.getInstance().fromJson(cloudArchiveTableS.getArchiveDataJson(), ArchiveData.class);
                archiveData2.setUserId(cloudArchiveTableS.getUserId());
                archiveData2.setId(cloudArchiveTableS.getArchiveId());
                Intrinsics.checkNotNull(archiveData2);
                delMyDownloadArchive(context, archiveData2);
            }
            List<CommonListMainData> value = this.listArchive.getValue();
            Intrinsics.checkNotNull(value);
            for (int size = value.size() - 1; -1 < size; size--) {
                List<CommonListMainData> value2 = this.listArchive.getValue();
                Intrinsics.checkNotNull(value2);
                if (value2.get(size).getAny() instanceof ArchiveData) {
                    List<CommonListMainData> value3 = this.listArchive.getValue();
                    Intrinsics.checkNotNull(value3);
                    Object any = value3.get(size).getAny();
                    Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                    if (Intrinsics.areEqual(((ArchiveData) any).getId(), archiveData.getId())) {
                        List<CommonListMainData> value4 = this.listArchive.getValue();
                        Intrinsics.checkNotNull(value4);
                        value4.remove(size);
                        MutableLiveData<List<CommonListMainData>> mutableLiveData = this.listArchive;
                        mutableLiveData.setValue(mutableLiveData.getValue());
                        break;
                    }
                }
            }
            List<ArchiveData> value5 = this.localAllArchive.getValue();
            Intrinsics.checkNotNull(value5);
            for (int size2 = value5.size() - 1; -1 < size2; size2--) {
                List<ArchiveData> value6 = this.localAllArchive.getValue();
                Intrinsics.checkNotNull(value6);
                ArchiveData archiveData3 = value6.get(size2);
                Intrinsics.checkNotNull(archiveData3, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                if (Intrinsics.areEqual(archiveData3.getId(), archiveData.getId())) {
                    List<ArchiveData> value7 = this.localAllArchive.getValue();
                    Intrinsics.checkNotNull(value7);
                    value7.remove(size2);
                    break;
                }
            }
        } else {
            t6.g.t().o(archiveData.getPackageName(), archiveData.getId());
            List<CommonListMainData> value8 = this.listArchive.getValue();
            Intrinsics.checkNotNull(value8);
            for (int size3 = value8.size() - 1; -1 < size3; size3--) {
                List<CommonListMainData> value9 = this.listArchive.getValue();
                Intrinsics.checkNotNull(value9);
                if (value9.get(size3).getAny() instanceof ArchiveData) {
                    List<CommonListMainData> value10 = this.listArchive.getValue();
                    Intrinsics.checkNotNull(value10);
                    Object any2 = value10.get(size3).getAny();
                    Intrinsics.checkNotNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                    if (Intrinsics.areEqual(((ArchiveData) any2).getId(), archiveData.getId())) {
                        List<CommonListMainData> value11 = this.listArchive.getValue();
                        Intrinsics.checkNotNull(value11);
                        value11.remove(size3);
                        MutableLiveData<List<CommonListMainData>> mutableLiveData2 = this.listArchive;
                        mutableLiveData2.setValue(mutableLiveData2.getValue());
                        break;
                    }
                }
            }
            List<ArchiveData> value12 = this.localAllArchive.getValue();
            Intrinsics.checkNotNull(value12);
            for (int size4 = value12.size() - 1; -1 < size4; size4--) {
                List<ArchiveData> value13 = this.localAllArchive.getValue();
                Intrinsics.checkNotNull(value13);
                ArchiveData archiveData4 = value13.get(size4);
                Intrinsics.checkNotNull(archiveData4, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                if (Intrinsics.areEqual(archiveData4.getId(), archiveData.getId())) {
                    List<ArchiveData> value14 = this.localAllArchive.getValue();
                    Intrinsics.checkNotNull(value14);
                    value14.remove(size4);
                    break;
                }
            }
        }
        String id2 = archiveData.getId();
        if (!(id2 == null || id2.length() == 0)) {
            if (Intrinsics.areEqual(archiveData.getId(), "0")) {
                String archiveLocalPath = archiveData.getArchiveLocalPath();
                if (archiveLocalPath != null) {
                    UtilsMy.delete(new File(archiveLocalPath));
                }
            } else {
                com.join.mgps.Util.j0.a().c(new ArchiveDownEvent(9, archiveData));
                if (archiveData.getArchiveLocalZipPath() != null) {
                    UtilsMy.delete(new File(archiveData.getArchiveLocalZipPath()));
                }
                if (archiveData.getUserId() != 0) {
                    com.join.mgps.va.overmind.i.f73262g.d().z0(archiveData.getPackageName(), archiveData.getUserId());
                }
            }
        }
        updateItemData(archiveData);
        if (Intrinsics.areEqual(archiveData.getId(), "0")) {
            return;
        }
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        ArchiveArgs archiveArgs = new ArchiveArgs();
        archiveArgs.setArchiveId(archiveData.getId());
        archiveArgs.setGameId(archiveData.getGame_id());
        archiveArgs.setUid(AccountUtil_.getInstance_(context).getAccountData().getUid());
        requestModel.setArgs(archiveArgs);
        com.join.mgps.rpc.impl.i.P0().N0().W0(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle.delMyDownloadArchive.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<?>> call, Throwable t10) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t10, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<?>> call, Response<ResponseModel<?>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                ResponseModel<?> responseModelBody = response.body();
                boolean z10 = false;
                if (responseModelBody != null && responseModelBody.getCode() == 200) {
                    z10 = true;
                }
                if (z10) {
                    return;
                }
                a3 a3VarB = a3.b(context);
                ResponseModel<?> responseModelBody2 = response.body();
                a3VarB.d(responseModelBody2 != null ? responseModelBody2.getMessage() : null);
            }
        });
    }

    @NotNull
    public final MutableLiveData<ModGameArchivePathData> getCloud_archive_local_path() {
        return this.cloud_archive_local_path;
    }

    @NotNull
    public final MutableLiveData<List<CommonListMainData>> getListArchive() {
        return this.listArchive;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    @NotNull
    public final MutableLiveData<List<ArchiveData>> getLocalAllArchive() {
        return this.localAllArchive;
    }

    @NotNull
    public final String getPackageName() {
        return this.packageName;
    }

    @NotNull
    public final ModDataRequest getRequest() {
        return this.request;
    }

    @NotNull
    public final MutableLiveData<Integer> getShowPosition() {
        return this.showPosition;
    }

    public final void loadAllArchives(@NotNull String packagename, @NotNull final ModGameArchivePathData modGameArchivePathData, final long archiveId, @Nullable final List<ArchiveData> lists) {
        Intrinsics.checkNotNullParameter(packagename, "packagename");
        Intrinsics.checkNotNullParameter(modGameArchivePathData, "modGameArchivePathData");
        new Thread(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.j0
            @Override // java.lang.Runnable
            public final void run() {
                ModGameCloudViewModle.loadAllArchives$lambda$1(modGameArchivePathData, lists, this, archiveId);
            }
        }).start();
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00b9  */
    public final void onRecivedDownLoadEVent(@NotNull ArchiveDownEvent archiveDownEvent) {
        boolean z10;
        Intrinsics.checkNotNullParameter(archiveDownEvent, "archiveDownEvent");
        if (archiveDownEvent.getStatus() == 3) {
            return;
        }
        if (archiveDownEvent.getStatus() == 10) {
            ArchiveData archiveData = archiveDownEvent.getArchiveData();
            Intrinsics.checkNotNullExpressionValue(archiveData, "getArchiveData(...)");
            updateItemData(archiveData);
            return;
        }
        if (archiveDownEvent.getStatus() == 8) {
            ArchiveData archiveData2 = archiveDownEvent.getArchiveData();
            Intrinsics.checkNotNullExpressionValue(archiveData2, "getArchiveData(...)");
            locallAddArchive(archiveData2);
        }
        List<CommonListMainData> value = this.listArchive.getValue();
        Intrinsics.checkNotNull(value);
        Iterator<CommonListMainData> it2 = value.iterator();
        while (true) {
            z10 = false;
            if (!it2.hasNext()) {
                break;
            }
            CommonListMainData next = it2.next();
            if (next.getAny() instanceof ArchiveData) {
                Object any = next.getAny();
                Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                ArchiveData archiveData3 = (ArchiveData) any;
                if (Intrinsics.areEqual(archiveData3.getId(), archiveDownEvent.getArchiveData().getId())) {
                    archiveData3.setStatus(archiveDownEvent.getStatus());
                    int status = archiveDownEvent.getStatus();
                    if (status == 0) {
                        archiveData3.setStatus(0);
                        archiveData3.setShowText("下载");
                    } else if (status == 1 || status == 4) {
                        archiveData3.setShowText("下载中");
                    } else if (status == 5 || status == 6) {
                        archiveData3.setStatus(0);
                        archiveData3.setShowText("下载");
                    } else if (status == 8) {
                        archiveData3.setShowText("启动");
                    } else if (status == 9) {
                        archiveData3.setShowText("下载");
                        archiveData3.setStatus(0);
                        archiveData3.setIsFirstRun(0);
                        archiveData3.setArchiveLocalZipPath("");
                        changeLocalDataDel(archiveData3);
                    }
                    z10 = true;
                    break;
                }
            }
        }
        if (z10) {
            MutableLiveData<List<CommonListMainData>> mutableLiveData = this.listArchive;
            mutableLiveData.setValue(mutableLiveData.getValue());
        }
    }

    public final void onitemChanged(@NotNull ArchiveData archiveData, @NotNull ModArchiveAdapter adapter) {
        List<CommonListMainData> value;
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        List<CommonListMainData> value2 = this.listArchive.getValue();
        Intrinsics.checkNotNull(value2);
        int size = value2.size();
        do {
            size--;
            if (-1 >= size) {
                return;
            }
            value = this.listArchive.getValue();
            Intrinsics.checkNotNull(value);
        } while (!Intrinsics.areEqual(value.get(size).getId(), archiveData.getId()));
        adapter.notifyItemChanged(size, archiveData);
    }

    public final void setCloud_archive_local_path(@NotNull MutableLiveData<ModGameArchivePathData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.cloud_archive_local_path = mutableLiveData;
    }

    public final void setListArchive(@NotNull MutableLiveData<List<CommonListMainData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.listArchive = mutableLiveData;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setLocalAllArchive(@NotNull MutableLiveData<List<ArchiveData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.localAllArchive = mutableLiveData;
    }

    public final void setPackageName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.packageName = str;
    }

    public final void setRequest(@NotNull ModDataRequest modDataRequest) {
        Intrinsics.checkNotNullParameter(modDataRequest, "<set-?>");
        this.request = modDataRequest;
    }

    public final void setShowPosition(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showPosition = mutableLiveData;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00b3 A[PHI: r13
      0x00b3: PHI (r13v7 long) = (r13v0 long), (r13v1 long), (r13v3 long) binds: [B:26:0x007e, B:36:0x00b0, B:32:0x00a0] A[DONT_GENERATE, DONT_INLINE]] */
    public final void startGameADCheck(@Nullable Context context, @Nullable String gameId, @NotNull final Function0<Unit> func) {
        int i10;
        Intrinsics.checkNotNullParameter(func, "func");
        if (context == null) {
            func.invoke();
            return;
        }
        String strD = new PrefDef_(context).mod_enhance_ad_cfg().d();
        int iB = 0;
        if (strD == null || strD.length() == 0) {
            func.invoke();
            return;
        }
        SingleGameAdCfgBean singleGameAdCfgBean = (SingleGameAdCfgBean) JsonMapper.getInstance().fromJson(strD, SingleGameAdCfgBean.class);
        if (singleGameAdCfgBean == null || singleGameAdCfgBean.getSwitch_state() != 1) {
            func.invoke();
            return;
        }
        final UserPrefs userPrefs = new UserPrefs(context);
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        final int uid = accountData != null ? accountData.getUid() : 0;
        String adGamesConfig = userPrefs.getAdGamesConfig(uid + "");
        long j10 = 0;
        if (t2.i(adGamesConfig)) {
            try {
                JSONObject jSONObject = new JSONObject(adGamesConfig);
                j10 = jSONObject.has("lastTime") ? Long.parseLong(jSONObject.get("lastTime").toString()) : System.currentTimeMillis();
                if (jSONObject.has("adCount")) {
                    i10 = Integer.parseInt(jSONObject.get("adCount").toString());
                } else {
                    i10 = 0;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            i10 = 0;
        }
        if (!com.join.mgps.Util.e0.z(j10)) {
            i10 = 0;
        }
        if (!(i10 < singleGameAdCfgBean.getDaily_times() && (accountData == null || (!com.join.mgps.Util.b.piv(accountData) && accountData.getSVIPLevel() <= 0)))) {
            func.invoke();
            userPrefs.setAdGamesConfig(uid + "", i10);
            return;
        }
        if (singleGameAdCfgBean.getPlay_cfg() != null && singleGameAdCfgBean.getPlay_cfg().size() > 0) {
            ArrayList arrayList = new ArrayList();
            Iterator<PlayCfgBean> it2 = singleGameAdCfgBean.getPlay_cfg().iterator();
            while (it2.hasNext()) {
                Double dValueOf = Double.valueOf(it2.next().getProbability());
                Intrinsics.checkNotNullExpressionValue(dValueOf, "valueOf(...)");
                arrayList.add(dValueOf);
            }
            iB = com.join.mgps.ad.p.b(arrayList);
        }
        PlayCfgBean playCfgBean = singleGameAdCfgBean.getPlay_cfg().get(iB);
        final int i11 = i10 + 1;
        RewardAdParams rewardAdParams = new RewardAdParams(playCfgBean.getSdk_key(), playCfgBean.getAd_id(), playCfgBean.getSdk_type(), playCfgBean.getReward_time(), singleGameAdCfgBean, gameId, gameId);
        Intent intent = new Intent();
        intent.putExtra(RewardAdDialogActivity.KEY_REWARD_PARAMS, rewardAdParams);
        IntentUtil.getInstance().startActivityWithCallback(context, RewardAdDialogActivity.class, intent, new e6.c() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle.startGameADCheck.1
            @Override // e6.c, e6.b
            public void onAdClose() {
                func.invoke();
            }

            @Override // e6.c, e6.b
            public void onAdShow() {
                userPrefs.setAdGamesConfig(uid + "", i11);
            }

            @Override // e6.c, e6.b
            public void onDirectLaunch() {
                func.invoke();
            }
        });
    }

    public final void updateItemData(@NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        CloudArchiveTable cloudArchiveTableP = t6.g.t().p(archiveData.getId());
        if (this.listArchive.getValue() != null) {
            List<CommonListMainData> value = this.listArchive.getValue();
            Intrinsics.checkNotNull(value);
            boolean z10 = false;
            for (CommonListMainData commonListMainData : value) {
                if (commonListMainData.getAny() instanceof ArchiveData) {
                    Object any = commonListMainData.getAny();
                    Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                    if (Intrinsics.areEqual(((ArchiveData) any).getId(), archiveData.getId())) {
                        if (cloudArchiveTableP != null) {
                            ((ArchiveData) commonListMainData.getAny()).setIsFirstRun(cloudArchiveTableP.getIsFirstRun());
                        } else {
                            ((ArchiveData) commonListMainData.getAny()).setIsFirstRun(0);
                        }
                        ((ArchiveData) commonListMainData.getAny()).setLikeCount(archiveData.getLikeCount());
                        ((ArchiveData) commonListMainData.getAny()).setIsLike(archiveData.getIsLike());
                        ((ArchiveData) commonListMainData.getAny()).setArchiveDesc(archiveData.getArchiveDesc());
                        ((ArchiveData) commonListMainData.getAny()).setIsUnLike(archiveData.getIsUnLike());
                        ((ArchiveData) commonListMainData.getAny()).setNegativeCount(archiveData.getNegativeCount());
                        ((ArchiveData) commonListMainData.getAny()).setStatus(archiveData.getStatus());
                        z10 = true;
                    }
                }
            }
            if (z10) {
                MutableLiveData<List<CommonListMainData>> mutableLiveData = this.listArchive;
                mutableLiveData.setValue(mutableLiveData.getValue());
            }
        }
    }
}
