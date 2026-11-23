package com.join.kotlin.ui.legendgame.dialog;

import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.kongzue.dialogx.dialogs.CustomDialog;
import com.kongzue.dialogx.interfaces.i;
import com.kongzue.dialogx.interfaces.r;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\tH\u0007J\u0006\u0010\n\u001a\u00020\u0007R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;", "", "<init>", "()V", "dialog", "Lcom/kongzue/dialogx/dialogs/CustomDialog;", "showCancelConfirm", "", "onConfirm", "Lkotlin/Function0;", "dismiss", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLegendGameBespeakDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameBespeakDialog.kt\ncom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"})
public final class LegendGameBespeakDialog {

    @NotNull
    public static final LegendGameBespeakDialog INSTANCE = new LegendGameBespeakDialog();

    @Nullable
    private static CustomDialog dialog;

    /* JADX INFO: renamed from: com.join.kotlin.ui.legendgame.dialog.LegendGameBespeakDialog$showCancelConfirm$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"com/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog$showCancelConfirm$1", "Lcom/kongzue/dialogx/interfaces/OnBindView;", "Lcom/kongzue/dialogx/dialogs/CustomDialog;", "onBind", "", "dialog", "v", "Landroid/view/View;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 extends r<CustomDialog> {
        final /* synthetic */ Function0<Unit> $onConfirm;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Function0<Unit> function0) {
            super(R.layout.dialog_legend_game_bespeak);
            this.$onConfirm = function0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBind$lambda$2(Function0 function0, CustomDialog customDialog, View view) {
            function0.invoke();
            customDialog.E1();
        }

        @Override // com.kongzue.dialogx.interfaces.r
        public void onBind(final CustomDialog dialog, View v10) {
            Intrinsics.checkNotNullParameter(dialog, "dialog");
            Intrinsics.checkNotNullParameter(v10, "v");
            ((TextView) v10.findViewById(R.id.tv_title)).setText("是否取消预约？");
            ((TextView) v10.findViewById(R.id.tv_content)).setText("取消后将无法获取相关提醒");
            ((TextView) v10.findViewById(R.id.tv_btn_left)).setText("取消预约");
            ((TextView) v10.findViewById(R.id.tv_btn_right)).setText("不取消");
            ((ImageView) v10.findViewById(R.id.iv_close)).setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.legendgame.dialog.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog.E1();
                }
            });
            ((TextView) v10.findViewById(R.id.tv_btn_right)).setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.legendgame.dialog.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    dialog.E1();
                }
            });
            TextView textView = (TextView) v10.findViewById(R.id.tv_btn_left);
            final Function0<Unit> function0 = this.$onConfirm;
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.legendgame.dialog.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LegendGameBespeakDialog.AnonymousClass1.onBind$lambda$2(function0, dialog, view);
                }
            });
        }
    }

    private LegendGameBespeakDialog() {
    }

    @JvmStatic
    public static final void showCancelConfirm(@NotNull Function0<Unit> onConfirm) {
        Intrinsics.checkNotNullParameter(onConfirm, "onConfirm");
        CustomDialog customDialog = dialog;
        if (customDialog != null) {
            customDialog.E1();
        }
        CustomDialog customDialogG2 = new CustomDialog(new AnonymousClass1(onConfirm)).o2(CustomDialog.ALIGN.CENTER).P2(Color.parseColor("#90000000")).g2(new i() { // from class: com.join.kotlin.ui.legendgame.dialog.a
            @Override // com.kongzue.dialogx.interfaces.i
            public final void run(Object obj) {
                LegendGameBespeakDialog.dialog = null;
            }
        });
        customDialogG2.M0();
        dialog = customDialogG2;
    }

    public final void dismiss() {
        CustomDialog customDialog = dialog;
        if (customDialog != null) {
            customDialog.E1();
        }
    }
}
