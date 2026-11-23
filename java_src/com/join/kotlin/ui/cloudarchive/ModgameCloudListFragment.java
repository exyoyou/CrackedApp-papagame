package com.join.kotlin.ui.cloudarchive;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.bt0;
import com.join.kotlin.domain.common.LiveDataExtensionKt;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.domain.ext.EXTKt;
import com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.data.ModDataRequest;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener;
import com.join.kotlin.ui.cloudarchive.dialog.CommentArchiveDialog;
import com.join.kotlin.ui.cloudarchive.dialog.DelArchiveDialog;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
import com.join.kotlin.ui.cloudarchive.dialog.DownloadArchiveDialog;
import com.join.kotlin.ui.cloudarchive.dialog.ImageShowDialog;
import com.join.kotlin.ui.cloudarchive.dialog.RedownArchiveDialog;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dto.ArchiveDataAddPd;
import com.join.mgps.dto.CloudArchiveCfg;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GoldFingerBean;
import com.join.mgps.dto.ModGameArchiveTagBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.hmcloud.HMCloudGameManager;
import com.join.mgps.pref.PrefDef_;
import com.kongzue.dialogx.dialogs.CustomDialog;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.ext.ToastManager;
import com.papa91.wrapper.UserPrefs;
import com.psk.kotlin.util.CommonListMainData;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u001d\u001a\u00020\u001eH\u0002J&\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\b\u0010'\u001a\u00020\u001eH\u0016J\u0006\u0010C\u001a\u00020\u001eJ\u0006\u0010L\u001a\u00020\u001eJ\u0012\u0010M\u001a\u00020\u001e2\b\u0010N\u001a\u0004\u0018\u00010OH\u0002J\b\u0010P\u001a\u00020\u001eH\u0016J\u0010\u0010Q\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020OH\u0016J\u000e\u0010R\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020OJ\u0018\u0010S\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020O2\b\u0010T\u001a\u0004\u0018\u00010UJ\b\u0010V\u001a\u00020\u001eH\u0016J\u0018\u0010\\\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020O2\u0006\u0010]\u001a\u000205H\u0002J\u0006\u0010|\u001a\u00020dJ\u001a\u0010\u0082\u0001\u001a\u00020\u001e2\u0007\u0010\u0083\u0001\u001a\u00020 2\u0006\u0010N\u001a\u00020OH\u0016J\u0011\u0010\u0084\u0001\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020OH\u0016J\u0011\u0010\u0085\u0001\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020OH\u0016J\u0014\u0010\u008b\u0001\u001a\u00020\u001e2\t\u0010\u008c\u0001\u001a\u0004\u0018\u00010>H\u0016J\u0015\u0010\u008d\u0001\u001a\u00020\u001e2\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008f\u0001H\u0016J\u0014\u0010\u0098\u0001\u001a\u00020\u001e2\t\u0010\u0099\u0001\u001a\u0004\u0018\u00010 H\u0016J\u0013\u0010\u009a\u0001\u001a\u00020\u001e2\b\u0010\u009b\u0001\u001a\u00030\u009c\u0001H\u0007J\t\u0010\u009d\u0001\u001a\u00020\u001eH\u0016J\t\u0010\u009e\u0001\u001a\u00020\u001eH\u0016J\u0007\u0010\u009f\u0001\u001a\u00020\u001eR\u001b\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\f\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001a\u00104\u001a\u000205X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001a\u0010:\u001a\u000205X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00107\"\u0004\b<\u00109R\u001a\u0010=\u001a\u00020>X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u001a\u0010D\u001a\u00020EX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010F\"\u0004\bG\u0010HR\u001a\u0010I\u001a\u00020EX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010F\"\u0004\bK\u0010HR\u001b\u0010W\u001a\u00020X8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b[\u0010\f\u001a\u0004\bY\u0010ZR\u001b\u0010^\u001a\u00020_8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bb\u0010\f\u001a\u0004\b`\u0010aR\u001b\u0010c\u001a\u00020d8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bg\u0010\f\u001a\u0004\be\u0010fR\u001a\u0010h\u001a\u00020iX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\u001a\u0010n\u001a\u00020iX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bo\u0010k\"\u0004\bp\u0010mR\u001a\u0010q\u001a\u00020 X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\br\u0010s\"\u0004\bt\u0010uR\u001a\u0010v\u001a\u00020 X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bw\u0010s\"\u0004\bx\u0010uR\u001a\u0010y\u001a\u00020 X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bz\u0010s\"\u0004\b{\u0010uR\u001c\u0010}\u001a\u00020OX\u0086.¢\u0006\u0010\n\u0000\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R \u0010\u0086\u0001\u001a\u00030\u0087\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u008a\u0001\u0010\f\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001e\u0010\u0090\u0001\u001a\u00020X8FX\u0086\u0084\u0002¢\u0006\u000e\n\u0005\b\u0092\u0001\u0010\f\u001a\u0005\b\u0091\u0001\u0010ZR \u0010\u0093\u0001\u001a\u00030\u0094\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u0097\u0001\u0010\f\u001a\u0006\b\u0095\u0001\u0010\u0096\u0001¨\u0006 \u0001"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;", "Landroid/view/View$OnClickListener;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "<init>", "()V", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "viewModleShareViewModle", "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "getViewModleShareViewModle", "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleShareViewModle$delegate", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/RecyclerviewLayoutDatabindingBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/RecyclerviewLayoutDatabindingBinding;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/RecyclerviewLayoutDatabindingBinding;)V", "adapterx", "Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;", "getAdapterx", "()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;", "adapterx$delegate", "updateLocaDataToShow", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "modgameBean", "Lcom/join/mgps/dto/ModGameDetailBean;", "getModgameBean", "()Lcom/join/mgps/dto/ModGameDetailBean;", "setModgameBean", "(Lcom/join/mgps/dto/ModGameDetailBean;)V", "archiveTag", "Lcom/join/mgps/dto/ModGameArchiveTagBean;", "getArchiveTag", "()Lcom/join/mgps/dto/ModGameArchiveTagBean;", "setArchiveTag", "(Lcom/join/mgps/dto/ModGameArchiveTagBean;)V", "page", "", "getPage", "()I", "setPage", "(I)V", "type", "getType", "setType", "gameId", "", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "initData", "isLogin", "", "()Z", "setLogin", "(Z)V", "isfirst", "getIsfirst", "setIsfirst", "loadData", "startGame", "archive", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "onResume", "onClickRun", "realLaunchGame", "onClickRunGame", "downloadTask", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "uploadCloud", "checkDownloadTypeDialog", "Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "getCheckDownloadTypeDialog", "()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "checkDownloadTypeDialog$delegate", "showDownloadDialog", PlugDownDialogAcitivity_.DOWNLOAD_TYPE_EXTRA, "dialog", "Landroid/app/Dialog;", "getDialog", "()Landroid/app/Dialog;", "dialog$delegate", "popWindow", "Landroid/widget/PopupWindow;", "getPopWindow", "()Landroid/widget/PopupWindow;", "popWindow$delegate", "deleteCloud", "Landroid/widget/TextView;", "getDeleteCloud", "()Landroid/widget/TextView;", "setDeleteCloud", "(Landroid/widget/TextView;)V", "reDownload", "getReDownload", "setReDownload", "trangleBottom", "getTrangleBottom", "()Landroid/view/View;", "setTrangleBottom", "(Landroid/view/View;)V", "trangleTop", "getTrangleTop", "setTrangleTop", "main", "getMain", "setMain", "createPopwindow", "archiveDataPop", "getArchiveDataPop", "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "setArchiveDataPop", "(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V", "onClickMore", "view", "onPraise", "onClickDislike", "imageDialog", "Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "getImageDialog", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "imageDialog$delegate", "onClickImage", "imagePath", "onClickDomain", "domainInfoBean", "Lcom/join/mgps/dto/DomainInfoBean;", "delFragment", "getDelFragment", "delFragment$delegate", "redownFragment", "Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "getRedownFragment", "()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "redownFragment$delegate", "onClick", "v", "onRecivedDownLoadEVent", "archiveDownEvent", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;", "onClickReload", "onClickSetNetWork", "scrollToTop", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nModgameCloudListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModgameCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1339:1\n1#2:1340\n774#3:1341\n865#3,2:1342\n1563#3:1344\n1634#3,3:1345\n774#3:1348\n865#3,2:1349\n1563#3:1351\n1634#3,3:1352\n774#3:1355\n865#3,2:1356\n1563#3:1358\n1634#3,3:1359\n*S KotlinDebug\n*F\n+ 1 ModgameCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment\n*L\n142#1:1341\n142#1:1342,2\n143#1:1344\n143#1:1345,3\n437#1:1348\n437#1:1349,2\n438#1:1351\n438#1:1352,3\n450#1:1355\n450#1:1356,2\n450#1:1358\n450#1:1359,3\n*E\n"})
public final class ModgameCloudListFragment extends Fragment implements OnClickArchiveListener, View.OnClickListener, LoadBindClickProxy {
    public ArchiveData archiveDataPop;

    @Nullable
    private ModGameArchiveTagBean archiveTag;
    public bt0 dataBinding;
    public TextView deleteCloud;
    private boolean isLogin;
    public View main;

