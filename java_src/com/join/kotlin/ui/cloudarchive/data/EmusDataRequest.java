package com.join.kotlin.ui.cloudarchive.data;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.ui.cloudarchive.util.ArchiveZipUtil;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.j0;
import com.join.mgps.activity.HMCloudMainActivity_;
import com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dto.ArchiveShopDataBean;
import com.join.mgps.dto.ArchiveshopArgs;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.va.overmind.i;
import com.join.mgps.va.overmind.k;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import t6.g;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001QB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u00122\u0006\u00101\u001a\u00020\u0019J.\u0010;\u001a\u00020-2\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u00192\u0006\u0010A\u001a\u00020\u00122\u0006\u0010.\u001a\u00020/J\u0018\u0010B\u001a\u00020-2\u0006\u0010C\u001a\u00020D2\u0006\u0010.\u001a\u00020/H\u0002J\u0018\u0010E\u001a\u00020-2\u0006\u0010C\u001a\u00020D2\u0006\u0010.\u001a\u00020/H\u0002J\u0018\u0010F\u001a\u00020-2\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020JH\u0002J\u001e\u0010K\u001a\u00020-2\u0006\u0010C\u001a\u00020D2\u0006\u0010L\u001a\u00020\u00192\u0006\u0010.\u001a\u00020/J(\u0010M\u001a\u00020-2\u0006\u0010C\u001a\u00020D2\u0006\u0010N\u001a\u00020\u00192\u0006\u0010O\u001a\u00020\u00192\u0006\u0010.\u001a\u00020/H\u0002J\u0016\u0010P\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u0010<\u001a\u00020=R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R \u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\b\"\u0004\b\u0014\u0010\nR \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\b\"\u0004\b\u0017\u0010\nR \u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\b\"\u0004\b\u001b\u0010\nR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R \u0010\"\u001a\b\u0012\u0004\u0012\u00020#0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\b\"\u0004\b%\u0010\nR\u001a\u0010&\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001a\u00102\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u001f\"\u0004\b4\u0010!R\u001b\u00105\u001a\u0002068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b7\u00108¨\u0006R"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest;", "", "<init>", "()V", "resultData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/mgps/dto/ArchiveShopDataBean;", "getResultData", "()Landroidx/lifecycle/MutableLiveData;", "setResultData", "(Landroidx/lifecycle/MutableLiveData;)V", "result", "Lretrofit2/Call;", "getResult", "()Lretrofit2/Call;", "setResult", "(Lretrofit2/Call;)V", "status", "", "getStatus", "setStatus", "progress", "getProgress", "setProgress", "progressTextShow", "", "getProgressTextShow", "setProgressTextShow", "actualSize", "", "getActualSize", "()J", "setActualSize", "(J)V", "dataChangeItem", "Lcom/join/mgps/dto/CloudListDataBean;", "getDataChangeItem", "setDataChangeItem", "installInExtPlug", "", "getInstallInExtPlug", "()Z", "setInstallInExtPlug", "(Z)V", "getModeDatas", "", "context", "Landroid/content/Context;", "page", "gameId", "time", "getTime", "setTime", "factory", "Lcom/github/snowdream/android/app/downloader/CommonDownloadFactory;", "getFactory", "()Lcom/github/snowdream/android/app/downloader/CommonDownloadFactory;", "factory$delegate", "Lkotlin/Lazy;", "downloadArchive", HMCloudMainActivity_.ARCHIVE_DATA_EXTRA, "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "pathData", "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "filePath", PlugDownDialogAcitivity_.DOWNLOAD_TYPE_EXTRA, "unzipToUser0", "table", "Lcom/join/mgps/db/tables/CloudArchiveTable;", "unZip", "copyFileSimple", "input", "Ljava/io/InputStream;", "out", "Ljava/io/OutputStream;", "unzipToPath", "archiveLocalPath", "unZipOne", "root", "child", "reportDownloadArchive", "ArchiveDownStatus", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEmusDataRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmusDataRequest.kt\ncom/join/kotlin/ui/cloudarchive/data/EmusDataRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,441:1\n1#2:442\n*E\n"})
public final class EmusDataRequest {
    private long actualSize;
    private boolean installInExtPlug;

