package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import android.net.Uri;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.join.android.app.common.utils.JsonMapper;
import com.join.kotlin.ui.cloudarchive.data.ArchiveArgs;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.util.ArchiveZipUtil;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.HMCloudMainActivity_;
import com.join.mgps.activity.screenshot.ImageFactory;
import com.join.mgps.activity.screenshot.ScreenShortUploadImagActivity_;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00102\u0006\u0010/\u001a\u00020\u0006H\u0002J\u0018\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0002J\u000e\u00106\u001a\u0002012\u0006\u0010,\u001a\u00020-J\u0010\u00107\u001a\u00020\u00102\u0006\u0010,\u001a\u00020-H\u0002J\u000e\u00108\u001a\u0002012\u0006\u0010,\u001a\u00020-R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR&\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\f0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\b\"\u0004\b\u0012\u0010\nR \u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\b\"\u0004\b\u0015\u0010\nR \u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00100\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\b\"\u0004\b\u0018\u0010\nR \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00100\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\b\"\u0004\b\u001b\u0010\nR \u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\b\"\u0004\b\u001f\u0010\nR \u0010 \u001a\b\u0012\u0004\u0012\u00020\u001d0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\b\"\u0004\b\"\u0010\nR$\u0010#\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030$0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\b\"\u0004\b&\u0010\nR \u0010'\u001a\b\u0012\u0004\u0012\u00020\u00100\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\b\"\u0004\b)\u0010\n¨\u00069"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "archive", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getArchive", "()Landroidx/lifecycle/MutableLiveData;", "setArchive", "(Landroidx/lifecycle/MutableLiveData;)V", "archiveDatas", "", "getArchiveDatas", "setArchiveDatas", "message", "", "getMessage", "setMessage", "archiveFileSuffix", "getArchiveFileSuffix", "setArchiveFileSuffix", "title", "getTitle", "setTitle", "noticeWarnings", "getNoticeWarnings", "setNoticeWarnings", "uploadStatus", "", "getUploadStatus", "setUploadStatus", "uploadProgress", "getUploadProgress", "setUploadProgress", "responseReult", "Lcom/join/mgps/dto/ResponseModel;", "getResponseReult", "setResponseReult", ScreenShortUploadImagActivity_.IMAGEPATH_EXTRA, "getImagepath", "setImagepath", "startZipFile", "Ljava/io/File;", "context", "Landroid/content/Context;", "folder", HMCloudMainActivity_.ARCHIVE_DATA_EXTRA, "copyFileSimple", "", "input", "Ljava/io/InputStream;", "out", "Ljava/io/OutputStream;", "uploadArchive", "compressImage", "updateArchiveMessage", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nModUploadArchiveViewModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModUploadArchiveViewModle.kt\ncom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,318:1\n1#2:319\n*E\n"})
public final class ModUploadArchiveViewModle extends ViewModel {

    @NotNull
    private MutableLiveData<ArchiveData> archive = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<List<ArchiveData>> archiveDatas = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<String> message = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<String> archiveFileSuffix = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<String> title = new MutableLiveData<>("发布存档");

    @NotNull
    private MutableLiveData<String> noticeWarnings = new MutableLiveData<>("");

    @NotNull
    private MutableLiveData<Integer> uploadStatus = new MutableLiveData<>(0);

    @NotNull
    private MutableLiveData<Integer> uploadProgress = new MutableLiveData<>(0);

    @NotNull
    private MutableLiveData<ResponseModel<?>> responseReult = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<String> imagepath = new MutableLiveData<>(null);

    /* JADX INFO: renamed from: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1", f = "ModUploadArchiveViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<UserInfo> $accountBean;
        final /* synthetic */ Ref.ObjectRef<ArchiveArgs> $archiveArgs;
        final /* synthetic */ Ref.ObjectRef<ArchiveData> $archiveData;
        final /* synthetic */ Ref.ObjectRef<String> $chnalNmber;
        final /* synthetic */ Context $context;
        final /* synthetic */ RequestModel<ArchiveArgs> $requestModel;
        int label;

