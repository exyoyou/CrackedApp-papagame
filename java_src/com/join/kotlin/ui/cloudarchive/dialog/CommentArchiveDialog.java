package com.join.kotlin.ui.cloudarchive.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.wl0;
import com.join.kotlin.domain.ext.EXTKt;
import com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.Util.a3;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import java.io.Serializable;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u001c\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0012H\u0016J\u000e\u0010$\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001fJ\u001a\u0010%\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006*"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/ModCommentlArchiveDialogBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ModCommentlArchiveDialogBinding;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ModCommentlArchiveDialogBinding;)V", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "onClick", "v", "dialogData", "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "getDialogData", "()Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "setDialogData", "(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V", "setDatas", "show", "manager", "Landroidx/fragment/app/FragmentManager;", TagGameListActivity_.TAG_EXTRA, "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CommentArchiveDialog extends DialogFragment implements View.OnClickListener {
    public wl0 dataBinding;

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.dialog.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CommentArchiveDialog.viewModle_delegate$lambda$0(this.f48961b);
        }
    });

    @Nullable
    private DialogData dialogData = new DialogData("提示", "请评价一下你刚才玩的云存档吧～", null, null, false, 28, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onClick$lambda$4(CommentArchiveDialog commentArchiveDialog) {
        ArchiveData value;
        DelArchiveDialogViewModle viewModle = commentArchiveDialog.getViewModle();
        FragmentActivity fragmentActivityRequireActivity = commentArchiveDialog.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        viewModle.commentArchive(fragmentActivityRequireActivity, SimpleComparison.LIKE_OPERATION);
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(commentArchiveDialog.getContext());
        Event event = Event.clickEvalCloudButton;
        Ext from = new Ext().setFrom("1");
        MutableLiveData<ArchiveData> archive = commentArchiveDialog.getViewModle().getArchive();
        tVarL.R1(event, from.setGameId((archive == null || (value = archive.getValue()) == null) ? null : value.getGame_id()));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onClick$lambda$5(CommentArchiveDialog commentArchiveDialog) {
        ArchiveData value;
        DelArchiveDialogViewModle viewModle = commentArchiveDialog.getViewModle();
        FragmentActivity fragmentActivityRequireActivity = commentArchiveDialog.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        viewModle.commentArchive(fragmentActivityRequireActivity, "NEGATIVE");
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(commentArchiveDialog.getContext());
        Event event = Event.clickEvalCloudButton;
        Ext from = new Ext().setFrom("4");
        MutableLiveData<ArchiveData> archive = commentArchiveDialog.getViewModle().getArchive();
        tVarL.R1(event, from.setGameId((archive == null || (value = archive.getValue()) == null) ? null : value.getGame_id()));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onClick$lambda$6(CommentArchiveDialog commentArchiveDialog) {
        ArchiveData value;
        DelArchiveDialogViewModle viewModle = commentArchiveDialog.getViewModle();
        FragmentActivity fragmentActivityRequireActivity = commentArchiveDialog.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        viewModle.commentArchive(fragmentActivityRequireActivity, "PLAGIARIZE");
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(commentArchiveDialog.getContext());
        Event event = Event.clickEvalCloudButton;
        Ext from = new Ext().setFrom("3");
        MutableLiveData<ArchiveData> archive = commentArchiveDialog.getViewModle().getArchive();
        tVarL.R1(event, from.setGameId((archive == null || (value = archive.getValue()) == null) ? null : value.getGame_id()));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$1(CommentArchiveDialog commentArchiveDialog, int i10) {
        if (i10 == 1) {
            a3.b(commentArchiveDialog.getContext()).d("评价成功");
            commentArchiveDialog.dismiss();
        } else {
            commentArchiveDialog.dismiss();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DelArchiveDialogViewModle viewModle_delegate$lambda$0(CommentArchiveDialog commentArchiveDialog) {
        return (DelArchiveDialogViewModle) new ViewModelProvider(commentArchiveDialog, new ViewModelProvider.NewInstanceFactory()).get(DelArchiveDialogViewModle.class);
    }

    @NotNull
    public final wl0 getDataBinding() {
        wl0 wl0Var = this.dataBinding;
        if (wl0Var != null) {
            return wl0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        return null;
    }

    @Nullable
    public final DialogData getDialogData() {
        return this.dialogData;
    }

    @NotNull
    public final DelArchiveDialogViewModle getViewModle() {
        return (DelArchiveDialogViewModle) this.viewModle.getValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        Integer numValueOf = v10 != null ? Integer.valueOf(v10.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.praise) {
            Context context = getContext();
            if (context != null) {
                EXTKt.checkHasLogin(context, new Function0() { // from class: com.join.kotlin.ui.cloudarchive.dialog.f
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CommentArchiveDialog.onClick$lambda$4(this.f48963b);
                    }
                });
                return;
            }
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.unCommend) {
            Context context2 = getContext();
            if (context2 != null) {
                EXTKt.checkHasLogin(context2, new Function0() { // from class: com.join.kotlin.ui.cloudarchive.dialog.g
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CommentArchiveDialog.onClick$lambda$5(this.f48964b);
                    }
                });
                return;
            }
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.otherUsers) {
            Context context3 = getContext();
            if (context3 != null) {
                EXTKt.checkHasLogin(context3, new Function0() { // from class: com.join.kotlin.ui.cloudarchive.dialog.h
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CommentArchiveDialog.onClick$lambda$6(this.f48965b);
                    }
                });
                return;
            }
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.closed) {
            dismiss();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setDataBinding((wl0) DataBindingUtil.inflate(inflater, R.layout.mod_commentl_archive_dialog, container, false));
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        getDataBinding().setLifecycleOwner(this);
        getDataBinding().setVariable(50, getViewModle());
        getDataBinding().setVariable(8, this);
        getViewModle().setClickCommentDialogListener(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.dialog.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CommentArchiveDialog.onCreateView$lambda$1(this.f48962b, ((Integer) obj).intValue());
            }
        });
        getViewModle().getDialogData().setValue(this.dialogData);
        Bundle arguments = getArguments();
        if (arguments != null) {
            MutableLiveData<ArchiveData> archive = getViewModle().getArchive();
            Serializable serializable = arguments.getSerializable("archive");
            Intrinsics.checkNotNull(serializable, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            archive.setValue((ArchiveData) serializable);
        }
        t6.g gVarT = t6.g.t();
        ArchiveData value = getViewModle().getArchive().getValue();
        CloudArchiveTable cloudArchiveTableP = gVarT.p(value != null ? value.getId() : null);
        if (cloudArchiveTableP != null) {
            cloudArchiveTableP.setIsFirstRun(3);
            t6.g.t().update(cloudArchiveTableP);
        }
        com.papa.sim.statistic.t.l(getContext()).R1(Event.exitGamePopupWin, new Ext().setGameId(cloudArchiveTableP != null ? cloudArchiveTableP.getGameId() : null));
        return getDataBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
    }

    public final void setDataBinding(@NotNull wl0 wl0Var) {
        Intrinsics.checkNotNullParameter(wl0Var, "<set-?>");
        this.dataBinding = wl0Var;
    }

    public final void setDatas(@NotNull DialogData dialogData) {
        Intrinsics.checkNotNullParameter(dialogData, "dialogData");
        this.dialogData = dialogData;
    }

    public final void setDialogData(@Nullable DialogData dialogData) {
        this.dialogData = dialogData;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String tag) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, tag);
    }
}
