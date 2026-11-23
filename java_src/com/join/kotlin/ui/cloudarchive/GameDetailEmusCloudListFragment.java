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
import androidx.lifecycle.ViewModelProvider;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.fp;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.domain.ext.EXTKt;
import com.join.kotlin.ui.cloudarchive.adapter.EmusArchiveAdapter;
import com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.data.EmusDataRequest;
import com.join.kotlin.ui.cloudarchive.dialog.DelArchiveDialog;
import com.join.kotlin.ui.cloudarchive.dialog.ImageShowDialog;
import com.join.kotlin.ui.cloudarchive.dialog.RedownArchiveDialog;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.ArchiveShopDataBean;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ModGameArchiveTagBean;
import com.join.mgps.dto.StandaloneCloudArchive;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Î\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J&\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\b\u0010+\u001a\u00020,H\u0016J\u0006\u0010K\u001a\u00020,J\u0006\u0010T\u001a\u00020,J\u0006\u0010s\u001a\u00020[J\u0010\u0010z\u001a\u00020,2\u0006\u0010{\u001a\u00020uH\u0016J\b\u0010|\u001a\u00020,H\u0016J\u0018\u0010}\u001a\u00020,2\u0006\u0010~\u001a\u00020$2\u0006\u0010{\u001a\u00020uH\u0016J\u0010\u0010\u007f\u001a\u00020,2\u0006\u0010{\u001a\u00020uH\u0016J\u0011\u0010\u0080\u0001\u001a\u00020,2\u0006\u0010{\u001a\u00020uH\u0016J\u0014\u0010\u0086\u0001\u001a\u00020,2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010@H\u0016J\u0014\u0010\u0092\u0001\u001a\u00020,2\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010$H\u0016J\u0013\u0010\u0094\u0001\u001a\u00020,2\b\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0007J\t\u0010\u0097\u0001\u001a\u00020,H\u0016J\t\u0010\u0098\u0001\u001a\u00020,H\u0016J\u0007\u0010\u0099\u0001\u001a\u00020,R\u001b\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\f\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u00109\u001a\u00020:X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001a\u0010?\u001a\u00020@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001c\u0010E\u001a\u0004\u0018\u00010FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u001a\u0010L\u001a\u00020MX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010N\"\u0004\bO\u0010PR\u001a\u0010Q\u001a\u00020MX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010N\"\u0004\bS\u0010PR\u001b\u0010U\u001a\u00020V8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bY\u0010\f\u001a\u0004\bW\u0010XR\u001b\u0010Z\u001a\u00020[8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b^\u0010\f\u001a\u0004\b\\\u0010]R\u001a\u0010_\u001a\u00020`X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR\u001a\u0010e\u001a\u00020`X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010b\"\u0004\bg\u0010dR\u001a\u0010h\u001a\u00020$X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR\u001a\u0010m\u001a\u00020$X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bn\u0010j\"\u0004\bo\u0010lR\u001a\u0010p\u001a\u00020$X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bq\u0010j\"\u0004\br\u0010lR\u001a\u0010t\u001a\u00020uX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\bv\u0010w\"\u0004\bx\u0010yR \u0010\u0081\u0001\u001a\u00030\u0082\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u0085\u0001\u0010\f\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001R \u0010\u0088\u0001\u001a\u00030\u0089\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u008c\u0001\u0010\f\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001R \u0010\u008d\u0001\u001a\u00030\u008e\u00018FX\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u0091\u0001\u0010\f\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001¨\u0006\u009a\u0001"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;", "Landroid/view/View$OnClickListener;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "<init>", "()V", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "viewModleShareViewModle", "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "getViewModleShareViewModle", "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleShareViewModle$delegate", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/GameDetailEmusCloudListLayoutDatabindingBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/GameDetailEmusCloudListLayoutDatabindingBinding;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/GameDetailEmusCloudListLayoutDatabindingBinding;)V", "adapterx", "Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;", "getAdapterx", "()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;", "adapterx$delegate", "mListener", "Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;", "getMListener", "()Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;", "setMListener", "(Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "", "modgameBean", "Lcom/join/mgps/dto/StandaloneCloudArchive;", "getModgameBean", "()Lcom/join/mgps/dto/StandaloneCloudArchive;", "setModgameBean", "(Lcom/join/mgps/dto/StandaloneCloudArchive;)V", "archiveTag", "Lcom/join/mgps/dto/ModGameArchiveTagBean;", "getArchiveTag", "()Lcom/join/mgps/dto/ModGameArchiveTagBean;", "setArchiveTag", "(Lcom/join/mgps/dto/ModGameArchiveTagBean;)V", "page", "", "getPage", "()I", "setPage", "(I)V", "gameId", "", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "modleFourBean", "Lcom/join/mgps/dto/GamedetialModleFourBean;", "getModleFourBean", "()Lcom/join/mgps/dto/GamedetialModleFourBean;", "setModleFourBean", "(Lcom/join/mgps/dto/GamedetialModleFourBean;)V", "initData", "isLogin", "", "()Z", "setLogin", "(Z)V", "isfirst", "getIsfirst", "setIsfirst", "loadData", "dialog", "Landroid/app/Dialog;", "getDialog", "()Landroid/app/Dialog;", "dialog$delegate", "popWindow", "Landroid/widget/PopupWindow;", "getPopWindow", "()Landroid/widget/PopupWindow;", "popWindow$delegate", "deleteCloud", "Landroid/widget/TextView;", "getDeleteCloud", "()Landroid/widget/TextView;", "setDeleteCloud", "(Landroid/widget/TextView;)V", "reDownload", "getReDownload", "setReDownload", "trangleBottom", "getTrangleBottom", "()Landroid/view/View;", "setTrangleBottom", "(Landroid/view/View;)V", "trangleTop", "getTrangleTop", "setTrangleTop", "main", "getMain", "setMain", "createPopwindow", "archiveDataPop", "Lcom/join/mgps/dto/CloudListDataBean;", "getArchiveDataPop", "()Lcom/join/mgps/dto/CloudListDataBean;", "setArchiveDataPop", "(Lcom/join/mgps/dto/CloudListDataBean;)V", "onClickRun", "archive", "uploadCloud", "onClickMore", "view", "onPraise", "onClickDislike", "imageDialog", "Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "getImageDialog", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "imageDialog$delegate", "onClickImage", "imagePath", "delFragment", "Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "getDelFragment", "()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "delFragment$delegate", "redownFragment", "Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "getRedownFragment", "()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "redownFragment$delegate", "onClick", "v", "onRecivedDownLoadEVent", "archiveDownEvent", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;", "onClickReload", "onClickSetNetWork", "scrollToTop", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameDetailEmusCloudListFragment extends Fragment implements OnEmusClickArchiveListener, View.OnClickListener, LoadBindClickProxy {
    public CloudListDataBean archiveDataPop;

    @Nullable
    private ModGameArchiveTagBean archiveTag;
    public fp dataBinding;
    public TextView deleteCloud;
    private boolean isLogin;

    @Nullable
    private IOnRunListener mListener;
    public View main;

    @Nullable
    private StandaloneCloudArchive modgameBean;

    @Nullable
    private GamedetialModleFourBean modleFourBean;
    public TextView reDownload;
    public View trangleBottom;
    public View trangleTop;

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailEmusCloudListFragment.viewModle_delegate$lambda$0(this.f48939b);
        }
    });

    /* JADX INFO: renamed from: viewModleShareViewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModleShareViewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailEmusCloudListFragment.viewModleShareViewModle_delegate$lambda$1(this.f48983b);
        }
    });

    /* JADX INFO: renamed from: adapterx$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy adapterx = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailEmusCloudListFragment.adapterx_delegate$lambda$2(this.f48986b);
        }
    });
    private int page = 1;

    @NotNull
    private String gameId = "";
    private boolean isfirst = true;

    /* JADX INFO: renamed from: dialog$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy dialog = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailEmusCloudListFragment.dialog_delegate$lambda$7(this.f48991b);
        }
    });

    /* JADX INFO: renamed from: popWindow$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy popWindow = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return this.f48995b.createPopwindow();
        }
    });

    /* JADX INFO: renamed from: imageDialog$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy imageDialog = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailEmusCloudListFragment.imageDialog_delegate$lambda$9();
        }
    });

    /* JADX INFO: renamed from: delFragment$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy delFragment = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailEmusCloudListFragment.delFragment_delegate$lambda$10();
        }
    });

    /* JADX INFO: renamed from: redownFragment$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy redownFragment = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GameDetailEmusCloudListFragment.redownFragment_delegate$lambda$11();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final EmusArchiveAdapter adapterx_delegate$lambda$2(GameDetailEmusCloudListFragment gameDetailEmusCloudListFragment) {
        Context contextRequireContext = gameDetailEmusCloudListFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        return new EmusArchiveAdapter(contextRequireContext, gameDetailEmusCloudListFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DelArchiveDialog delFragment_delegate$lambda$10() {
        return new DelArchiveDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.join.mgps.dialog.f1 dialog_delegate$lambda$7(GameDetailEmusCloudListFragment gameDetailEmusCloudListFragment) {
        return com.join.mgps.Util.h0.h0(gameDetailEmusCloudListFragment.getContext()).y(gameDetailEmusCloudListFragment.getContext(), "存档拷贝中");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageShowDialog imageDialog_delegate$lambda$9() {
        return new ImageShowDialog(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$4(GameDetailEmusCloudListFragment gameDetailEmusCloudListFragment, List list) {
        gameDetailEmusCloudListFragment.getAdapterx().notifyDataSetChanged();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$5(GameDetailEmusCloudListFragment gameDetailEmusCloudListFragment, ArchiveShopDataBean archiveShopDataBean) {
        boolean z10 = false;
        if (archiveShopDataBean == null || archiveShopDataBean.getCode() != 600) {
            List<CloudListDataBean> value = gameDetailEmusCloudListFragment.getViewModle().getListArchive().getValue();
            if (!(value != null && value.size() == 0)) {
                gameDetailEmusCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
                return Unit.INSTANCE;
            }
            if (archiveShopDataBean != null && (archiveShopDataBean.getData_info() == null || archiveShopDataBean.getData_info().getPn() == 1 || archiveShopDataBean.getData_info().getPn() == 0)) {
                List<CloudListDataBean> value2 = gameDetailEmusCloudListFragment.getViewModle().getListArchive().getValue();
                if (value2 != null) {
                    value2.clear();
                }
                gameDetailEmusCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
            List<CloudListDataBean> value3 = gameDetailEmusCloudListFragment.getViewModle().getListArchive().getValue();
            if (value3 != null && value3.size() == 0) {
                z10 = true;
            }
            if (z10) {
                gameDetailEmusCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(3));
            }
        } else {
            gameDetailEmusCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
            ArchiveShopDataBean.DataInfoBean data_info = archiveShopDataBean.getData_info();
            if (archiveShopDataBean.getData_info().getPn() == 1) {
                List<CloudListDataBean> value4 = gameDetailEmusCloudListFragment.getViewModle().getListArchive().getValue();
                if (value4 != null) {
                    value4.clear();
                }
                gameDetailEmusCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
            if (data_info == null || data_info.getMarketList().isEmpty()) {
                List<CloudListDataBean> value5 = gameDetailEmusCloudListFragment.getViewModle().getListArchive().getValue();
                if (value5 != null && value5.size() == 0) {
                    z10 = true;
                }
                if (z10) {
                    gameDetailEmusCloudListFragment.getViewModle().getLoadBindData().setValue(new LoadBindindData(4));
                }
                gameDetailEmusCloudListFragment.getDataBinding().f38486c.setNoMore();
            } else {
                gameDetailEmusCloudListFragment.page++;
                gameDetailEmusCloudListFragment.getDataBinding().f38486c.loadMoreComplete();
                List<CloudListDataBean> value6 = gameDetailEmusCloudListFragment.getViewModle().getListArchive().getValue();
                if (value6 != null) {
                    List<CloudListDataBean> marketList = archiveShopDataBean.getData_info().getMarketList();
                    Intrinsics.checkNotNullExpressionValue(marketList, "getMarketList(...)");
                    value6.addAll(marketList);
                }
                gameDetailEmusCloudListFragment.getAdapterx().notifyDataSetChanged();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initData$lambda$6(GameDetailEmusCloudListFragment gameDetailEmusCloudListFragment, CloudListDataBean cloudListDataBean) {
        GameDetailEmusCloudViewModle viewModle = gameDetailEmusCloudListFragment.getViewModle();
        Intrinsics.checkNotNull(cloudListDataBean);
        viewModle.onitemChanged(cloudListDataBean, gameDetailEmusCloudListFragment.getAdapterx());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RedownArchiveDialog redownFragment_delegate$lambda$11() {
        return new RedownArchiveDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CloudShareViewModle viewModleShareViewModle_delegate$lambda$1(GameDetailEmusCloudListFragment gameDetailEmusCloudListFragment) {
        FragmentActivity fragmentActivityRequireActivity = gameDetailEmusCloudListFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        return (CloudShareViewModle) new ViewModelProvider(fragmentActivityRequireActivity, new ViewModelProvider.NewInstanceFactory()).get(CloudShareViewModle.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GameDetailEmusCloudViewModle viewModle_delegate$lambda$0(GameDetailEmusCloudListFragment gameDetailEmusCloudListFragment) {
        return (GameDetailEmusCloudViewModle) new ViewModelProvider(gameDetailEmusCloudListFragment, new ViewModelProvider.NewInstanceFactory()).get(GameDetailEmusCloudViewModle.class);
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
    public final EmusArchiveAdapter getAdapterx() {
        return (EmusArchiveAdapter) this.adapterx.getValue();
    }

    @NotNull
    public final CloudListDataBean getArchiveDataPop() {
        CloudListDataBean cloudListDataBean = this.archiveDataPop;
        if (cloudListDataBean != null) {
            return cloudListDataBean;
        }
        Intrinsics.throwUninitializedPropertyAccessException("archiveDataPop");
        return null;
    }

    @Nullable
    public final ModGameArchiveTagBean getArchiveTag() {
        return this.archiveTag;
    }

    @NotNull
    public final fp getDataBinding() {
        fp fpVar = this.dataBinding;
        if (fpVar != null) {
            return fpVar;
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

    @Nullable
    public final IOnRunListener getMListener() {
        return this.mListener;
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

    @Nullable
    public final GamedetialModleFourBean getModleFourBean() {
        return this.modleFourBean;
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

    @NotNull
    public final GameDetailEmusCloudViewModle getViewModle() {
        return (GameDetailEmusCloudViewModle) this.viewModle.getValue();
    }

    @NotNull
    public final CloudShareViewModle getViewModleShareViewModle() {
        return (CloudShareViewModle) this.viewModleShareViewModle.getValue();
    }

    public final void initData() {
        com.join.mgps.Util.j0.a().d(this);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.gameId = arguments.getString("gameId", "");
            String string = arguments.getString("modleFourBean");
            if (t2.i(string)) {
                this.modleFourBean = (GamedetialModleFourBean) JsonMapper.getInstance().fromJson(string, GamedetialModleFourBean.class);
            }
        }
        loadData();
        getDataBinding().setLifecycleOwner(this);
        getDataBinding().setVariable(50, getViewModle());
        getDataBinding().setVariable(30, this);
        getDataBinding().f38486c.setAdapter(getAdapterx());
        getDataBinding().f38486c.getLayoutManager();
        getDataBinding().f38486c.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment.initData.2
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                GameDetailEmusCloudListFragment.this.loadData();
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
                GameDetailEmusCloudListFragment.this.setPage(1);
                GameDetailEmusCloudListFragment.this.loadData();
            }
        });
        getViewModle().getListArchive().observe(getViewLifecycleOwner(), new GameDetailEmusCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailEmusCloudListFragment.initData$lambda$4(this.f49008b, (List) obj);
            }
        }));
        getViewModle().getRequest().getResultData().observe(getViewLifecycleOwner(), new GameDetailEmusCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailEmusCloudListFragment.initData$lambda$5(this.f49012b, (ArchiveShopDataBean) obj);
            }
        }));
        getViewModle().getRequest().setInstallInExtPlug(getViewModleShareViewModle().getInstallInExtPlug());
        getViewModle().getRequest().getDataChangeItem().observe(getViewLifecycleOwner(), new GameDetailEmusCloudListFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GameDetailEmusCloudListFragment.initData$lambda$6(this.f48942b, (CloudListDataBean) obj);
            }
        }));
        UserInfo accountData = AccountUtil_.getInstance_(getActivity()).getAccountData();
        this.isLogin = (accountData == null || t2.h(accountData.getToken()) || AccountUtil_.getInstance_(getActivity()).isTourist()) ? false : true;
    }

    /* JADX INFO: renamed from: isLogin, reason: from getter */
    public final boolean getIsLogin() {
        return this.isLogin;
    }

    public final void loadData() {
        if (this.page == 1) {
            getViewModle().getLoadBindData().setValue(new LoadBindindData(2));
        }
        EmusDataRequest request = getViewModle().getRequest();
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        request.getModeDatas(contextRequireContext, this.page, this.gameId);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener
    public void onClickDislike(@NotNull CloudListDataBean archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener
    public void onClickImage(@Nullable String imagePath) {
        getImageDialog().setImageDialogPath(imagePath);
        if (EXTKt.dialogFragmentCanShow(getImageDialog())) {
            ImageShowDialog imageDialog = getImageDialog();
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
            imageDialog.show(childFragmentManager, "imageDialog");
        }
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener
    public void onClickMore(@NotNull View view, @NotNull CloudListDataBean archive) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(archive, "archive");
        setArchiveDataPop(archive);
        getPopWindow().setOutsideTouchable(true);
        if (getPopWindow().isShowing()) {
            getPopWindow().dismiss();
        } else {
            getDeleteCloud().setText("删除");
        }
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        loadData();
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener
    public void onClickRun(@NotNull CloudListDataBean archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
        IOnRunListener iOnRunListener = this.mListener;
        if (iOnRunListener != null) {
            Intrinsics.checkNotNull(iOnRunListener);
            iOnRunListener.onRun();
        }
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
        setDataBinding((fp) DataBindingUtil.inflate(inflater, R.layout.game_detail_emus_cloud_list_layout_databinding, container, false));
        initData();
        fp dataBinding = getDataBinding();
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

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener
    public void onPraise(@NotNull CloudListDataBean archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRecivedDownLoadEVent(@NotNull ArchiveDownEvent archiveDownEvent) {
        Intrinsics.checkNotNullParameter(archiveDownEvent, "archiveDownEvent");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onRecivedDownLoadEVent: ");
        ModGameArchiveTagBean modGameArchiveTagBean = this.archiveTag;
        sb2.append(modGameArchiveTagBean != null ? modGameArchiveTagBean.getName() : null);
    }

    public final void scrollToTop() {
        if (getDataBinding() == null) {
            return;
        }
        getDataBinding().f38486c.smoothScrollToPosition(0);
    }

    public final void setArchiveDataPop(@NotNull CloudListDataBean cloudListDataBean) {
        Intrinsics.checkNotNullParameter(cloudListDataBean, "<set-?>");
        this.archiveDataPop = cloudListDataBean;
    }

    public final void setArchiveTag(@Nullable ModGameArchiveTagBean modGameArchiveTagBean) {
        this.archiveTag = modGameArchiveTagBean;
    }

    public final void setDataBinding(@NotNull fp fpVar) {
        Intrinsics.checkNotNullParameter(fpVar, "<set-?>");
        this.dataBinding = fpVar;
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

    public final void setMListener(@Nullable IOnRunListener iOnRunListener) {
        this.mListener = iOnRunListener;
    }

    public final void setMain(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.main = view;
    }

    public final void setModgameBean(@Nullable StandaloneCloudArchive standaloneCloudArchive) {
        this.modgameBean = standaloneCloudArchive;
    }

    public final void setModleFourBean(@Nullable GamedetialModleFourBean gamedetialModleFourBean) {
        this.modleFourBean = gamedetialModleFourBean;
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

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener
    public void uploadCloud() {
    }
}