        /* JADX INFO: renamed from: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$1", f = "ModUploadArchiveViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C06551 extends SuspendLambda implements Function2<kotlinx.coroutines.l0, Continuation<? super Unit>, Object> {
            final /* synthetic */ Ref.ObjectRef<ArchiveData> $archiveData;
            final /* synthetic */ RequestModel<ArchiveArgs> $requestModel;
            int label;
            final /* synthetic */ ModUploadArchiveViewModle this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06551(RequestModel<ArchiveArgs> requestModel, ModUploadArchiveViewModle modUploadArchiveViewModle, Ref.ObjectRef<ArchiveData> objectRef, Continuation<? super C06551> continuation) {
                super(2, continuation);
                this.$requestModel = requestModel;
                this.this$0 = modUploadArchiveViewModle;
                this.$archiveData = objectRef;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C06551(this.$requestModel, this.this$0, this.$archiveData, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                Call<ResponseModel> callM1 = com.join.mgps.rpc.impl.i.P0().N0().M1(this.$requestModel.makeSign());
                final ModUploadArchiveViewModle modUploadArchiveViewModle = this.this$0;
                final Ref.ObjectRef<ArchiveData> objectRef = this.$archiveData;
                callM1.enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle.updateArchiveMessage.1.1.1
                    @Override // retrofit2.Callback
                    public void onFailure(Call<ResponseModel<?>> call, Throwable t10) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(t10, "t");
                        ResponseModel<?> responseModel = new ResponseModel<>();
                        responseModel.setCode(500);
                        responseModel.setMessage("异常");
                        modUploadArchiveViewModle.getResponseReult().postValue(responseModel);
                    }

                    @Override // retrofit2.Callback
                    public void onResponse(Call<ResponseModel<?>> call, Response<ResponseModel<?>> response) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(response, "response");
                        ResponseModel<?> responseModelBody = response.body();
                        if (responseModelBody != null) {
                            modUploadArchiveViewModle.getResponseReult().postValue(responseModelBody);
                            if (responseModelBody.getCode() == 200) {
                                com.join.mgps.Util.j0.a().c(new ArchiveDownEvent(10, objectRef.element));
                                return;
                            }
                            return;
                        }
                        ResponseModel<?> responseModel = new ResponseModel<>();
                        responseModel.setCode(500);
                        responseModel.setMessage("异常");
                        modUploadArchiveViewModle.getResponseReult().postValue(responseModel);
                    }
                });
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(kotlinx.coroutines.l0 l0Var, Continuation<? super Unit> continuation) {
                return ((C06551) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, Ref.ObjectRef<UserInfo> objectRef, RequestModel<ArchiveArgs> requestModel, Ref.ObjectRef<String> objectRef2, Ref.ObjectRef<ArchiveArgs> objectRef3, Ref.ObjectRef<ArchiveData> objectRef4, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = context;
            this.$accountBean = objectRef;
            this.$requestModel = requestModel;
            this.$chnalNmber = objectRef2;
            this.$archiveArgs = objectRef3;
            this.$archiveData = objectRef4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ModUploadArchiveViewModle.this.new AnonymousClass1(this.$context, this.$accountBean, this.$requestModel, this.$chnalNmber, this.$archiveArgs, this.$archiveData, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            JsonElement jsonElement;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String value = ModUploadArchiveViewModle.this.getImagepath().getValue();
            if (!(value != null && StringsKt__StringsJVMKt.startsWith$default(value, "http", false, 2, null))) {
                String strCompressImage = ModUploadArchiveViewModle.this.compressImage(this.$context);
                JsonObject asJsonObject = JsonParser.parseString(com.join.android.app.common.http.h.b().f(strCompressImage, String.valueOf(this.$accountBean.element.getUid()), this.$accountBean.element.getToken(), this.$requestModel, this.$chnalNmber.element, new File(strCompressImage).getName(), new com.join.android.app.common.http.g() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$updateArchiveMessage$1$json$1
                    @Override // com.join.android.app.common.http.g
                    public void onRequestProgress(long bytesWritten, long contentLength, boolean b10, String url) {
                    }

                    @Override // com.join.android.app.common.http.g
                    public void onUploadFailed(String msg) {
                    }
                })).getAsJsonObject();
                if ((asJsonObject == null || (jsonElement = asJsonObject.get("code")) == null || jsonElement.getAsInt() != 200) ? false : true) {
                    JsonArray asJsonArray = asJsonObject.get("data").getAsJsonArray();
                    if (asJsonArray.size() > 0) {
                        this.$archiveArgs.element.setCoverLocation(asJsonArray.get(0).getAsJsonObject().get("remoteUrl").getAsString());
                    }
                }
            }
            kotlinx.coroutines.j.f(kotlinx.coroutines.o1.f93610b, kotlinx.coroutines.z0.e(), null, new C06551(this.$requestModel, ModUploadArchiveViewModle.this, this.$archiveData, null), 2, null);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String compressImage(Context context) throws Throwable {
        String value = this.imagepath.getValue();
        String strReplace$default = value != null ? StringsKt__StringsJVMKt.replace$default(value, "file://", "", false, 4, (Object) null) : null;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.join.mgps.Util.z.f50172k);
        sb2.append("uploadCoverFile");
        Intrinsics.checkNotNull(strReplace$default);
        String strSubstring = strReplace$default.substring(StringsKt__StringsKt.lastIndexOf$default((CharSequence) strReplace$default, com.join.mgps.Util.o0.f49827a, 0, false, 6, (Object) null), strReplace$default.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        sb2.append(strSubstring);
        String string = sb2.toString();
        File file = new File(string);
        try {
            if (!file.exists()) {
                file.getParentFile().mkdirs();
            }
            new ImageFactory().compressAndGenImage(strReplace$default, string, 500, false, context);
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return string;
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

    /* JADX WARN: Code duplicated, block: B:63:0x0190  */
    private final File startZipFile(Context context, String folder, ArchiveData archiveData) throws IOException {
        boolean z10;
        File externalFilesDir = context.getExternalFilesDir("");
        Intrinsics.checkNotNull(externalFilesDir);
        String absolutePath = externalFilesDir.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        ArchiveZipUtil archiveZipUtil = new ArchiveZipUtil();
        File file = new File(absolutePath + "/Download/cloudarchive", "temp1.zip");
        String strReplace$default = StringsKt__StringsJVMKt.replace$default(folder, "/data/data/" + archiveData.getPackageName(), "", false, 4, (Object) null);
        ArrayList arrayList = new ArrayList();
        boolean z11 = StringsKt__StringsJVMKt.startsWith$default(folder, "/data/data", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(folder, "/Android/data", false, 2, null);
        String archiveLocalPath = archiveData.getArchiveLocalPath();
        Intrinsics.checkNotNullExpressionValue(archiveLocalPath, "getArchiveLocalPath(...)");
        if (StringsKt__StringsKt.contains$default((CharSequence) archiveLocalPath, (CharSequence) "wufun.addon", false, 2, (Object) null) && z11) {
            try {
                InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(Uri.parse(com.join.mgps.va.overmind.i.f73262g.e() + archiveData.getArchiveLocalPath()));
                if (file.exists()) {
                    file.delete();
                } else if (!file.getParentFile().exists()) {
                    file.mkdirs();
                }
                file.createNewFile();
                if (inputStreamOpenInputStream != null) {
                    try {
                        copyFileSimple(inputStreamOpenInputStream, new FileOutputStream(file));
                        Unit unit = Unit.INSTANCE;
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                        Unit unit2 = Unit.INSTANCE;
                    }
                }
            } catch (Exception e11) {
                e = e11;
            }
        } else {
            String archiveLocalPath2 = archiveData.getArchiveLocalPath();
            Intrinsics.checkNotNullExpressionValue(archiveLocalPath2, "getArchiveLocalPath(...)");
            if (StringsKt__StringsJVMKt.endsWith$default(archiveLocalPath2, strReplace$default, false, 2, null)) {
                File[] fileArrListFiles = new File(archiveData.getArchiveLocalPath()).listFiles();
                if (fileArrListFiles != null) {
                    if (!(fileArrListFiles.length == 0)) {
                        Iterator it2 = ArrayIteratorKt.iterator(fileArrListFiles);
                        while (it2.hasNext()) {
                            File file2 = (File) it2.next();
                            if (archiveData.getArchiveFileSuffix() != null) {
                                String archiveFileSuffix = archiveData.getArchiveFileSuffix();
                                Intrinsics.checkNotNull(archiveFileSuffix);
                                if (archiveFileSuffix.length() > 0) {
                                    String archiveFileSuffix2 = archiveData.getArchiveFileSuffix();
                                    Intrinsics.checkNotNull(archiveFileSuffix2);
                                    List<String> listSplit$default = StringsKt__StringsKt.split$default((CharSequence) archiveFileSuffix2, new String[]{","}, false, 0, 6, (Object) null);
                                    if (!listSplit$default.isEmpty()) {
                                        for (String str : listSplit$default) {
                                            if (!Intrinsics.areEqual(str, file2.getName())) {
                                                String name = file2.getName();
                                                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                                                if (!StringsKt__StringsJVMKt.startsWith$default(name, str, false, 2, null)) {
                                                    String name2 = file2.getName();
                                                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                                                    if (StringsKt__StringsJVMKt.endsWith$default(name2, str, false, 2, null)) {
                                                    }
                                                }
                                            }
                                            Intrinsics.checkNotNull(file2);
                                            arrayList.add(file2);
                                        }
                                        z10 = true;
                                    } else {
                                        z10 = false;
                                    }
                                } else {
                                    z10 = false;
                                }
                            } else {
                                z10 = false;
                            }
                            if (!z10) {
                                Intrinsics.checkNotNull(file2);
                                arrayList.add(file2);
                            }
                        }
                    }
                }
                return file;
            }
            arrayList.add(new File(archiveData.getArchiveLocalPath()));
            if (file.exists()) {
                File file3 = new File(absolutePath + "/Download/cloudarchive", "tempdel.zip");
                file.renameTo(file3);
                file3.delete();
            }
            archiveZipUtil.zipActiveFilesKotlin(file, arrayList);
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void uploadArchive$lambda$3$lambda$2(final ModUploadArchiveViewModle modUploadArchiveViewModle, Context context, Ref.ObjectRef objectRef) throws Throwable {
        String archiveLocation = ((ArchiveData) objectRef.element).getArchiveLocation();
        Intrinsics.checkNotNullExpressionValue(archiveLocation, "getArchiveLocation(...)");
        File fileStartZipFile = modUploadArchiveViewModle.startZipFile(context, archiveLocation, (ArchiveData) objectRef.element);
        String value = modUploadArchiveViewModle.imagepath.getValue();
        if (value != null) {
            StringsKt__StringsJVMKt.replace$default(value, "file://", "", false, 4, (Object) null);
        }
        String strCompressImage = modUploadArchiveViewModle.compressImage(context);
        String absolutePath = fileStartZipFile != null ? fileStartZipFile.getAbsolutePath() : null;
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        String strI = com.join.android.app.common.http.h.b().i(absolutePath, String.valueOf(accountData.getUid()), accountData.getToken(), ((ArchiveData) objectRef.element).getGame_id(), modUploadArchiveViewModle.message.getValue(), "517", new File(((ArchiveData) objectRef.element).getArchiveLocalPath()).getName(), strCompressImage, new com.join.android.app.common.http.g() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveViewModle$uploadArchive$1$1$json$1
            @Override // com.join.android.app.common.http.g
            public void onRequestProgress(long bytesWritten, long contentLength, boolean b10, String url) {
                this.this$0.getUploadProgress().postValue(Integer.valueOf((int) ((bytesWritten * ((long) 100)) / contentLength)));
            }

            @Override // com.join.android.app.common.http.g
            public void onUploadFailed(String msg) {
            }
        });
        File file = new File(strCompressImage);
        if (file.exists()) {
            UtilsMy.delete(file);
        }
        if (strI == null || strI.length() == 0) {
            ResponseModel<?> responseModel = new ResponseModel<>();
            responseModel.setCode(500);
            responseModel.setMessage("异常");
            modUploadArchiveViewModle.responseReult.postValue(responseModel);
            return;
        }
        ResponseModel<?> responseModel2 = (ResponseModel) JsonMapper.getInstance().fromJson(strI, ResponseModel.class);
        if (responseModel2 != null) {
            modUploadArchiveViewModle.responseReult.postValue(responseModel2);
            return;
        }
        ResponseModel<?> responseModel3 = new ResponseModel<>();
        responseModel3.setCode(500);
        responseModel3.setMessage("异常");
        modUploadArchiveViewModle.responseReult.postValue(responseModel3);
    }

    @NotNull
    public final MutableLiveData<ArchiveData> getArchive() {
        return this.archive;
    }

    @NotNull
    public final MutableLiveData<List<ArchiveData>> getArchiveDatas() {
        return this.archiveDatas;
    }

    @NotNull
    public final MutableLiveData<String> getArchiveFileSuffix() {
        return this.archiveFileSuffix;
    }

    @NotNull
    public final MutableLiveData<String> getImagepath() {
        return this.imagepath;
    }

    @NotNull
    public final MutableLiveData<String> getMessage() {
        return this.message;
    }

    @NotNull
    public final MutableLiveData<String> getNoticeWarnings() {
        return this.noticeWarnings;
    }

    @NotNull
    public final MutableLiveData<ResponseModel<?>> getResponseReult() {
        return this.responseReult;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    @NotNull
    public final MutableLiveData<Integer> getUploadProgress() {
        return this.uploadProgress;
    }

    @NotNull
    public final MutableLiveData<Integer> getUploadStatus() {
        return this.uploadStatus;
    }

    public final void setArchive(@NotNull MutableLiveData<ArchiveData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archive = mutableLiveData;
    }

    public final void setArchiveDatas(@NotNull MutableLiveData<List<ArchiveData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archiveDatas = mutableLiveData;
    }

    public final void setArchiveFileSuffix(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archiveFileSuffix = mutableLiveData;
    }

    public final void setImagepath(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.imagepath = mutableLiveData;
    }

    public final void setMessage(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.message = mutableLiveData;
    }

    public final void setNoticeWarnings(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.noticeWarnings = mutableLiveData;
    }

    public final void setResponseReult(@NotNull MutableLiveData<ResponseModel<?>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.responseReult = mutableLiveData;
    }

    public final void setTitle(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.title = mutableLiveData;
    }

    public final void setUploadProgress(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.uploadProgress = mutableLiveData;
    }

    public final void setUploadStatus(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.uploadStatus = mutableLiveData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3, types: [T, com.join.kotlin.ui.cloudarchive.data.ArchiveArgs] */
    /* JADX WARN: Type inference failed for: r0v5, types: [T, com.wufan.user.service.protobuf.UserInfo] */
    public final void updateArchiveMessage(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? value = this.archive.getValue();
        Intrinsics.checkNotNull(value);
        objectRef.element = value;
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = new ArchiveArgs();
        Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        objectRef3.element = AccountUtil_.getInstance_(context).getAccountData();
        ((ArchiveArgs) objectRef2.element).setArchiveId(((ArchiveData) objectRef.element).getId());
        ((ArchiveArgs) objectRef2.element).setGameId(((ArchiveData) objectRef.element).getGame_id());
        ((ArchiveArgs) objectRef2.element).setArchiveDesc(this.message.getValue());
        ((ArchiveArgs) objectRef2.element).setCoverLocation(((ArchiveData) objectRef.element).getCoverLocation());
        ((ArchiveArgs) objectRef2.element).setUid(((UserInfo) objectRef3.element).getUid());
        requestModel.setArgs(objectRef2.element);
        Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
        objectRef4.element = com.papa.sim.statistic.m.a(context);
        kotlinx.coroutines.j.f(kotlinx.coroutines.o1.f93610b, kotlinx.coroutines.z0.c(), null, new AnonymousClass1(context, objectRef3, requestModel, objectRef4, objectRef2, objectRef, null), 2, null);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Object] */
    public final void uploadArchive(@NotNull final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? value = this.archive.getValue();
        objectRef.element = value;
        if (((ArchiveData) value) != null) {
            new Thread(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.x0
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    ModUploadArchiveViewModle.uploadArchive$lambda$3$lambda$2(this.f49055b, context, objectRef);
                }
            }).start();
        }
    }
}
