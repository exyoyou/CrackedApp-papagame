package com.join.kotlin.ui.cloudarchive;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.np;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.domain.ext.EXTKt;
import com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.data.ModDataRequest;
import com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener;
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
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ModGameArchiveTagBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.StandaloneCloudArchive;
import com.psk.kotlin.util.CommonListMainData;
import com.wufan.user.service.protobuf.UserInfo;
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
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u001d\u001a\u00020\u001eH\u0002J&\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\b\u0010'\u001a\u00020\u001eH\u0016J\u0006\u0010C\u001a\u00020\u001eJ\u0006\u0010L\u001a\u00020\u001eJ\b\u0010M\u001a\u00020\u001eH\u0016J\u0018\u0010S\u001a\u00020\u001e2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u000205H\u0002J\u0006\u0010u\u001a\u00020]J\u0010\u0010{\u001a\u00020\u001e2\u0006\u0010T\u001a\u00020UH\u0016J\b\u0010|\u001a\u00020\u001eH\u0016J\u0018\u0010}\u001a\u00020\u001e2\u0006\u0010~\u001a\u00020 2\u0006\u0010T\u001a\u00020UH\u0016J\u0010\u0010\u007f\u001a\u00020\u001e2\u0006\u0010T\u001a\u00020UH\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\u001e2\u0006\u0010T\u001a\u00020UH\u0016J\u0014\u0010\u0086\u0001\u001a\u00020\u001e2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010>H\u0016J\u0015\u0010\u0088\u0001\u001a\u00020\u001e2\n\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u0001H\u0016J\u0014\u0010\u0093\u0001\u001a\u00020\u001e2\t\u0010\u0094\u0001\u001a\u0004\u0018\u00010 H\u0016J\u0013\u0010\u0095\u0001\u001a\u00020\u001e2\b\u0010\u0096\u0001\u001a\u00030\u0097\u0001H\u0007J\t\u0010\u0098\u0001\u001a\u00020\u001eH\u0016J\t\u0010\u0099\u0001\u001a\u00020\u001eH\u0016J\u0007\u0010\u009a\u0001\u001a\u00020\u001eR\u001b\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\f\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001a\u00104\u001a\u000205X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001a\u0010:\u001a\u000205X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00107\"\u0004\b<\u00109R\u001a\u0010=\u001a\u00020>X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u001a\u0010D\u001a\u00020EX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010F\"\u0004\bG\u0010HR\u001a\u0010I\u001a\u00020EX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bJ\u0010F\"\u0004\bK\u0010HR\u001b\u0010N\u001a\u00020O8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bR\u0010\f\u001a\u0004\bP\u0010QR\u001b\u0010W\u001a\u00020X8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b[\u0010\f\u001a\u0004\bY\u0010ZR\u001b\u0010\\\u001a\u00020]8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b`\u0010\f\u001a\u0004\b^\u0010_R\u001a\u0010a\u001a\u00020bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bc\u0010d\"\u0004\be\u0010fR\u001a\u0010g\u001a\u00020bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bh\u0010d\"\u0004\bi\u0010fR\u001a\u0010j\u001a\u00020 X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR\u001a\u0010o\u001a\u00020 X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bp\u0010l\"\u0004\bq\u0010nR\u001a\u0010r\u001a\u00020 X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bs\u0010l\"\u0004\bt\u0010nR\u001a\u0010v\u001a\u00020UX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR \u0010\u0081\u0001\u001a\u00030\u0082\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u0085\u0001\u0010\f\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001R\u001e\u0010\u008b\u0001\u001a\u00020O8FX\u0086\u0084\u0002¢\u0006\u000e\n\u0005\b\u008d\u0001\u0010\f\u001a\u0005\b\u008c\u0001\u0010QR \u0010\u008e\u0001\u001a\u00030\u008f\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u0092\u0001\u0010\f\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001¨\u0006\u009b\u0001"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;", "Landroid/view/View$OnClickListener;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "<init>", "()V", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "viewModleShareViewModle", "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "getViewModleShareViewModle", "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleShareViewModle$delegate", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/GameDetailModCloudListLayoutDatabindingBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/GameDetailModCloudListLayoutDatabindingBinding;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/GameDetailModCloudListLayoutDatabindingBinding;)V", "adapterx", "Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;", "getAdapterx", "()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;", "adapterx$delegate", "updateLocaDataToShow", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "modgameBean", "Lcom/join/mgps/dto/StandaloneCloudArchive;", "getModgameBean", "()Lcom/join/mgps/dto/StandaloneCloudArchive;", "setModgameBean", "(Lcom/join/mgps/dto/StandaloneCloudArchive;)V", "archiveTag", "Lcom/join/mgps/dto/ModGameArchiveTagBean;", "getArchiveTag", "()Lcom/join/mgps/dto/ModGameArchiveTagBean;", "setArchiveTag", "(Lcom/join/mgps/dto/ModGameArchiveTagBean;)V", "page", "", "getPage", "()I", "setPage", "(I)V", "type", "getType", "setType", "gameId", "", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "initData", "isLogin", "", "()Z", "setLogin", "(Z)V", "isfirst", "getIsfirst", "setIsfirst", "loadData", "onResume", "checkDownloadTypeDialog", "Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "getCheckDownloadTypeDialog", "()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "checkDownloadTypeDialog$delegate", "showDownloadDialog", "archive", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", PlugDownDialogAcitivity_.DOWNLOAD_TYPE_EXTRA, "dialog", "Landroid/app/Dialog;", "getDialog", "()Landroid/app/Dialog;", "dialog$delegate", "popWindow", "Landroid/widget/PopupWindow;", "getPopWindow", "()Landroid/widget/PopupWindow;", "popWindow$delegate", "deleteCloud", "Landroid/widget/TextView;", "getDeleteCloud", "()Landroid/widget/TextView;", "setDeleteCloud", "(Landroid/widget/TextView;)V", "reDownload", "getReDownload", "setReDownload", "trangleBottom", "getTrangleBottom", "()Landroid/view/View;", "setTrangleBottom", "(Landroid/view/View;)V", "trangleTop", "getTrangleTop", "setTrangleTop", "main", "getMain", "setMain", "createPopwindow", "archiveDataPop", "getArchiveDataPop", "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "setArchiveDataPop", "(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V", "onClickRun", "uploadCloud", "onClickMore", "view", "onPraise", "onClickDislike", "imageDialog", "Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "getImageDialog", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "imageDialog$delegate", "onClickImage", "imagePath", "onClickDomain", "domainInfoBean", "Lcom/join/mgps/dto/DomainInfoBean;", "delFragment", "getDelFragment", "delFragment$delegate", "redownFragment", "Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "getRedownFragment", "()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "redownFragment$delegate", "onClick", "v", "onRecivedDownLoadEVent", "archiveDownEvent", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;", "onClickReload", "onClickSetNetWork", "scrollToTop", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameDetailModCloudListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailModCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,671:1\n1#2:672\n774#3:673\n865#3,2:674\n1563#3:676\n1634#3,3:677\n774#3:680\n865#3,2:681\n1563#3:683\n1634#3,3:684\n774#3:687\n865#3,2:688\n1563#3:690\n1634#3,3:691\n*S KotlinDebug\n*F\n+ 1 GameDetailModCloudListFragment.kt\ncom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment\n*L\n98#1:673\n98#1:674,2\n99#1:676\n99#1:677,3\n299#1:680\n299#1:681,2\n300#1:683\n300#1:684,3\n310#1:687\n310#1:688,2\n311#1:690\n311#1:691,3\n*E\n"})
public final class GameDetailModCloudListFragment extends Fragment implements OnClickArchiveListener, View.OnClickListener, LoadBindClickProxy {
    public ArchiveData archiveDataPop;

