package com.join.kotlin.ui.cloudarchive.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.sl0;
import com.join.kotlin.ui.cloudarchive.adapter.ModChoiceArchiveAdapter;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.activity.TagGameListActivity_;
import java.io.Serializable;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u001a\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00172\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010!\u001a\u00020\u001f2\b\u0010\"\u001a\u0004\u0018\u00010\u0017H\u0016J)\u0010)\u001a\u00020\u001f2!\u0010*\u001a\u001d\u0012\u0013\u0012\u00110%¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\u001f0$J\u001a\u0010+\u001a\u00020\u001f2\u0006\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0013\u0010\u0014R)\u0010#\u001a\u001d\u0012\u0013\u0012\u00110%¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\u001f0$X\u0082.¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/ModChoiceArchiveDialogBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ModChoiceArchiveDialogBinding;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ModChoiceArchiveDialogBinding;)V", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "adapter", "Lcom/join/kotlin/ui/cloudarchive/adapter/ModChoiceArchiveAdapter;", "getAdapter", "()Lcom/join/kotlin/ui/cloudarchive/adapter/ModChoiceArchiveAdapter;", "adapter$delegate", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "onClick", "v", "choicedFun", "Lkotlin/Function1;", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "Lkotlin/ParameterName;", "name", "archive", "setItemChoiced", com.alipay.sdk.authjs.a.f7128m, "show", "manager", "Landroidx/fragment/app/FragmentManager;", TagGameListActivity_.TAG_EXTRA, "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nChoiceArchiveDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChoiceArchiveDialog.kt\ncom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n1869#2,2:111\n1869#2,2:113\n*S KotlinDebug\n*F\n+ 1 ChoiceArchiveDialog.kt\ncom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog\n*L\n46#1:111,2\n61#1:113,2\n*E\n"})
public final class ChoiceArchiveDialog extends DialogFragment implements View.OnClickListener {
    private Function1<? super ArchiveData, Unit> choicedFun;
    public sl0 dataBinding;

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.dialog.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ChoiceArchiveDialog.viewModle_delegate$lambda$0(this.f48959b);
        }
    });

    /* JADX INFO: renamed from: adapter$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy adapter = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.dialog.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ChoiceArchiveDialog.adapter_delegate$lambda$1(this.f48960b);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final ModChoiceArchiveAdapter adapter_delegate$lambda$1(ChoiceArchiveDialog choiceArchiveDialog) {
        Context context = choiceArchiveDialog.getContext();
        Intrinsics.checkNotNull(context);
        return new ModChoiceArchiveAdapter(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$5(ChoiceArchiveDialog choiceArchiveDialog, int i10, ArchiveData item, int i11) {
        Intrinsics.checkNotNullParameter(item, "item");
        choiceArchiveDialog.getViewModle().getArchive().setValue(item);
        List<ArchiveData> value = choiceArchiveDialog.getViewModle().getArchiveList().getValue();
        if (value != null) {
            for (ArchiveData archiveData : value) {
                String archiveDesc = archiveData.getArchiveDesc();
                ArchiveData value2 = choiceArchiveDialog.getViewModle().getArchive().getValue();
                Intrinsics.checkNotNull(value2);
                if (Intrinsics.areEqual(archiveDesc, value2.getArchiveDesc())) {
                    archiveData.setCheckStatus(1);
                } else {
                    archiveData.setCheckStatus(0);
                }
            }
        }
        Function1<? super ArchiveData, Unit> function1 = choiceArchiveDialog.choicedFun;
        if (function1 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("choicedFun");
            function1 = null;
        }
        ArchiveData value3 = choiceArchiveDialog.getViewModle().getArchive().getValue();
        Intrinsics.checkNotNull(value3);
        function1.invoke(value3);
        choiceArchiveDialog.dismiss();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ChoiceArchiveDialogViewModle viewModle_delegate$lambda$0(ChoiceArchiveDialog choiceArchiveDialog) {
        return (ChoiceArchiveDialogViewModle) new ViewModelProvider(choiceArchiveDialog, new ViewModelProvider.NewInstanceFactory()).get(ChoiceArchiveDialogViewModle.class);
    }

    @NotNull
    public final ModChoiceArchiveAdapter getAdapter() {
        return (ModChoiceArchiveAdapter) this.adapter.getValue();
    }

    @NotNull
    public final sl0 getDataBinding() {
        sl0 sl0Var = this.dataBinding;
        if (sl0Var != null) {
            return sl0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        return null;
    }

    @NotNull
    public final ChoiceArchiveDialogViewModle getViewModle() {
        return (ChoiceArchiveDialogViewModle) this.viewModle.getValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        Integer numValueOf = v10 != null ? Integer.valueOf(v10.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.closed) {
            dismiss();
        }
        dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setDataBinding((sl0) DataBindingUtil.inflate(inflater, R.layout.mod_choice_archive_dialog, container, false));
        Bundle arguments = getArguments();
        if (arguments != null) {
            MutableLiveData<ArchiveData> archive = getViewModle().getArchive();
            Serializable serializable = arguments.getSerializable("archive");
            Intrinsics.checkNotNull(serializable, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            archive.setValue((ArchiveData) serializable);
            MutableLiveData<List<ArchiveData>> archiveList = getViewModle().getArchiveList();
            Serializable serializable2 = arguments.getSerializable("archiveList");
            Intrinsics.checkNotNull(serializable2, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.kotlin.ui.cloudarchive.data.ArchiveData>");
            archiveList.setValue(TypeIntrinsics.asMutableList(serializable2));
            List<ArchiveData> value = getViewModle().getArchiveList().getValue();
            if (value != null) {
                for (ArchiveData archiveData : value) {
                    String archiveDesc = archiveData.getArchiveDesc();
                    ArchiveData value2 = getViewModle().getArchive().getValue();
                    Intrinsics.checkNotNull(value2);
                    if (Intrinsics.areEqual(archiveDesc, value2.getArchiveDesc())) {
                        archiveData.setCheckStatus(1);
                    } else {
                        archiveData.setCheckStatus(0);
                    }
                }
            }
        }
        getDataBinding().setLifecycleOwner(this);
        getDataBinding().setVariable(50, getViewModle());
        getDataBinding().setVariable(8, this);
        getDataBinding().setVariable(1, getAdapter());
        getAdapter().setOnItemClickListener(new Function3() { // from class: com.join.kotlin.ui.cloudarchive.dialog.a
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return ChoiceArchiveDialog.onCreateView$lambda$5(this.f48958b, ((Integer) obj).intValue(), (ArchiveData) obj2, ((Integer) obj3).intValue());
            }
        });
        getViewModle().getDialogData().setValue(new DialogData("请选择存档", "", null, null, false, 28, null));
        return getDataBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
    }

    public final void setDataBinding(@NotNull sl0 sl0Var) {
        Intrinsics.checkNotNullParameter(sl0Var, "<set-?>");
        this.dataBinding = sl0Var;
    }

    public final void setItemChoiced(@NotNull Function1<? super ArchiveData, Unit> func) {
        Intrinsics.checkNotNullParameter(func, "func");
        this.choicedFun = func;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String tag) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, tag);
    }
}
