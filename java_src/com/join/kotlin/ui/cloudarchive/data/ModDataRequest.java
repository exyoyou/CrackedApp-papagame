package com.join.kotlin.ui.cloudarchive.data;

import android.content.Context;
import android.os.Build;
import androidx.lifecycle.MutableLiveData;
import cn.fly.tools.utils.n;
import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.ui.cloudarchive.util.ArchiveZipUtil;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.e2;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.j0;
import com.join.mgps.activity.HMCloudMainActivity_;
import com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dto.ArchiveDataAddPd;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.va.overmind.i;
import com.join.mgps.va.overmind.k;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ArrayIteratorKt;
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
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J?\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u00020\"2\b\u00108\u001a\u0004\u0018\u00010\u001e2\b\u00109\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010:J?\u0010;\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u00020\"2\b\u00108\u001a\u0004\u0018\u00010\u001e2\b\u00109\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010:J\u001e\u0010<\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u00020\u001eJ\u000e\u0010@\u001a\u00020\"2\u0006\u0010A\u001a\u00020BJ\u0010\u0010C\u001a\u0002022\u0006\u0010A\u001a\u00020BH\u0002J\u001e\u0010D\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u00020\u001eJ\u0010\u0010E\u001a\u0002022\b\u0010F\u001a\u0004\u0018\u00010\bJ.\u0010M\u001a\u0002022\u0006\u0010F\u001a\u00020\b2\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020\u001e2\u0006\u0010Q\u001a\u00020\u00172\u0006\u00103\u001a\u000204J\u0018\u0010R\u001a\u0002022\u0006\u0010S\u001a\u00020T2\u0006\u00103\u001a\u000204H\u0002J\u0018\u0010U\u001a\u0002022\u0006\u0010S\u001a\u00020T2\u0006\u00103\u001a\u000204H\u0002J\u0018\u0010V\u001a\u0002022\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0002J\u001e\u0010[\u001a\u0002022\u0006\u0010S\u001a\u00020T2\u0006\u0010\\\u001a\u00020\u001e2\u0006\u00103\u001a\u000204J(\u0010]\u001a\u0002022\u0006\u0010S\u001a\u00020T2\u0006\u0010^\u001a\u00020\u001e2\u0006\u0010_\u001a\u00020\u001e2\u0006\u00103\u001a\u000204H\u0002J\u0016\u0010`\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u0010F\u001a\u00020\bR,\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR,\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR.\u0010\u0010\u001a\u0016\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R \u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\n\"\u0004\b\u0019\u0010\fR \u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00170\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\n\"\u0004\b\u001c\u0010\fR \u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\n\"\u0004\b \u0010\fR\u001a\u0010!\u001a\u00020\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R \u0010'\u001a\b\u0012\u0004\u0012\u00020\b0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\n\"\u0004\b)\u0010\fR&\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\n\"\u0004\b-\u0010\fR(\u0010.\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\u0006\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0013\"\u0004\b0\u0010\u0015R\u001a\u0010=\u001a\u00020\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010$\"\u0004\b?\u0010&R\u001b\u0010G\u001a\u00020H8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bK\u0010L\u001a\u0004\bI\u0010J¨\u0006b"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;", "", "<init>", "()V", "resultData", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/mgps/dto/ResponseModel;", "", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getResultData", "()Landroidx/lifecycle/MutableLiveData;", "setResultData", "(Landroidx/lifecycle/MutableLiveData;)V", "resultAllHasDownloadData", "getResultAllHasDownloadData", "setResultAllHasDownloadData", "result", "Lretrofit2/Call;", "getResult", "()Lretrofit2/Call;", "setResult", "(Lretrofit2/Call;)V", "status", "", "getStatus", "setStatus", "progress", "getProgress", "setProgress", "progressTextShow", "", "getProgressTextShow", "setProgressTextShow", "actualSize", "", "getActualSize", "()J", "setActualSize", "(J)V", "dataChangeItem", "getDataChangeItem", "setDataChangeItem", "resultDataPd", "Lcom/join/mgps/dto/ArchiveDataAddPd;", "getResultDataPd", "setResultDataPd", "resultPd", "getResultPd", "setResultPd", "getModeDatas", "", "context", "Landroid/content/Context;", "page", "gameId", "lastEnterTime", "tagId", "type", "(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Integer;)V", "getModeDatasAddPd", "getAllDownloedArchive", "time", "getTime", "setTime", "getFileUpdateTimeMain", "file", "Ljava/io/File;", "getFileUpdateTime", "loadMyInShop", "cancleDownloadTask", HMCloudMainActivity_.ARCHIVE_DATA_EXTRA, "factory", "Lcom/github/snowdream/android/app/downloader/CommonDownloadFactory;", "getFactory", "()Lcom/github/snowdream/android/app/downloader/CommonDownloadFactory;", "factory$delegate", "Lkotlin/Lazy;", "downloadArchive", "pathData", "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "filePath", PlugDownDialogAcitivity_.DOWNLOAD_TYPE_EXTRA, "unzipToUser0", "table", "Lcom/join/mgps/db/tables/CloudArchiveTable;", "unZip", "copyFileSimple", "input", "Ljava/io/InputStream;", "out", "Ljava/io/OutputStream;", "unzipToPath", "archiveLocalPath", "unZipOne", "root", "child", "reportDownloadArchive", "ArchiveDownStatus", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nModDataRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModDataRequest.kt\ncom/join/kotlin/ui/cloudarchive/data/ModDataRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,580:1\n1#2:581\n*E\n"})
public final class ModDataRequest {
    private long actualSize;