    @Nullable
    private ModGameArchiveTagBean archiveTag;
    public np dataBinding;
    public TextView deleteCloud;
    private boolean isLogin;
    public View main;

    @Nullable
    private StandaloneCloudArchive modgameBean;
    public TextView reDownload;
    public View trangleBottom;
    public View trangleTop;

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.x
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailModCloudListFragment.viewModle_delegate$lambda$0(this.f49054b);
        }
    });

    /* JADX INFO: renamed from: viewModleShareViewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModleShareViewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.y
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailModCloudListFragment.viewModleShareViewModle_delegate$lambda$1(this.f49060b);
        }
    });

    /* JADX INFO: renamed from: adapterx$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy adapterx = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.z
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailModCloudListFragment.adapterx_delegate$lambda$2(this.f49063b);
        }
    });
    private int page = 1;
    private int type = 1;

    @NotNull
    private String gameId = "";
    private boolean isfirst = true;

    /* JADX INFO: renamed from: checkDownloadTypeDialog$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy checkDownloadTypeDialog = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.a0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailModCloudListFragment.checkDownloadTypeDialog_delegate$lambda$18();
        }
    });

    /* JADX INFO: renamed from: dialog$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy dialog = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.b0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailModCloudListFragment.dialog_delegate$lambda$19(this.f48937b);
        }
    });

    /* JADX INFO: renamed from: popWindow$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy popWindow = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return this.f49018b.createPopwindow();
        }
    });

    /* JADX INFO: renamed from: imageDialog$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy imageDialog = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailModCloudListFragment.imageDialog_delegate$lambda$23();
        }
    });

    /* JADX INFO: renamed from: delFragment$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy delFragment = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailModCloudListFragment.delFragment_delegate$lambda$24();
        }
    });

    /* JADX INFO: renamed from: redownFragment$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy redownFragment = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailModCloudListFragment.redownFragment_delegate$lambda$25();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final ModArchiveAdapter adapterx_delegate$lambda$2(GameDetailModCloudListFragment gameDetailModCloudListFragment) {
        Context contextRequireContext = gameDetailModCloudListFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        ModGameArchiveTagBean modGameArchiveTagBean = gameDetailModCloudListFragment.archiveTag;
        boolean z10 = true;
        if (!(modGameArchiveTagBean != null && modGameArchiveTagBean.getType() == 2)) {
            ModGameArchiveTagBean modGameArchiveTagBean2 = gameDetailModCloudListFragment.archiveTag;
            if (!Intrinsics.areEqual(modGameArchiveTagBean2 != null ? modGameArchiveTagBean2.getName() : null, "精选")) {
                z10 = false;
            }
        }
        return new ModArchiveAdapter(contextRequireContext, gameDetailModCloudListFragment, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DelArchiveDialog checkDownloadTypeDialog_delegate$lambda$18() {
        return new DelArchiveDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DelArchiveDialog delFragment_delegate$lambda$24() {
        return new DelArchiveDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.join.mgps.dialog.f1 dialog_delegate$lambda$19(GameDetailModCloudListFragment gameDetailModCloudListFragment) {
        return com.join.mgps.Util.h0.h0(gameDetailModCloudListFragment.getContext()).y(gameDetailModCloudListFragment.getContext(), "存档拷贝中");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageShowDialog imageDialog_delegate$lambda$23() {
        return new ImageShowDialog(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$10(GameDetailModCloudListFragment gameDetailModCloudListFragment, ResponseModel responseModel) {
        boolean z10 = false;
        if (responseModel == null || responseModel.getCode() != 200) {
            List<CommonListMainData> value = gameDetailModCloudListFragment.getViewModle().getListArchive().getValue();
            if (!(value != null && value.size() == 0)) {
                gameDetailModCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
                return Unit.INSTANCE;
            }
            if (responseModel != null && (responseModel.getPage() == 1 || responseModel.getPage() == 0)) {
                List<CommonListMainData> value2 = gameDetailModCloudListFragment.getViewModle().getListArchive().getValue();
                if (value2 != null) {
                    value2.clear();
                }
                gameDetailModCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
            List<CommonListMainData> value3 = gameDetailModCloudListFragment.getViewModle().getListArchive().getValue();
            if (value3 != null && value3.size() == 0) {
                z10 = true;
            }
            if (z10) {
                gameDetailModCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(3));
            }
        } else {
            gameDetailModCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
            List<ArchiveData> list = (List) responseModel.getData();
            if (responseModel.getPage() == 1) {
                List<CommonListMainData> value4 = gameDetailModCloudListFragment.getViewModle().getListArchive().getValue();
                if (value4 != null) {
                    value4.clear();
                }
                gameDetailModCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
            if (list == null || list.isEmpty()) {
                List<CommonListMainData> value5 = gameDetailModCloudListFragment.getViewModle().getListArchive().getValue();
                if (value5 != null && value5.size() == 0) {
                    z10 = true;
                }
                if (z10) {
                    gameDetailModCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(4));
                }
                gameDetailModCloudListFragment.getDataBinding().f42473c.setNoMore();
            } else {
                List<ArchiveData> value6 = gameDetailModCloudListFragment.getViewModle().getLocalAllArchive().getValue();
                gameDetailModCloudListFragment.page++;
                gameDetailModCloudListFragment.getDataBinding().f42473c.loadMoreComplete();
                for (ArchiveData archiveData : list) {
                    archiveData.setShowType(gameDetailModCloudListFragment.type);
                    archiveData.setGame_id(gameDetailModCloudListFragment.gameId);
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
                                Long value7 = gameDetailModCloudListFragment.getViewModleShareViewModle().getRunIngArchiveId().getValue();
                                archiveData.setRuningArchiveId(value7 != null ? value7.longValue() : 0L);
                                archiveData.setShowText("启动");
                                archiveData.setStatus(8);
                            }
                        }
                    }
                    int i10 = gameDetailModCloudListFragment.type;
                    if (i10 == 1 || i10 == 2) {
                        List<CommonListMainData> value8 = gameDetailModCloudListFragment.getViewModle().getListArchive().getValue();
                        if (value8 != null) {
                            value8.add(new CommonListMainData(5, archiveData, null, null, 12, null));
                        }
                    } else {
                        List<CommonListMainData> value9 = gameDetailModCloudListFragment.getViewModle().getListArchive().getValue();
                        if (value9 != null) {
                            value9.add(new CommonListMainData(4, archiveData, null, null, 12, null));
                        }
                    }
                }
                gameDetailModCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$16(GameDetailModCloudListFragment gameDetailModCloudListFragment, ResponseModel responseModel) {
        if (responseModel != null && responseModel.getCode() == 200) {
            List<ArchiveData> list = (List) responseModel.getData();
            if (list == null || list.isEmpty()) {
                gameDetailModCloudListFragment.getDataBinding().f42473c.setNoMore();
            } else {
                if (responseModel.getPage() == 1) {
                    gameDetailModCloudListFragment.page = 1;
                    List<CommonListMainData> value = gameDetailModCloudListFragment.getViewModle().getListArchive().getValue();
                    if (value != null) {
                        value.clear();
                    }
                }
                gameDetailModCloudListFragment.getViewModle().getLocalAllArchive().getValue();
                gameDetailModCloudListFragment.page++;
                gameDetailModCloudListFragment.getDataBinding().f42473c.loadMoreComplete();
                List<ArchiveData> value2 = gameDetailModCloudListFragment.getViewModle().getLocalAllArchive().getValue();
                Intrinsics.checkNotNull(value2);
                for (ArchiveData archiveData : value2) {
                    archiveData.setIsDownloadArchive(1);
                    archiveData.setStatus(8);
                    archiveData.setShowText("启动");
                    archiveData.setShowType(2);
                    Long value3 = gameDetailModCloudListFragment.getViewModleShareViewModle().getRunIngArchiveId().getValue();
                    archiveData.setRuningArchiveId(value3 != null ? value3.longValue() : 0L);
                    if (archiveData.getUid() == 0) {
                        archiveData.setShowType(1);
                        List<CommonListMainData> value4 = gameDetailModCloudListFragment.getViewModle().getListArchive().getValue();
                        if (value4 != null) {
                            value4.add(new CommonListMainData(4, archiveData, null, null, 12, null));
                        }
                    } else if (archiveData.getUserId() != 0 || Intrinsics.areEqual(archiveData.getId(), "0")) {
                        List<CommonListMainData> value5 = gameDetailModCloudListFragment.getViewModle().getListArchive().getValue();
                        if (value5 != null) {
                            value5.add(new CommonListMainData(3, archiveData, null, null, 12, null));
                        }
                    } else {
                        List<ArchiveData> value6 = gameDetailModCloudListFragment.getViewModle().getLocalAllArchive().getValue();
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
                    ArrayList<ArchiveData> arrayList3 = new ArrayList();
                    for (Object obj2 : list) {
                        if (Intrinsics.areEqual(((ArchiveData) obj2).getId(), archiveData.getId())) {
                            arrayList3.add(obj2);
                        }
                    }
                    ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10));
                    for (ArchiveData archiveData2 : arrayList3) {
                        archiveData.setArchiveDesc(archiveData2.getArchiveDesc());
                        archiveData.setIsLike(archiveData2.getIsLike());
                        archiveData.setLikeCount(archiveData2.getLikeCount());
                        archiveData.setDownloadCount(archiveData2.getDownloadCount());
                        arrayList4.add(Unit.INSTANCE);
                    }
                }
                for (ArchiveData archiveData3 : list) {
                    archiveData3.setShowType(gameDetailModCloudListFragment.type);
                    archiveData3.setGame_id(gameDetailModCloudListFragment.gameId);
                    archiveData3.setIsDownloadArchive(0);
                    archiveData3.setPackageName(gameDetailModCloudListFragment.getViewModle().getPackageName());
                    List<CommonListMainData> value7 = gameDetailModCloudListFragment.getViewModle().getListArchive().getValue();
                    if (value7 != null) {
                        value7.add(new CommonListMainData(5, archiveData3, null, null, 12, null));
                    }
                }
                gameDetailModCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$17(GameDetailModCloudListFragment gameDetailModCloudListFragment, Long l10) {
        if (gameDetailModCloudListFragment.type == 2) {
            List<CommonListMainData> value = gameDetailModCloudListFragment.getViewModle().getListArchive().getValue();
            Intrinsics.checkNotNull(value);
            Iterator<CommonListMainData> it2 = value.iterator();
            while (it2.hasNext()) {
                Object any = it2.next().getAny();
                Intrinsics.checkNotNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                Intrinsics.checkNotNull(l10);
                ((ArchiveData) any).setRuningArchiveId(l10.longValue());
            }
            gameDetailModCloudListFragment.getViewModle().getListArchive().setValue(gameDetailModCloudListFragment.getViewModle().getListArchive().getValue());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$8(GameDetailModCloudListFragment gameDetailModCloudListFragment, List list) {
        gameDetailModCloudListFragment.getAdapterx().notifyDataSetChanged();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onClickDislike$lambda$22(GameDetailModCloudListFragment gameDetailModCloudListFragment, ArchiveData archiveData) {
        ModGameCloudViewModle viewModle = gameDetailModCloudListFragment.getViewModle();
        Context contextRequireContext = gameDetailModCloudListFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        viewModle.commentArchive(contextRequireContext, archiveData, "NEGATIVE", gameDetailModCloudListFragment.type);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onPraise$lambda$21(GameDetailModCloudListFragment gameDetailModCloudListFragment, ArchiveData archiveData) {
        ModGameCloudViewModle viewModle = gameDetailModCloudListFragment.getViewModle();
        Context contextRequireContext = gameDetailModCloudListFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        viewModle.commentArchive(contextRequireContext, archiveData, SimpleComparison.LIKE_OPERATION, gameDetailModCloudListFragment.type);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RedownArchiveDialog redownFragment_delegate$lambda$25() {
        return new RedownArchiveDialog();
    }

    private final void showDownloadDialog(ArchiveData archive, int downloadType) {
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
        getDataBinding().f42473c.setNoMore();
        getAdapterx().notifyDataSetChanged();
        this.page = 1;
        ModDataRequest request = getViewModle().getRequest();
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        request.getAllDownloedArchive(contextRequireContext, this.page, this.gameId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CloudShareViewModle viewModleShareViewModle_delegate$lambda$1(GameDetailModCloudListFragment gameDetailModCloudListFragment) {
        FragmentActivity fragmentActivityRequireActivity = gameDetailModCloudListFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        return (CloudShareViewModle) new ViewModelProvider(fragmentActivityRequireActivity, new ViewModelProvider.NewInstanceFactory()).get(CloudShareViewModle.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ModGameCloudViewModle viewModle_delegate$lambda$0(GameDetailModCloudListFragment gameDetailModCloudListFragment) {
        return (ModGameCloudViewModle) new ViewModelProvider(gameDetailModCloudListFragment, new ViewModelProvider.NewInstanceFactory()).get(ModGameCloudViewModle.class);
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
    public final np getDataBinding() {
        np npVar = this.dataBinding;
        if (npVar != null) {
            return npVar;
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
    public final StandaloneCloudArchive getModgameBean() {
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
            Intrinsics.checkNotNull(serializable, "null cannot be cast to non-null type com.join.mgps.dto.StandaloneCloudArchive");
            this.modgameBean = (StandaloneCloudArchive) serializable;
            this.archiveTag = (ModGameArchiveTagBean) arguments.getSerializable(TagGameListActivity_.TAG_EXTRA);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("initData: ");
        ModGameArchiveTagBean modGameArchiveTagBean = this.archiveTag;
        sb2.append(modGameArchiveTagBean != null ? modGameArchiveTagBean.getName() : null);
        loadData();
        getDataBinding().setLifecycleOwner(this);
        getDataBinding().setVariable(50, getViewModle());
        getDataBinding().setVariable(30, this);
        getDataBinding().f42473c.setAdapter(getAdapterx());
        getDataBinding().f42473c.getLayoutManager();
        getDataBinding().f42473c.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment.initData.2
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                GameDetailModCloudListFragment.this.loadData();
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
                GameDetailModCloudListFragment.this.setPage(1);
                GameDetailModCloudListFragment.this.loadData();
            }
        });
        getViewModle().getListArchive().observe(getViewLifecycleOwner(), new GameDetailModCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailModCloudListFragment.initData$lambda$8(this.f49027b, (List) obj);
            }
        }));
        getViewModle().getRequest().getResultData().observe(getViewLifecycleOwner(), new GameDetailModCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailModCloudListFragment.initData$lambda$10(this.f49029b, (ResponseModel) obj);
            }
        }));
        getViewModle().getRequest().getResultAllHasDownloadData().observe(getViewLifecycleOwner(), new GameDetailModCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailModCloudListFragment.initData$lambda$16(this.f49038b, (ResponseModel) obj);
            }
        }));
        getViewModle().getRequest().getDataChangeItem().observe(getViewLifecycleOwner(), new Observer<ArchiveData>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment.initData.6
            @Override // androidx.lifecycle.Observer
            public void onChanged(ArchiveData t10) {
                Intrinsics.checkNotNullParameter(t10, "t");
                GameDetailModCloudListFragment.this.getViewModle().onitemChanged(t10, GameDetailModCloudListFragment.this.getAdapterx());
            }
        });
        getViewModleShareViewModle().getRunIngArchiveId().observe(requireActivity(), new GameDetailModCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailModCloudListFragment.initData$lambda$17(this.f49046b, (Long) obj);
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
        StandaloneCloudArchive standaloneCloudArchive = this.modgameBean;
        long last_enter_main_page_time = standaloneCloudArchive != null ? standaloneCloudArchive.getLast_enter_main_page_time() : 0L;
        ModGameArchiveTagBean modGameArchiveTagBean = this.archiveTag;
        String tagId = modGameArchiveTagBean != null ? modGameArchiveTagBean.getTagId() : null;
        ModGameArchiveTagBean modGameArchiveTagBean2 = this.archiveTag;
        request2.getModeDatas(contextRequireContext2, i11, str, last_enter_main_page_time, tagId, modGameArchiveTagBean2 != null ? Integer.valueOf(modGameArchiveTagBean2.getType()) : null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        Integer numValueOf = v10 != null ? Integer.valueOf(v10.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.deleteCloud) {
            getPopWindow().dismiss();
            if (this.type != 2) {
                getDelFragment().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment.onClick.2
                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickCancleButn() {
                        GameDetailModCloudListFragment.this.getDelFragment().dismiss();
                    }

                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickOkButn() {
                        ModGameCloudViewModle viewModle = GameDetailModCloudListFragment.this.getViewModle();
                        FragmentActivity activity = GameDetailModCloudListFragment.this.getActivity();
                        Intrinsics.checkNotNull(activity);
                        viewModle.delMyArchiveFromCloud(activity, GameDetailModCloudListFragment.this.getArchiveDataPop());
                        GameDetailModCloudListFragment.this.getDelFragment().dismiss();
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
                getDelFragment().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment.onClick.1
                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickCancleButn() {
                        GameDetailModCloudListFragment.this.getDelFragment().dismiss();
                    }

                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickOkButn() {
                        if (Intrinsics.areEqual(GameDetailModCloudListFragment.this.getArchiveDataPop().getId(), String.valueOf(GameDetailModCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().getValue()))) {
                            GameDetailModCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().setValue(0L);
                        }
                        ModGameCloudViewModle viewModle = GameDetailModCloudListFragment.this.getViewModle();
                        FragmentActivity activity = GameDetailModCloudListFragment.this.getActivity();
                        Intrinsics.checkNotNull(activity);
                        viewModle.delMyDownloadArchive(activity, GameDetailModCloudListFragment.this.getArchiveDataPop());
                        GameDetailModCloudListFragment.this.getDelFragment().dismiss();
                    }
                });
                getDelFragment().setDatas(new DialogData("是否删除此存档", "", "删除", "取消", false, 16, null));
            }
            DelArchiveDialog delFragment = getDelFragment();
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
            delFragment.show(childFragmentManager, "");
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
            EXTKt.checkHasLogin(context, new Function0() { // from class: com.join.kotlin.ui.cloudarchive.s
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return GameDetailModCloudListFragment.onClickDislike$lambda$22(this.f49025b, archive);
                }
            });
        }
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onClickDomain(@Nullable DomainInfoBean domainInfoBean) {
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
        Intrinsics.checkNotNullParameter(archive, "archive");
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
        setDataBinding((np) DataBindingUtil.inflate(inflater, R.layout.game_detail_mod_cloud_list_layout_databinding, container, false));
        initData();
        np dataBinding = getDataBinding();
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
            EXTKt.checkHasLogin(context, new Function0() { // from class: com.join.kotlin.ui.cloudarchive.n
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return GameDetailModCloudListFragment.onPraise$lambda$21(this.f49015b, archive);
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRecivedDownLoadEVent(@NotNull ArchiveDownEvent archiveDownEvent) {
        Intrinsics.checkNotNullParameter(archiveDownEvent, "archiveDownEvent");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onRecivedDownLoadEVent: ");
        ModGameArchiveTagBean modGameArchiveTagBean = this.archiveTag;
        sb2.append(modGameArchiveTagBean != null ? modGameArchiveTagBean.getName() : null);
        getViewModle().onRecivedDownLoadEVent(archiveDownEvent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.page = 1;
        UserInfo accountData = AccountUtil_.getInstance_(getActivity()).getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "getAccountData(...)");
        boolean z10 = (t2.h(accountData.getToken()) || AccountUtil_.getInstance_(getActivity()).isTourist()) ? false : true;
        if (z10 != this.isLogin) {
            loadData();
            this.isLogin = z10;
        }
    }

    public final void scrollToTop() {
        if (getDataBinding() == null) {
            return;
        }
        getDataBinding().f42473c.smoothScrollToPosition(0);
    }

    public final void setArchiveDataPop(@NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(archiveData, "<set-?>");
        this.archiveDataPop = archiveData;
    }

    public final void setArchiveTag(@Nullable ModGameArchiveTagBean modGameArchiveTagBean) {
        this.archiveTag = modGameArchiveTagBean;
    }

    public final void setDataBinding(@NotNull np npVar) {
        Intrinsics.checkNotNullParameter(npVar, "<set-?>");
        this.dataBinding = npVar;
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

    public final void setModgameBean(@Nullable StandaloneCloudArchive standaloneCloudArchive) {
        this.modgameBean = standaloneCloudArchive;
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
    }
}
