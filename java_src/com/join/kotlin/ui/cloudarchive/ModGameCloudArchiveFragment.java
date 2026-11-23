package com.join.kotlin.ui.cloudarchive;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.haima.hmcp.Constants;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.wm0;
import com.join.kotlin.domain.ext.EXTKt;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
import com.join.kotlin.ui.cloudarchive.dialog.NoticeArchiveDialog;
import com.join.mgps.Util.a3;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.va.service.MessengerService;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002:\u0001@B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,2\b\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u001a\u00102\u001a\u0002032\u0006\u00104\u001a\u00020(2\b\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0006\u00105\u001a\u000203J\b\u00106\u001a\u000203H\u0002J\b\u00107\u001a\u000203H\u0002J\u0012\u0010=\u001a\u0002032\b\u0010>\u001a\u0004\u0018\u00010(H\u0016J\b\u0010?\u001a\u000203H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u000b\u001a\u00020\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\n\u001a\u0004\b\r\u0010\u000eR\u001f\u0010\u0010\u001a\u00060\u0011R\u00020\u00008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\n\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010/\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u001e\"\u0004\b1\u0010 R\u001b\u00108\u001a\u0002098FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b<\u0010\n\u001a\u0004\b:\u0010;¨\u0006A"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;", "Landroidx/fragment/app/Fragment;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "viewModleShareViewModle", "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "getViewModleShareViewModle", "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleShareViewModle$delegate", "receiver", "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;", "getReceiver", "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;", "receiver$delegate", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/ModgameCloudArchiveFragmentBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ModgameCloudArchiveFragmentBinding;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ModgameCloudArchiveFragmentBinding;)V", "gameId", "", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "modgameBean", "Lcom/join/mgps/dto/ModGameDetailBean;", "getModgameBean", "()Lcom/join/mgps/dto/ModGameDetailBean;", "setModgameBean", "(Lcom/join/mgps/dto/ModGameDetailBean;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "imagePath", "getImagePath", "setImagePath", "onViewCreated", "", "view", "initData", "showTabUi", "startupload", "noticeDialog", "Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;", "getNoticeDialog", "()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;", "noticeDialog$delegate", "onClick", "v", "onDestroy", "MyReceiver", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ModGameCloudArchiveFragment extends Fragment implements View.OnClickListener {

    @Nullable
    private wm0 dataBinding;

    @Nullable
    private String imagePath;

    @Nullable
    private ModGameDetailBean modgameBean;

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.e0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModGameCloudArchiveFragment.viewModle_delegate$lambda$0(this.f48984b);
        }
    });

    /* JADX INFO: renamed from: viewModleShareViewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModleShareViewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.f0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModGameCloudArchiveFragment.viewModleShareViewModle_delegate$lambda$1(this.f48987b);
        }
    });

    /* JADX INFO: renamed from: receiver$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy receiver = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.g0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModGameCloudArchiveFragment.receiver_delegate$lambda$2(this.f48992b);
        }
    });

    @NotNull
    private String gameId = "1";

    /* JADX INFO: renamed from: noticeDialog$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy noticeDialog = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.h0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModGameCloudArchiveFragment.noticeDialog_delegate$lambda$6();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;)V", "onReceive", "", "context", "Landroid/content/Context;", Constants.WS_MESSAGE_TYPE_INTENT, "Landroid/content/Intent;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    final class MyReceiver extends BroadcastReceiver {
        public MyReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@Nullable Context context, @Nullable Intent intent) {
            if (Intrinsics.areEqual(intent != null ? intent.getAction() : null, MessengerService.F)) {
                ModGameCloudArchiveFragment.this.setImagePath(intent.getStringExtra("imagePath"));
                ModGameCloudArchiveFragment.this.startupload();
            }
        }
    }

    private final MyReceiver getReceiver() {
        return (MyReceiver) this.receiver.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NoticeArchiveDialog noticeDialog_delegate$lambda$6() {
        return new NoticeArchiveDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MyReceiver receiver_delegate$lambda$2(ModGameCloudArchiveFragment modGameCloudArchiveFragment) {
        return modGameCloudArchiveFragment.new MyReceiver();
    }

    private final void showTabUi() {
        final ArrayList arrayList = new ArrayList();
        Bundle bundle = new Bundle();
        bundle.putString("gameId", this.gameId);
        bundle.putInt("type", 2);
        bundle.putSerializable("datas", this.modgameBean);
        arrayList.add(new com.join.mgps.adapter.h0.a("本地", Fragment.instantiate(requireActivity(), ModgameCloudListFragment.class.getName(), bundle)));
        ModgameCloudListFragment modgameCloudListFragment = new ModgameCloudListFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putString("gameId", this.gameId);
        bundle2.putInt("type", 3);
        bundle2.putSerializable("datas", this.modgameBean);
        ModGameCloudViewModle viewModle = getViewModle();
        ModGameDetailBean modGameDetailBean = this.modgameBean;
        Intrinsics.checkNotNull(modGameDetailBean);
        viewModle.setPackageName(String.valueOf(modGameDetailBean.getMod_game_info().getPackageName()));
        modgameCloudListFragment.setArguments(bundle2);
        arrayList.add(new com.join.mgps.adapter.h0.a("已发布", modgameCloudListFragment));
        com.join.mgps.adapter.h0 h0Var = new com.join.mgps.adapter.h0(getChildFragmentManager(), arrayList);
        wm0 wm0Var = this.dataBinding;
        Intrinsics.checkNotNull(wm0Var);
        wm0Var.f46868d.setAdapter(h0Var);
        wm0 wm0Var2 = this.dataBinding;
        Intrinsics.checkNotNull(wm0Var2);
        SlidingTabLayout slidingTabLayout = wm0Var2.f46866b;
        wm0 wm0Var3 = this.dataBinding;
        Intrinsics.checkNotNull(wm0Var3);
        slidingTabLayout.setViewPager(wm0Var3.f46868d);
        wm0 wm0Var4 = this.dataBinding;
        Intrinsics.checkNotNull(wm0Var4);
        wm0Var4.f46868d.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudArchiveFragment.showTabUi.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int p10) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int p10, float p11, int p12) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int p10) {
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    wm0 dataBinding = this.getDataBinding();
                    Intrinsics.checkNotNull(dataBinding);
                    TextView textViewJ = dataBinding.f46866b.j(i10);
                    if (i10 == p10) {
                        textViewJ.setTypeface(Typeface.defaultFromStyle(1));
                    } else {
                        textViewJ.setTypeface(Typeface.defaultFromStyle(0));
                    }
                }
                if (p10 == 0) {
                    this.getViewModle().getShowPosition().setValue(1);
                } else {
                    if (p10 != 1) {
                        return;
                    }
                    this.getViewModle().getShowPosition().setValue(2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startupload() {
        Context context = getContext();
        if (context != null) {
            EXTKt.checkHasNetWork(context, new Function0() { // from class: com.join.kotlin.ui.cloudarchive.i0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ModGameCloudArchiveFragment.startupload$lambda$5(this.f48998b);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit startupload$lambda$5(final ModGameCloudArchiveFragment modGameCloudArchiveFragment) {
        Context context = modGameCloudArchiveFragment.getContext();
        if (context != null) {
            EXTKt.checkHasLogin(context, new Function0() { // from class: com.join.kotlin.ui.cloudarchive.d0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ModGameCloudArchiveFragment.startupload$lambda$5$lambda$4(this.f48943b);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit startupload$lambda$5$lambda$4(ModGameCloudArchiveFragment modGameCloudArchiveFragment) {
        Intent intent = new Intent(modGameCloudArchiveFragment.getActivity(), (Class<?>) ModUploadArchiveActivity.class);
        List<ArchiveData> value = modGameCloudArchiveFragment.getViewModleShareViewModle().getLocalArchiveLists().getValue();
        if (value == null || value.isEmpty()) {
            a3.b(modGameCloudArchiveFragment.getContext()).d("本地默认存档为空，无法分享");
            return Unit.INSTANCE;
        }
        intent.putExtra("archives", (Serializable) value);
        intent.putExtra("runIngArchiveId", modGameCloudArchiveFragment.getViewModleShareViewModle().getRunIngArchiveId().getValue());
        ModGameDetailBean modGameDetailBean = modGameCloudArchiveFragment.modgameBean;
        Intrinsics.checkNotNull(modGameDetailBean);
        intent.putExtra("archiveFileSuffix", modGameDetailBean.getCloud_archive_local_path().getArchiveFileSuffix());
        intent.putExtra("imagePath", modGameCloudArchiveFragment.imagePath);
        modGameCloudArchiveFragment.startActivity(intent);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CloudShareViewModle viewModleShareViewModle_delegate$lambda$1(ModGameCloudArchiveFragment modGameCloudArchiveFragment) {
        FragmentActivity fragmentActivityRequireActivity = modGameCloudArchiveFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        return (CloudShareViewModle) new ViewModelProvider(fragmentActivityRequireActivity, new ViewModelProvider.NewInstanceFactory()).get(CloudShareViewModle.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ModGameCloudViewModle viewModle_delegate$lambda$0(ModGameCloudArchiveFragment modGameCloudArchiveFragment) {
        return (ModGameCloudViewModle) new ViewModelProvider(modGameCloudArchiveFragment, new ViewModelProvider.NewInstanceFactory()).get(ModGameCloudViewModle.class);
    }

    @Nullable
    public final wm0 getDataBinding() {
        return this.dataBinding;
    }

    @NotNull
    public final String getGameId() {
        return this.gameId;
    }

    @Nullable
    public final String getImagePath() {
        return this.imagePath;
    }

    @Nullable
    public final ModGameDetailBean getModgameBean() {
        return this.modgameBean;
    }

    @NotNull
    public final NoticeArchiveDialog getNoticeDialog() {
        return (NoticeArchiveDialog) this.noticeDialog.getValue();
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
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.gameId = arguments.getString("gameId", "");
            Serializable serializable = arguments.getSerializable("datas");
            Intrinsics.checkNotNull(serializable, "null cannot be cast to non-null type com.join.mgps.dto.ModGameDetailBean");
            this.modgameBean = (ModGameDetailBean) serializable;
        }
        wm0 wm0Var = this.dataBinding;
        if (wm0Var != null) {
            wm0Var.u(getViewModle());
        }
        showTabUi();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        Long value;
        GamedetialModleFourBean mod_game_info;
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(getContext());
        Event event = Event.clickIssueCloudSaveButton;
        Ext ext = new Ext();
        ModGameDetailBean modGameDetailBean = this.modgameBean;
        tVarL.R1(event, ext.setGameId((modGameDetailBean == null || (mod_game_info = modGameDetailBean.getMod_game_info()) == null) ? null : mod_game_info.getGame_id()));
        if (getViewModleShareViewModle().getRunIngArchiveId().getValue() == null || ((value = getViewModleShareViewModle().getRunIngArchiveId().getValue()) != null && value.longValue() == 0)) {
            if (com.join.mgps.va.overmind.i.M(com.join.mgps.va.overmind.i.f73262g.d(), getViewModle().getPackageName(), 0, 2, null)) {
                startupload();
                return;
            } else {
                getViewModleShareViewModle().getShowDownlloadDialog().setValue(1);
                return;
            }
        }
        t6.g gVarT = t6.g.t();
        Long value2 = getViewModleShareViewModle().getRunIngArchiveId().getValue();
        Intrinsics.checkNotNull(value2);
        CloudArchiveTable cloudArchiveTableP = gVarT.p(String.valueOf(value2.longValue()));
        if (cloudArchiveTableP != null) {
            ArchiveData archiveData = (ArchiveData) JsonMapper.getInstance().fromJson(cloudArchiveTableP.getArchiveDataJson(), ArchiveData.class);
            if (archiveData != null) {
                getNoticeDialog().setDatas(new DialogData("提示", "当前本地是  " + archiveData.getNickname() + "  的存档，请切换回默认存档后再发布", "切换存档", null, true, 8, null));
                getNoticeDialog().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudArchiveFragment.onClick.1
                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickCancleButn() {
                    }

                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickOkButn() {
                        ModGameCloudArchiveFragment.this.getNoticeDialog().dismiss();
                    }
                });
                NoticeArchiveDialog noticeDialog = getNoticeDialog();
                FragmentManager parentFragmentManager = getParentFragmentManager();
                Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "getParentFragmentManager(...)");
                noticeDialog.show(parentFragmentManager, "");
                return;
            }
        }
        startupload();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View root;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        wm0 wm0Var = (wm0) DataBindingUtil.inflate(inflater, R.layout.modgame_cloud_archive_fragment, container, false);
        this.dataBinding = wm0Var;
        Intrinsics.checkNotNull(wm0Var);
        wm0Var.setLifecycleOwner(this);
        wm0 wm0Var2 = this.dataBinding;
        if (wm0Var2 != null && (root = wm0Var2.getRoot()) != null) {
            root.setBackgroundResource(R.drawable.alph);
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(MessengerService.F);
        Context context = getContext();
        if (context != null) {
            context.registerReceiver(getReceiver(), intentFilter);
        }
        wm0 wm0Var3 = this.dataBinding;
        if (wm0Var3 != null) {
            return wm0Var3.getRoot();
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Context context = getContext();
        if (context != null) {
            context.unregisterReceiver(getReceiver());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initData();
    }

    public final void setDataBinding(@Nullable wm0 wm0Var) {
        this.dataBinding = wm0Var;
    }

    public final void setGameId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gameId = str;
    }

    public final void setImagePath(@Nullable String str) {
        this.imagePath = str;
    }

    public final void setModgameBean(@Nullable ModGameDetailBean modGameDetailBean) {
        this.modgameBean = modGameDetailBean;
    }
}