    @Nullable
    private Call<ArchiveShopDataBean> result;
    private long time;

    @NotNull
    private MutableLiveData<ArchiveShopDataBean> resultData = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> status = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> progress = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<String> progressTextShow = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<CloudListDataBean> dataChangeItem = new MutableLiveData<>();

    /* JADX INFO: renamed from: factory$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy factory = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.data.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return com.github.snowdream.android.app.downloader.b.e();
        }
    });

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/data/EmusDataRequest$ArchiveDownStatus;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ArchiveDownStatus {
        public static final int DATAUPDATED = 10;
        public static final int DELETEDLOCAL = 9;
        public static final int ERROR = 5;
        public static final int FINISH = 4;
        public static final int NORMAL = 0;
        public static final int PROGRESS = 3;
        public static final int START = 1;
        public static final int STOP = 6;
        public static final int UNZIP = 7;
        public static final int UNZIPFINISH = 8;
        public static final int WAIT = 2;
    }

    private final void copyFileSimple(InputStream input, OutputStream out) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(input);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(out);
        byte[] bArr = new byte[5120];
        while (true) {
            int i10 = bufferedInputStream.read(bArr);
            if (i10 == -1) {
                bufferedOutputStream.flush();
                bufferedInputStream.close();
                bufferedOutputStream.close();
                out.close();
                input.close();
                return;
            }
            bufferedOutputStream.write(bArr, 0, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void unZip(final CloudArchiveTable table, final Context context) {
        new Thread(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.data.a
            @Override // java.lang.Runnable
            public final void run() {
                EmusDataRequest.unZip$lambda$2(this.f48946b, table, context);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unZip$lambda$2(EmusDataRequest emusDataRequest, CloudArchiveTable cloudArchiveTable, Context context) {
        String archiveFolder = cloudArchiveTable.getArchiveFolder();
        Intrinsics.checkNotNullExpressionValue(archiveFolder, "getArchiveFolder(...)");
        emusDataRequest.unzipToPath(cloudArchiveTable, archiveFolder, context);
        String mainArchiveLocalPath2 = cloudArchiveTable.getMainArchiveLocalPath2();
        if (!(mainArchiveLocalPath2 == null || mainArchiveLocalPath2.length() == 0)) {
            String mainArchiveLocalPath3 = cloudArchiveTable.getMainArchiveLocalPath2();
            Intrinsics.checkNotNullExpressionValue(mainArchiveLocalPath3, "getMainArchiveLocalPath2(...)");
            emusDataRequest.unzipToPath(cloudArchiveTable, mainArchiveLocalPath3, context);
        }
        CloudArchiveTable cloudArchiveTableR = g.t().r(cloudArchiveTable.getGameId(), cloudArchiveTable.getArchiveId());
        if (cloudArchiveTableR == null) {
            g.t().k(cloudArchiveTable);
        } else {
            cloudArchiveTable.setId(cloudArchiveTableR.getId());
            g.t().update(cloudArchiveTable);
        }
        i.f73262g.d().h(cloudArchiveTable.getPackageName(), cloudArchiveTable.getUserId());
        emusDataRequest.status.postValue(8);
    }

    private final void unZipOne(CloudArchiveTable table, String root, String child, Context context) {
        try {
            File file = new File(root, child);
            table.setArchiveFiles(file.getAbsolutePath());
            if (!this.installInExtPlug) {
                if (!file.exists()) {
                    file.mkdirs();
                }
                ArchiveZipUtil archiveZipUtil = new ArchiveZipUtil();
                String absolutePath = file.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                archiveZipUtil.unZipActiveFilesKotlin(absolutePath, new File(table.getArchiveZipPath()));
                return;
            }
            ContentResolver contentResolver = context.getContentResolver();
            StringBuilder sb2 = new StringBuilder();
            i.a aVar = i.f73262g;
            sb2.append(aVar.e());
            sb2.append(root);
            OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(Uri.parse(sb2.toString()), "copyZip");
            FileInputStream fileInputStream = new FileInputStream(new File(table.getArchiveZipPath()));
            if (outputStreamOpenOutputStream != null) {
                copyFileSimple(fileInputStream, outputStreamOpenOutputStream);
                context.getContentResolver().insert(Uri.parse(aVar.e() + file.getAbsolutePath()), new ContentValues());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void unzipToUser0(final CloudArchiveTable table, final Context context) {
        new Thread(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.data.b
            @Override // java.lang.Runnable
            public final void run() {
                EmusDataRequest.unzipToUser0$lambda$1(this.f48949b, table, context);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unzipToUser0$lambda$1(EmusDataRequest emusDataRequest, CloudArchiveTable cloudArchiveTable, Context context) {
        String archiveFolder = cloudArchiveTable.getArchiveFolder();
        Intrinsics.checkNotNullExpressionValue(archiveFolder, "getArchiveFolder(...)");
        emusDataRequest.unzipToPath(cloudArchiveTable, archiveFolder, context);
        String mainArchiveLocalPath2 = cloudArchiveTable.getMainArchiveLocalPath2();
        if (!(mainArchiveLocalPath2 == null || mainArchiveLocalPath2.length() == 0)) {
            String mainArchiveLocalPath3 = cloudArchiveTable.getMainArchiveLocalPath2();
            Intrinsics.checkNotNullExpressionValue(mainArchiveLocalPath3, "getMainArchiveLocalPath2(...)");
            emusDataRequest.unzipToPath(cloudArchiveTable, mainArchiveLocalPath3, context);
        }
        CloudArchiveTable cloudArchiveTableS = g.t().s(cloudArchiveTable.getGameId(), cloudArchiveTable.getUserId());
        if (cloudArchiveTableS == null) {
            g.t().k(cloudArchiveTable);
        } else {
            j0.a().c(new ArchiveDownEvent(9, (ArchiveData) JsonMapper.getInstance().fromJson(cloudArchiveTableS.getArchiveDataJson(), ArchiveData.class)));
            cloudArchiveTable.setId(cloudArchiveTableS.getId());
            g.t().update(cloudArchiveTable);
        }
        if (cloudArchiveTable.getArchiveZipPath() != null) {
            UtilsMy.delete(new File(cloudArchiveTable.getArchiveZipPath()));
        }
        i.f73262g.d().i0(cloudArchiveTable.getUserId());
        emusDataRequest.status.postValue(8);
    }

    /* JADX WARN: Type inference failed for: r12v5, types: [T, java.lang.String] */
    public final void downloadArchive(@NotNull final ArchiveData archiveData, @NotNull final ModGameArchivePathData pathData, @NotNull String filePath, final int downloadType, @NotNull final Context context) {
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(pathData, "pathData");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(context, "context");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        getFactory().m(new com.github.snowdream.android.app.downloader.b.InterfaceC0591b() { // from class: com.join.kotlin.ui.cloudarchive.data.EmusDataRequest.downloadArchive.1
            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onError(String url) {
                EmusDataRequest.this.getStatus().setValue(5);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onFinish(String url) {
                boolean z10;
                EmusDataRequest.this.getStatus().setValue(4);
                List<CloudArchiveTable> listQ = g.t().q(archiveData.getGame_id());
                int userId = 1;
                while (true) {
                    if (userId >= 101) {
                        userId = 1;
                        break;
                    }
                    if (listQ == null) {
                        z10 = false;
                        break;
                    }
                    Iterator<CloudArchiveTable> it2 = listQ.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z10 = false;
                            break;
                        } else if (it2.next().getUserId() == userId) {
                            z10 = true;
                            break;
                        }
                    }
                    if (!z10) {
                        break;
                    } else {
                        userId++;
                    }
                }
                g1.d("userIdNew", "" + userId);
                CloudArchiveTable cloudArchiveTable = new CloudArchiveTable();
                if (archiveData.getUserId() != 0) {
                    userId = archiveData.getUserId();
                }
                int i10 = downloadType != 1 ? userId : 0;
                cloudArchiveTable.setArchiveType("folder");
                cloudArchiveTable.setArchiveFolder(pathData.getMainArchiveLocalPath());
                cloudArchiveTable.setMainArchiveLocalPath2(pathData.getSubArchiveLocalPath());
                cloudArchiveTable.setPackageName(archiveData.getPackageName());
                cloudArchiveTable.setArchiveName(archiveData.getArchiveDesc());
                cloudArchiveTable.setUserId(i10);
                cloudArchiveTable.setGameId(archiveData.getGame_id());
                cloudArchiveTable.setArchiveZipPath(objectRef.element);
                cloudArchiveTable.setArchiveId(archiveData.getId());
                cloudArchiveTable.setIsFirstRun(1);
                cloudArchiveTable.setArchiveDataJson(JsonMapper.toJsonString(archiveData));
                if (i10 == 0) {
                    EmusDataRequest.this.unzipToUser0(cloudArchiveTable, context);
                } else {
                    i.f73262g.d().i0(cloudArchiveTable.getUserId());
                    EmusDataRequest.this.unZip(cloudArchiveTable, context);
                }
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onProgress(String url, int progressx, String speed) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onProgress progress=");
                sb2.append(progressx);
                EmusDataRequest.this.getStatus().setValue(3);
                EmusDataRequest.this.getProgress().setValue(Integer.valueOf(progressx));
                if (EmusDataRequest.this.getActualSize() > 1048576) {
                    MutableLiveData<String> progressTextShow = EmusDataRequest.this.getProgressTextShow();
                    StringBuilder sb3 = new StringBuilder();
                    long j10 = 1024;
                    sb3.append((((EmusDataRequest.this.getActualSize() / ((long) 100)) * ((long) progressx)) / j10) / j10);
                    sb3.append("M/");
                    sb3.append((EmusDataRequest.this.getActualSize() / j10) / j10);
                    sb3.append('M');
                    progressTextShow.setValue(sb3.toString());
                    return;
                }
                if (EmusDataRequest.this.getActualSize() > 0) {
                    MutableLiveData<String> progressTextShow2 = EmusDataRequest.this.getProgressTextShow();
                    StringBuilder sb4 = new StringBuilder();
                    long j11 = 1024;
                    sb4.append(((EmusDataRequest.this.getActualSize() / ((long) 100)) * ((long) progressx)) / j11);
                    sb4.append("KB/");
                    sb4.append(EmusDataRequest.this.getActualSize() / j11);
                    sb4.append("KB");
                    progressTextShow2.setValue(sb4.toString());
                }
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onStart(String url) {
                EmusDataRequest.this.getStatus().setValue(1);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onStop(String url) {
                EmusDataRequest.this.getStatus().setValue(6);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onWait(String url) {
                EmusDataRequest.this.getStatus().setValue(2);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void updateSize(String url, long actualSizex) {
                EmusDataRequest.this.setActualSize(actualSizex);
            }
        });
        getFactory().i();
        String strValueOf = String.valueOf(archiveData.getId());
        String str = filePath + archiveData.getGame_id() + '/';
        objectRef.element = str + strValueOf;
        getFactory().b(new com.github.snowdream.android.app.downloader.c(archiveData.getArchiveLocation(), strValueOf, str, archiveData.getArchiveSize()));
    }

    public final long getActualSize() {
        return this.actualSize;
    }

    @NotNull
    public final MutableLiveData<CloudListDataBean> getDataChangeItem() {
        return this.dataChangeItem;
    }

    @NotNull
    public final com.github.snowdream.android.app.downloader.b getFactory() {
        Object value = this.factory.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (com.github.snowdream.android.app.downloader.b) value;
    }

    public final boolean getInstallInExtPlug() {
        return this.installInExtPlug;
    }

    public final void getModeDatas(@NotNull Context context, int page, @NotNull String gameId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        new RequestModel().setDefault(context);
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "getAccountData(...)");
        Call<ArchiveShopDataBean> callH = com.join.mgps.rpc.impl.c.k().j().h(new ArchiveshopArgs(String.valueOf(accountData.getUid()), accountData.getToken(), gameId, 0, page).getArgs());
        this.result = callH;
        if (callH != null) {
            callH.enqueue(new Callback<ArchiveShopDataBean>() { // from class: com.join.kotlin.ui.cloudarchive.data.EmusDataRequest.getModeDatas.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ArchiveShopDataBean> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    ArchiveShopDataBean archiveShopDataBean = new ArchiveShopDataBean();
                    archiveShopDataBean.setCode(401);
                    EmusDataRequest.this.getResultData().setValue(archiveShopDataBean);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ArchiveShopDataBean> call, Response<ArchiveShopDataBean> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() != null) {
                        EmusDataRequest.this.getResultData().setValue(response.body());
                    } else {
                        ArchiveShopDataBean archiveShopDataBean = new ArchiveShopDataBean();
                        archiveShopDataBean.setCode(401);
                        EmusDataRequest.this.getResultData().setValue(archiveShopDataBean);
                    }
                }
            });
        }
    }

