package com.join.kotlin.ui.hmcloud.dialog;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.util.Consumer;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.pref.PrefDef_;
import com.kongzue.dialogx.dialogs.CustomDialog;
import com.kongzue.dialogx.interfaces.r;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ<\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00132\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u0017J,\u0010\u0018\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00172\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u0017Jb\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010\u00132\b\u0010\u001d\u001a\u0004\u0018\u00010\u00132\b\u0010\u001e\u001a\u0004\u0018\u00010\u00132\u0014\b\u0002\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u00050 2\u000e\b\u0002\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00050#2\u000e\b\u0002\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00050#¨\u0006%"}, d2 = {"Lcom/join/kotlin/ui/hmcloud/dialog/DialogUtils;", "", "<init>", "()V", "showCloudGameSignTip", "", "ctx", "Landroid/content/Context;", "adCfgInfo", "Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;", "extBean", "Lcom/join/mgps/dto/ExtBean;", "onSign", "Ljava/lang/Runnable;", "alterDialog", "", "iconId", "", "title", "", "buttonText", "content", "onClose", "Landroidx/core/util/Consumer;", "alterGameOverDialog", "onCharge", "Lcom/kongzue/dialogx/dialogs/CustomDialog;", "showSignDialog", "totalTime", "freeTime", "vipTime", "confirmCall", "Lkotlin/Function1;", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "dismissCall", "Lkotlin/Function0;", "closeCall", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDialogUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogUtils.kt\ncom/join/kotlin/ui/hmcloud/dialog/DialogUtils\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,255:1\n470#2:256\n470#2:257\n*S KotlinDebug\n*F\n+ 1 DialogUtils.kt\ncom/join/kotlin/ui/hmcloud/dialog/DialogUtils\n*L\n98#1:256\n252#1:257\n*E\n"})
public final class DialogUtils {

    @NotNull
    public static final DialogUtils INSTANCE = new DialogUtils();