    @Nullable
    private Call<ResponseModel<List<ArchiveData>>> result;

    @Nullable
    private Call<ResponseModel<ArchiveDataAddPd>> resultPd;
    private long time;

    @NotNull
    private MutableLiveData<ResponseModel<List<ArchiveData>>> resultData = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<ResponseModel<List<ArchiveData>>> resultAllHasDownloadData = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> status = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> progress = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<String> progressTextShow = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<ArchiveData> dataChangeItem = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<ResponseModel<ArchiveDataAddPd>> resultDataPd = new MutableLiveData<>();

    /* JADX INFO: renamed from: factory$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy factory = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.data.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return com.github.snowdream.android.app.downloader.b.e();
        }
    });

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$ArchiveDownStatus;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
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

    private final void getFileUpdateTime(File file) {
        if (Build.VERSION.SDK_INT >= 26) {
            if (!file.isDirectory()) {
                long millis = Files.readAttributes(file.toPath(), n.a(), new LinkOption[0]).lastModifiedTime().toMillis();
                if (millis > this.time) {
                    this.time = millis;
                    return;
                }
                return;
            }
            Iterator it2 = ArrayIteratorKt.iterator(file.listFiles());
            while (it2.hasNext()) {
                File file2 = (File) it2.next();
                Intrinsics.checkNotNull(file2);
                getFileUpdateTime(file2);
            }
            return;
        }
        if (!file.isDirectory()) {
            long jLastModified = file.lastModified();
            if (jLastModified > this.time) {
                this.time = jLastModified;
                return;
            }
            return;
        }
        Iterator it3 = ArrayIteratorKt.iterator(file.listFiles());
        while (it3.hasNext()) {
            File file3 = (File) it3.next();
            Intrinsics.checkNotNull(file3);
            getFileUpdateTime(file3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void unZip(final CloudArchiveTable table, final Context context) {
        new Thread(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.data.f
            @Override // java.lang.Runnable
            public final void run() {
                ModDataRequest.unZip$lambda$2(this.f48955b, table, context);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unZip$lambda$2(ModDataRequest modDataRequest, CloudArchiveTable cloudArchiveTable, Context context) {
        String archiveFolder = cloudArchiveTable.getArchiveFolder();
        Intrinsics.checkNotNullExpressionValue(archiveFolder, "getArchiveFolder(...)");
        modDataRequest.unzipToPath(cloudArchiveTable, archiveFolder, context);
        String mainArchiveLocalPath2 = cloudArchiveTable.getMainArchiveLocalPath2();
        if (!(mainArchiveLocalPath2 == null || mainArchiveLocalPath2.length() == 0)) {
            String mainArchiveLocalPath3 = cloudArchiveTable.getMainArchiveLocalPath2();
            Intrinsics.checkNotNullExpressionValue(mainArchiveLocalPath3, "getMainArchiveLocalPath2(...)");
            modDataRequest.unzipToPath(cloudArchiveTable, mainArchiveLocalPath3, context);
        }
        CloudArchiveTable cloudArchiveTableR = g.t().r(cloudArchiveTable.getGameId(), cloudArchiveTable.getArchiveId());
        if (cloudArchiveTableR == null) {
            g.t().k(cloudArchiveTable);
        } else {
            cloudArchiveTable.setId(cloudArchiveTableR.getId());
            g.t().update(cloudArchiveTable);
        }
        i.f73262g.d().h(cloudArchiveTable.getPackageName(), cloudArchiveTable.getUserId());
        modDataRequest.status.postValue(8);
    }

    private final void unZipOne(CloudArchiveTable table, String root, String child, Context context) {
        try {
            String packageName = table.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
            if ((StringsKt__StringsJVMKt.startsWith$default(packageName, "com.mengnieyu.helloworld", false, 2, null) & StringsKt__StringsJVMKt.startsWith$default(child, "/app_webview", false, 2, null)) && e2.n()) {
                child = StringsKt__StringsJVMKt.replaceFirst$default(child, "app_webview", "app_hws_webview", false, 4, (Object) null);
            }
            File file = new File(root, child);
            table.setArchiveFiles(file.getAbsolutePath());
            if (!file.exists()) {
                file.mkdirs();
            }
            ArchiveZipUtil archiveZipUtil = new ArchiveZipUtil();
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            archiveZipUtil.unZipActiveFilesKotlin(absolutePath, new File(table.getArchiveZipPath()));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void unzipToUser0(final CloudArchiveTable table, final Context context) {
        new Thread(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.data.d
            @Override // java.lang.Runnable
            public final void run() {
                ModDataRequest.unzipToUser0$lambda$1(this.f48952b, table, context);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void unzipToUser0$lambda$1(ModDataRequest modDataRequest, CloudArchiveTable cloudArchiveTable, Context context) {
        String archiveFolder = cloudArchiveTable.getArchiveFolder();
        Intrinsics.checkNotNullExpressionValue(archiveFolder, "getArchiveFolder(...)");
        modDataRequest.unzipToPath(cloudArchiveTable, archiveFolder, context);
        String mainArchiveLocalPath2 = cloudArchiveTable.getMainArchiveLocalPath2();
        if (!(mainArchiveLocalPath2 == null || mainArchiveLocalPath2.length() == 0)) {
            String mainArchiveLocalPath3 = cloudArchiveTable.getMainArchiveLocalPath2();
            Intrinsics.checkNotNullExpressionValue(mainArchiveLocalPath3, "getMainArchiveLocalPath2(...)");
            modDataRequest.unzipToPath(cloudArchiveTable, mainArchiveLocalPath3, context);
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
        modDataRequest.status.postValue(8);
    }

    public final void cancleDownloadTask(@Nullable ArchiveData archiveData) {
        if (archiveData != null) {
            getFactory().l(archiveData.getArchiveLocation());
        }
    }

    /* JADX WARN: Type inference failed for: r12v5, types: [T, java.lang.String] */
    public final void downloadArchive(@NotNull final ArchiveData archiveData, @NotNull final ModGameArchivePathData pathData, @NotNull String filePath, final int downloadType, @NotNull final Context context) {
        Intrinsics.checkNotNullParameter(archiveData, "archiveData");
        Intrinsics.checkNotNullParameter(pathData, "pathData");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(context, "context");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "";
        getFactory().m(new com.github.snowdream.android.app.downloader.b.InterfaceC0591b() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest.downloadArchive.1
            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onError(String url) {
                ModDataRequest.this.getStatus().setValue(5);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onFinish(String url) {
                boolean z10;
                ModDataRequest.this.getStatus().setValue(4);
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
                    ModDataRequest.this.unzipToUser0(cloudArchiveTable, context);
                } else {
                    i.f73262g.d().i0(cloudArchiveTable.getUserId());
                    ModDataRequest.this.unZip(cloudArchiveTable, context);
                }
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onProgress(String url, int progressx, String speed) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onProgress progress=");
                sb2.append(progressx);
                ModDataRequest.this.getStatus().setValue(3);
                ModDataRequest.this.getProgress().setValue(Integer.valueOf(progressx));
                if (ModDataRequest.this.getActualSize() > 1048576) {
                    MutableLiveData<String> progressTextShow = ModDataRequest.this.getProgressTextShow();
                    StringBuilder sb3 = new StringBuilder();
                    long j10 = 1024;
                    sb3.append((((ModDataRequest.this.getActualSize() / ((long) 100)) * ((long) progressx)) / j10) / j10);
                    sb3.append("M/");
                    sb3.append((ModDataRequest.this.getActualSize() / j10) / j10);
                    sb3.append('M');
                    progressTextShow.setValue(sb3.toString());
                    return;
                }
                if (ModDataRequest.this.getActualSize() > 0) {
                    MutableLiveData<String> progressTextShow2 = ModDataRequest.this.getProgressTextShow();
                    StringBuilder sb4 = new StringBuilder();
                    long j11 = 1024;
                    sb4.append(((ModDataRequest.this.getActualSize() / ((long) 100)) * ((long) progressx)) / j11);
                    sb4.append("KB/");
                    sb4.append(ModDataRequest.this.getActualSize() / j11);
                    sb4.append("KB");
                    progressTextShow2.setValue(sb4.toString());
                }
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onStart(String url) {
                ModDataRequest.this.getStatus().setValue(1);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onStop(String url) {
                ModDataRequest.this.getStatus().setValue(6);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void onWait(String url) {
                ModDataRequest.this.getStatus().setValue(2);
            }

            @Override // com.github.snowdream.android.app.downloader.b.InterfaceC0591b
            public void updateSize(String url, long actualSizex) {
                ModDataRequest.this.setActualSize(actualSizex);
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

    /* JADX WARN: Multi-variable type inference failed */
    public final void getAllDownloedArchive(@NotNull Context context, final int page, @NotNull String gameId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(gameId);
        requestGameIdArgs.setPage(page);
        requestGameIdArgs.setUid(AccountUtil_.getInstance_(context).getAccountData().getUid());
        requestModel.setArgs(requestGameIdArgs);
        Call<ResponseModel<List<ArchiveData>>> callV1 = com.join.mgps.rpc.impl.i.P0().N0().v1(requestModel.makeSign());
        this.result = callV1;
        if (callV1 != 0) {
            callV1.enqueue(new Callback<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest.getAllDownloedArchive.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<List<? extends ArchiveData>>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    this.getResultAllHasDownloadData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<List<? extends ArchiveData>>> call, Response<ResponseModel<List<? extends ArchiveData>>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() == null) {
                        ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                        responseModel.setCode(401);
                        this.getResultAllHasDownloadData().setValue(responseModel);
                    } else {
                        ResponseModel<List<? extends ArchiveData>> responseModelBody = response.body();
                        if (responseModelBody != null) {
                            responseModelBody.setPage(page);
                        }
                        this.getResultAllHasDownloadData().setValue(responseModelBody);
                    }
                }
            });
        }
    }

    @NotNull
    public final MutableLiveData<ArchiveData> getDataChangeItem() {
        return this.dataChangeItem;
    }

    @NotNull
    public final com.github.snowdream.android.app.downloader.b getFactory() {
        Object value = this.factory.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (com.github.snowdream.android.app.downloader.b) value;
    }

    public final long getFileUpdateTimeMain(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        this.time = 0L;
        getFileUpdateTime(file);
        return this.time;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void getModeDatas(@NotNull Context context, final int page, @NotNull String gameId, long lastEnterTime, @Nullable String tagId, @Nullable Integer type) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(gameId);
        requestGameIdArgs.setPage(page);
        requestGameIdArgs.setUid(AccountUtil_.getInstance_(context).getAccountData().getUid());
        requestGameIdArgs.setLastEnterTime(lastEnterTime);
        requestGameIdArgs.setTagId(tagId);
        requestGameIdArgs.setType(type != null ? type.intValue() : 1);
        requestModel.setArgs(requestGameIdArgs);
        Call<ResponseModel<List<ArchiveData>>> callG1 = com.join.mgps.rpc.impl.i.P0().N0().G1(requestModel.makeSign());
        this.result = callG1;
        if (callG1 != 0) {
            callG1.enqueue(new Callback<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest.getModeDatas.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<List<? extends ArchiveData>>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<List<? extends ArchiveData>>> call, Response<ResponseModel<List<? extends ArchiveData>>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() == null) {
                        ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                        responseModel.setCode(401);
                        this.getResultData().setValue(responseModel);
                    } else {
                        ResponseModel<List<? extends ArchiveData>> responseModelBody = response.body();
                        if (responseModelBody != null) {
                            responseModelBody.setPage(page);
                        }
                        this.getResultData().setValue(responseModelBody);
                    }
                }
            });
        }
    }

