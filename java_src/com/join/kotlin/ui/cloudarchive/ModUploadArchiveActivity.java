package com.join.kotlin.ui.cloudarchive;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import com.BaseAppCompatActivity;
import com.google.android.material.textfield.TextInputEditText;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.gm0;
import com.join.kotlin.domain.ext.EXTKt;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.kotlin.ui.cloudarchive.dialog.ChoiceArchiveDialog;
import com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
import com.join.kotlin.ui.cloudarchive.dialog.NoticeWhiteDialog;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.activity.QuarkInstallAppActivity_;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dto.ResponseModel;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.psk.kotlin.ext.CommonExtKt;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0014J&\u00106\u001a\u00020\"2\f\u00107\u001a\b\u0012\u0004\u0012\u000209082\u0006\u00100\u001a\u0002012\u0006\u0010*\u001a\u00020+H\u0002J\u0012\u0010?\u001a\u00020\"2\b\u0010@\u001a\u0004\u0018\u00010AH\u0016J\u0006\u0010G\u001a\u00020\"J\"\u0010H\u001a\u00020\"2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020J2\b\u0010L\u001a\u0004\u0018\u00010MH\u0014J\b\u0010N\u001a\u00020\"H\u0016J\b\u0010O\u001a\u00020\"H\u0016J\u0006\u0010P\u001a\u00020\"J*\u0010Q\u001a\u00020\"2\b\u0010R\u001a\u0004\u0018\u00010S2\u0006\u0010T\u001a\u00020J2\u0006\u0010U\u001a\u00020J2\u0006\u0010V\u001a\u00020JH\u0016J*\u0010W\u001a\u00020\"2\b\u0010R\u001a\u0004\u0018\u00010S2\u0006\u0010T\u001a\u00020J2\u0006\u0010V\u001a\u00020J2\u0006\u0010X\u001a\u00020JH\u0016R\u001b\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\f\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\u00188FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\f\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001e\"\u0004\b\u001f\u0010 R\u001b\u0010%\u001a\u00020&8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\f\u001a\u0004\b'\u0010(R\u001a\u0010*\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001a\u00100\u001a\u000201X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001b\u0010:\u001a\u00020;8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u0010\f\u001a\u0004\b<\u0010=R\u001b\u0010B\u001a\u00020C8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bF\u0010\f\u001a\u0004\bD\u0010E¨\u0006Y"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;", "Lcom/BaseAppCompatActivity;", "Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;", "Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "databinDing", "Lcom/join/android/app/mgsim/wufun/databinding/ModUploadArchiveActivityBinding;", "getDatabinDing", "()Lcom/join/android/app/mgsim/wufun/databinding/ModUploadArchiveActivityBinding;", "databinDing$delegate", "dialog", "Lcom/join/mgps/dialog/LodingProgressDialog;", "getDialog", "()Lcom/join/mgps/dialog/LodingProgressDialog;", "dialog$delegate", "viewModleLoadData", "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "getViewModleLoadData", "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleLoadData$delegate", "isFromGame", "", "()Z", "setFromGame", "(Z)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "dialogLoding", "Lcom/join/mgps/dialog/LodingDialog;", "getDialogLoding", "()Lcom/join/mgps/dialog/LodingDialog;", "dialogLoding$delegate", "runIngArchiveId", "", "getRunIngArchiveId", "()J", "setRunIngArchiveId", "(J)V", "imagePath", "", "getImagePath", "()Ljava/lang/String;", "setImagePath", "(Ljava/lang/String;)V", "initData", "datas", "", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "dialogChoice", "Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;", "getDialogChoice", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;", "dialogChoice$delegate", "onClick", "v", "Landroid/view/View;", "noticeDialog", "Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;", "getNoticeDialog", "()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;", "noticeDialog$delegate", "goMyAlbumActivity4PickPic", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "onBackPressed", com.sigmob.sdk.base.common.a.f78868b, "backModGame", "onTextChanged", "s", "", "start", "before", QuarkInstallAppActivity_.COUNT_EXTRA, "beforeTextChanged", "after", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nModUploadArchiveActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModUploadArchiveActivity.kt\ncom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,404:1\n1021#2,2:405\n*S KotlinDebug\n*F\n+ 1 ModUploadArchiveActivity.kt\ncom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity\n*L\n174#1:405,2\n*E\n"})
public final class ModUploadArchiveActivity extends BaseAppCompatActivity implements TextViewBindingAdapter.OnTextChanged, TextViewBindingAdapter.BeforeTextChanged, View.OnClickListener {
    private boolean isFromGame;
    private long runIngArchiveId;

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.l0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModUploadArchiveActivity.viewModle_delegate$lambda$0(this.f49009b);
        }
    });

    /* JADX INFO: renamed from: databinDing$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy databinDing = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.o0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModUploadArchiveActivity.databinDing_delegate$lambda$1(this.f49019b);
        }
    });

    /* JADX INFO: renamed from: dialog$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy dialog = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.p0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModUploadArchiveActivity.dialog_delegate$lambda$2(this.f49021b);
        }
    });

    /* JADX INFO: renamed from: viewModleLoadData$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModleLoadData = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.q0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModUploadArchiveActivity.viewModleLoadData_delegate$lambda$3(this.f49023b);
        }
    });

    /* JADX INFO: renamed from: dialogLoding$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy dialogLoding = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.r0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModUploadArchiveActivity.dialogLoding_delegate$lambda$11(this.f49024b);
        }
    });

    @NotNull
    private String imagePath = "";

    /* JADX INFO: renamed from: dialogChoice$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy dialogChoice = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.s0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModUploadArchiveActivity.dialogChoice_delegate$lambda$14();
        }
    });

    /* JADX INFO: renamed from: noticeDialog$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy noticeDialog = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.t0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ModUploadArchiveActivity.noticeDialog_delegate$lambda$16();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final gm0 databinDing_delegate$lambda$1(ModUploadArchiveActivity modUploadArchiveActivity) {
        return (gm0) DataBindingUtil.setContentView(modUploadArchiveActivity, R.layout.mod_upload_archive_activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ChoiceArchiveDialog dialogChoice_delegate$lambda$14() {
        return new ChoiceArchiveDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.join.mgps.dialog.f1 dialogLoding_delegate$lambda$11(ModUploadArchiveActivity modUploadArchiveActivity) {
        return com.join.mgps.Util.h0.h0(modUploadArchiveActivity).x(modUploadArchiveActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.join.mgps.dialog.g1 dialog_delegate$lambda$2(ModUploadArchiveActivity modUploadArchiveActivity) {
        return com.join.mgps.Util.h0.h0(modUploadArchiveActivity).F(modUploadArchiveActivity);
    }

    private final ChoiceArchiveDialog getDialogChoice() {
        return (ChoiceArchiveDialog) this.dialogChoice.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:38:0x010c  */
    private final void initData(List<ArchiveData> datas, String imagePath, long runIngArchiveId) {
        String str;
        CloudArchiveTable cloudArchiveTableP;
        ArchiveData archiveData;
        boolean z10 = true;
        if (!(imagePath == null || imagePath.length() == 0)) {
            getViewModle().getImagepath().setValue("file://" + imagePath);
        }
        if (runIngArchiveId != 0 && (cloudArchiveTableP = t6.g.t().p(String.valueOf(runIngArchiveId))) != null && (archiveData = (ArchiveData) JsonMapper.getInstance().fromJson(cloudArchiveTableP.getArchiveDataJson(), ArchiveData.class)) != null) {
            getViewModle().getNoticeWarnings().setValue("最近运行的是“" + archiveData.getNickname() + "”的存档");
        }
        if (datas.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(datas, new Comparator() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$initData$$inlined$sortByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t10, T t11) {
                    return ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((ArchiveData) t11).getAddTime()), Long.valueOf(((ArchiveData) t10).getAddTime()));
                }
            });
        }
        if (!(!datas.isEmpty())) {
            CommonExtKt.toast(this, "本地默认存档为空，无法分享");
            finish();
            return;
        }
        getViewModle().getArchiveDatas().setValue(datas);
        getViewModle().getArchive().setValue(datas.get(0));
        if (datas.get(0).getCoverLocation() != null) {
            getViewModle().getImagepath().setValue(datas.get(0).getCoverLocation());
        }
        ArchiveData value = getViewModle().getArchive().getValue();
        Intrinsics.checkNotNull(value);
        String id2 = value.getId();
        if (id2 != null && id2.length() != 0) {
            z10 = false;
        }
        if (z10) {
            str = "玩过";
        } else {
            ArchiveData value2 = getViewModle().getArchive().getValue();
            Intrinsics.checkNotNull(value2);
            if (Intrinsics.areEqual(value2.getId(), "0")) {
                str = "玩过";
            } else {
                str = "发布";
            }
        }
        for (ArchiveData archiveData2 : datas) {
            archiveData2.setPlayTime(com.join.mgps.Util.e0.v(archiveData2.getAddTime() * ((long) 1000)) + str);
        }
        ArchiveData value3 = getViewModle().getArchive().getValue();
        Intrinsics.checkNotNull(value3);
        String archiveDesc = value3.getArchiveDesc();
        ArchiveData value4 = getViewModle().getArchive().getValue();
        Intrinsics.checkNotNull(value4);
        if (!Intrinsics.areEqual(value4.getId(), "0")) {
            getDatabinDing().f38897f.setText(archiveDesc);
            getViewModle().getMessage().setValue(archiveDesc);
            getDatabinDing().f38897f.setSelection(archiveDesc.length());
        }
        datas.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NoticeWhiteDialog noticeDialog_delegate$lambda$16() {
        return new NoticeWhiteDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onClick$lambda$15(ModUploadArchiveActivity modUploadArchiveActivity, ArchiveData it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        modUploadArchiveActivity.getViewModle().getArchive().setValue(it2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$10(ModUploadArchiveActivity modUploadArchiveActivity, Boolean bool) {
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            modUploadArchiveActivity.getDialogLoding().b();
        } else {
            modUploadArchiveActivity.getDialogLoding().dismiss();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$6(ModUploadArchiveActivity modUploadArchiveActivity, ResponseModel responseModel) {
        modUploadArchiveActivity.getDialog().dismiss();
        Integer numValueOf = responseModel != null ? Integer.valueOf(responseModel.getCode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 200) {
            String str = modUploadArchiveActivity.isFromGame ? "2" : "1";
            com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(modUploadArchiveActivity);
            Event event = Event.postArchiveSuccess;
            Ext ext = new Ext();
            ArchiveData value = modUploadArchiveActivity.getViewModle().getArchive().getValue();
            tVarL.R1(event, ext.setGameId(value != null ? value.getGame_id() : null).setFrom(str));
            a3.b(modUploadArchiveActivity).d("发布成功！系统自动审核中");
            modUploadArchiveActivity.finish();
        } else {
            a3.b(modUploadArchiveActivity).d(responseModel != null ? responseModel.getMessage() : null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$8(ModUploadArchiveActivity modUploadArchiveActivity, Integer num) {
        modUploadArchiveActivity.getDialog().b("上传中请稍候");
        modUploadArchiveActivity.getDialog().a(num != null ? num.intValue() : 0);
        if (num != null && num.intValue() == 100) {
            modUploadArchiveActivity.getDialog().b("正在发布请稍候");
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$9(ModUploadArchiveActivity modUploadArchiveActivity, List list) {
        List list2 = list;
        if (!(list2 == null || list2.isEmpty())) {
            String str = modUploadArchiveActivity.imagePath;
            if (str == null) {
                str = "";
            }
            modUploadArchiveActivity.initData(list, str, modUploadArchiveActivity.runIngArchiveId);
        } else if (modUploadArchiveActivity.getViewModleLoadData().getInitFinish()) {
            CommonExtKt.toast(modUploadArchiveActivity, "本地默认存档为空，无法分享");
            modUploadArchiveActivity.finish();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CloudShareViewModle viewModleLoadData_delegate$lambda$3(ModUploadArchiveActivity modUploadArchiveActivity) {
        return (CloudShareViewModle) new ViewModelProvider(modUploadArchiveActivity, new ViewModelProvider.NewInstanceFactory()).get(CloudShareViewModle.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ModUploadArchiveViewModle viewModle_delegate$lambda$0(ModUploadArchiveActivity modUploadArchiveActivity) {
        return (ModUploadArchiveViewModle) new ViewModelProvider(modUploadArchiveActivity, new ViewModelProvider.NewInstanceFactory()).get(ModUploadArchiveViewModle.class);
    }

    public final void backModGame() {
        String modPackageName;
        ModGameArchivePathData modGameArchivePathData;
        CloudShareViewModle viewModleLoadData = getViewModleLoadData();
        if (viewModleLoadData == null || (modGameArchivePathData = viewModleLoadData.getModGameArchivePathData()) == null || (modPackageName = modGameArchivePathData.getModPackageName()) == null) {
            modPackageName = "";
        }
        ArchiveData value = getViewModle().getArchive().getValue();
        com.join.mgps.va.overmind.i.f73262g.d().a0(this, value != null ? value.getUserId() : 0, modPackageName);
    }

    @Override // androidx.databinding.adapters.TextViewBindingAdapter.BeforeTextChanged
    public void beforeTextChanged(@Nullable CharSequence s10, int start, int count, int after) {
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.isFromGame) {
            backModGame();
        }
        super.finish();
    }

    @NotNull
    public final gm0 getDatabinDing() {
        Object value = this.databinDing.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (gm0) value;
    }

    @NotNull
    public final com.join.mgps.dialog.g1 getDialog() {
        Object value = this.dialog.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (com.join.mgps.dialog.g1) value;
    }

    @NotNull
    public final com.join.mgps.dialog.f1 getDialogLoding() {
        Object value = this.dialogLoding.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (com.join.mgps.dialog.f1) value;
    }

    @NotNull
    public final String getImagePath() {
        return this.imagePath;
    }

    @NotNull
    public final NoticeWhiteDialog getNoticeDialog() {
        return (NoticeWhiteDialog) this.noticeDialog.getValue();
    }

    public final long getRunIngArchiveId() {
        return this.runIngArchiveId;
    }

    @NotNull
    public final ModUploadArchiveViewModle getViewModle() {
        return (ModUploadArchiveViewModle) this.viewModle.getValue();
    }

    @NotNull
    public final CloudShareViewModle getViewModleLoadData() {
        return (CloudShareViewModle) this.viewModleLoadData.getValue();
    }

    public final void goMyAlbumActivity4PickPic() {
        boolean z10 = false;
        if (ContextCompat.checkSelfPermission(this, com.kuaishou.weapon.p0.g.f74786j) != 0) {
            UtilsMy.e3(this, com.kuaishou.weapon.p0.g.f74786j);
        } else if (ContextCompat.checkSelfPermission(this, com.kuaishou.weapon.p0.g.f74785i) != 0) {
            UtilsMy.e3(this, com.kuaishou.weapon.p0.g.f74785i);
        } else {
            z10 = true;
        }
        if (z10) {
            Intent intent = new Intent(this, (Class<?>) MyAlbumActivity.class);
            intent.putExtra("MAX_PICK_SIZE", 1);
            startActivityForResult(intent, 256);
        }
    }

    /* JADX INFO: renamed from: isFromGame, reason: from getter */
    public final boolean getIsFromGame() {
        return this.isFromGame;
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        Object obj;
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 256) {
            Bundle extras = data != null ? data.getExtras() : null;
            if (extras == null || (obj = extras.get(MyAlbumActivity.KEY_SELECTED_IMAGES)) == null) {
                return;
            }
            List list = (List) obj;
            if (!((Collection) obj).isEmpty()) {
                String str = (String) list.get(0);
                if (StringsKt__StringsJVMKt.startsWith$default(str, "content://", false, 2, null)) {
                    getViewModle().getImagepath().setValue(str);
                    return;
                }
                getViewModle().getImagepath().setValue("file://" + str);
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        r7.a.b(getDatabinDing().f38897f);
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        Integer numValueOf = v10 != null ? Integer.valueOf(v10.getId()) : null;
        boolean z10 = true;
        if (numValueOf != null && numValueOf.intValue() == R.id.archiveLayout) {
            List<ArchiveData> value = getViewModle().getArchiveDatas().getValue();
            Intrinsics.checkNotNull(value);
            if (value.size() > 1) {
                r7.a.b(getDatabinDing().f38897f);
                Bundle bundle = new Bundle();
                bundle.putSerializable("archive", getViewModle().getArchive().getValue());
                List<ArchiveData> value2 = getViewModle().getArchiveDatas().getValue();
                Intrinsics.checkNotNull(value2, "null cannot be cast to non-null type java.io.Serializable");
                bundle.putSerializable("archiveList", (Serializable) value2);
                getDialogChoice().setArguments(bundle);
                getDialogChoice().setItemChoiced(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.n0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ModUploadArchiveActivity.onClick$lambda$15(this.f49017b, (ArchiveData) obj);
                    }
                });
                if (EXTKt.dialogFragmentCanShow(getDialogChoice())) {
                    ChoiceArchiveDialog dialogChoice = getDialogChoice();
                    FragmentManager supportFragmentManager = getSupportFragmentManager();
                    Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
                    dialogChoice.show(supportFragmentManager, "dialogChoice");
                    return;
                }
                return;
            }
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.back) {
            r7.a.b(getDatabinDing().f38897f);
            finish();
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.choiceIcon) {
            r7.a.b(getDatabinDing().f38897f);
            goMyAlbumActivity4PickPic();
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.clearImage) {
            getViewModle().getImagepath().setValue(null);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.save) {
            String str = this.isFromGame ? "2" : "1";
            com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(this);
            Event event = Event.clickUpCloudButton;
            Ext ext = new Ext();
            ArchiveData value3 = getViewModle().getArchive().getValue();
            tVarL.R1(event, ext.setGameId(value3 != null ? value3.getGame_id() : null).setFrom(str));
            MutableLiveData<String> message = getViewModle().getMessage();
            if (message.getValue() != null) {
                String value4 = message.getValue();
                Intrinsics.checkNotNull(value4);
                if (!(value4.length() == 0)) {
                    String value5 = message.getValue();
                    Intrinsics.checkNotNull(value5);
                    if (!(StringsKt__StringsKt.trim((CharSequence) value5).toString().length() == 0)) {
                        String value6 = message.getValue();
                        Intrinsics.checkNotNull(value6);
                        if (value6.length() < 5) {
                            a3.b(this).d("存档描述不能少于5个字");
                            return;
                        }
                        if (com.join.mgps.Util.t.f(message.getValue())) {
                            a3.b(this).d("暂不支持输入表情！请去掉表情字符！");
                            return;
                        }
                        if (IntentUtil.getInstance().goLogin(this)) {
                            CommonExtKt.toast(this, "您还未登录请先登录帐号！");
                            return;
                        }
                        if (getViewModle().getImagepath().getValue() == null) {
                            if (!com.join.mgps.Util.w0.n()) {
                                getNoticeDialog().setDatas(new DialogData("提示", "您还未添加存档封面", "去相册选择图片", null, true, 8, null));
                                getNoticeDialog().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity.onClick.2
                                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                                    public void onClickCancleButn() {
                                    }

                                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                                    public void onClickOkButn() {
                                        ModUploadArchiveActivity.this.getNoticeDialog().dismiss();
                                        ModUploadArchiveActivity modUploadArchiveActivity = ModUploadArchiveActivity.this;
                                        modUploadArchiveActivity.onClick(modUploadArchiveActivity.getDatabinDing().f38895d);
                                    }
                                });
                                if (EXTKt.dialogFragmentCanShow(getNoticeDialog())) {
                                    NoticeWhiteDialog noticeDialog = getNoticeDialog();
                                    FragmentManager supportFragmentManager2 = getSupportFragmentManager();
                                    Intrinsics.checkNotNullExpressionValue(supportFragmentManager2, "getSupportFragmentManager(...)");
                                    noticeDialog.show(supportFragmentManager2, "noticeDialog");
                                }
                                r7.a.b(getDatabinDing().f38897f);
                                return;
                            }
                            getViewModle().getImagepath().postValue("file:///android_asset/cloud_archive_cover_default.png");
                        }
                        getDialog().c();
                        getDialog().b("打包存档中请稍候");
                        r7.a.b(getDatabinDing().f38897f);
                        ArchiveData value7 = getViewModle().getArchive().getValue();
                        String id2 = value7 != null ? value7.getId() : null;
                        if (id2 != null && id2.length() != 0) {
                            z10 = false;
                        }
                        if (z10 || Intrinsics.areEqual(id2, "0")) {
                            getViewModle().uploadArchive(this);
                            return;
                        } else {
                            getViewModle().updateArchiveMessage(this);
                            return;
                        }
                    }
                }
            }
            a3.b(this).d("请输入存档描述");
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.canShowFeedBack = false;
        getDatabinDing().E(getViewModle());
        getDatabinDing().B(this);
        getDatabinDing().D(this);
        getDatabinDing().setLifecycleOwner(this);
        getDatabinDing().C(this);
        if (getIntent().getSerializableExtra("archives") != null) {
            Intent intent = getIntent();
            getViewModle().getArchiveFileSuffix().setValue(intent.getStringExtra("archiveFileSuffix"));
            Serializable serializableExtra = intent.getSerializableExtra("archives");
            Intrinsics.checkNotNull(serializableExtra, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.kotlin.ui.cloudarchive.data.ArchiveData>");
            List<ArchiveData> listAsMutableList = TypeIntrinsics.asMutableList(serializableExtra);
            long longExtra = intent.getLongExtra("runIngArchiveId", 0L);
            String stringExtra = intent.getStringExtra("imagePath");
            initData(listAsMutableList, stringExtra != null ? stringExtra : "", longExtra);
        } else {
            this.isFromGame = true;
            getDialogLoding().b();
            Intent intent2 = getIntent();
            String stringExtra2 = intent2.getStringExtra("uploadGameId");
            if (stringExtra2 == null) {
                stringExtra2 = "";
            }
            String stringExtra3 = intent2.getStringExtra("imagePath");
            this.imagePath = stringExtra3 != null ? stringExtra3 : "";
            this.runIngArchiveId = intent2.getLongExtra("runIngArchiveId", 0L);
            if (stringExtra2.length() == 0) {
                finish();
                return;
            }
            getViewModleLoadData().getDetialData(stringExtra2, this);
        }
        getViewModle().getResponseReult().observe(this, new ModUploadArchiveActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.u0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ModUploadArchiveActivity.onCreate$lambda$6(this.f49030b, (ResponseModel) obj);
            }
        }));
        new Timer().schedule(new TimerTask() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$onCreate$$inlined$schedule$1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                final ModUploadArchiveActivity modUploadArchiveActivity = this.this$0;
                modUploadArchiveActivity.runOnUiThread(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$onCreate$4$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        r7.a.c(modUploadArchiveActivity.getDatabinDing().f38897f);
                    }
                });
            }
        }, 500L);
        getViewModle().getUploadProgress().observe(this, new ModUploadArchiveActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.v0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ModUploadArchiveActivity.onCreate$lambda$8(this.f49039b, (Integer) obj);
            }
        }));
        getViewModleLoadData().getLocalArchiveLists().observe(this, new ModUploadArchiveActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.w0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ModUploadArchiveActivity.onCreate$lambda$9(this.f49047b, (List) obj);
            }
        }));
        getViewModleLoadData().getShowDialog().observe(this, new ModUploadArchiveActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.cloudarchive.m0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ModUploadArchiveActivity.onCreate$lambda$10(this.f49013b, (Boolean) obj);
            }
        }));
    }

    @Override // androidx.databinding.adapters.TextViewBindingAdapter.OnTextChanged
    public void onTextChanged(@Nullable CharSequence s10, int start, int before, int count) {
        getViewModle().getMessage().setValue(String.valueOf(s10));
        if (s10 == null || s10.length() <= 60) {
            if (s10 != null) {
                s10.length();
            }
        } else {
            getDatabinDing().f38897f.setError("达到限制字数，无法继续输入");
            getDatabinDing().f38897f.setText(s10.toString().subSequence(0, 60));
            TextInputEditText textInputEditText = getDatabinDing().f38897f;
            Editable text = getDatabinDing().f38897f.getText();
            Intrinsics.checkNotNull(text);
            textInputEditText.setSelection(text.length());
        }
    }

    public final void setFromGame(boolean z10) {
        this.isFromGame = z10;
    }

    public final void setImagePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imagePath = str;
    }

    public final void setRunIngArchiveId(long j10) {
        this.runIngArchiveId = j10;
    }
}
