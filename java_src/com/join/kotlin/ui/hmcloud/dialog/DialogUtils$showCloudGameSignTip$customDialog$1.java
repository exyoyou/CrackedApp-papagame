package com.join.kotlin.ui.hmcloud.dialog;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.databinding.kg;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.widget.textview.GradientStrokeTextView;
import com.kongzue.dialogx.dialogs.CustomDialog;
import com.kongzue.dialogx.interfaces.s;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\u0003H\u0016¨\u0006\n"}, d2 = {"com/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1", "Lcom/kongzue/dialogx/interfaces/OnBindingView;", "Lcom/kongzue/dialogx/dialogs/CustomDialog;", "Lcom/join/android/app/mgsim/wufun/databinding/DialogHomeCloudGameSignBinding;", "onBind", "", "dialog", "v", "Landroid/view/View;", "binding", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDialogUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogUtils.kt\ncom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,255:1\n470#2:256\n470#2:257\n470#2:258\n470#2:259\n470#2:260\n470#2:261\n*S KotlinDebug\n*F\n+ 1 DialogUtils.kt\ncom/join/kotlin/ui/hmcloud/dialog/DialogUtils$showCloudGameSignTip$customDialog$1\n*L\n74#1:256\n75#1:257\n76#1:258\n77#1:259\n78#1:260\n79#1:261\n*E\n"})
public final class DialogUtils$showCloudGameSignTip$customDialog$1 extends s<CustomDialog, kg> {
    final /* synthetic */ MessageCloudGamingAdCfgResponse.AdCfgInfo $adCfgInfo;
    final /* synthetic */ Context $ctx;
    final /* synthetic */ ExtBean $extBean;
    final /* synthetic */ Runnable $onSign;

    DialogUtils$showCloudGameSignTip$customDialog$1(MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, Runnable runnable, Context context, ExtBean extBean) {
        this.$adCfgInfo = adCfgInfo;
        this.$onSign = runnable;
        this.$ctx = context;
        this.$extBean = extBean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBind$lambda$0(CustomDialog customDialog, Runnable runnable, Context context, ExtBean extBean, View view) {
        customDialog.E1();
        runnable.run();
        t.l(context).R1(Event.commonClick, extBean.copy().setTypeCode("btnSign").buildScene().toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBind$lambda$1(CustomDialog customDialog, Context context, ExtBean extBean, View view) {
        customDialog.E1();
        t.l(context).R1(Event.commonClick, extBean.copy().setTypeCode("btnClose").buildScene().toExt());
    }

    @Override // com.kongzue.dialogx.interfaces.s
    public void onBind(final CustomDialog dialog, View view, kg binding) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        Intrinsics.checkNotNullParameter(binding, "binding");
        int signGiftDuration = this.$adCfgInfo.getSignGiftDuration();
        int i10 = signGiftDuration / 3600;
        int i11 = (signGiftDuration - (i10 * 3600)) / 60;
        if (i10 > 0 && i11 > 0) {
            GradientStrokeTextView gradientStrokeTextView = binding.f40759d;
            StringBuilder sb2 = new StringBuilder();
            sb2.append('+');
            sb2.append(i10);
            gradientStrokeTextView.setText(sb2.toString());
            binding.f40761f.setText(String.valueOf(i11));
            binding.f40760e.setText("小时");
            binding.f40762g.setText("分钟");
            binding.f40761f.setVisibility(0);
            binding.f40762g.setVisibility(0);
        } else if (i10 > 0) {
            GradientStrokeTextView gradientStrokeTextView2 = binding.f40759d;
            StringBuilder sb3 = new StringBuilder();
            sb3.append('+');
            sb3.append(i10);
            gradientStrokeTextView2.setText(sb3.toString());
            binding.f40760e.setText("小时");
        } else if (i11 > 0) {
            GradientStrokeTextView gradientStrokeTextView3 = binding.f40759d;
            StringBuilder sb4 = new StringBuilder();
            sb4.append('+');
            sb4.append(i11);
            gradientStrokeTextView3.setText(sb4.toString());
            binding.f40760e.setText("分钟");
        }
        binding.f40759d.setGradientColors(Color.parseColor("#0004FF"), Color.parseColor("#C800FF"));
        binding.f40759d.setStroke(2.0f, Color.parseColor("#FFF7EA"));
        binding.f40761f.setGradientColors(Color.parseColor("#0004FF"), Color.parseColor("#C800FF"));
        binding.f40761f.setStroke(2.0f, Color.parseColor("#FFF7EA"));
        binding.f40760e.setGradientColors(Color.parseColor("#0004FF"), Color.parseColor("#C800FF"));
        binding.f40762g.setGradientColors(Color.parseColor("#0004FF"), Color.parseColor("#C800FF"));
        ImageView imageView = binding.f40764i;
        final Runnable runnable = this.$onSign;
        final Context context = this.$ctx;
        final ExtBean extBean = this.$extBean;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.dialog.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DialogUtils$showCloudGameSignTip$customDialog$1.onBind$lambda$0(dialog, runnable, context, extBean, view2);
            }
        });
        ImageView imageView2 = binding.f40765j;
        final Context context2 = this.$ctx;
        final ExtBean extBean2 = this.$extBean;
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.dialog.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DialogUtils$showCloudGameSignTip$customDialog$1.onBind$lambda$1(dialog, context2, extBean2, view2);
            }
        });
    }
}