    /* JADX INFO: renamed from: com.join.kotlin.ui.hmcloud.dialog.DialogUtils$alterDialog$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\b"}, d2 = {"com/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterDialog$1", "Lcom/kongzue/dialogx/interfaces/OnBindView;", "Lcom/kongzue/dialogx/dialogs/CustomDialog;", "onBind", "", "dialog", "v", "Landroid/view/View;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 extends r<CustomDialog> {
        final /* synthetic */ String $buttonText;
        final /* synthetic */ String $content;
        final /* synthetic */ int $iconId;
        final /* synthetic */ Consumer<Boolean> $onClose;
        final /* synthetic */ String $title;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10, String str, String str2, String str3, Consumer<Boolean> consumer) {
            super(R.layout.dialog_hm_common_alert);
            this.$iconId = i10;
            this.$title = str;
            this.$content = str2;
            this.$buttonText = str3;
            this.$onClose = consumer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBind$lambda$0(CustomDialog customDialog, Consumer consumer, View view) {
            if (customDialog != null) {
                customDialog.E1();
            }
            consumer.accept(Boolean.TRUE);
        }

        @Override // com.kongzue.dialogx.interfaces.r
        public void onBind(final CustomDialog dialog, View v10) {
            ImageView imageView = v10 != null ? (ImageView) v10.findViewById(R.id.iv_1) : null;
            TextView textView = v10 != null ? (TextView) v10.findViewById(R.id.tv_text_1) : null;
            TextView textView2 = v10 != null ? (TextView) v10.findViewById(R.id.tv_text_2) : null;
            TextView textView3 = v10 != null ? (TextView) v10.findViewById(R.id.tv_btn_1) : null;
            int i10 = this.$iconId;
            if (i10 != 0) {
                if (imageView != null) {
                    imageView.setImageResource(i10);
                }
                if (imageView != null) {
                    imageView.setVisibility(0);
                }
            } else if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (textView != null) {
                textView.setText(this.$title);
            }
            if (textView2 != null) {
                textView2.setText(this.$content);
            }
            if (textView3 != null) {
                textView3.setText(this.$buttonText);
            }
            if (textView3 != null) {
                final Consumer<Boolean> consumer = this.$onClose;
                textView3.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.dialog.e
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogUtils.AnonymousClass1.onBind$lambda$0(dialog, consumer, view);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.join.kotlin.ui.hmcloud.dialog.DialogUtils$alterGameOverDialog$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\b"}, d2 = {"com/join/kotlin/ui/hmcloud/dialog/DialogUtils$alterGameOverDialog$1", "Lcom/kongzue/dialogx/interfaces/OnBindView;", "Lcom/kongzue/dialogx/dialogs/CustomDialog;", "onBind", "", "dialog", "v", "Landroid/view/View;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class C13531 extends r<CustomDialog> {
        final /* synthetic */ int $iconId;
        final /* synthetic */ Consumer<CustomDialog> $onCharge;
        final /* synthetic */ Consumer<Boolean> $onClose;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C13531(int i10, Consumer<Boolean> consumer, Consumer<CustomDialog> consumer2) {
            super(R.layout.dialog_hm_game_over);
            this.$iconId = i10;
            this.$onClose = consumer;
            this.$onCharge = consumer2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBind$lambda$0(CustomDialog customDialog, Consumer consumer, View view) {
            if (customDialog != null) {
                customDialog.E1();
            }
            consumer.accept(Boolean.TRUE);
        }

        @Override // com.kongzue.dialogx.interfaces.r
        public void onBind(final CustomDialog dialog, View v10) {
            Intrinsics.checkNotNullParameter(dialog, "dialog");
            ImageView imageView = v10 != null ? (ImageView) v10.findViewById(R.id.iv_1) : null;
            if (v10 != null) {
            }
            if (v10 != null) {
            }
            TextView textView = v10 != null ? (TextView) v10.findViewById(R.id.tv_btn_1) : null;
            TextView textView2 = v10 != null ? (TextView) v10.findViewById(R.id.tv_btn_2) : null;
            if (imageView != null) {
                imageView.setImageResource(this.$iconId);
            }
            if (textView != null) {
                final Consumer<Boolean> consumer = this.$onClose;
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.dialog.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogUtils.C13531.onBind$lambda$0(dialog, consumer, view);
                    }
                });
            }
            if (textView2 != null) {
                final Consumer<CustomDialog> consumer2 = this.$onCharge;
                textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.hmcloud.dialog.g
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        consumer2.accept(dialog);
                    }
                });
            }
        }
    }

    private DialogUtils() {
    }

    public static /* synthetic */ void alterDialog$default(DialogUtils dialogUtils, int i10, String str, String str2, String str3, Consumer consumer, int i11, Object obj) {
        int i12 = (i11 & 1) != 0 ? R.drawable.ic_cloud_game_10 : i10;
        if ((i11 & 2) != 0) {
            str = "提示";
        }
        String str4 = str;
        if ((i11 & 4) != 0) {
            str2 = "立即重启";
        }
        String str5 = str2;
        if ((i11 & 8) != 0) {
            str3 = "数据异常";
        }
        dialogUtils.alterDialog(i12, str4, str5, str3, consumer);
    }

    public static /* synthetic */ void alterGameOverDialog$default(DialogUtils dialogUtils, int i10, Consumer consumer, Consumer consumer2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = R.drawable.ic_cloud_game_10;
        }
        dialogUtils.alterGameOverDialog(i10, consumer, consumer2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean showSignDialog$lambda$0(DownloadTask it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean showSignDialog$lambda$1() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean showSignDialog$lambda$2() {
        return false;
    }

    public final void alterDialog(int iconId, @NotNull String title, @NotNull String buttonText, @NotNull String content, @NotNull Consumer<Boolean> onClose) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        new CustomDialog(new AnonymousClass1(iconId, title, content, buttonText, onClose)).C2(false).P2(Color.parseColor("#99000000")).o2(CustomDialog.ALIGN.CENTER).M0();
    }

    public final void alterGameOverDialog(int iconId, @NotNull Consumer<CustomDialog> onCharge, @NotNull Consumer<Boolean> onClose) {
        Intrinsics.checkNotNullParameter(onCharge, "onCharge");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        new CustomDialog(new C13531(iconId, onClose, onCharge)).C2(false).P2(Color.parseColor("#99000000")).o2(CustomDialog.ALIGN.CENTER).M0();
    }

    public final boolean showCloudGameSignTip(@NotNull Context ctx, @NotNull MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, @NotNull ExtBean extBean, @NotNull Runnable onSign) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(adCfgInfo, "adCfgInfo");
        Intrinsics.checkNotNullParameter(extBean, "extBean");
        Intrinsics.checkNotNullParameter(onSign, "onSign");
        PrefDef_ prefDef_ = new PrefDef_(ctx);
        Long lD = prefDef_.lastShowCloudGameSignTipTime().d();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (lD.longValue() > 0) {
            Intrinsics.checkNotNull(lD);
            if (jCurrentTimeMillis - lD.longValue() < 86400000) {
                return false;
            }
        }
        prefDef_.lastShowCloudGameSignTipTime().g(Long.valueOf(jCurrentTimeMillis));
        new CustomDialog(new DialogUtils$showCloudGameSignTip$customDialog$1(adCfgInfo, onSign, ctx, extBean)).P2(Color.parseColor("#90000000")).C2(false).M0();
        t.l(ctx).R1(Event.commonExp, extBean.copy().setTypeCode("popup").buildScene().toExt());
        return true;
    }

    public final void showSignDialog(@NotNull Context ctx, @Nullable String totalTime, @Nullable String freeTime, @Nullable String vipTime, @NotNull Function1<? super DownloadTask, Boolean> confirmCall, @NotNull final Function0<Boolean> dismissCall, @NotNull Function0<Boolean> closeCall) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(confirmCall, "confirmCall");
        Intrinsics.checkNotNullParameter(dismissCall, "dismissCall");
        Intrinsics.checkNotNullParameter(closeCall, "closeCall");
        new CustomDialog(new DialogUtils$showSignDialog$signDialog$1(totalTime, freeTime, vipTime, ctx, confirmCall, closeCall)).g2(new com.kongzue.dialogx.interfaces.i() { // from class: com.join.kotlin.ui.hmcloud.dialog.d
            @Override // com.kongzue.dialogx.interfaces.i
            public final void run(Object obj) {
                dismissCall.invoke();
            }
        }).P2(Color.parseColor("#90000000")).M0();
    }
}
