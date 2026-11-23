package com.join.kotlin.ui.cloudarchive.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.qi;
import com.join.kotlin.ui.cloudarchive.DownloadArchivDialogeViewModle;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.data.ModDataRequest;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.Util.j0;
import com.join.mgps.activity.mygame.dialog.PlugDownDialogAcitivity_;
import java.io.File;
import java.io.Serializable;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001dB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0002J\u0012\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0012H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/DownloadArchiveDialogBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/DownloadArchiveDialogBinding;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/DownloadArchiveDialogBinding;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "downLoadArchive", "", "onClick", "v", "UpdateLocalArchiveEvent", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DownloadArchiveDialog extends DialogFragment implements View.OnClickListener {
    public qi dataBinding;

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.dialog.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadArchiveDialog.viewModle_delegate$lambda$0(this.f48967b);
        }
    });

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$UpdateLocalArchiveEvent;", "", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class UpdateLocalArchiveEvent {
    }

    private final void downLoadArchive() {
        Context contextRequireActivity;
        try {
            contextRequireActivity = requireActivity();
        } catch (Exception unused) {
            contextRequireActivity = MApplication.f3182z;
        }
        Context context = contextRequireActivity;
        if (context == null) {
            return;
        }
        File externalFilesDir = context.getExternalFilesDir("");
        Intrinsics.checkNotNull(externalFilesDir);
        String absolutePath = externalFilesDir.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        String str = absolutePath + "/Download/cloudarchive/";
        if (getViewModle().getArchive().getValue() == null || getViewModle().getCloud_archive_local_path().getValue() == null) {
            return;
        }
        ModDataRequest request = getViewModle().getRequest();
        ArchiveData value = getViewModle().getArchive().getValue();
        Intrinsics.checkNotNull(value);
        ArchiveData archiveData = value;
        ModGameArchivePathData value2 = getViewModle().getCloud_archive_local_path().getValue();
        Intrinsics.checkNotNull(value2);
        ModGameArchivePathData modGameArchivePathData = value2;
        Integer value3 = getViewModle().getDownloadType().getValue();
        Intrinsics.checkNotNull(value3);
        request.downloadArchive(archiveData, modGameArchivePathData, str, value3.intValue(), context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$4(DownloadArchiveDialog downloadArchiveDialog, Integer num) {
        downloadArchiveDialog.getViewModle().getProgress().setValue(num);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("observe progress=");
        sb2.append(num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$5(DownloadArchiveDialog downloadArchiveDialog, String str) {
        downloadArchiveDialog.getViewModle().getProgressText().setValue(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("progressTextShow=");
        sb2.append(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$6(DownloadArchiveDialog downloadArchiveDialog, Integer num) {
        j0 j0VarA = j0.a();
        Intrinsics.checkNotNull(num);
        j0VarA.c(new ArchiveDownEvent(num.intValue(), downloadArchiveDialog.getViewModle().getArchive().getValue()));
        if (num.intValue() == 4) {
            downloadArchiveDialog.getViewModle().getProgress().setValue(100);
        } else if (num.intValue() == 8) {
            try {
                FragmentActivity fragmentActivityRequireActivity = downloadArchiveDialog.requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
                ModDataRequest request = downloadArchiveDialog.getViewModle().getRequest();
                ArchiveData value = downloadArchiveDialog.getViewModle().getArchive().getValue();
                Intrinsics.checkNotNull(value);
                request.reportDownloadArchive(fragmentActivityRequireActivity, value);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            Integer value2 = downloadArchiveDialog.getViewModle().getDownloadType().getValue();
            if (value2 != null && value2.intValue() == 1) {
                j0.a().c(new UpdateLocalArchiveEvent());
            }
            downloadArchiveDialog.dismiss();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onstatus status=");
        sb2.append(num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadArchivDialogeViewModle viewModle_delegate$lambda$0(DownloadArchiveDialog downloadArchiveDialog) {
        return (DownloadArchivDialogeViewModle) new ViewModelProvider(downloadArchiveDialog, new ViewModelProvider.NewInstanceFactory()).get(DownloadArchivDialogeViewModle.class);
    }

    @NotNull
    public final qi getDataBinding() {
        qi qiVar = this.dataBinding;
        if (qiVar != null) {
            return qiVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        return null;
    }

    @NotNull
    public final DownloadArchivDialogeViewModle getViewModle() {
        return (DownloadArchivDialogeViewModle) this.viewModle.getValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        j0.a().c(new ArchiveDownEvent(6, getViewModle().getArchive().getValue()));
        getViewModle().getRequest().cancleDownloadTask(getViewModle().getArchive().getValue());
        dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        ArchiveData value;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setDataBinding((qi) DataBindingUtil.inflate(inflater, R.layout.download_archive_dialog, container, false));
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        getDataBinding().setLifecycleOwner(this);
        getDataBinding().setVariable(50, getViewModle());
        getDataBinding().setVariable(8, this);
        Bundle arguments = getArguments();
        if (arguments != null) {
            MutableLiveData<ArchiveData> archive = getViewModle().getArchive();
            Serializable serializable = arguments.getSerializable("archive");
            Intrinsics.checkNotNull(serializable, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            archive.setValue((ArchiveData) serializable);
            getViewModle().getDownloadType().setValue(Integer.valueOf(arguments.getInt(PlugDownDialogAcitivity_.DOWNLOAD_TYPE_EXTRA)));
            MutableLiveData<ModGameArchivePathData> cloud_archive_local_path = getViewModle().getCloud_archive_local_path();
            Serializable serializable2 = arguments.getSerializable("cloud_archive_local_path");
            Intrinsics.checkNotNull(serializable2, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData");
            cloud_archive_local_path.setValue((ModGameArchivePathData) serializable2);
        }
        if (getViewModle().getArchive().getValue() != null) {
            q5.f fVarM = q5.f.M();
            ArchiveData value2 = getViewModle().getArchive().getValue();
            DownloadTask downloadTaskG = fVarM.G(value2 != null ? value2.getGame_id() : null);
            if (downloadTaskG != null && (value = getViewModle().getArchive().getValue()) != null) {
                value.setPackageName(downloadTaskG.getPackageName());
            }
        }
        getViewModle().getRequest().getProgress().observe(this, new Observer() { // from class: com.join.kotlin.ui.cloudarchive.dialog.k
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                DownloadArchiveDialog.onCreateView$lambda$4(this.f48968a, (Integer) obj);
            }
        });
        getViewModle().getRequest().getProgressTextShow().observe(this, new Observer() { // from class: com.join.kotlin.ui.cloudarchive.dialog.l
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                DownloadArchiveDialog.onCreateView$lambda$5(this.f48969a, (String) obj);
            }
        });
        getViewModle().getRequest().getStatus().observe(this, new Observer() { // from class: com.join.kotlin.ui.cloudarchive.dialog.m
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                DownloadArchiveDialog.onCreateView$lambda$6(this.f48970a, (Integer) obj);
            }
        });
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.DownloadArchiveDialog.onCreateView.6
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(DialogInterface dialog3, int keyCode, KeyEvent event) {
                    return keyCode == 4;
                }
            });
        }
        downLoadArchive();
        return getDataBinding().getRoot();
    }

    public final void setDataBinding(@NotNull qi qiVar) {
        Intrinsics.checkNotNullParameter(qiVar, "<set-?>");
        this.dataBinding = qiVar;
    }
}