    public final void getModeDatasAddPd(@NotNull Context context, final int page, @NotNull String gameId, long lastEnterTime, @Nullable String tagId, @Nullable Integer type) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(gameId);
        requestGameIdArgs.setPage(page);
        requestGameIdArgs.setUid(AccountUtil_.getInstance_(context).getAccountData().getUid());
        requestGameIdArgs.setLastEnterTime(lastEnterTime);
        requestGameIdArgs.setTagId(tagId);
        requestGameIdArgs.setType(type != null ? type.intValue() : 1);
        requestModel.setArgs(requestGameIdArgs);
        Call<ResponseModel<ArchiveDataAddPd>> callP0 = com.join.mgps.rpc.impl.i.P0().N0().P0(requestModel.makeSign());
        this.resultPd = callP0;
        if (callP0 != null) {
            callP0.enqueue(new Callback<ResponseModel<ArchiveDataAddPd>>() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest.getModeDatasAddPd.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<ArchiveDataAddPd>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    ResponseModel<ArchiveDataAddPd> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    this.getResultDataPd().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<ArchiveDataAddPd>> call, Response<ResponseModel<ArchiveDataAddPd>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() == null) {
                        ResponseModel<ArchiveDataAddPd> responseModel = new ResponseModel<>();
                        responseModel.setCode(401);
                        this.getResultDataPd().setValue(responseModel);
                    } else {
                        ResponseModel<ArchiveDataAddPd> responseModelBody = response.body();
                        if (responseModelBody != null) {
                            responseModelBody.setPage(page);
                        }
                        this.getResultDataPd().setValue(responseModelBody);
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
    public final Call<ResponseModel<List<ArchiveData>>> getResult() {
        return this.result;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<List<ArchiveData>>> getResultAllHasDownloadData() {
        return this.resultAllHasDownloadData;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<List<ArchiveData>>> getResultData() {
        return this.resultData;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<ArchiveDataAddPd>> getResultDataPd() {
        return this.resultDataPd;
    }

    @Nullable
    public final Call<ResponseModel<ArchiveDataAddPd>> getResultPd() {
        return this.resultPd;
    }

    @NotNull
    public final MutableLiveData<Integer> getStatus() {
        return this.status;
    }

    public final long getTime() {
        return this.time;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void loadMyInShop(@NotNull Context context, final int page, @NotNull String gameId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(gameId);
        requestGameIdArgs.setPage(page);
        requestGameIdArgs.setUid(AccountUtil_.getInstance_(context).getAccountData().getUid());
        requestModel.setArgs(requestGameIdArgs);
        Call<ResponseModel<List<ArchiveData>>> callN0 = com.join.mgps.rpc.impl.i.P0().N0().N0(requestModel.makeSign());
        this.result = callN0;
        if (callN0 != 0) {
            callN0.enqueue(new Callback<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest.loadMyInShop.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<List<? extends ArchiveData>>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                    responseModel.setCode(401);
                    this.getResultData().setValue(responseModel);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<List<? extends ArchiveData>>> call, Response<ResponseModel<List<? extends ArchiveData>>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() == null) {
                        ResponseModel<List<ArchiveData>> responseModel = new ResponseModel<>();
                        responseModel.setCode(401);
                        this.getResultData().setValue(responseModel);
                    } else {
                        ResponseModel<List<? extends ArchiveData>> responseModelBody = response.body();
                        if (responseModelBody != null) {
                            responseModelBody.setPage(page);
                        }
                        this.getResultData().setValue(responseModelBody);
                    }
                }
            });
        }
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
        com.join.mgps.rpc.impl.i.P0().N0().E1(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.data.ModDataRequest.reportDownloadArchive.1
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

    public final void setDataChangeItem(@NotNull MutableLiveData<ArchiveData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.dataChangeItem = mutableLiveData;
    }

    public final void setProgress(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.progress = mutableLiveData;
    }

    public final void setProgressTextShow(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.progressTextShow = mutableLiveData;
    }

    public final void setResult(@Nullable Call<ResponseModel<List<ArchiveData>>> call) {
        this.result = call;
    }

    public final void setResultAllHasDownloadData(@NotNull MutableLiveData<ResponseModel<List<ArchiveData>>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultAllHasDownloadData = mutableLiveData;
    }

    public final void setResultData(@NotNull MutableLiveData<ResponseModel<List<ArchiveData>>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultData = mutableLiveData;
    }

    public final void setResultDataPd(@NotNull MutableLiveData<ResponseModel<ArchiveDataAddPd>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.resultDataPd = mutableLiveData;
    }

    public final void setResultPd(@Nullable Call<ResponseModel<ArchiveDataAddPd>> call) {
        this.resultPd = call;
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
            String strK0 = k.f73277a.k0();
            if (table.getUserId() == 0) {
                str = "";
            } else {
                str = "/user/" + table.getUserId();
            }
            unZipOne(table, strK0, StringsKt__StringsJVMKt.replace$default(archiveLocalPath, "/Android/data/" + table.getPackageName(), "/Android/data" + str + File.separator + table.getPackageName(), false, 4, (Object) null), context);
            return;
        }
        if (StringsKt__StringsJVMKt.startsWith$default(archiveLocalPath, "/data/data/", false, 2, null)) {
            k kVar = k.f73277a;
            String packageName = table.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
            unZipOne(table, kVar.D(packageName, table.getUserId()), StringsKt__StringsJVMKt.replace$default(archiveLocalPath, "/data/data/" + table.getPackageName(), "", false, 4, (Object) null), context);
            return;
        }
        unZipOne(table, k.f73277a.k0(), "/user/" + table.getUserId() + '/' + table.getPackageName() + '/' + archiveLocalPath, context);
    }
}
