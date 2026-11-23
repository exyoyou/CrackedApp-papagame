package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.kotlin.domain.common.SingleLiveEvent;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.HMCloudMainActivity_;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GoldFingerBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.dto.RequestModGameArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0001bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020EJ,\u0010F\u001a\u00020C2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010G\u001a\u00020H2\u0006\u0010D\u001a\u00020E2\f\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00160\u001cJ,\u0010J\u001a\u00020C2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010K\u001a\u00020H2\u0006\u0010D\u001a\u00020E2\f\u0010I\u001a\b\u0012\u0004\u0012\u00020\u00160\u001cJ\u001c\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00160\u001c2\u0006\u0010D\u001a\u00020E2\u0006\u0010\u000f\u001a\u00020\u0010J<\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00160\u001c2\u0006\u0010D\u001a\u00020E2\u0006\u0010N\u001a\u00020H2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010O\u001a\u00020H2\f\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00160\u001cH\u0002J6\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00160\u001c2\u0006\u0010R\u001a\u00020H2\u0006\u0010S\u001a\u00020H2\u0006\u0010T\u001a\u00020H2\u000e\b\u0002\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00160\u001cH\u0002J\u0016\u0010V\u001a\u00020)2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010W\u001a\u00020XJ\u000e\u0010^\u001a\u00020\u00062\u0006\u0010W\u001a\u00020XJ\u0010\u0010_\u001a\u00020C2\u0006\u0010W\u001a\u00020XH\u0002J\u0016\u0010`\u001a\u00020C2\u0006\u0010a\u001a\u00020H2\u0006\u0010D\u001a\u00020ER \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR \u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0018\"\u0004\b$\u0010\u001aR&\u0010%\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u001c0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\b\"\u0004\b'\u0010\nR\u001a\u0010(\u001a\u00020)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R \u0010.\u001a\b\u0012\u0004\u0012\u00020)0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\b\"\u0004\b0\u0010\nR\u0014\u00101\u001a\b\u0012\u0004\u0012\u00020302X\u0082\u0004¢\u0006\u0002\n\u0000R \u00104\u001a\b\u0012\u0004\u0012\u00020302X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u00109\u001a\u00020)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010+\"\u0004\b;\u0010-R\u001c\u0010<\u001a\u0004\u0018\u00010=X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u001a\u0010Y\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]¨\u0006c"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "runIngArchiveId", "Landroidx/lifecycle/MutableLiveData;", "", "getRunIngArchiveId", "()Landroidx/lifecycle/MutableLiveData;", "setRunIngArchiveId", "(Landroidx/lifecycle/MutableLiveData;)V", "showDownlloadDialog", "", "getShowDownlloadDialog", "setShowDownlloadDialog", "modGameArchivePathData", "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "getModGameArchivePathData", "()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "setModGameArchivePathData", "(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V", HMCloudMainActivity_.ARCHIVE_DATA_EXTRA, "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getArchiveData", "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "setArchiveData", "(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V", "goldFingerBean", "", "Lcom/join/mgps/dto/GoldFingerBean;", "getGoldFingerBean", "()Ljava/util/List;", "setGoldFingerBean", "(Ljava/util/List;)V", "lastStartArchive", "getLastStartArchive", "setLastStartArchive", "localArchiveLists", "getLocalArchiveLists", "setLocalArchiveLists", "installInExtPlug", "", "getInstallInExtPlug", "()Z", "setInstallInExtPlug", "(Z)V", "showDialog", "getShowDialog", "setShowDialog", "_event", "Lcom/join/kotlin/domain/common/SingleLiveEvent;", "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;", NotificationCompat.CATEGORY_EVENT, "getEvent", "()Lcom/join/kotlin/domain/common/SingleLiveEvent;", "setEvent", "(Lcom/join/kotlin/domain/common/SingleLiveEvent;)V", "initFinish", "getInitFinish", "setInitFinish", "parentExtBean", "Lcom/join/mgps/dto/ExtBean;", "getParentExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setParentExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "loadLocalArchiveDatas", "", "context", "Landroid/content/Context;", "loadLocalExtArchiveMain", "mainArchiveLocalPath", "", "archiveList", "loadLocalExArchive", "archiveLocation", "loadLocalArchive", "loadLocalArchiveexcues", "packagename", "path", "archiveS", "loadSingleGameSlot", "src", "subPath", "packageName", "list", "checkArchiveHas", "file", "Ljava/io/File;", "time", "getTime", "()J", "setTime", "(J)V", "getFileUpdateTimeMain", "getFileUpdateTime", "getDetialData", "gameId", "CloudShareEvent", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudShareViewModle extends ViewModel {

    @NotNull
    private final SingleLiveEvent<CloudShareEvent> _event;

    @NotNull
    private SingleLiveEvent<CloudShareEvent> event;
    private boolean initFinish;
    private boolean installInExtPlug;

    @Nullable
    private ExtBean parentExtBean;
    private long time;

    @NotNull
    private MutableLiveData<Long> runIngArchiveId = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> showDownlloadDialog = new MutableLiveData<>();

    @NotNull
    private ModGameArchivePathData modGameArchivePathData = new ModGameArchivePathData();

    @NotNull
    private ArchiveData archiveData = new ArchiveData();

    @NotNull
    private List<GoldFingerBean> goldFingerBean = new ArrayList();

    @NotNull
    private ArchiveData lastStartArchive = new ArchiveData();

    @NotNull
    private MutableLiveData<List<ArchiveData>> localArchiveLists = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Boolean> showDialog = new MutableLiveData<>();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;", "", "<init>", "()V", "showdownloadModDialog", "", "getShowdownloadModDialog", "()I", "setShowdownloadModDialog", "(I)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class CloudShareEvent {
        private int showdownloadModDialog;

        public final int getShowdownloadModDialog() {
            return this.showdownloadModDialog;
        }

        public final void setShowdownloadModDialog(int i10) {
            this.showdownloadModDialog = i10;
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.ui.cloudarchive.CloudShareViewModle$getDetialData$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.CloudShareViewModle$getDetialData$1", f = "CloudShareViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ String $gameId;
        int label;
        final /* synthetic */ CloudShareViewModle this$0;

        /* JADX INFO: renamed from: com.join.kotlin.ui.cloudarchive.CloudShareViewModle$getDetialData$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.CloudShareViewModle$getDetialData$1$1", f = "CloudShareViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C06531 extends SuspendLambda implements Function2<kotlinx.coroutines.l0, Continuation<? super Unit>, Object> {
            final /* synthetic */ Context $context;
            final /* synthetic */ Ref.ObjectRef<ResponseModel<ModGameDetailBean>> $main;
            int label;
            final /* synthetic */ CloudShareViewModle this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06531(CloudShareViewModle cloudShareViewModle, Ref.ObjectRef<ResponseModel<ModGameDetailBean>> objectRef, Context context, Continuation<? super C06531> continuation) {
                super(2, continuation);
                this.this$0 = cloudShareViewModle;
                this.$main = objectRef;
                this.$context = context;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C06531(this.this$0, this.$main, this.$context, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                ModGameArchivePathData modGameArchivePathData;
                GamedetialModleFourBean main_game_info;
                GamedetialModleFourBean mod_game_info;
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                this.this$0.getShowDialog().setValue(Boxing.boxBoolean(false));
                CloudShareViewModle cloudShareViewModle = this.this$0;
                ModGameDetailBean data = this.$main.element.getData();
                if (data == null || (modGameArchivePathData = data.getCloud_archive_local_path()) == null) {
                    modGameArchivePathData = new ModGameArchivePathData();
                }
                cloudShareViewModle.setModGameArchivePathData(modGameArchivePathData);
                ModGameArchivePathData modGameArchivePathData2 = this.this$0.getModGameArchivePathData();
                ModGameDetailBean data2 = this.$main.element.getData();
                String packageName = null;
                modGameArchivePathData2.setModPackageName((data2 == null || (mod_game_info = data2.getMod_game_info()) == null) ? null : mod_game_info.getPackageName());
                ModGameArchivePathData modGameArchivePathData3 = this.this$0.getModGameArchivePathData();
                ModGameDetailBean data3 = this.$main.element.getData();
                if (data3 != null && (main_game_info = data3.getMain_game_info()) != null) {
                    packageName = main_game_info.getPackageName();
                }
                modGameArchivePathData3.setMainGamePackageName(packageName);
                this.this$0.loadLocalArchiveDatas(this.$context);
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(kotlinx.coroutines.l0 l0Var, Continuation<? super Unit> continuation) {
                return ((C06531) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, String str, CloudShareViewModle cloudShareViewModle, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = context;
            this.$gameId = str;
            this.this$0 = cloudShareViewModle;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$context, this.$gameId, this.this$0, continuation);
        }

        /* JADX WARN: Type inference failed for: r9v13, types: [T, com.join.mgps.dto.ResponseModel] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (com.join.android.app.common.utils.m.j(this.$context)) {
                try {
                    UserInfo accountData = AccountUtil_.getInstance_(this.$context).getAccountData();
                    if (accountData == null) {
                        accountData = UserInfo.getDefaultInstance();
                    }
                    Ref.ObjectRef objectRef = new Ref.ObjectRef();
                    RequestModel<RequestModGameArgs> requestModel = new RequestModel<>();
                    RequestModGameArgs requestModGameArgs = new RequestModGameArgs();
                    requestModGameArgs.setUid(accountData.getUid());
                    requestModGameArgs.setUserToken(accountData.getToken());
                    requestModGameArgs.setGameId(this.$gameId);
                    requestModel.setArgs(requestModGameArgs);
                    requestModel.setDefault(this.$context);
                    ?? K0 = com.join.mgps.rpc.impl.i.P0().k0(requestModel);
                    objectRef.element = K0;
                    if (K0 != 0 && K0.getCode() == 200) {
                        kotlinx.coroutines.j.f(kotlinx.coroutines.o1.f93610b, kotlinx.coroutines.z0.e(), null, new C06531(this.this$0, objectRef, this.$context, null), 2, null);
                        return Unit.INSTANCE;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.this$0.getShowDialog().postValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.l0 l0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.ui.cloudarchive.CloudShareViewModle$loadLocalArchiveDatas$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.CloudShareViewModle$loadLocalArchiveDatas$1", f = "CloudShareViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C13331 extends SuspendLambda implements Function2<kotlinx.coroutines.l0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        int label;

        /* JADX INFO: renamed from: com.join.kotlin.ui.cloudarchive.CloudShareViewModle$loadLocalArchiveDatas$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.join.kotlin.ui.cloudarchive.CloudShareViewModle$loadLocalArchiveDatas$1$1", f = "CloudShareViewModle.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C06541 extends SuspendLambda implements Function2<kotlinx.coroutines.l0, Continuation<? super Unit>, Object> {
            final /* synthetic */ Ref.ObjectRef<List<ArchiveData>> $archiveList;
            int label;
            final /* synthetic */ CloudShareViewModle this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06541(CloudShareViewModle cloudShareViewModle, Ref.ObjectRef<List<ArchiveData>> objectRef, Continuation<? super C06541> continuation) {
                super(2, continuation);
                this.this$0 = cloudShareViewModle;
                this.$archiveList = objectRef;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C06541(this.this$0, this.$archiveList, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                this.this$0.setInitFinish(true);
                List<ArchiveData> value = this.this$0.getLocalArchiveLists().getValue();
                if (value != null) {
                    value.clear();
                }
                List<ArchiveData> value2 = this.this$0.getLocalArchiveLists().getValue();
                if (value2 != null) {
                    Boxing.boxBoolean(value2.addAll(this.$archiveList.element));
                }
                this.this$0.getLocalArchiveLists().setValue(this.this$0.getLocalArchiveLists().getValue());
                this.this$0.getShowDialog().setValue(Boxing.boxBoolean(false));
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(kotlinx.coroutines.l0 l0Var, Continuation<? super Unit> continuation) {
                return ((C06541) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13331(Context context, Continuation<? super C13331> continuation) {
            super(2, continuation);
            this.$context = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CloudShareViewModle.this.new C13331(this.$context, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0092  */
        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.util.ArrayList] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean z10;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new ArrayList();
            com.join.mgps.va.overmind.i.a aVar = com.join.mgps.va.overmind.i.f73262g;
            int i10 = 0;
            if (aVar.d().R(CloudShareViewModle.this.getModGameArchivePathData().getModPackageName())) {
                z10 = true;
                CloudShareViewModle.this.setInstallInExtPlug(true);
                if (aVar.d().P()) {
                    CloudShareViewModle cloudShareViewModle = CloudShareViewModle.this;
                    ModGameArchivePathData modGameArchivePathData = cloudShareViewModle.getModGameArchivePathData();
                    String mainArchiveLocalPath = CloudShareViewModle.this.getModGameArchivePathData().getMainArchiveLocalPath();
                    Intrinsics.checkNotNullExpressionValue(mainArchiveLocalPath, "getMainArchiveLocalPath(...)");
                    cloudShareViewModle.loadLocalExtArchiveMain(modGameArchivePathData, mainArchiveLocalPath, this.$context, (List) objectRef.element);
                    String subArchiveLocalPath = CloudShareViewModle.this.getModGameArchivePathData().getSubArchiveLocalPath();
                    Intrinsics.checkNotNullExpressionValue(subArchiveLocalPath, "getSubArchiveLocalPath(...)");
                    if (subArchiveLocalPath.length() > 0) {
                        CloudShareViewModle cloudShareViewModle2 = CloudShareViewModle.this;
                        ModGameArchivePathData modGameArchivePathData2 = cloudShareViewModle2.getModGameArchivePathData();
                        String subArchiveLocalPath2 = CloudShareViewModle.this.getModGameArchivePathData().getSubArchiveLocalPath();
                        Intrinsics.checkNotNullExpressionValue(subArchiveLocalPath2, "getSubArchiveLocalPath(...)");
                        cloudShareViewModle2.loadLocalExtArchiveMain(modGameArchivePathData2, subArchiveLocalPath2, this.$context, (List) objectRef.element);
                    }
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (!z10) {
                List list = (List) objectRef.element;
                CloudShareViewModle cloudShareViewModle3 = CloudShareViewModle.this;
                list.addAll(cloudShareViewModle3.loadLocalArchive(this.$context, cloudShareViewModle3.getModGameArchivePathData()));
            }
            for (ArchiveData archiveData : (Iterable) objectRef.element) {
                int i11 = i10 + 1;
                if (i10 != 0) {
                    archiveData.setArchiveDesc(archiveData.getArchiveDesc() + i10);
                }
                i10 = i11;
            }
            kotlinx.coroutines.j.f(kotlinx.coroutines.o1.f93610b, kotlinx.coroutines.z0.e(), null, new C06541(CloudShareViewModle.this, objectRef, null), 2, null);
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.l0 l0Var, Continuation<? super Unit> continuation) {
            return ((C13331) create(l0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    public CloudShareViewModle() {
        SingleLiveEvent<CloudShareEvent> singleLiveEvent = new SingleLiveEvent<>();
        this._event = singleLiveEvent;
        this.event = singleLiveEvent;
        this.runIngArchiveId.setValue(0L);
        this.localArchiveLists.setValue(new ArrayList());
        this.showDialog.setValue(Boolean.FALSE);
    }

    private final void getFileUpdateTime(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (!file.isDirectory()) {
                long millis = Files.readAttributes(file.toPath(), cn.fly.tools.utils.n.a(), new LinkOption[0]).lastModifiedTime().toMillis();
                if (millis > this.time) {
                    this.time = millis;
                    return;
                }
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                Iterator it2 = ArrayIteratorKt.iterator(fileArrListFiles);
                while (it2.hasNext()) {
                    File file2 = (File) it2.next();
                    Intrinsics.checkNotNull(file2);
                    getFileUpdateTime(file2);
                }
                return;
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
        File[] fileArrListFiles2 = file.listFiles();
        if (fileArrListFiles2 != null) {
            Iterator it3 = ArrayIteratorKt.iterator(fileArrListFiles2);
            while (it3.hasNext()) {
                File file3 = (File) it3.next();
                Intrinsics.checkNotNull(file3);
                getFileUpdateTime(file3);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x008b  */
    private final List<ArchiveData> loadLocalArchiveexcues(Context context, String packagename, ModGameArchivePathData modGameArchivePathData, String path, List<ArchiveData> archiveS) {
        String str;
        boolean z10;
        this = this;
        boolean z11 = true;
        if (StringsKt__StringsJVMKt.startsWith$default(path, "/Android/data", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(path, "Android/data", false, 2, null)) {
            if (StringsKt__StringsJVMKt.startsWith$default(path, "Android/data", false, 2, null)) {
                str = '/' + path;
            } else {
                str = path;
            }
            String strK0 = com.join.mgps.va.overmind.k.f73277a.k0();
            File[] fileArrListFiles = new File(strK0 + str).listFiles();
            if (fileArrListFiles != null) {
                if (!(fileArrListFiles.length == 0)) {
                    if (modGameArchivePathData.getArchiveType() == 0) {
                        ArchiveData archiveData = new ArchiveData();
                        archiveData.setArchiveLocalPath(strK0 + str);
                        Iterator it2 = ArrayIteratorKt.iterator(fileArrListFiles);
                        boolean zCheckArchiveHas = false;
                        do {
                            if (!it2.hasNext()) {
                                z11 = zCheckArchiveHas;
                                break;
                            }
                            File file = (File) it2.next();
                            Intrinsics.checkNotNull(file);
                            zCheckArchiveHas = this.checkArchiveHas(modGameArchivePathData, file);
                        } while (!zCheckArchiveHas);
                        if (z11) {
                            archiveData.setArchiveDesc("我的默认存档");
                            archiveData.setAddTime(this.getFileUpdateTimeMain(new File(archiveData.getArchiveLocalPath())) / ((long) 1000));
                            archiveData.setArchiveLocation(path);
                            archiveData.setPackageName(packagename);
                            archiveData.setGame_id(modGameArchivePathData.getGameId());
                            archiveData.setShowText("启动");
                            archiveData.setStatus(8);
                            archiveData.setId("0");
                            archiveData.setUserId(0);
                            archiveData.setArchiveFileSuffix(modGameArchivePathData.getArchiveFileSuffix());
                            archiveS.add(archiveData);
                        }
                    } else {
                        Iterator it3 = ArrayIteratorKt.iterator(fileArrListFiles);
                        int i10 = 0;
                        while (it3.hasNext()) {
                            File file2 = (File) it3.next();
                            Intrinsics.checkNotNull(file2);
                            if (this.checkArchiveHas(modGameArchivePathData, file2)) {
                                i10++;
                                ArchiveData archiveData2 = new ArchiveData();
                                archiveData2.setArchiveLocalPath(file2.getAbsolutePath());
                                archiveData2.setArchiveDesc("我的默认存档" + i10);
                                archiveData2.setAddTime(this.getFileUpdateTimeMain(file2) / ((long) 1000));
                                archiveData2.setArchiveLocation(path);
                                archiveData2.setPackageName(packagename);
                                archiveData2.setGame_id(modGameArchivePathData.getGameId());
                                archiveData2.setShowText("启动");
                                archiveData2.setStatus(8);
                                archiveData2.setId("0");
                                archiveData2.setUserId(0);
                                archiveData2.setArchiveFileSuffix(modGameArchivePathData.getArchiveFileSuffix());
                                archiveS.add(archiveData2);
                                it3 = it3;
                            }
                        }
                    }
                }
            }
        } else {
            if (StringsKt__StringsJVMKt.startsWith$default(path, "/data/data", false, 2, null)) {
                String strE = com.join.mgps.va.overmind.k.E(com.join.mgps.va.overmind.k.f73277a, packagename, 0, 2, null);
                String strReplace$default = StringsKt__StringsJVMKt.replace$default(path, "/data/data/" + packagename, "", false, 4, (Object) null);
                String str2 = strE + strReplace$default;
                File[] fileArrListFiles2 = new File(str2).listFiles();
                if (fileArrListFiles2 == null) {
                    z10 = true;
                } else {
                    if (fileArrListFiles2.length == 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                if (z10 && (com.join.mgps.Util.v1.e() & (StringsKt__StringsJVMKt.startsWith$default(strReplace$default, "/app_webview", false, 2, null) | StringsKt__StringsJVMKt.startsWith$default(strReplace$default, "app_webview", false, 2, null)))) {
                    str2 = strE + StringsKt__StringsJVMKt.replaceFirst$default(strReplace$default, "app_webview", "app_hws_webview", false, 4, (Object) null);
                    fileArrListFiles2 = new File(str2).listFiles();
                }
                if (fileArrListFiles2 != null) {
                    if (!(fileArrListFiles2.length == 0)) {
                        if (modGameArchivePathData.getArchiveType() == 0) {
                            ArchiveData archiveData3 = new ArchiveData();
                            Iterator it4 = ArrayIteratorKt.iterator(fileArrListFiles2);
                            boolean zCheckArchiveHas2 = false;
                            do {
                                if (!it4.hasNext()) {
                                    z11 = zCheckArchiveHas2;
                                    break;
                                }
                                File file3 = (File) it4.next();
                                Intrinsics.checkNotNull(file3);
                                zCheckArchiveHas2 = this.checkArchiveHas(modGameArchivePathData, file3);
                            } while (!zCheckArchiveHas2);
                            if (z11) {
                                archiveData3.setArchiveLocalPath(str2);
                                archiveData3.setArchiveDesc("我的默认存档");
                                archiveData3.setAddTime(this.getFileUpdateTimeMain(new File(str2)) / ((long) 1000));
                                archiveData3.setArchiveLocation(path);
                                archiveData3.setPackageName(packagename);
                                archiveData3.setGame_id(modGameArchivePathData.getGameId());
                                archiveData3.setShowText("启动");
                                archiveData3.setStatus(8);
                                archiveData3.setId("0");
                                archiveData3.setUserId(0);
                                archiveData3.setArchiveFileSuffix(modGameArchivePathData.getArchiveFileSuffix());
                                archiveS.add(archiveData3);
                            }
                        } else {
                            Iterator it5 = ArrayIteratorKt.iterator(fileArrListFiles2);
                            int i11 = 0;
                            while (it5.hasNext()) {
                                File file4 = (File) it5.next();
                                Intrinsics.checkNotNull(file4);
                                if (this.checkArchiveHas(modGameArchivePathData, file4)) {
                                    i11++;
                                    ArchiveData archiveData4 = new ArchiveData();
                                    archiveData4.setArchiveLocalPath(file4.getAbsolutePath());
                                    archiveData4.setArchiveDesc("我的默认存档" + i11);
                                    archiveData4.setAddTime(this.getFileUpdateTimeMain(file4) / ((long) 1000));
                                    archiveData4.setArchiveLocation(path);
                                    archiveData4.setPackageName(packagename);
                                    archiveData4.setGame_id(modGameArchivePathData.getGameId());
                                    archiveData4.setShowText("启动");
                                    archiveData4.setStatus(8);
                                    archiveData4.setId("0");
                                    archiveData4.setUserId(0);
                                    archiveData4.setArchiveFileSuffix(modGameArchivePathData.getArchiveFileSuffix());
                                    archiveS.add(archiveData4);
                                }
                            }
                        }
                    }
                }
                return archiveS;
            }
            if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74785i) == 0) {
                String SD = com.join.mgps.Util.z.f50165d;
                Intrinsics.checkNotNullExpressionValue(SD, "SD");
                this.loadSingleGameSlot(SD, path, packagename, archiveS);
            }
            this.loadSingleGameSlot(context.getExternalFilesDir("") + "/internal", path, packagename, archiveS);
        }
        return archiveS;
    }

    private final List<ArchiveData> loadSingleGameSlot(String src, String subPath, String packageName, List<ArchiveData> list) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(src);
        String str = net.lingala.zip4j.util.e.F0;
        boolean zCheckArchiveHas = false;
        if (StringsKt__StringsJVMKt.startsWith$default(subPath, net.lingala.zip4j.util.e.F0, false, 2, null)) {
            str = "";
        }
        sb2.append(str);
        sb2.append(subPath);
        String string = sb2.toString();
        File[] fileArrListFiles = new File(string).listFiles();
        if (fileArrListFiles != null) {
            boolean z10 = true;
            if (!(fileArrListFiles.length == 0)) {
                String str2 = "0";
                if (this.modGameArchivePathData.getArchiveType() == 0) {
                    ArchiveData archiveData = new ArchiveData();
                    Iterator it2 = ArrayIteratorKt.iterator(fileArrListFiles);
                    do {
                        if (!it2.hasNext()) {
                            z10 = zCheckArchiveHas;
                            break;
                        }
                        File file = (File) it2.next();
                        ModGameArchivePathData modGameArchivePathData = this.modGameArchivePathData;
                        Intrinsics.checkNotNull(file);
                        zCheckArchiveHas = checkArchiveHas(modGameArchivePathData, file);
                    } while (!zCheckArchiveHas);
                    if (z10) {
                        archiveData.setArchiveLocalPath(string);
                        archiveData.setArchiveDesc("我的默认存档");
                        archiveData.setAddTime(getFileUpdateTimeMain(new File(string)) / ((long) 1000));
                        archiveData.setArchiveLocation(subPath);
                        archiveData.setPackageName(packageName);
                        archiveData.setGame_id(this.modGameArchivePathData.getGameId());
                        archiveData.setShowText("启动");
                        archiveData.setStatus(8);
                        archiveData.setId("0");
                        archiveData.setArchiveFileSuffix(this.modGameArchivePathData.getArchiveFileSuffix());
                        list.add(archiveData);
                    }
                } else {
                    Iterator it3 = ArrayIteratorKt.iterator(fileArrListFiles);
                    int i10 = 0;
                    while (it3.hasNext()) {
                        File file2 = (File) it3.next();
                        ModGameArchivePathData modGameArchivePathData2 = this.modGameArchivePathData;
                        Intrinsics.checkNotNull(file2);
                        if (checkArchiveHas(modGameArchivePathData2, file2)) {
                            i10++;
                            ArchiveData archiveData2 = new ArchiveData();
                            archiveData2.setArchiveLocalPath(file2.getAbsolutePath());
                            archiveData2.setArchiveDesc("我的默认存档" + i10);
                            long fileUpdateTimeMain = getFileUpdateTimeMain(file2);
                            String str3 = str2;
                            archiveData2.setAddTime(fileUpdateTimeMain / ((long) 1000));
                            archiveData2.setArchiveLocation(subPath);
                            archiveData2.setPackageName(packageName);
                            archiveData2.setGame_id(this.modGameArchivePathData.getGameId());
                            archiveData2.setShowText("启动");
                            archiveData2.setStatus(8);
                            archiveData2.setId(str3);
                            archiveData2.setUserId(0);
                            archiveData2.setArchiveFileSuffix(this.modGameArchivePathData.getArchiveFileSuffix());
                            list.add(archiveData2);
                            str2 = str3;
                        }
                    }
                }
            }
        }
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ List loadSingleGameSlot$default(CloudShareViewModle cloudShareViewModle, String str, String str2, String str3, List list, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            list = new ArrayList();
        }
        return cloudShareViewModle.loadSingleGameSlot(str, str2, str3, list);
    }

    public final boolean checkArchiveHas(@NotNull ModGameArchivePathData modGameArchivePathData, @NotNull File file) {
        Intrinsics.checkNotNullParameter(modGameArchivePathData, "modGameArchivePathData");
        Intrinsics.checkNotNullParameter(file, "file");
        String archiveFileSuffix = modGameArchivePathData.getArchiveFileSuffix();
        Intrinsics.checkNotNullExpressionValue(archiveFileSuffix, "getArchiveFileSuffix(...)");
        if (!(archiveFileSuffix.length() > 0)) {
            return true;
        }
        String archiveFileSuffix2 = modGameArchivePathData.getArchiveFileSuffix();
        Intrinsics.checkNotNullExpressionValue(archiveFileSuffix2, "getArchiveFileSuffix(...)");
        List<String> listSplit$default = StringsKt__StringsKt.split$default((CharSequence) archiveFileSuffix2, new String[]{","}, false, 0, 6, (Object) null);
        if (!(!listSplit$default.isEmpty())) {
            return true;
        }
        for (String str : listSplit$default) {
            if (Intrinsics.areEqual(str, file.getName())) {
                return true;
            }
            String name = file.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            if (StringsKt__StringsJVMKt.startsWith$default(name, str, false, 2, null)) {
                return true;
            }
            String name2 = file.getName();
            Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
            if (StringsKt__StringsJVMKt.endsWith$default(name2, str, false, 2, null)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final ArchiveData getArchiveData() {
        return this.archiveData;
    }

    public final void getDetialData(@NotNull String gameId, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        Intrinsics.checkNotNullParameter(context, "context");
        this.showDialog.setValue(Boolean.TRUE);
        kotlinx.coroutines.j.f(kotlinx.coroutines.o1.f93610b, kotlinx.coroutines.z0.c(), null, new AnonymousClass1(context, gameId, this, null), 2, null);
    }

    @NotNull
    public final SingleLiveEvent<CloudShareEvent> getEvent() {
        return this.event;
    }

    public final long getFileUpdateTimeMain(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        this.time = 0L;
        getFileUpdateTime(file);
        return this.time;
    }

    @NotNull
    public final List<GoldFingerBean> getGoldFingerBean() {
        return this.goldFingerBean;
    }

    public final boolean getInitFinish() {
        return this.initFinish;
    }

    public final boolean getInstallInExtPlug() {
        return this.installInExtPlug;
    }

    @NotNull
    public final ArchiveData getLastStartArchive() {
        return this.lastStartArchive;
    }

    @NotNull
    public final MutableLiveData<List<ArchiveData>> getLocalArchiveLists() {
        return this.localArchiveLists;
    }

    @NotNull
    public final ModGameArchivePathData getModGameArchivePathData() {
        return this.modGameArchivePathData;
    }

    @Nullable
    public final ExtBean getParentExtBean() {
        return this.parentExtBean;
    }

    @NotNull
    public final MutableLiveData<Long> getRunIngArchiveId() {
        return this.runIngArchiveId;
    }

    @NotNull
    public final MutableLiveData<Boolean> getShowDialog() {
        return this.showDialog;
    }

    @NotNull
    public final MutableLiveData<Integer> getShowDownlloadDialog() {
        return this.showDownlloadDialog;
    }

    public final long getTime() {
        return this.time;
    }

    @NotNull
    public final List<ArchiveData> loadLocalArchive(@NotNull Context context, @NotNull ModGameArchivePathData modGameArchivePathData) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(modGameArchivePathData, "modGameArchivePathData");
        ArrayList arrayList = new ArrayList();
        String mainArchiveLocalPath = modGameArchivePathData.getMainArchiveLocalPath();
        String modPackageName = modGameArchivePathData.getModPackageName();
        Intrinsics.checkNotNullExpressionValue(modPackageName, "getModPackageName(...)");
        Intrinsics.checkNotNull(mainArchiveLocalPath);
        loadLocalArchiveexcues(context, modPackageName, modGameArchivePathData, mainArchiveLocalPath, arrayList);
        String subArchiveLocalPath = modGameArchivePathData.getSubArchiveLocalPath();
        if (!(subArchiveLocalPath == null || subArchiveLocalPath.length() == 0)) {
            String modPackageName2 = modGameArchivePathData.getModPackageName();
            Intrinsics.checkNotNullExpressionValue(modPackageName2, "getModPackageName(...)");
            loadLocalArchiveexcues(context, modPackageName2, modGameArchivePathData, subArchiveLocalPath, arrayList);
        }
        return arrayList;
    }

    public final void loadLocalArchiveDatas(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.showDialog.setValue(Boolean.TRUE);
        kotlinx.coroutines.j.f(kotlinx.coroutines.o1.f93610b, kotlinx.coroutines.z0.c(), null, new C13331(context, null), 2, null);
    }

    public final void loadLocalExArchive(@NotNull ModGameArchivePathData modGameArchivePathData, @NotNull String archiveLocation, @NotNull Context context, @NotNull List<ArchiveData> archiveList) {
        Intrinsics.checkNotNullParameter(modGameArchivePathData, "modGameArchivePathData");
        Intrinsics.checkNotNullParameter(archiveLocation, "archiveLocation");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveList, "archiveList");
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse(com.join.mgps.va.overmind.i.f73262g.e()), new String[]{modGameArchivePathData.getModPackageName(), archiveLocation, modGameArchivePathData.getArchiveFileSuffix(), String.valueOf(modGameArchivePathData.getArchiveType())}, null, null, null);
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                while (cursorQuery.moveToNext()) {
                    try {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("pathUrL"));
                        String string2 = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("time"));
                        ArchiveData archiveData = new ArchiveData();
                        archiveData.setArchiveLocalPath(string);
                        archiveData.setArchiveDesc("我的默认存档");
                        Intrinsics.checkNotNull(string2);
                        archiveData.setAddTime(Long.parseLong(string2) / ((long) 1000));
                        archiveData.setArchiveLocation(archiveLocation);
                        archiveData.setPackageName(modGameArchivePathData.getModPackageName());
                        archiveData.setGame_id(modGameArchivePathData.getGameId());
                        archiveData.setShowText("启动");
                        archiveData.setStatus(8);
                        archiveData.setId("0");
                        archiveData.setUserId(0);
                        archiveList.add(archiveData);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public final void loadLocalExtArchiveMain(@NotNull ModGameArchivePathData modGameArchivePathData, @NotNull String mainArchiveLocalPath, @NotNull Context context, @NotNull List<ArchiveData> archiveList) {
        Intrinsics.checkNotNullParameter(modGameArchivePathData, "modGameArchivePathData");
        Intrinsics.checkNotNullParameter(mainArchiveLocalPath, "mainArchiveLocalPath");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(archiveList, "archiveList");
        if (StringsKt__StringsJVMKt.startsWith$default(mainArchiveLocalPath, "/data/data", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(mainArchiveLocalPath, "/Android/data", false, 2, null)) {
            loadLocalExArchive(modGameArchivePathData, mainArchiveLocalPath, context, archiveList);
            return;
        }
        String modPackageName = modGameArchivePathData.getModPackageName();
        Intrinsics.checkNotNullExpressionValue(modPackageName, "getModPackageName(...)");
        loadLocalArchiveexcues(context, modPackageName, modGameArchivePathData, mainArchiveLocalPath, archiveList);
    }

    public final void setArchiveData(@NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(archiveData, "<set-?>");
        this.archiveData = archiveData;
    }

    public final void setEvent(@NotNull SingleLiveEvent<CloudShareEvent> singleLiveEvent) {
        Intrinsics.checkNotNullParameter(singleLiveEvent, "<set-?>");
        this.event = singleLiveEvent;
    }

    public final void setGoldFingerBean(@NotNull List<GoldFingerBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.goldFingerBean = list;
    }

    public final void setInitFinish(boolean z10) {
        this.initFinish = z10;
    }

    public final void setInstallInExtPlug(boolean z10) {
        this.installInExtPlug = z10;
    }

    public final void setLastStartArchive(@NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(archiveData, "<set-?>");
        this.lastStartArchive = archiveData;
    }

    public final void setLocalArchiveLists(@NotNull MutableLiveData<List<ArchiveData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.localArchiveLists = mutableLiveData;
    }

    public final void setModGameArchivePathData(@NotNull ModGameArchivePathData modGameArchivePathData) {
        Intrinsics.checkNotNullParameter(modGameArchivePathData, "<set-?>");
        this.modGameArchivePathData = modGameArchivePathData;
    }

    public final void setParentExtBean(@Nullable ExtBean extBean) {
        this.parentExtBean = extBean;
    }

    public final void setRunIngArchiveId(@NotNull MutableLiveData<Long> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.runIngArchiveId = mutableLiveData;
    }

    public final void setShowDialog(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showDialog = mutableLiveData;
    }

    public final void setShowDownlloadDialog(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showDownlloadDialog = mutableLiveData;
    }

    public final void setTime(long j10) {
        this.time = j10;
    }
}