    @NotNull
    public final MutableLiveData<Integer> getProgress() {
        return this.progress;
    }

    @NotNull
    public final MutableLiveData<String> getProgressTextShow() {
        return this.progressTextShow;
    }

    @Nullable
    public final Call<ArchiveShopDataBean> getResult() {
        return this.result;
    }

    @NotNull
    public final MutableLiveData<ArchiveShopDataBean> getResultData() {
        return this.resultData;
    }

    @NotNull
    public final MutableLiveData<Integer> getStatus() {
        return this.status;
    }

    public final long getTime() {
        return this.time;
    }

    public final void reportDownloadArchive(@NotNull Context context, @NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        ArchiveArgs archiveArgs = new ArchiveArgs();
        archiveArgs.archiveId = archiveData.getId();
        archiveArgs.gameId = archiveData.getGame_id();
        archiveArgs.uid = AccountUtil_.getInstance_(context).getAccountData().getUid();
        requestModel.setArgs(archiveArgs);
        com.join.mgps.rpc.impl.i.P0().N0().E1(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.data.EmusDataRequest.reportDownloadArchive.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<?>> call, Throwable t10) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t10, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<?>> call, Response<ResponseModel<?>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
            }
        });
    }

    public final void setActualSize(long j10) {
        this.actualSize = j10;
    }

    public final void setDataChangeItem(@NotNull MutableLiveData<CloudListDataBean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.dataChangeItem = mutableLiveData;
    }

    public final void setInstallInExtPlug(boolean z10) {
        this.installInExtPlug = z10;
    }

    public final void setProgress(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.progress = mutableLiveData;
    }

    public final void setProgressTextShow(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.progressTextShow = mutableLiveData;
    }

    public final void setResult(@Nullable Call<ArchiveShopDataBean> call) {
        this.result = call;
    }

    public final void setResultData(@NotNull MutableLiveData<ArchiveShopDataBean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultData = mutableLiveData;
    }

    public final void setStatus(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.status = mutableLiveData;
    }

    public final void setTime(long j10) {
        this.time = j10;
    }

    public final void unzipToPath(@NotNull CloudArchiveTable table, @NotNull String archiveLocalPath, @NotNull Context context) {
        String str;
        Intrinsics.checkNotNullParameter(table, "table");
        Intrinsics.checkNotNullParameter(archiveLocalPath, "archiveLocalPath");
        Intrinsics.checkNotNullParameter(context, "context");
        if (StringsKt__StringsJVMKt.startsWith$default(archiveLocalPath, "/Android/data", false, 2, null)) {
            k kVar = k.f73277a;
            String strK0 = kVar.k0();
            if (this.installInExtPlug) {
                strK0 = kVar.l0();
            }
            if (table.getUserId() == 0) {
                str = "";
            } else {
                str = "/user/" + table.getUserId();
            }
            unZipOne(table, strK0, StringsKt__StringsJVMKt.replace$default(archiveLocalPath, "/Android/data/" + table.getPackageName(), "/Android/data" + str + File.separator + table.getPackageName(), false, 4, (Object) null), context);
            return;
        }
        if (!StringsKt__StringsJVMKt.startsWith$default(archiveLocalPath, "/data/data/", false, 2, null)) {
            unZipOne(table, k.f73277a.k0(), "/user/" + table.getUserId() + '/' + table.getPackageName() + '/' + archiveLocalPath, context);
            return;
        }
        k kVar2 = k.f73277a;
        String packageName = table.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
        String strD = kVar2.D(packageName, table.getUserId());
        if (this.installInExtPlug) {
            String packageName2 = table.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName2, "getPackageName(...)");
            strD = kVar2.G(packageName2, table.getUserId());
        }
        unZipOne(table, strD, StringsKt__StringsJVMKt.replace$default(archiveLocalPath, "/data/data/" + table.getPackageName(), "", false, 4, (Object) null), context);
    }
}
