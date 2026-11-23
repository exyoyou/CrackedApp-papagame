package com.join.kotlin.ui.hmcloud.dialog;

import android.content.Context;
import android.text.Html;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.databinding.se;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.t2;
import com.join.mgps.pref.PrefDef_;
import com.kongzue.dialogx.dialogs.CustomDialog;
import com.kongzue.dialogx.interfaces.s;
import com.wufan.user.service.protobuf.NewMemberInfo;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\u0003H\u0016¨\u0006\n"}, d2 = {"com/join/kotlin/ui/hmcloud/dialog/DialogUtils$showSignDialog$signDialog$1", "Lcom/kongzue/dialogx/interfaces/OnBindingView;", "Lcom/kongzue/dialogx/dialogs/CustomDialog;", "Lcom/join/android/app/mgsim/wufun/databinding/DialogCloudSignSuccessBinding;", "onBind", "", "dialog", "v", "Landroid/view/View;", "binding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DialogUtils$showSignDialog$signDialog$1 extends s<CustomDialog, se> {
    final /* synthetic */ Function0<Boolean> $closeCall;
    final /* synthetic */ Function1<DownloadTask, Boolean> $confirmCall;
    final /* synthetic */ Context $ctx;
    final /* synthetic */ String $freeTime;
    final /* synthetic */ String $totalTime;
    final /* synthetic */ String $vipTime;

    /* JADX WARN: Multi-variable type inference failed */
    DialogUtils$showSignDialog$signDialog$1(String str, String str2, String str3, Context context, Function1<? super DownloadTask, Boolean> function1, Function0<Boolean> function0) {
        this.$totalTime = str;
        this.$freeTime = str2;
        this.$vipTime = str3;
        this.$ctx = context;
        this.$confirmCall = function1;
        this.$closeCall = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBind$lambda$0(CustomDialog customDialog, Function1 function1, DownloadTask downloadTask, View view) {
        customDialog.E1();
        function1.invoke(downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBind$lambda$2(CustomDialog customDialog, Function0 function0, View view) {
        customDialog.E1();
        function0.invoke();
    }

    @Override // com.kongzue.dialogx.interfaces.s
    public void onBind(final CustomDialog dialog, View view, se binding) {
        final DownloadTask downloadTaskL;
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        Intrinsics.checkNotNullParameter(binding, "binding");
        binding.L(this.$totalTime);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("免费时长+");
        sb2.append((Object) Html.fromHtml("<font color='#FF6200'>" + this.$freeTime + "</font>"));
        binding.G(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append("会员时长+");
        sb3.append((Object) Html.fromHtml("<font color='#FF6200'>" + this.$vipTime + "</font>"));
        binding.M(sb3.toString());
        NewMemberInfo newMemberInfo = AccountUtil_.getInstance_(this.$ctx).getAccountData().getNewMemberInfo();
        if (newMemberInfo.getVipType() == 3) {
            binding.N("年卡");
        } else if (newMemberInfo.getVipType() == 2) {
            binding.N("季卡");
        } else if (newMemberInfo.getVipType() == 1) {
            binding.N("月卡");
        } else {
            binding.N("");
        }
        String strD = new PrefDef_(this.$ctx).lastLaunchCloudGameId().d();
        if (!t2.i(strD) || (downloadTaskL = q5.f.M().L(strD)) == null) {
            binding.f44746e.setVisibility(8);
            binding.f44748g.setVisibility(0);
        } else {
            binding.f44746e.setVisibility(0);
            binding.f44748g.setVisibility(8);
            binding.H(downloadTaskL.getPortraitURL());
            binding.I(downloadTaskL.getShowName());
            DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
            Intrinsics.checkNotNull(strD);
            Long cloudArchiveTime = dlTaskManager.getCloudArchiveTime(strD);
            if (cloudArchiveTime != null && cloudArchiveTime.longValue() > 0) {
                binding.J(Html.fromHtml("<font color='#999999'>上次进度时间：</font>" + e0.I(cloudArchiveTime.longValue())));
            }
            binding.K(Boolean.valueOf(cloudArchiveTime != null && cloudArchiveTime.longValue() > 0));
            LinearLayout linearLayout = binding.f44746e;
            final Function1<DownloadTask, Boolean> function1 = this.$confirmCall;
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.dialog.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DialogUtils$showSignDialog$signDialog$1.onBind$lambda$0(dialog, function1, downloadTaskL, view2);
                }
            });
        }
        binding.f44748g.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.dialog.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                dialog.E1();
            }
        });
        ImageView imageView = binding.f44745d;
        final Function0<Boolean> function0 = this.$closeCall;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.dialog.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DialogUtils$showSignDialog$signDialog$1.onBind$lambda$2(dialog, function0, view2);
            }
        });
    }
}