    @Nullable
    private ModGameDetailBean modgameBean;
    public TextView reDownload;
    public View trangleBottom;
    public View trangleTop;

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.y0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModgameCloudListFragment.viewModle_delegate$lambda$0(this.f49061b);
        }
    });

    /* JADX INFO: renamed from: viewModleShareViewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModleShareViewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.j1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModgameCloudListFragment.viewModleShareViewModle_delegate$lambda$1(this.f49005b);
        }
    });

    /* JADX INFO: renamed from: adapterx$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy adapterx = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.m1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModgameCloudListFragment.adapterx_delegate$lambda$2(this.f49014b);
        }
    });
    private int page = 1;
    private int type = 1;

    @NotNull
    private String gameId = "";
    private boolean isfirst = true;

    /* JADX INFO: renamed from: checkDownloadTypeDialog$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy checkDownloadTypeDialog = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.n1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModgameCloudListFragment.checkDownloadTypeDialog_delegate$lambda$31();
        }
    });

    /* JADX INFO: renamed from: dialog$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy dialog = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.o1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModgameCloudListFragment.dialog_delegate$lambda$32(this.f49020b);
        }
    });

    /* JADX INFO: renamed from: popWindow$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy popWindow = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.p1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return this.f49022b.createPopwindow();
        }
    });

    /* JADX INFO: renamed from: imageDialog$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy imageDialog = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.q1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModgameCloudListFragment.imageDialog_delegate$lambda$36();
        }
    });

    /* JADX INFO: renamed from: delFragment$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy delFragment = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.r1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModgameCloudListFragment.delFragment_delegate$lambda$37();
        }
    });

    /* JADX INFO: renamed from: redownFragment$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy redownFragment = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.s1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModgameCloudListFragment.redownFragment_delegate$lambda$38();
        }
    });

    /* JADX INFO: renamed from: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$onClickRun$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"com/join/kotlin/ui/cloudarchive/ModgameCloudListFragment$onClickRun$1", "Lcom/kongzue/dialogx/interfaces/OnBindView;", "Lcom/kongzue/dialogx/dialogs/CustomDialog;", "onBind", "", "dialog", "v", "Landroid/view/View;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class C13411 extends com.kongzue.dialogx.interfaces.r<CustomDialog> {
        final /* synthetic */ ArchiveData $archive;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13411(ArchiveData archiveData) {
            super(R.layout.dialog_cloud_game_launch_type);
            this.$archive = archiveData;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBind$lambda$0(Ref.BooleanRef booleanRef, ImageView imageView, DownloadTask downloadTask, TextView textView, TextView textView2, Ref.BooleanRef booleanRef2, ImageView imageView2, View view) {
            boolean z10 = !booleanRef.element;
            booleanRef.element = z10;
            if (z10) {
                imageView.setImageResource(R.drawable.ic_chk_simulator_h);
                if (downloadTask == null) {
                    textView.setVisibility(0);
                    textView2.setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView2.setVisibility(8);
                }
            } else {
                imageView.setImageResource(R.drawable.ic_chk_simulator_n);
                textView.setVisibility(8);
                textView2.setVisibility(8);
            }
            if (booleanRef2.element) {
                booleanRef2.element = false;
                imageView2.setImageResource(R.drawable.ic_chk_simulator_n);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBind$lambda$1(Ref.BooleanRef booleanRef, ImageView imageView, Ref.BooleanRef booleanRef2, ImageView imageView2, TextView textView, TextView textView2, View view) {
            boolean z10 = !booleanRef.element;
            booleanRef.element = z10;
            if (z10) {
                imageView.setImageResource(R.drawable.ic_chk_simulator_h);
            } else {
                imageView.setImageResource(R.drawable.ic_chk_simulator_n);
            }
            if (booleanRef2.element) {
                booleanRef2.element = false;
                imageView2.setImageResource(R.drawable.ic_chk_simulator_n);
                textView.setVisibility(8);
                textView2.setVisibility(8);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBind$lambda$2(Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, CustomDialog customDialog, ModgameCloudListFragment modgameCloudListFragment, ArchiveData archiveData, UserPrefs userPrefs, View view) {
            GamedetialModleFourBean mod_game_info;
            GamedetialModleFourBean mod_game_info2;
            ModInfoBean mod_info;
            GamedetialModleFourBean mod_game_info3;
            GamedetialModleFourBean mod_game_info4;
            ModInfoBean mod_info2;
            if (!booleanRef.element && !booleanRef2.element) {
                ToastManager.show("请选择要启动的游戏模式");
                return;
            }
            if (customDialog != null) {
                customDialog.E1();
            }
            if (booleanRef.element) {
                modgameCloudListFragment.realLaunchGame(archiveData);
                ModGameDetailBean modgameBean = modgameCloudListFragment.getModgameBean();
                Intrinsics.checkNotNull(modgameBean);
                userPrefs.setLastLaunchGamesMode(modgameBean.getMod_game_info().getPackageName(), 1);
                return;
            }
            ModGameDetailBean modgameBean2 = modgameCloudListFragment.getModgameBean();
            String main_game_id = null;
            String mod_game_id = (modgameBean2 == null || (mod_game_info4 = modgameBean2.getMod_game_info()) == null || (mod_info2 = mod_game_info4.getMod_info()) == null) ? null : mod_info2.getMod_game_id();
            if (q5.f.M().L(mod_game_id) == null) {
                ModGameDetailBean modgameBean3 = modgameCloudListFragment.getModgameBean();
                DownloadTask downloadtaskDown = (modgameBean3 == null || (mod_game_info3 = modgameBean3.getMod_game_info()) == null) ? null : mod_game_info3.getDownloadtaskDown();
                downloadtaskDown.setCrc_link_type_val("cld_" + mod_game_id);
                ModGameDetailBean modgameBean4 = modgameCloudListFragment.getModgameBean();
                if (modgameBean4 != null && (mod_game_info2 = modgameBean4.getMod_game_info()) != null && (mod_info = mod_game_info2.getMod_info()) != null) {
                    main_game_id = mod_info.getMain_game_id();
                }
                downloadtaskDown.setRef_crc_sign_id(main_game_id);
                downloadtaskDown.setFileType("CLOUD");
                downloadtaskDown.setRomType("CLOUD");
                downloadtaskDown.setStatus(5);
                q5.f.M().m(downloadtaskDown);
                org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadtaskDown, 5));
            }
            ModGameDetailBean modgameBean5 = modgameCloudListFragment.getModgameBean();
            int bbs_strategy_switch = (modgameBean5 == null || (mod_game_info = modgameBean5.getMod_game_info()) == null) ? 0 : mod_game_info.getBbs_strategy_switch();
            List<GoldFingerBean> goldFingerBean = modgameCloudListFragment.getViewModleShareViewModle().getGoldFingerBean();
            int i10 = 1 ^ ((goldFingerBean == null || goldFingerBean.isEmpty()) ? 1 : 0);
            HMCloudGameManager.f fVar = new HMCloudGameManager.f(mod_game_id);
            fVar.f71681c = i10;
            fVar.f71682d = bbs_strategy_switch;
            fVar.f71685g = archiveData;
            fVar.f71686h = modgameCloudListFragment.getViewModleShareViewModle().getModGameArchivePathData();
            com.join.mgps.Util.w0.h().q(modgameCloudListFragment.getContext(), fVar, modgameCloudListFragment.getViewModleShareViewModle().getParentExtBean());
            ModGameDetailBean modgameBean6 = modgameCloudListFragment.getModgameBean();
            Intrinsics.checkNotNull(modgameBean6);
            userPrefs.setLastLaunchGamesMode(modgameBean6.getMod_game_info().getPackageName(), 2);
            ExtBean extBean = new ExtBean();
            extBean.setParent(modgameCloudListFragment.getViewModleShareViewModle().getParentExtBean());
            extBean.setTypeCode("cloudGame").setChatId("gameStartPage").setGameId(modgameCloudListFragment.getGameId()).setReMarks("startByArchive").setResourceId(modgameCloudListFragment.getGameId()).setScenesCode(archiveData.getArchiveDesc()).buildScene();
            com.papa.sim.statistic.t.l(modgameCloudListFragment.getContext()).R1(Event.gameStart, extBean.toExt());
        }

        @Override // com.kongzue.dialogx.interfaces.r
        public void onBind(final CustomDialog dialog, View v10) {
            GamedetialModleFourBean mod_game_info;
            ModInfoBean mod_info;
            Intrinsics.checkNotNullParameter(v10, "v");
            View viewFindViewById = v10.findViewById(R.id.tv_btn_1);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
            TextView textView = (TextView) viewFindViewById;
            View viewFindViewById2 = v10.findViewById(R.id.tv_btn_2);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
            final TextView textView2 = (TextView) viewFindViewById2;
            View viewFindViewById3 = v10.findViewById(R.id.tv_label_1);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
            View viewFindViewById4 = v10.findViewById(R.id.tv_label_4);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(...)");
            final TextView textView3 = (TextView) viewFindViewById4;
            View viewFindViewById5 = v10.findViewById(R.id.tv_label_2);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById5, "findViewById(...)");
            View viewFindViewById6 = v10.findViewById(R.id.tv_label_3);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById6, "findViewById(...)");
            View viewFindViewById7 = v10.findViewById(R.id.iv_rbt_1);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById7, "findViewById(...)");
            final ImageView imageView = (ImageView) viewFindViewById7;
            View viewFindViewById8 = v10.findViewById(R.id.iv_rbt_2);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById8, "findViewById(...)");
            final ImageView imageView2 = (ImageView) viewFindViewById8;
            View viewFindViewById9 = v10.findViewById(R.id.tv_label_5);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById9, "findViewById(...)");
            TextView textView4 = (TextView) viewFindViewById9;
            View viewFindViewById10 = v10.findViewById(R.id.tv_label_6);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById10, "findViewById(...)");
            TextView textView5 = (TextView) viewFindViewById10;
            View viewFindViewById11 = v10.findViewById(R.id.v_chk_1);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById11, "findViewById(...)");
            View viewFindViewById12 = v10.findViewById(R.id.v_chk_2);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById12, "findViewById(...)");
            q5.f fVarM = q5.f.M();
            ModGameDetailBean modgameBean = ModgameCloudListFragment.this.getModgameBean();
            final DownloadTask downloadTaskG = fVarM.G((modgameBean == null || (mod_game_info = modgameBean.getMod_game_info()) == null || (mod_info = mod_game_info.getMod_info()) == null) ? null : mod_info.getMod_game_id());
            final UserPrefs userPrefs = new UserPrefs(ModgameCloudListFragment.this.getContext());
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            ModGameDetailBean modgameBean2 = ModgameCloudListFragment.this.getModgameBean();
            Intrinsics.checkNotNull(modgameBean2);
            int lastLaunchGamesMode = userPrefs.getLastLaunchGamesMode(modgameBean2.getMod_game_info().getPackageName());
            if (lastLaunchGamesMode == 1) {
                textView4.setVisibility(0);
            } else if (lastLaunchGamesMode == 2) {
                textView5.setVisibility(0);
            }
            viewFindViewById11.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.u1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModgameCloudListFragment.C13411.onBind$lambda$0(booleanRef, imageView, downloadTaskG, textView3, textView2, booleanRef2, imageView2, view);
                }
            });
            viewFindViewById12.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.v1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModgameCloudListFragment.C13411.onBind$lambda$1(booleanRef2, imageView2, booleanRef, imageView, textView3, textView2, view);
                }
            });
            final ModgameCloudListFragment modgameCloudListFragment = ModgameCloudListFragment.this;
            final ArchiveData archiveData = this.$archive;
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.w1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModgameCloudListFragment.C13411.onBind$lambda$2(booleanRef, booleanRef2, dialog, modgameCloudListFragment, archiveData, userPrefs, view);
                }
            });
            final ModgameCloudListFragment modgameCloudListFragment2 = ModgameCloudListFragment.this;
            final ArchiveData archiveData2 = this.$archive;
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.x1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    modgameCloudListFragment2.realLaunchGame(archiveData2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ModArchiveAdapter adapterx_delegate$lambda$2(ModgameCloudListFragment modgameCloudListFragment) {
        Context contextRequireContext = modgameCloudListFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        ModGameArchiveTagBean modGameArchiveTagBean = modgameCloudListFragment.archiveTag;
        boolean z10 = true;
        if (!(modGameArchiveTagBean != null && modGameArchiveTagBean.getType() == 2)) {
            ModGameArchiveTagBean modGameArchiveTagBean2 = modgameCloudListFragment.archiveTag;
            if (!Intrinsics.areEqual(modGameArchiveTagBean2 != null ? modGameArchiveTagBean2.getName() : null, "精选")) {
                z10 = false;
            }
        }
        return new ModArchiveAdapter(contextRequireContext, modgameCloudListFragment, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DelArchiveDialog checkDownloadTypeDialog_delegate$lambda$31() {
        return new DelArchiveDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DelArchiveDialog delFragment_delegate$lambda$37() {
        return new DelArchiveDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.join.mgps.dialog.f1 dialog_delegate$lambda$32(ModgameCloudListFragment modgameCloudListFragment) {
        return com.join.mgps.Util.h0.h0(modgameCloudListFragment.getContext()).y(modgameCloudListFragment.getContext(), "存档拷贝中");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageShowDialog imageDialog_delegate$lambda$36() {
        return new ImageShowDialog(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$10(ModgameCloudListFragment modgameCloudListFragment, ResponseModel responseModel) {
        GamedetialModleFourBean main_game_info;
        GamedetialModleFourBean main_game_info2;
        boolean z10 = false;
        if (responseModel == null || responseModel.getCode() != 200) {
            List<CommonListMainData> value = modgameCloudListFragment.getViewModle().getListArchive().getValue();
            if (!(value != null && value.size() == 0)) {
                modgameCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
                return Unit.INSTANCE;
            }
            if (responseModel != null && (responseModel.getPage() == 1 || responseModel.getPage() == 0)) {
                List<CommonListMainData> value2 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                if (value2 != null) {
                    value2.clear();
                }
                modgameCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
            List<CommonListMainData> value3 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
            if (value3 != null && value3.size() == 0) {
                z10 = true;
            }
            if (z10) {
                modgameCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(3));
            }
        } else {
            modgameCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
            ArchiveDataAddPd archiveDataAddPd = (ArchiveDataAddPd) responseModel.getData();
            List<ArchiveData> cloud_archives = archiveDataAddPd != null ? archiveDataAddPd.getCloud_archives() : null;
            ArchiveDataAddPd archiveDataAddPd2 = (ArchiveDataAddPd) responseModel.getData();
            DomainInfoBean pd_info = archiveDataAddPd2 != null ? archiveDataAddPd2.getPd_info() : null;
            if (responseModel.getPage() == 1) {
                List<CommonListMainData> value4 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                if (value4 != null) {
                    value4.clear();
                }
                modgameCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
            if (cloud_archives == null || cloud_archives.isEmpty()) {
                List<CommonListMainData> value5 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                if (value5 != null && value5.size() == 0) {
                    z10 = true;
                }
                if (z10) {
                    modgameCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(4));
                }
                modgameCloudListFragment.getDataBinding().f36573b.setNoMore();
            } else {
                List<ArchiveData> value6 = modgameCloudListFragment.getViewModle().getLocalAllArchive().getValue();
                if (modgameCloudListFragment.page == 1 && pd_info != null) {
                    List<CommonListMainData> value7 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                    if (value7 != null) {
                        value7.add(new CommonListMainData(6, pd_info, null, null, 12, null));
                    }
                    com.papa.sim.statistic.t.l(modgameCloudListFragment.getContext()).R1(Event.pdSingleArchiveDetails, new Ext().setGameId(modgameCloudListFragment.gameId).setIsJoin(pd_info.getIs_join()).setTestAbNumber(pd_info.getAb_test_number()));
                }
                modgameCloudListFragment.page++;
                modgameCloudListFragment.getDataBinding().f36573b.loadMoreComplete();
                for (ArchiveData archiveData : cloud_archives) {
                    archiveData.setShowType(modgameCloudListFragment.type);
                    archiveData.setGame_id(modgameCloudListFragment.gameId);
                    archiveData.setIsDownloadArchive(0);
                    if (value6 != null && (!value6.isEmpty())) {
                        for (ArchiveData archiveData2 : value6) {
                            if (Intrinsics.areEqual(archiveData2.getId(), archiveData.getId())) {
                                archiveData.setUserId(archiveData2.getUserId());
                                archiveData.setArchiveLocalZipPath(archiveData2.getArchiveLocalZipPath());
                                archiveData.setIsDownloadArchive(1);
                                archiveData.setPackageName(archiveData2.getPackageName());
                                archiveData.setIsFirstRun(archiveData2.getIsFirstRun());
                                archiveData.setMainArchiveLocalPath(archiveData2.getMainArchiveLocalPath());
                                archiveData.setMainArchiveLocalPath2(archiveData2.getMainArchiveLocalPath2());
                                archiveData.setArchiveLocalPath(archiveData2.getArchiveLocalPath());
                                Long value8 = modgameCloudListFragment.getViewModleShareViewModle().getRunIngArchiveId().getValue();
                                archiveData.setRuningArchiveId(value8 != null ? value8.longValue() : 0L);
                                archiveData.setShowText("启动");
                                archiveData.setStatus(8);
                            }
                        }
                    }
                    int i10 = modgameCloudListFragment.type;
                    if (i10 == 1 || i10 == 2) {
                        ModGameDetailBean modGameDetailBean = modgameCloudListFragment.modgameBean;
                        if ((modGameDetailBean == null || (main_game_info = modGameDetailBean.getMain_game_info()) == null || !main_game_info.isCloudGame()) ? false : true) {
                            archiveData.setShowText("启动");
                        }
                        List<CommonListMainData> value9 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                        if (value9 != null) {
                            Intrinsics.checkNotNull(archiveData);
                            value9.add(new CommonListMainData(3, archiveData, null, null, 12, null));
                        }
                    } else {
                        ModGameDetailBean modGameDetailBean2 = modgameCloudListFragment.modgameBean;
                        if ((modGameDetailBean2 == null || (main_game_info2 = modGameDetailBean2.getMain_game_info()) == null || !main_game_info2.isCloudGame()) ? false : true) {
                            archiveData.setShowText("启动");
                        }
                        List<CommonListMainData> value10 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                        if (value10 != null) {
                            Intrinsics.checkNotNull(archiveData);
                            value10.add(new CommonListMainData(4, archiveData, null, null, 12, null));
                        }
                    }
                }
                modgameCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$12(ModgameCloudListFragment modgameCloudListFragment, ResponseModel responseModel) {
        GamedetialModleFourBean main_game_info;
        GamedetialModleFourBean main_game_info2;
        boolean z10 = false;
        if (responseModel == null || responseModel.getCode() != 200) {
            List<CommonListMainData> value = modgameCloudListFragment.getViewModle().getListArchive().getValue();
            if (!(value != null && value.size() == 0)) {
                modgameCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
                return Unit.INSTANCE;
            }
            if (responseModel != null && (responseModel.getPage() == 1 || responseModel.getPage() == 0)) {
                List<CommonListMainData> value2 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                if (value2 != null) {
                    value2.clear();
                }
                modgameCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
            List<CommonListMainData> value3 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
            if (value3 != null && value3.size() == 0) {
                z10 = true;
            }
            if (z10) {
                modgameCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(3));
            }
        } else {
            modgameCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
            List<ArchiveData> list = (List) responseModel.getData();
            if (responseModel.getPage() == 1) {
                List<CommonListMainData> value4 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                if (value4 != null) {
                    value4.clear();
                }
                modgameCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
            if (list == null || list.isEmpty()) {
                List<CommonListMainData> value5 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                if (value5 != null && value5.size() == 0) {
                    z10 = true;
                }
                if (z10) {
                    modgameCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(4));
                }
                modgameCloudListFragment.getDataBinding().f36573b.setNoMore();
            } else {
                List<ArchiveData> value6 = modgameCloudListFragment.getViewModle().getLocalAllArchive().getValue();
                modgameCloudListFragment.page++;
                modgameCloudListFragment.getDataBinding().f36573b.loadMoreComplete();
                for (ArchiveData archiveData : list) {
                    archiveData.setShowType(modgameCloudListFragment.type);
                    archiveData.setGame_id(modgameCloudListFragment.gameId);
                    archiveData.setIsDownloadArchive(0);
                    if (value6 != null && (!value6.isEmpty())) {
                        for (ArchiveData archiveData2 : value6) {
                            if (Intrinsics.areEqual(archiveData2.getId(), archiveData.getId())) {
                                archiveData.setUserId(archiveData2.getUserId());
                                archiveData.setArchiveLocalZipPath(archiveData2.getArchiveLocalZipPath());
                                archiveData.setIsDownloadArchive(1);
                                archiveData.setPackageName(archiveData2.getPackageName());
                                archiveData.setIsFirstRun(archiveData2.getIsFirstRun());
                                archiveData.setMainArchiveLocalPath(archiveData2.getMainArchiveLocalPath());
                                archiveData.setMainArchiveLocalPath2(archiveData2.getMainArchiveLocalPath2());
                                archiveData.setArchiveLocalPath(archiveData2.getArchiveLocalPath());
                                Long value7 = modgameCloudListFragment.getViewModleShareViewModle().getRunIngArchiveId().getValue();
                                archiveData.setRuningArchiveId(value7 != null ? value7.longValue() : 0L);
                                archiveData.setShowText("启动");
                                archiveData.setStatus(8);
                            }
                        }
                    }
                    int i10 = modgameCloudListFragment.type;
                    if (i10 == 1 || i10 == 2) {
                        ModGameDetailBean modGameDetailBean = modgameCloudListFragment.modgameBean;
                        if ((modGameDetailBean == null || (main_game_info = modGameDetailBean.getMain_game_info()) == null || !main_game_info.isCloudGame()) ? false : true) {
                            archiveData.setShowText("启动");
                        }
                        List<CommonListMainData> value8 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                        if (value8 != null) {
                            value8.add(new CommonListMainData(3, archiveData, null, null, 12, null));
                        }
                    } else {
                        ModGameDetailBean modGameDetailBean2 = modgameCloudListFragment.modgameBean;
                        if ((modGameDetailBean2 == null || (main_game_info2 = modGameDetailBean2.getMain_game_info()) == null || !main_game_info2.isCloudGame()) ? false : true) {
                            archiveData.setShowText("启动");
                        }
                        List<CommonListMainData> value9 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                        if (value9 != null) {
                            value9.add(new CommonListMainData(4, archiveData, null, null, 12, null));
                        }
                    }
                }
                modgameCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$19(ModgameCloudListFragment modgameCloudListFragment, ResponseModel responseModel) {
        GamedetialModleFourBean main_game_info;
        boolean z10;
        GamedetialModleFourBean main_game_info2;
        GamedetialModleFourBean main_game_info3;
        GamedetialModleFourBean main_game_info4;
        if (responseModel != null && responseModel.getCode() == 200) {
            List<ArchiveData> list = (List) responseModel.getData();
            if (list == null || list.isEmpty()) {
                modgameCloudListFragment.getDataBinding().f36573b.setNoMore();
            } else {
                if (responseModel.getPage() == 1) {
                    modgameCloudListFragment.page = 1;
                    List<CommonListMainData> value = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                    if (value != null) {
                        value.clear();
                    }
                }
                List<ArchiveData> value2 = modgameCloudListFragment.getViewModle().getLocalAllArchive().getValue();
                modgameCloudListFragment.page++;
                modgameCloudListFragment.getDataBinding().f36573b.loadMoreComplete();
                List<ArchiveData> value3 = modgameCloudListFragment.getViewModle().getLocalAllArchive().getValue();
                Intrinsics.checkNotNull(value3);
                Iterator<ArchiveData> it2 = value3.iterator();
                while (true) {
                    boolean z11 = false;
                    if (!it2.hasNext()) {
                        break;
                    }
                    ArchiveData next = it2.next();
                    next.setIsDownloadArchive(1);
                    next.setStatus(8);
                    next.setShowText("启动");
                    next.setShowType(2);
                    Long value4 = modgameCloudListFragment.getViewModleShareViewModle().getRunIngArchiveId().getValue();
                    next.setRuningArchiveId(value4 != null ? value4.longValue() : 0L);
                    if (next.getUid() == 0) {
                        next.setShowType(1);
                        ModGameDetailBean modGameDetailBean = modgameCloudListFragment.modgameBean;
                        if (modGameDetailBean != null && (main_game_info3 = modGameDetailBean.getMain_game_info()) != null && main_game_info3.isCloudGame()) {
                            z11 = true;
                        }
                        if (z11) {
                            next.setShowText("启动");
                        }
                        List<CommonListMainData> value5 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                        if (value5 != null) {
                            value5.add(new CommonListMainData(4, next, null, null, 12, null));
                        }
                    } else if (next.getUserId() != 0 || Intrinsics.areEqual(next.getId(), "0")) {
                        ModGameDetailBean modGameDetailBean2 = modgameCloudListFragment.modgameBean;
                        if (modGameDetailBean2 != null && (main_game_info4 = modGameDetailBean2.getMain_game_info()) != null && main_game_info4.isCloudGame()) {
                            z11 = true;
                        }
                        if (z11) {
                            next.setShowText("启动");
                        }
                        List<CommonListMainData> value6 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                        if (value6 != null) {
                            value6.add(new CommonListMainData(3, next, null, null, 12, null));
                        }
                    } else {
                        List<ArchiveData> value7 = modgameCloudListFragment.getViewModle().getLocalAllArchive().getValue();
                        if (value7 != null) {
                            ArrayList arrayList = new ArrayList();
                            for (Object obj : value7) {
                                if (((ArchiveData) obj).getUid() == 0) {
                                    arrayList.add(obj);
                                }
                            }
                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                            Iterator it3 = arrayList.iterator();
                            while (it3.hasNext()) {
                                ((ArchiveData) it3.next()).setArchiveDesc("我的默认存档");
                                arrayList2.add(Unit.INSTANCE);
                            }
                        }
                    }
                    ArrayList<ArchiveData> arrayList3 = new ArrayList();
                    for (Object obj2 : list) {
                        if (Intrinsics.areEqual(((ArchiveData) obj2).getId(), next.getId())) {
                            arrayList3.add(obj2);
                        }
                    }
                    ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10));
                    for (ArchiveData archiveData : arrayList3) {
                        next.setArchiveDesc(archiveData.getArchiveDesc());
                        next.setIsLike(archiveData.getIsLike());
                        next.setLikeCount(archiveData.getLikeCount());
                        next.setDownloadCount(archiveData.getDownloadCount());
                        arrayList4.add(Unit.INSTANCE);
                    }
                }
                for (ArchiveData archiveData2 : list) {
                    archiveData2.setShowType(modgameCloudListFragment.type);
                    archiveData2.setGame_id(modgameCloudListFragment.gameId);
                    archiveData2.setIsDownloadArchive(0);
                    archiveData2.setPackageName(modgameCloudListFragment.getViewModle().getPackageName());
                    if (value2 == null || !(!value2.isEmpty())) {
                        ModGameDetailBean modGameDetailBean3 = modgameCloudListFragment.modgameBean;
                        if ((modGameDetailBean3 == null || (main_game_info = modGameDetailBean3.getMain_game_info()) == null || !main_game_info.isCloudGame()) ? false : true) {
                            archiveData2.setShowText("启动");
                        }
                        List<CommonListMainData> value8 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                        if (value8 != null) {
                            value8.add(new CommonListMainData(3, archiveData2, null, null, 12, null));
                        }
                    } else {
                        Iterator<ArchiveData> it4 = value2.iterator();
                        while (true) {
                            if (!it4.hasNext()) {
                                z10 = false;
                                break;
                            }
                            ArchiveData next2 = it4.next();
                            if (Intrinsics.areEqual(next2.getId(), archiveData2.getId())) {
                                archiveData2.setUserId(next2.getUserId());
                                archiveData2.setArchiveLocalZipPath(next2.getArchiveLocalZipPath());
                                archiveData2.setIsDownloadArchive(1);
                                archiveData2.setPackageName(next2.getPackageName());
                                archiveData2.setIsFirstRun(next2.getIsFirstRun());
                                archiveData2.setMainArchiveLocalPath(next2.getMainArchiveLocalPath());
                                archiveData2.setMainArchiveLocalPath2(next2.getMainArchiveLocalPath2());
                                archiveData2.setArchiveLocalPath(next2.getArchiveLocalPath());
                                Long value9 = modgameCloudListFragment.getViewModleShareViewModle().getRunIngArchiveId().getValue();
                                archiveData2.setRuningArchiveId(value9 != null ? value9.longValue() : 0L);
                                archiveData2.setShowText("启动");
                                archiveData2.setStatus(8);
                                z10 = true;
                                break;
                            }
                        }
                        if (!z10) {
                            ModGameDetailBean modGameDetailBean4 = modgameCloudListFragment.modgameBean;
                            if ((modGameDetailBean4 == null || (main_game_info2 = modGameDetailBean4.getMain_game_info()) == null || !main_game_info2.isCloudGame()) ? false : true) {
                                archiveData2.setShowText("启动");
                            }
                            List<CommonListMainData> value10 = modgameCloudListFragment.getViewModle().getListArchive().getValue();
                            if (value10 != null) {
                                value10.add(new CommonListMainData(3, archiveData2, null, null, 12, null));
                            }
                        }
                    }
                }
                modgameCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$20(ModgameCloudListFragment modgameCloudListFragment, List list) {
        if (modgameCloudListFragment.isfirst) {
            modgameCloudListFragment.loadData();
            modgameCloudListFragment.isfirst = false;
        } else {
            if (modgameCloudListFragment.type != 1) {
                modgameCloudListFragment.loadData();
            }
            if (modgameCloudListFragment.type == 2) {
                modgameCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
                modgameCloudListFragment.updateLocaDataToShow();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$21(ModgameCloudListFragment modgameCloudListFragment, Long l10) {
        if (modgameCloudListFragment.type == 2) {
            List<CommonListMainData> value = modgameCloudListFragment.getViewModle().getListArchive().getValue();
            Intrinsics.checkNotNull(value);
            Iterator<CommonListMainData> it2 = value.iterator();
            while (it2.hasNext()) {
                Object any = it2.next().getAny();
                Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                Intrinsics.checkNotNull(l10);
                ((ArchiveData) any).setRuningArchiveId(l10.longValue());
            }
            modgameCloudListFragment.getViewModle().getListArchive().setValue(modgameCloudListFragment.getViewModle().getListArchive().getValue());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$22(ModgameCloudListFragment modgameCloudListFragment, List list) {
        if (modgameCloudListFragment.modgameBean != null) {
            ModGameCloudViewModle viewModle = modgameCloudListFragment.getViewModle();
            ModGameDetailBean modGameDetailBean = modgameCloudListFragment.modgameBean;
            Intrinsics.checkNotNull(modGameDetailBean);
            String strValueOf = String.valueOf(modGameDetailBean.getMod_game_info().getPackageName());
            ModGameDetailBean modGameDetailBean2 = modgameCloudListFragment.modgameBean;
            ModGameArchivePathData cloud_archive_local_path = modGameDetailBean2 != null ? modGameDetailBean2.getCloud_archive_local_path() : null;
            Intrinsics.checkNotNull(cloud_archive_local_path);
            Long value = modgameCloudListFragment.getViewModleShareViewModle().getRunIngArchiveId().getValue();
            Intrinsics.checkNotNull(value);
            viewModle.loadAllArchives(strValueOf, cloud_archive_local_path, value.longValue(), modgameCloudListFragment.getViewModleShareViewModle().getLocalArchiveLists().getValue());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$8(ModgameCloudListFragment modgameCloudListFragment, List list) {
        modgameCloudListFragment.getAdapterx().notifyDataSetChanged();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onClickDislike$lambda$35(ModgameCloudListFragment modgameCloudListFragment, ArchiveData archiveData) {
        ModGameCloudViewModle viewModle = modgameCloudListFragment.getViewModle();
        FragmentActivity fragmentActivityRequireActivity = modgameCloudListFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        viewModle.commentArchive(fragmentActivityRequireActivity, archiveData, "NEGATIVE", modgameCloudListFragment.type);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onClickRunGame$lambda$29(final ArchiveData archiveData, final ModgameCloudListFragment modgameCloudListFragment) {
        if (archiveData.getUid() == AccountUtil_.getInstance_(modgameCloudListFragment.getContext()).getAccountData().getUid()) {
            modgameCloudListFragment.getCheckDownloadTypeDialog().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$onClickRunGame$3$1
                @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                public void onClickCancleButn() {
                    this.this$0.showDownloadDialog(archiveData, 0);
                    this.this$0.getCheckDownloadTypeDialog().dismiss();
                }

                @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                public void onClickOkButn() {
                    this.this$0.showDownloadDialog(archiveData, 1);
                    this.this$0.getCheckDownloadTypeDialog().dismiss();
                }
            });
            modgameCloudListFragment.getCheckDownloadTypeDialog().setDatas(new DialogData("是否覆盖本地默认存档？", "覆盖本地存档后，你可再次分享存档。", "覆盖", "不覆盖", false, 16, null));
            if (EXTKt.dialogFragmentCanShow(modgameCloudListFragment.getCheckDownloadTypeDialog())) {
                DelArchiveDialog checkDownloadTypeDialog = modgameCloudListFragment.getCheckDownloadTypeDialog();
                FragmentManager childFragmentManager = modgameCloudListFragment.getChildFragmentManager();
                Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
                checkDownloadTypeDialog.show(childFragmentManager, "checkDownloadTypeDialog");
            }
        } else {
            modgameCloudListFragment.showDownloadDialog(archiveData, 0);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onPraise$lambda$34(ModgameCloudListFragment modgameCloudListFragment, ArchiveData archiveData) {
        ModGameCloudViewModle viewModle = modgameCloudListFragment.getViewModle();
        FragmentActivity fragmentActivityRequireActivity = modgameCloudListFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        viewModle.commentArchive(fragmentActivityRequireActivity, archiveData, SimpleComparison.LIKE_OPERATION, modgameCloudListFragment.type);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit realLaunchGame$lambda$26(ModgameCloudListFragment modgameCloudListFragment, ArchiveData archiveData, DownloadTask downloadTask) {
        modgameCloudListFragment.onClickRunGame(archiveData, downloadTask);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RedownArchiveDialog redownFragment_delegate$lambda$38() {
        return new RedownArchiveDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showDownloadDialog(ArchiveData archive, int downloadType) {
        DownloadArchiveDialog downloadArchiveDialog = new DownloadArchiveDialog();
        Bundle bundle = new Bundle();
        bundle.putSerializable("archive", archive);
        bundle.putInt(PlugDownDialogAcitivity_.DOWNLOAD_TYPE_EXTRA, downloadType);
        bundle.putBoolean("installInExtPlug", getViewModleShareViewModle().getInstallInExtPlug());
        bundle.putSerializable("cloud_archive_local_path", getViewModle().getCloud_archive_local_path().getValue());
        downloadArchiveDialog.setArguments(bundle);
        if (EXTKt.dialogFragmentCanShow(downloadArchiveDialog)) {
            downloadArchiveDialog.show(getChildFragmentManager(), "dialog");
        }
    }

    private final void startGame(final ArchiveData archive) {
        if (archive != null) {
            String packageName = archive.getPackageName();
            if (packageName == null || packageName.length() == 0) {
                return;
            }
            getViewModleShareViewModle().setLastStartArchive(archive);
            try {
                com.join.mgps.va.overmind.i.a aVar = com.join.mgps.va.overmind.i.f73262g;
                if (aVar.d().h(archive.getPackageName(), archive.getUserId())) {
                    if (aVar.d().L(archive.getPackageName(), archive.getUserId())) {
                        getViewModle().startGameADCheck(getContext(), archive.getGame_id(), new Function0() { // from class: com.join.kotlin.ui.cloudarchive.g1
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return ModgameCloudListFragment.startGame$lambda$24(this.f48993b, archive);
                            }
                        });
                    } else {
                        aVar.d().G(archive.getPackageName(), archive.getUserId());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit startGame$lambda$24(ModgameCloudListFragment modgameCloudListFragment, ArchiveData archiveData) {
        GamedetialModleFourBean mod_game_info;
        GamedetialModleFourBean mod_game_info2;
        Context context = modgameCloudListFragment.getContext();
        if (context == null) {
            context = MApplication.f3182z;
        }
        Context context2 = context;
        if (context2 == null) {
            return Unit.INSTANCE;
        }
        if (archiveData.getUserId() == 0) {
            modgameCloudListFragment.getViewModleShareViewModle().getRunIngArchiveId().setValue(0L);
        } else {
            MutableLiveData<Long> runIngArchiveId = modgameCloudListFragment.getViewModleShareViewModle().getRunIngArchiveId();
            String id2 = archiveData.getId();
            Intrinsics.checkNotNullExpressionValue(id2, "getId(...)");
            runIngArchiveId.setValue(Long.valueOf(Long.parseLong(id2)));
        }
        if (archiveData.getUid() != AccountUtil_.getInstance_(context2).getAccountData().getUid() && archiveData.getUid() != 0) {
            a3.b(context2).d("当前正在使用 " + archiveData.getNickname() + " 的存档");
        }
        List<GoldFingerBean> goldFingerBean = modgameCloudListFragment.getViewModleShareViewModle().getGoldFingerBean();
        String str = goldFingerBean == null || goldFingerBean.isEmpty() ? "0" : "1";
        DownloadTask downloadTaskG = q5.f.M().G(archiveData.getGame_id());
        ModGameDetailBean modGameDetailBean = modgameCloudListFragment.modgameBean;
        ModInfoBean mod_info = null;
        String strValueOf = String.valueOf((modGameDetailBean == null || (mod_game_info2 = modGameDetailBean.getMod_game_info()) == null) ? null : Integer.valueOf(mod_game_info2.getBbs_strategy_switch()));
        if (modgameCloudListFragment.modgameBean != null && downloadTaskG != null) {
            ModInfoBean modInfoBean = downloadTaskG.getModInfoBean();
            Intrinsics.checkNotNullExpressionValue(modInfoBean, "getModInfoBean(...)");
            ModGameDetailBean modGameDetailBean2 = modgameCloudListFragment.modgameBean;
            if (modGameDetailBean2 != null && (mod_game_info = modGameDetailBean2.getMod_game_info()) != null) {
                mod_info = mod_game_info.getMod_info();
            }
            if (mod_info != null && mod_info.getVer() > modInfoBean.getVer()) {
                mod_info.setStatus(9);
                downloadTaskG.setMod_info(JsonMapper.toJsonString(mod_info));
                q5.f.M().m(downloadTaskG);
            }
        }
        if (downloadTaskG != null) {
            APKUtils.f34739a.J(context2, archiveData, str, strValueOf, downloadTaskG);
        }
        return Unit.INSTANCE;
    }

    private final void updateLocaDataToShow() {
        long jLongValue;
        List<CommonListMainData> value = getViewModle().getListArchive().getValue();
        if (value != null) {
            value.clear();
        }
        getAdapterx().notifyDataSetChanged();
        if (getViewModle().getLocalAllArchive().getValue() != null) {
            List<ArchiveData> value2 = getViewModle().getLocalAllArchive().getValue();
            Intrinsics.checkNotNull(value2);
            for (ArchiveData archiveData : value2) {
                archiveData.setIsDownloadArchive(1);
                archiveData.setStatus(8);
                archiveData.setShowText("启动");
                archiveData.setShowType(2);
                Long value3 = getViewModleShareViewModle().getRunIngArchiveId().getValue();
                if (value3 != null) {
                    jLongValue = value3.longValue();
                } else {
                    Long l10 = 0L;
                    jLongValue = l10.longValue();
                }
                archiveData.setRuningArchiveId(jLongValue);
                if (archiveData.getUid() == 0) {
                    List<CommonListMainData> value4 = getViewModle().getListArchive().getValue();
                    if (value4 != null) {
                        value4.add(new CommonListMainData(4, archiveData, null, null, 12, null));
                    }
                } else if (archiveData.getUserId() != 0 || Intrinsics.areEqual(archiveData.getId(), "0")) {
                    List<CommonListMainData> value5 = getViewModle().getListArchive().getValue();
                    if (value5 != null) {
                        value5.add(new CommonListMainData(3, archiveData, null, null, 12, null));
                    }
                } else {
                    List<ArchiveData> value6 = getViewModle().getLocalAllArchive().getValue();
                    if (value6 != null) {
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : value6) {
                            if (((ArchiveData) obj).getUid() == 0) {
                                arrayList.add(obj);
                            }
                        }
                        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            ((ArchiveData) it2.next()).setArchiveDesc("我的默认存档");
                            arrayList2.add(Unit.INSTANCE);
                        }
                    }
                }
            }
        }
        getDataBinding().f36573b.setNoMore();
        getAdapterx().notifyDataSetChanged();
        this.page = 1;
        ModDataRequest request = getViewModle().getRequest();
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        request.getAllDownloedArchive(contextRequireContext, this.page, this.gameId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit uploadCloud$lambda$30(ModgameCloudListFragment modgameCloudListFragment) {
        GamedetialModleFourBean mod_game_info;
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(modgameCloudListFragment.getContext());
        Event event = Event.clickIssueCloudSaveButton;
        Ext ext = new Ext();
        ModGameDetailBean modGameDetailBean = modgameCloudListFragment.modgameBean;
        tVarL.R1(event, ext.setGameId((modGameDetailBean == null || (mod_game_info = modGameDetailBean.getMod_game_info()) == null) ? null : mod_game_info.getGame_id()));
        Intent intent = new Intent(modgameCloudListFragment.getActivity(), (Class<?>) ModUploadArchiveActivity.class);
        List<ArchiveData> value = modgameCloudListFragment.getViewModleShareViewModle().getLocalArchiveLists().getValue();
        if (value == null || value.isEmpty()) {
            a3.b(modgameCloudListFragment.getContext()).d("本地默认存档为空，无法分享");
            return Unit.INSTANCE;
        }
        intent.putExtra("archives", (Serializable) value);
        intent.putExtra("runIngArchiveId", modgameCloudListFragment.getViewModleShareViewModle().getRunIngArchiveId().getValue());
        ModGameDetailBean modGameDetailBean2 = modgameCloudListFragment.modgameBean;
        Intrinsics.checkNotNull(modGameDetailBean2);
        intent.putExtra("archiveFileSuffix", modGameDetailBean2.getCloud_archive_local_path().getArchiveFileSuffix());
        modgameCloudListFragment.startActivity(intent);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CloudShareViewModle viewModleShareViewModle_delegate$lambda$1(ModgameCloudListFragment modgameCloudListFragment) {
        FragmentActivity fragmentActivityRequireActivity = modgameCloudListFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        return (CloudShareViewModle) new ViewModelProvider(fragmentActivityRequireActivity, new ViewModelProvider.NewInstanceFactory()).get(CloudShareViewModle.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ModGameCloudViewModle viewModle_delegate$lambda$0(ModgameCloudListFragment modgameCloudListFragment) {
        return (ModGameCloudViewModle) new ViewModelProvider(modgameCloudListFragment, new ViewModelProvider.NewInstanceFactory()).get(ModGameCloudViewModle.class);
    }

    @NotNull
    public final PopupWindow createPopwindow() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.cloud_archive_more_pop, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(viewInflate);
        popupWindow.setWidth(-2);
        popupWindow.setHeight(-2);
        setDeleteCloud((TextView) viewInflate.findViewById(R.id.deleteCloud));
        setReDownload((TextView) viewInflate.findViewById(R.id.reDownload));
        setMain(viewInflate.findViewById(R.id.main));
        setTrangleTop(viewInflate.findViewById(R.id.trangleTop));
        setTrangleBottom(viewInflate.findViewById(R.id.trangleBottom));
        getReDownload().setOnClickListener(this);
        getDeleteCloud().setOnClickListener(this);
        return popupWindow;
    }

    @NotNull
    public final ModArchiveAdapter getAdapterx() {
        return (ModArchiveAdapter) this.adapterx.getValue();
    }

    @NotNull
    public final ArchiveData getArchiveDataPop() {
        ArchiveData archiveData = this.archiveDataPop;
        if (archiveData != null) {
            return archiveData;
        }
        Intrinsics.throwUninitializedPropertyAccessException("archiveDataPop");
        return null;
    }

    @Nullable
    public final ModGameArchiveTagBean getArchiveTag() {
        return this.archiveTag;
    }

    @NotNull
    public final DelArchiveDialog getCheckDownloadTypeDialog() {
        return (DelArchiveDialog) this.checkDownloadTypeDialog.getValue();
    }

    @NotNull
    public final bt0 getDataBinding() {
        bt0 bt0Var = this.dataBinding;
        if (bt0Var != null) {
            return bt0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        return null;
    }

    @NotNull
    public final DelArchiveDialog getDelFragment() {
        return (DelArchiveDialog) this.delFragment.getValue();
    }

    @NotNull
    public final TextView getDeleteCloud() {
        TextView textView = this.deleteCloud;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("deleteCloud");
        return null;
    }

    @NotNull
    public final Dialog getDialog() {
        Object value = this.dialog.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (Dialog) value;
    }

    @NotNull
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    public final ImageShowDialog getImageDialog() {
        return (ImageShowDialog) this.imageDialog.getValue();
    }

    public final boolean getIsfirst() {
        return this.isfirst;
    }

    @NotNull
    public final View getMain() {
        View view = this.main;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("main");
        return null;
    }

    @Nullable
    public final ModGameDetailBean getModgameBean() {
        return this.modgameBean;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final PopupWindow getPopWindow() {
        return (PopupWindow) this.popWindow.getValue();
    }

    @NotNull
    public final TextView getReDownload() {
        TextView textView = this.reDownload;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("reDownload");
        return null;
    }

    @NotNull
    public final RedownArchiveDialog getRedownFragment() {
        return (RedownArchiveDialog) this.redownFragment.getValue();
    }

    @NotNull
    public final View getTrangleBottom() {
        View view = this.trangleBottom;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("trangleBottom");
        return null;
    }

    @NotNull
    public final View getTrangleTop() {
        View view = this.trangleTop;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("trangleTop");
        return null;
    }

    public final int getType() {
        return this.type;
    }

    @NotNull
    public final ModGameCloudViewModle getViewModle() {
        return (ModGameCloudViewModle) this.viewModle.getValue();
    }

    @NotNull
    public final CloudShareViewModle getViewModleShareViewModle() {
        return (CloudShareViewModle) this.viewModleShareViewModle.getValue();
    }

    public final void initData() {
        com.join.mgps.Util.j0.a().d(this);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.type = arguments.getInt("type");
            this.gameId = arguments.getString("gameId", "");
            Serializable serializable = arguments.getSerializable("datas");
            Intrinsics.checkNotNull(serializable, "null cannot be cast to non-null type com.join.mgps.dto.ModGameDetailBean");
            this.modgameBean = (ModGameDetailBean) serializable;
            this.archiveTag = (ModGameArchiveTagBean) arguments.getSerializable(TagGameListActivity_.TAG_EXTRA);
            ModGameCloudViewModle viewModle = getViewModle();
            ModGameDetailBean modGameDetailBean = this.modgameBean;
            Intrinsics.checkNotNull(modGameDetailBean);
            viewModle.setPackageName(String.valueOf(modGameDetailBean.getMod_game_info().getPackageName()));
            MutableLiveData<ModGameArchivePathData> cloud_archive_local_path = getViewModle().getCloud_archive_local_path();
            ModGameDetailBean modGameDetailBean2 = this.modgameBean;
            cloud_archive_local_path.setValue(modGameDetailBean2 != null ? modGameDetailBean2.getCloud_archive_local_path() : null);
        }
        ModGameCloudViewModle viewModle2 = getViewModle();
        ModGameDetailBean modGameDetailBean3 = this.modgameBean;
        Intrinsics.checkNotNull(modGameDetailBean3);
        String strValueOf = String.valueOf(modGameDetailBean3.getMod_game_info().getPackageName());
        ModGameDetailBean modGameDetailBean4 = this.modgameBean;
        ModGameArchivePathData cloud_archive_local_path2 = modGameDetailBean4 != null ? modGameDetailBean4.getCloud_archive_local_path() : null;
        Intrinsics.checkNotNull(cloud_archive_local_path2);
        Long value = getViewModleShareViewModle().getRunIngArchiveId().getValue();
        Intrinsics.checkNotNull(value);
        viewModle2.loadAllArchives(strValueOf, cloud_archive_local_path2, value.longValue(), getViewModleShareViewModle().getLocalArchiveLists().getValue());
        getDataBinding().setLifecycleOwner(this);
        getDataBinding().setVariable(50, getViewModle());
        getDataBinding().setVariable(30, this);
        getDataBinding().f36573b.setAdapter(getAdapterx());
        getDataBinding().f36573b.getLayoutManager();
        getDataBinding().f36573b.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment.initData.2
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                ModgameCloudListFragment.this.loadData();
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
                ModgameCloudListFragment.this.setPage(1);
                ModgameCloudListFragment.this.loadData();
            }
        });
        getViewModle().getListArchive().observe(getViewLifecycleOwner(), new ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.t1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ModgameCloudListFragment.initData$lambda$8(this.f49028b, (List) obj);
            }
        }));
        getViewModle().getRequest().getResultDataPd().observe(getViewLifecycleOwner(), new ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.z0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ModgameCloudListFragment.initData$lambda$10(this.f49064b, (ResponseModel) obj);
            }
        }));
        getViewModle().getRequest().getResultData().observe(getViewLifecycleOwner(), new ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.a1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ModgameCloudListFragment.initData$lambda$12(this.f48919b, (ResponseModel) obj);
            }
        }));
        getViewModle().getRequest().getResultAllHasDownloadData().observe(getViewLifecycleOwner(), new ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.b1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ModgameCloudListFragment.initData$lambda$19(this.f48938b, (ResponseModel) obj);
            }
        }));
        getViewModle().getRequest().getDataChangeItem().observe(getViewLifecycleOwner(), new Observer<ArchiveData>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment.initData.7
            @Override // androidx.lifecycle.Observer
            public void onChanged(ArchiveData t10) {
                Intrinsics.checkNotNullParameter(t10, "t");
                ModgameCloudListFragment.this.getViewModle().onitemChanged(t10, ModgameCloudListFragment.this.getAdapterx());
            }
        });
        getViewModle().getLocalAllArchive().observe(getViewLifecycleOwner(), new ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.c1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ModgameCloudListFragment.initData$lambda$20(this.f48941b, (List) obj);
            }
        }));
        getViewModleShareViewModle().getRunIngArchiveId().observe(requireActivity(), new ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.d1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ModgameCloudListFragment.initData$lambda$21(this.f48944b, (Long) obj);
            }
        }));
        getViewModleShareViewModle().getLocalArchiveLists().observe(requireActivity(), new ModgameCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.e1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ModgameCloudListFragment.initData$lambda$22(this.f48985b, (List) obj);
            }
        }));
        UserInfo accountData = AccountUtil_.getInstance_(getActivity()).getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "getAccountData(...)");
        this.isLogin = (t2.h(accountData.getToken()) || AccountUtil_.getInstance_(getActivity()).isTourist()) ? false : true;
    }

    /* JADX INFO: renamed from: isLogin, reason: from getter */
    public final boolean getIsLogin() {
        return this.isLogin;
    }

    public final void loadData() {
        CloudArchiveCfg cloud_archive_cfg;
        getViewModle().getShowPosition().setValue(Integer.valueOf(this.type));
        int i10 = this.type;
        if (i10 != 1) {
            if (i10 == 2) {
                getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
                updateLocaDataToShow();
                return;
            } else {
                if (i10 == 3) {
                    if (this.page == 1) {
                        getViewModle().getLoadBindData().setValue(new LoadBindindData(2));
                    }
                    ModDataRequest request = getViewModle().getRequest();
                    Context contextRequireContext = requireContext();
                    Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                    request.loadMyInShop(contextRequireContext, this.page, this.gameId);
                    return;
                }
                return;
            }
        }
        if (this.page == 1) {
            getViewModle().getLoadBindData().setValue(new LoadBindindData(2));
        }
        ModDataRequest request2 = getViewModle().getRequest();
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        int i11 = this.page;
        String str = this.gameId;
        ModGameDetailBean modGameDetailBean = this.modgameBean;
        long last_enter_main_page_time = (modGameDetailBean == null || (cloud_archive_cfg = modGameDetailBean.getCloud_archive_cfg()) == null) ? 0L : cloud_archive_cfg.getLast_enter_main_page_time();
        ModGameArchiveTagBean modGameArchiveTagBean = this.archiveTag;
        String tagId = modGameArchiveTagBean != null ? modGameArchiveTagBean.getTagId() : null;
        ModGameArchiveTagBean modGameArchiveTagBean2 = this.archiveTag;
        request2.getModeDatasAddPd(contextRequireContext2, i11, str, last_enter_main_page_time, tagId, modGameArchiveTagBean2 != null ? Integer.valueOf(modGameArchiveTagBean2.getType()) : null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        Integer numValueOf = v10 != null ? Integer.valueOf(v10.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.deleteCloud) {
            getPopWindow().dismiss();
            if (this.type != 2) {
                getDelFragment().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment.onClick.2
                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickCancleButn() {
                        ModgameCloudListFragment.this.getDelFragment().dismiss();
                    }

                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickOkButn() {
                        ModGameCloudViewModle viewModle = ModgameCloudListFragment.this.getViewModle();
                        FragmentActivity activity = ModgameCloudListFragment.this.getActivity();
                        Intrinsics.checkNotNull(activity);
                        viewModle.delMyArchiveFromCloud(activity, ModgameCloudListFragment.this.getArchiveDataPop());
                        ModgameCloudListFragment.this.getDelFragment().dismiss();
                    }
                });
                if (Intrinsics.areEqual(getArchiveDataPop().getId(), "0")) {
                    getDelFragment().setDatas(new DialogData("删除本地默认存档", "删除后，本地默认存档进度将被清空，确定删除吗？", "删除", "取消", false, 16, null));
                } else {
                    getDelFragment().setDatas(new DialogData("删除社区内您发布的此存档", "注：只删除存档社区内的存档，不会影响本地默认存档", "删除", "取消", false, 16, null));
                }
            } else if (Intrinsics.areEqual("我的默认存档(暂无)", getArchiveDataPop().getArchiveDesc())) {
                a3.b(getContext()).d("删除失败：暂无默认存档");
                return;
            } else {
                getDelFragment().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment.onClick.1
                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickCancleButn() {
                        ModgameCloudListFragment.this.getDelFragment().dismiss();
                    }

                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickOkButn() {
                        if (Intrinsics.areEqual(ModgameCloudListFragment.this.getArchiveDataPop().getId(), String.valueOf(ModgameCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().getValue()))) {
                            ModgameCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().setValue(0L);
                        }
                        ModGameCloudViewModle viewModle = ModgameCloudListFragment.this.getViewModle();
                        FragmentActivity activity = ModgameCloudListFragment.this.getActivity();
                        Intrinsics.checkNotNull(activity);
                        viewModle.delMyDownloadArchive(activity, ModgameCloudListFragment.this.getArchiveDataPop());
                        ModgameCloudListFragment.this.getDelFragment().dismiss();
                    }
                });
                getDelFragment().setDatas(new DialogData("是否删除此存档", "", "删除", "取消", false, 16, null));
            }
            DelArchiveDialog delFragment = getDelFragment();
            FragmentManager parentFragmentManager = getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "getParentFragmentManager(...)");
            delFragment.show(parentFragmentManager, "");
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.reDownload) {
            getPopWindow().dismiss();
            if (this.type == 3) {
                Intent intent = new Intent(getActivity(), (Class<?>) ModUploadArchiveActivity.class);
                ArrayList arrayList = new ArrayList();
                arrayList.add(getArchiveDataPop());
                intent.putExtra("archives", arrayList);
                ModGameDetailBean modGameDetailBean = this.modgameBean;
                Intrinsics.checkNotNull(modGameDetailBean);
                intent.putExtra("archiveFileSuffix", modGameDetailBean.getCloud_archive_local_path().getArchiveFileSuffix());
                startActivity(intent);
                return;
            }
            getRedownFragment().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment.onClick.3
                @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                public void onClickCancleButn() {
                    ModgameCloudListFragment.this.getRedownFragment().dismiss();
                }

                @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                public void onClickOkButn() {
                    String archiveLocalZipPath = ModgameCloudListFragment.this.getArchiveDataPop().getArchiveLocalZipPath();
                    if (!(archiveLocalZipPath == null || archiveLocalZipPath.length() == 0)) {
                        UtilsMy.delete(new File(ModgameCloudListFragment.this.getArchiveDataPop().getArchiveLocalZipPath()));
                    }
                    com.join.mgps.va.overmind.k kVar = com.join.mgps.va.overmind.k.f73277a;
                    String packageName = ModgameCloudListFragment.this.getArchiveDataPop().getPackageName();
                    Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
                    UtilsMy.delete(new File(com.join.mgps.va.overmind.k.E(kVar, packageName, 0, 2, null), "/cloudArchives/" + ModgameCloudListFragment.this.getArchiveDataPop().getId()));
                    DownloadArchiveDialog downloadArchiveDialog = new DownloadArchiveDialog();
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("archive", ModgameCloudListFragment.this.getArchiveDataPop());
                    bundle.putBoolean("installInExtPlug", ModgameCloudListFragment.this.getViewModleShareViewModle().getInstallInExtPlug());
                    bundle.putSerializable("cloud_archive_local_path", ModgameCloudListFragment.this.getViewModle().getCloud_archive_local_path().getValue());
                    downloadArchiveDialog.setArguments(bundle);
                    if (EXTKt.dialogFragmentCanShow(downloadArchiveDialog)) {
                        downloadArchiveDialog.show(ModgameCloudListFragment.this.getChildFragmentManager(), "dialog");
                    }
                    ModgameCloudListFragment.this.getRedownFragment().dismiss();
                }
            });
            getRedownFragment().setDatas(new DialogData("重新下载", "重新下载后，云存档将会覆盖掉本地现有存档，确认重新下载吗？", "重新下载", "取消", false, 16, null));
            Bundle bundle = new Bundle();
            if (getArchiveDataPop().getArchiveLocalPath() != null) {
                getArchiveDataPop().setPlayTime(com.join.mgps.Util.e0.v(getViewModle().getRequest().getFileUpdateTimeMain(new File(getArchiveDataPop().getArchiveLocalPath()))) + "玩过");
            }
            bundle.putSerializable("archive", getArchiveDataPop());
            bundle.putSerializable("cloud_archive_local_path", getViewModle().getCloud_archive_local_path().getValue());
            getRedownFragment().setArguments(bundle);
            RedownArchiveDialog redownFragment = getRedownFragment();
            FragmentManager parentFragmentManager2 = getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager2, "getParentFragmentManager(...)");
            redownFragment.show(parentFragmentManager2, "");
        }
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onClickDislike(@NotNull final ArchiveData archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
        if (!com.join.mgps.va.overmind.i.M(com.join.mgps.va.overmind.i.f73262g.d(), getViewModle().getPackageName(), 0, 2, null)) {
            getViewModleShareViewModle().getShowDownlloadDialog().setValue(1);
            return;
        }
        Context context = getContext();
        if (context != null) {
            EXTKt.checkHasLogin(context, new Function0() { // from class: com.join.kotlin.ui.cloudarchive.i1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ModgameCloudListFragment.onClickDislike$lambda$35(this.f48999b, archive);
                }
            });
        }
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onClickDomain(@Nullable DomainInfoBean domainInfoBean) {
        if (domainInfoBean == null) {
            return;
        }
        UtilsMy.D4(getContext(), domainInfoBean.getInfo(), "single_game_archive");
        com.papa.sim.statistic.t.l(getContext()).R1(Event.pdSingleArchiveClick, new Ext().setGameId(this.gameId).setIsJoin(domainInfoBean.getIs_join()).setTestAbNumber(domainInfoBean.getAb_test_number()));
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onClickImage(@Nullable String imagePath) {
        getImageDialog().setImageDialogPath(imagePath);
        if (EXTKt.dialogFragmentCanShow(getImageDialog())) {
            ImageShowDialog imageDialog = getImageDialog();
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
            imageDialog.show(childFragmentManager, "imageDialog");
        }
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onClickMore(@NotNull View view, @NotNull ArchiveData archive) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(archive, "archive");
        setArchiveDataPop(archive);
        getPopWindow().setOutsideTouchable(true);
        if (getPopWindow().isShowing()) {
            getPopWindow().dismiss();
            return;
        }
        getDeleteCloud().setText("删除");
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp170);
        int i10 = 2;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        if (this.type == 3) {
            getReDownload().setVisibility(0);
            i10 = 1;
        } else {
            getReDownload().setVisibility(8);
        }
        if (this.type == 3) {
            getReDownload().setText("编辑");
        }
        int i11 = dimensionPixelOffset / i10;
        if (iArr[1] + i11 + view.getHeight() > com.join.android.app.common.utils.q.n(getContext()).k(getActivity())) {
            getMain().setBackgroundResource(R.drawable.cloud_conner_back_5_bottom);
            getTrangleTop().setVisibility(8);
            getTrangleBottom().setVisibility(0);
            getPopWindow().showAsDropDown(view, -getResources().getDimensionPixelOffset(R.dimen.wdp115), -(((int) view.getY()) + i11 + view.getHeight()));
            return;
        }
        getMain().setBackgroundResource(R.drawable.cloud_conner_back_5);
        getTrangleTop().setVisibility(0);
        getTrangleBottom().setVisibility(8);
        getPopWindow().showAsDropDown(view, -getResources().getDimensionPixelOffset(R.dimen.wdp115), getResources().getDimensionPixelOffset(R.dimen.wdp12));
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        loadData();
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onClickRun(@NotNull ArchiveData archive) {
        GamedetialModleFourBean main_game_info;
        Intrinsics.checkNotNullParameter(archive, "archive");
        ModGameDetailBean modGameDetailBean = this.modgameBean;
        boolean z10 = false;
        if (modGameDetailBean != null && (main_game_info = modGameDetailBean.getMain_game_info()) != null && main_game_info.isCloudGame()) {
            z10 = true;
        }
        if (z10) {
            new CustomDialog(new C13411(archive)).M0();
        } else {
            realLaunchGame(archive);
        }
    }

    public final void onClickRunGame(@NotNull final ArchiveData archive, @Nullable DownloadTask downloadTask) {
        String strValueOf;
        String strValueOf2;
        Intrinsics.checkNotNullParameter(archive, "archive");
        int i10 = 1;
        if (downloadTask == null) {
            CloudShareViewModle.CloudShareEvent cloudShareEvent = new CloudShareViewModle.CloudShareEvent();
            cloudShareEvent.setShowdownloadModDialog(1);
            LiveDataExtensionKt.setEvent(getViewModleShareViewModle().getEvent(), cloudShareEvent);
            return;
        }
        try {
            com.join.mgps.va.overmind.i.f73262g.i(downloadTask.getPackageName(), downloadTask.getResource_path());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (!com.join.mgps.va.overmind.i.M(com.join.mgps.va.overmind.i.f73262g.d(), getViewModle().getPackageName(), 0, 2, null) || downloadTask.getStatus() != 5) {
            getViewModleShareViewModle().getShowDownlloadDialog().setValue(1);
            return;
        }
        int i11 = 3;
        if (archive.getStatus() != 8) {
            if (archive.getStatus() == 0) {
                int i12 = this.type;
                if (i12 != 1) {
                    i10 = i12 == 2 ? 3 : 4;
                }
                com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(getContext());
                Event event = Event.clickDownCloudSave;
                Ext gameId = new Ext().setFrom(String.valueOf(i10)).setGameId(archive.getGame_id());
                ModGameArchiveTagBean modGameArchiveTagBean = this.archiveTag;
                if (modGameArchiveTagBean == null) {
                    strValueOf = null;
                } else {
                    strValueOf = String.valueOf(modGameArchiveTagBean != null ? Integer.valueOf(modGameArchiveTagBean.getType()) : null);
                }
                Ext position = gameId.setPosition(strValueOf);
                ModGameArchiveTagBean modGameArchiveTagBean2 = this.archiveTag;
                tVarL.X(event, position, modGameArchiveTagBean2 != null ? modGameArchiveTagBean2.getTagId() : null);
                Context context = getContext();
                if (context != null) {
                    EXTKt.checkHasNetWork(context, new Function0() { // from class: com.join.kotlin.ui.cloudarchive.l1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ModgameCloudListFragment.onClickRunGame$lambda$29(archive, this);
                        }
                    });
                    return;
                }
                return;
            }
            return;
        }
        int i13 = this.type;
        if (i13 == 1) {
            i11 = 1;
        } else if (i13 != 2) {
            i11 = 4;
        } else if (Intrinsics.areEqual(archive.getId(), "0")) {
            i11 = 2;
        }
        com.papa.sim.statistic.t tVarL2 = com.papa.sim.statistic.t.l(getContext());
        Event event2 = Event.clickStartCloudSave;
        Ext gameId2 = new Ext().setFrom(String.valueOf(i11)).setGameId(archive.getGame_id());
        ModGameArchiveTagBean modGameArchiveTagBean3 = this.archiveTag;
        if (modGameArchiveTagBean3 == null) {
            strValueOf2 = null;
        } else {
            strValueOf2 = String.valueOf(modGameArchiveTagBean3 != null ? Integer.valueOf(modGameArchiveTagBean3.getType()) : null);
        }
        Ext position2 = gameId2.setPosition(strValueOf2);
        ModGameArchiveTagBean modGameArchiveTagBean4 = this.archiveTag;
        tVarL2.X(event2, position2, modGameArchiveTagBean4 != null ? modGameArchiveTagBean4.getTagId() : null);
        CloudArchiveTable cloudArchiveTableP = t6.g.t().p(archive.getId());
        if (cloudArchiveTableP != null && cloudArchiveTableP.getIsFirstRun() == 1) {
            cloudArchiveTableP.setIsFirstRun(2);
            t6.g.t().update(cloudArchiveTableP);
            com.join.mgps.Util.j0.a().c(new ArchiveDownEvent(10, archive));
        }
        startGame(archive);
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickSetNetWork() {
        UtilsMy.N3(getContext());
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View root;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setDataBinding((bt0) DataBindingUtil.inflate(inflater, R.layout.recyclerview_layout_databinding, container, false));
        initData();
        bt0 dataBinding = getDataBinding();
        if (dataBinding != null && (root = dataBinding.getRoot()) != null) {
            root.setBackgroundResource(R.drawable.alph);
        }
        return getDataBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        com.join.mgps.Util.j0.a().e(this);
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onPraise(@NotNull final ArchiveData archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
        if (!com.join.mgps.va.overmind.i.M(com.join.mgps.va.overmind.i.f73262g.d(), getViewModle().getPackageName(), 0, 2, null)) {
            getViewModleShareViewModle().getShowDownlloadDialog().setValue(1);
            return;
        }
        Context context = getContext();
        if (context != null) {
            EXTKt.checkHasLogin(context, new Function0() { // from class: com.join.kotlin.ui.cloudarchive.h1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ModgameCloudListFragment.onPraise$lambda$34(this.f48996b, archive);
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRecivedDownLoadEVent(@NotNull ArchiveDownEvent archiveDownEvent) {
        Intrinsics.checkNotNullParameter(archiveDownEvent, "archiveDownEvent");
        getViewModle().onRecivedDownLoadEVent(archiveDownEvent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        DownloadTask downloadTaskG;
        super.onResume();
        ArchiveData lastStartArchive = getViewModleShareViewModle().getLastStartArchive();
        boolean z10 = false;
        if (lastStartArchive != null) {
            String id2 = lastStartArchive.getId();
            if (!(id2 == null || id2.length() == 0)) {
                t6.g gVarT = t6.g.t();
                Intrinsics.checkNotNull(lastStartArchive);
                CloudArchiveTable cloudArchiveTableP = gVarT.p(lastStartArchive.getId());
                if (cloudArchiveTableP != null && cloudArchiveTableP.getIsFirstRun() == 2) {
                    PrefDef_ prefDef_ = new PrefDef_(getContext());
                    if (!(t2.i(prefDef_.lastLaunchModGameId().d()) && (((downloadTaskG = q5.f.M().G(prefDef_.lastLaunchModGameId().d())) != null && APKUtils.f34739a.H(downloadTaskG) && (downloadTaskG.getGame_run_state() == 3 || downloadTaskG.getGame_run_state() == 0)) || (APKUtils.f34739a.C(downloadTaskG) && downloadTaskG.getGame_run_state() == 0)))) {
                        if (lastStartArchive.getIsLike() == 0 && lastStartArchive.getIsUnLike() == 0) {
                            CommentArchiveDialog commentArchiveDialog = new CommentArchiveDialog();
                            Bundle bundle = new Bundle();
                            bundle.putSerializable("archive", lastStartArchive);
                            commentArchiveDialog.setArguments(bundle);
                            String archiveDesc = lastStartArchive.getArchiveDesc();
                            Intrinsics.checkNotNullExpressionValue(archiveDesc, "getArchiveDesc(...)");
                            commentArchiveDialog.setDatas(new DialogData(archiveDesc, "请评价一下你刚才玩的云存档吧～", null, null, false, 28, null));
                            FragmentManager parentFragmentManager = getParentFragmentManager();
                            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "getParentFragmentManager(...)");
                            commentArchiveDialog.show(parentFragmentManager, "");
                        }
                        getViewModleShareViewModle().setLastStartArchive(new ArchiveData());
                    }
                }
            }
        }
        this.page = 1;
        UserInfo accountData = AccountUtil_.getInstance_(getActivity()).getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "getAccountData(...)");
        if (!t2.h(accountData.getToken()) && !AccountUtil_.getInstance_(getActivity()).isTourist()) {
            z10 = true;
        }
        if (z10 != this.isLogin) {
            loadData();
            this.isLogin = z10;
        }
    }

    public final void realLaunchGame(@NotNull final ArchiveData archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
        final DownloadTask downloadTaskG = q5.f.M().G(archive.getGame_id());
        if (downloadTaskG == null) {
            com.join.mgps.Util.h1.e(archive.getGame_id() + " download task is null.");
        } else if (com.join.mgps.va.overmind.i.f73262g.d().R(downloadTaskG.getPackageName())) {
            APKUtils.b bVar = APKUtils.f34739a;
            if (bVar.g(getContext(), downloadTaskG) || bVar.j(getContext(), new Function0() { // from class: com.join.kotlin.ui.cloudarchive.f1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ModgameCloudListFragment.realLaunchGame$lambda$26(this.f48988b, archive, downloadTaskG);
                }
            })) {
                return;
            }
        }
        onClickRunGame(archive, downloadTaskG);
    }

    public final void scrollToTop() {
        if (getDataBinding() == null) {
            return;
        }
        getDataBinding().f36573b.smoothScrollToPosition(0);
    }

    public final void setArchiveDataPop(@NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(archiveData, "<set-?>");
        this.archiveDataPop = archiveData;
    }

    public final void setArchiveTag(@Nullable ModGameArchiveTagBean modGameArchiveTagBean) {
        this.archiveTag = modGameArchiveTagBean;
    }

    public final void setDataBinding(@NotNull bt0 bt0Var) {
        Intrinsics.checkNotNullParameter(bt0Var, "<set-?>");
        this.dataBinding = bt0Var;
    }

    public final void setDeleteCloud(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.deleteCloud = textView;
    }

    public final void setGameId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gameId = str;
    }

    public final void setIsfirst(boolean z10) {
        this.isfirst = z10;
    }

    public final void setLogin(boolean z10) {
        this.isLogin = z10;
    }

    public final void setMain(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.main = view;
    }

    public final void setModgameBean(@Nullable ModGameDetailBean modGameDetailBean) {
        this.modgameBean = modGameDetailBean;
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    public final void setReDownload(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.reDownload = textView;
    }

    public final void setTrangleBottom(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.trangleBottom = view;
    }

    public final void setTrangleTop(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.trangleTop = view;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void uploadCloud() {
        Context context = getContext();
        if (context != null) {
            EXTKt.checkHasNetWork(context, new Function0() { // from class: com.join.kotlin.ui.cloudarchive.k1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ModgameCloudListFragment.uploadCloud$lambda$30(this.f49007b);
                }
            });
        }
    }
}
