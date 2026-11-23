package com.join.mgps.cloud.viewmodel;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.lifecycle.MutableLiveData;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.q;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.b0;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w0;
import com.join.mgps.cloud.bean.ConfigInfo;
import com.join.mgps.cloud.bean.HMMessage;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dto.DownloadGameArgsBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.mod.bean.ModMeta;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.join.mgps.va.overmind.i;
import com.papa91.common.BaseAppConfig;
import com.umeng.analytics.pro.bm;
import com.wufan.user.service.protobuf.UserInfo;
import com.xinzhu.overmind.shared.k;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
import t6.g;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension({"SMAP\nHMCloudRemoteViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudRemoteViewModel.kt\ncom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,422:1\n10#2:423\n1#3:424\n*S KotlinDebug\n*F\n+ 1 HMCloudRemoteViewModel.kt\ncom/join/mgps/cloud/viewmodel/HMCloudRemoteViewModel\n*L\n309#1:423\n*E\n"})
public final class HMCloudRemoteViewModel extends BaseViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<Context> f64194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.join.mgps.cloud.c f64195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f64196c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private final MutableLiveData<ConfigInfo> f64197d = new MutableLiveData<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final MutableLiveData<ArchiveData> f64198e = new MutableLiveData<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final MutableLiveData<ModGameArchivePathData> f64199f = new MutableLiveData<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private final MutableLiveData<Boolean> f64200g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private final MutableLiveData<Boolean> f64201h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    private final MutableLiveData<Integer> f64202i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NotNull
    private final MutableLiveData<List<ArchiveData>> f64203j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NotNull
    private final MutableLiveData<d> f64204k;

    public HMCloudRemoteViewModel() {
        Boolean bool = Boolean.FALSE;
        this.f64200g = new MutableLiveData<>(bool);
        this.f64201h = new MutableLiveData<>(bool);
        this.f64202i = new MutableLiveData<>(6);
        this.f64203j = new MutableLiveData<>();
        this.f64204k = new MutableLiveData<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        String strC = n6.a.f94478a.c();
        if (TextUtils.isEmpty(strC)) {
            return;
        }
        launchOnUI(new HMCloudRemoteViewModel$openGame$1(this, strC, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    public final void D(DownloadTask downloadTask) {
        boolean z10;
        WeakReference<Context> weakReference = this.f64194a;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
            weakReference = null;
        }
        Context context = weakReference.get();
        if (context == null) {
            return;
        }
        if (APKUtils.f34739a.H(downloadTask)) {
            ConfigInfo value = this.f64197d.getValue();
            if (value != null) {
                z10 = value.getModType() == 1;
            }
            if (z10) {
                UtilsMy.J4(context, downloadTask);
                return;
            }
        }
        ModMeta modMeta = new ModMeta();
        modMeta.setPackageName(downloadTask.getPackageName());
        modMeta.setModPath(downloadTask.getResource_path());
        ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class);
        if (modInfoBean != null) {
            modMeta.setModVersion(modInfoBean.getVer() + "");
            modMeta.setModCode(modInfoBean.getVer());
        }
        modMeta.setGameId(downloadTask.getCrc_link_type_val());
        modMeta.setModType(0);
        modMeta.setAndroidId(q.n(MApplication.f3182z).e(MApplication.f3182z));
        modMeta.setPlatform("wufun");
        modMeta.setPackage_type("wufun");
        modMeta.setTypeId(UtilsMy.g2(downloadTask));
        ConfigInfo value2 = this.f64197d.getValue();
        if (value2 != null) {
            modMeta.setGoldFingerSwitch(String.valueOf(value2.getGoldFingerSwitch()));
            modMeta.setIntroductionSwitch(String.valueOf(value2.getBbsStrategySwitch()));
            modMeta.setArchiveCloudSwitch(String.valueOf(value2.getArchiveCloudSwitch()));
        }
        try {
            i.f73262g.i(downloadTask.getPackageName(), downloadTask.getResource_path());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        i.f73262g.d().c0(context, modMeta, downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(String str) {
        try {
            h1.e("saveAccountInfo");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            WeakReference<Context> weakReference = this.f64194a;
            if (weakReference == null) {
                Intrinsics.throwUninitializedPropertyAccessException("context");
                weakReference = null;
            }
            Context context = weakReference.get();
            if (context == null) {
                return;
            }
            new PrefDef_(context).accountDataV3().g(str);
            h1.e("notify account changed");
            z();
            h1.e("sendMessage callback message");
            com.join.mgps.cloud.c cVar = this.f64195b;
            if (cVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
                cVar = null;
            }
            com.join.mgps.cloud.c.l(cVar, HMMessage.UserInfoReady.INSTANCE, false, 2, null);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(String str) {
        runUi(new HMCloudRemoteViewModel$toast$1(this, str, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(Function0<Unit> function0) {
        launchOnUI(new HMCloudRemoteViewModel$checkArchive$2(this, function0, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void l(HMCloudRemoteViewModel hMCloudRemoteViewModel, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function0 = new Function0() { // from class: com.join.mgps.cloud.viewmodel.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return HMCloudRemoteViewModel.m();
                }
            };
        }
        hMCloudRemoteViewModel.k(function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m() {
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void o(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        DownloadGameArgsBean downloadGameArgsBean = new DownloadGameArgsBean();
        downloadGameArgsBean.setGameId(crc_link_type_val);
        downloadGameArgsBean.setFrom(downloadTask.get_from());
        downloadGameArgsBean.setFromType(downloadTask.get_from_type());
        downloadGameArgsBean.setFromRecommend(downloadTask.isFromRecomDown());
        downloadGameArgsBean.setKeyWord(downloadTask.getKeyword());
        downloadGameArgsBean.setExt(downloadTask.getExt());
        downloadGameArgsBean.setExt1(downloadTask.getExt1());
        WeakReference<Context> weakReference = this.f64194a;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
            weakReference = null;
        }
        ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(weakReference.get()).extra("requestAndUpdateGameById", crc_link_type_val)).extra("_downloadArgs", downloadGameArgsBean)).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ArchiveData q(String str) {
        for (CloudArchiveTable cloudArchiveTable : g.t().q(n6.a.f94478a.c())) {
            String archiveDataJson = cloudArchiveTable.getArchiveDataJson();
            Intrinsics.checkNotNullExpressionValue(archiveDataJson, "getArchiveDataJson(...)");
            ArchiveData archiveData = (ArchiveData) JsonMapper.getInstance().fromJson(archiveDataJson, ArchiveData.class);
            if (archiveData != null) {
                archiveData.setUserId(cloudArchiveTable.getUserId());
                archiveData.setArchiveLocalZipPath(cloudArchiveTable.getArchiveZipPath());
                archiveData.setArchiveLocalPath(cloudArchiveTable.getArchiveFiles());
                archiveData.setMainArchiveLocalPath(cloudArchiveTable.getArchiveFolder());
                archiveData.setMainArchiveLocalPath2(cloudArchiveTable.getMainArchiveLocalPath2());
                archiveData.setId(cloudArchiveTable.getArchiveId());
                archiveData.setIsFirstRun(cloudArchiveTable.getIsFirstRun());
                if (Intrinsics.areEqual(archiveData.getId(), str)) {
                    return archiveData;
                }
            }
        }
        return null;
    }

    private final void z() {
        int i10;
        try {
            WeakReference<Context> weakReference = this.f64194a;
            if (weakReference == null) {
                Intrinsics.throwUninitializedPropertyAccessException("context");
                weakReference = null;
            }
            Context context = weakReference.get();
            if (context == null) {
                return;
            }
            Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
            UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
            if (accountData != null) {
                intent.putExtra("uid", accountData.getUid() + "");
                intent.putExtra(Constants.TOKEN, accountData.getToken());
                if (t2.i(accountData.getSecretKey())) {
                    try {
                        String strVl = com.join.mgps.Util.b.vl(com.join.mgps.Util.a.b(new JSONObject(com.join.mgps.Util.a.b(accountData.getSecretKey())).optString(bm.aM)));
                        Intrinsics.checkNotNullExpressionValue(strVl, "vl(...)");
                        i10 = Integer.parseInt(strVl);
                    } catch (Exception unused) {
                        i10 = 0;
                    }
                } else {
                    i10 = 0;
                }
                intent.putExtra(BaseAppConfig.KEY_VIP_LEVEL, i10);
                intent.putExtra(BaseAppConfig.KEY_SVIP_LEVEL, accountData.getSVIPLevel());
                intent.putExtra("vip_expire_time", accountData.getVipExpTime());
            }
            intent.putExtra("sp", UtilsMy.e2(context));
            intent.putExtra("cheat", UtilsMy.M1(context));
            context.sendBroadcast(intent);
            intent.setAction(context.getPackageName() + ".broadcast.action_raise_vip_success");
            context.sendBroadcast(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void A(@NotNull HMMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        launchOnUI(new HMCloudRemoteViewModel$onReceiveMessage$1(message, this, null));
    }

    public final void C(@NotNull Context context, @NotNull HMMessage hmMessage) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(hmMessage, "hmMessage");
        String action = hmMessage.getAction();
        if (!Intrinsics.areEqual(action, HMMessage.ACTION_TEST_CONFIG) && Intrinsics.areEqual(action, HMMessage.ACTION_UPLOAD_CLOUD_ARCHIVE)) {
            HMMessage.UploadCloudArchive uploadCloudArchive = (HMMessage.UploadCloudArchive) hmMessage;
            String gameId = uploadCloudArchive.getGameId();
            String imagePath = uploadCloudArchive.getImagePath();
            if (TextUtils.isEmpty(imagePath)) {
                imagePath = "";
            }
            if (TextUtils.isEmpty(gameId) && w0.n()) {
                gameId = n6.a.f94478a.c();
            }
            if (TextUtils.isEmpty(gameId)) {
                return;
            }
            Activity activity = k.f90034b.b().get();
            if (activity != null) {
                context = activity;
            }
            IntentUtil.getInstance().goModUploadArchiveActivity(context, gameId, imagePath);
        }
    }

    public final void F() {
        String strC = n6.a.f94478a.c();
        if (TextUtils.isEmpty(strC)) {
            return;
        }
        launchOnUI(new HMCloudRemoteViewModel$startGame$1(strC, this, null));
    }

    @NotNull
    public final MutableLiveData<Integer> getOrientation() {
        return this.f64202i;
    }

    public final void n() {
        if (this.f64196c) {
            com.join.mgps.cloud.c cVar = this.f64195b;
            if (cVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageManager");
                cVar = null;
            }
            cVar.q();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void p(@NotNull String id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        if (TextUtils.isEmpty(id2)) {
            return;
        }
        WeakReference<Context> weakReference = this.f64194a;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
            weakReference = null;
        }
        Context context = weakReference.get();
        if (context == null) {
            return;
        }
        ((CommonService_.n0) CommonService_.P2(context).extra("downGameId", id2)).a();
    }

    @NotNull
    public final MutableLiveData<Boolean> r() {
        return this.f64201h;
    }

    @NotNull
    public final MutableLiveData<ArchiveData> s() {
        return this.f64198e;
    }

    @NotNull
    public final MutableLiveData<ModGameArchivePathData> t() {
        return this.f64199f;
    }

    @NotNull
    public final MutableLiveData<ConfigInfo> u() {
        return this.f64197d;
    }

    @NotNull
    public final MutableLiveData<Boolean> v() {
        return this.f64200g;
    }

    @NotNull
    public final MutableLiveData<List<ArchiveData>> w() {
        return this.f64203j;
    }

    @NotNull
    public final MutableLiveData<d> x() {
        return this.f64204k;
    }

    public final void y(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f64194a = new WeakReference<>(context.getApplicationContext());
        this.f64195b = new com.join.mgps.cloud.c(context);
        boolean z10 = true;
        this.f64196c = true;
        n6.a aVar = n6.a.f94478a;
        aVar.h(true);
        String strA = b0.f49500a.a(context, "game_id");
        if (strA != null && strA.length() != 0) {
            z10 = false;
        }
        if (!z10 && !Intrinsics.areEqual(aVar.c(), strA)) {
            aVar.g(strA);
        }
        launchOnUI(new HMCloudRemoteViewModel$init$1(this, null));
    }
}
