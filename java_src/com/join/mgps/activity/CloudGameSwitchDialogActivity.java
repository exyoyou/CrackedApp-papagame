package com.join.mgps.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.dialog.callback.IDialogActivityCallback;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.hmcloud.HMCloudGameManager;
import com.papa.sim.statistic.EventP;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010>\u001a\u00020?2\b\u0010@\u001a\u0004\u0018\u00010AH\u0014J\u0012\u0010B\u001a\u00020?2\b\u0010C\u001a\u0004\u0018\u00010DH\u0007J\b\u0010E\u001a\u00020FH\u0016J\b\u0010G\u001a\u00020?H\u0014J\u0012\u0010H\u001a\u00020?2\b\u0010I\u001a\u0004\u0018\u00010FH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\u000fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u000fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0011\"\u0004\b\u001c\u0010\u0013R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010&\"\u0004\b+\u0010(R\u001c\u0010,\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010&\"\u0004\b.\u0010(R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001c\u00105\u001a\u0004\u0018\u000100X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00102\"\u0004\b7\u00104R\u001c\u00108\u001a\u0004\u0018\u000109X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=¨\u0006J"}, d2 = {"Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;", "Lcom/join/mgps/base/dialog/BaseDialogActivity;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "sdv_icon_1", "Lcom/facebook/drawee/view/SimpleDraweeView;", "getSdv_icon_1", "()Lcom/facebook/drawee/view/SimpleDraweeView;", "setSdv_icon_1", "(Lcom/facebook/drawee/view/SimpleDraweeView;)V", "sdv_icon_2", "getSdv_icon_2", "setSdv_icon_2", "tv_text_1", "Landroid/widget/TextView;", "getTv_text_1", "()Landroid/widget/TextView;", "setTv_text_1", "(Landroid/widget/TextView;)V", "tv_text_2", "getTv_text_2", "setTv_text_2", "tv_btn_1", "getTv_btn_1", "setTv_btn_1", "tv_btn_2", "getTv_btn_2", "setTv_btn_2", "cl_container", "Landroidx/constraintlayout/widget/ConstraintLayout;", "getCl_container", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "setCl_container", "(Landroidx/constraintlayout/widget/ConstraintLayout;)V", "EVENT_NAME", "", "getEVENT_NAME", "()Ljava/lang/String;", "setEVENT_NAME", "(Ljava/lang/String;)V", "gameId1", "getGameId1", "setGameId1", "gameId2", "getGameId2", "setGameId2", "task1", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "getTask1", "()Lcom/github/snowdream/android/app/downloader/DownloadTask;", "setTask1", "(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V", "task2", "getTask2", "setTask2", "warmCallback", "Lcom/join/mgps/callbacks/WarningDialogCallback;", "getWarmCallback", "()Lcom/join/mgps/callbacks/WarningDialogCallback;", "setWarmCallback", "(Lcom/join/mgps/callbacks/WarningDialogCallback;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onFinishEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/join/mgps/event/FinishEvent;", "getContentView", "Landroid/view/View;", "onDestroy", "onClick", "v", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudGameSwitchDialogActivity extends BaseDialogActivity implements View.OnClickListener {
    public ConstraintLayout cl_container;
    public SimpleDraweeView sdv_icon_1;
    public SimpleDraweeView sdv_icon_2;

    @Nullable
    private DownloadTask task1;

    @Nullable
    private DownloadTask task2;
    public TextView tv_btn_1;
    public TextView tv_btn_2;
    public TextView tv_text_1;
    public TextView tv_text_2;

    @Nullable
    private com.join.mgps.callbacks.x warmCallback;

    @NotNull
    private String EVENT_NAME = "CloudGameSwitch";

    @Nullable
    private String gameId1 = "";

    @Nullable
    private String gameId2 = "";

    @NotNull
    public final ConstraintLayout getCl_container() {
        ConstraintLayout constraintLayout = this.cl_container;
        if (constraintLayout != null) {
            return constraintLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cl_container");
        return null;
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    @NotNull
    public View getContentView() {
        return getCl_container();
    }

    @NotNull
    public final String getEVENT_NAME() {
        return this.EVENT_NAME;
    }

    @Nullable
    public final String getGameId1() {
        return this.gameId1;
    }

    @Nullable
    public final String getGameId2() {
        return this.gameId2;
    }

    @NotNull
    public final SimpleDraweeView getSdv_icon_1() {
        SimpleDraweeView simpleDraweeView = this.sdv_icon_1;
        if (simpleDraweeView != null) {
            return simpleDraweeView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sdv_icon_1");
        return null;
    }

    @NotNull
    public final SimpleDraweeView getSdv_icon_2() {
        SimpleDraweeView simpleDraweeView = this.sdv_icon_2;
        if (simpleDraweeView != null) {
            return simpleDraweeView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sdv_icon_2");
        return null;
    }

    @Nullable
    public final DownloadTask getTask1() {
        return this.task1;
    }

    @Nullable
    public final DownloadTask getTask2() {
        return this.task2;
    }

    @NotNull
    public final TextView getTv_btn_1() {
        TextView textView = this.tv_btn_1;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tv_btn_1");
        return null;
    }

    @NotNull
    public final TextView getTv_btn_2() {
        TextView textView = this.tv_btn_2;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tv_btn_2");
        return null;
    }

    @NotNull
    public final TextView getTv_text_1() {
        TextView textView = this.tv_text_1;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tv_text_1");
        return null;
    }

    @NotNull
    public final TextView getTv_text_2() {
        TextView textView = this.tv_text_2;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tv_text_2");
        return null;
    }

    @Nullable
    public final com.join.mgps.callbacks.x getWarmCallback() {
        return this.warmCallback;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        if (v10 == null) {
            return;
        }
        if (Intrinsics.areEqual(v10, getTv_btn_1())) {
            finish();
            HMCloudGameManager.W().T0(EventP.TypeCode.btnCancel);
        } else if (Intrinsics.areEqual(v10, getTv_btn_2())) {
            com.join.mgps.callbacks.x xVar = this.warmCallback;
            if (xVar != null) {
                xVar.a(this);
            }
            HMCloudGameManager.W().T0(EventP.TypeCode.btnOk);
        }
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cloud_game_switch_dialog);
        com.join.mgps.Util.p2.v(this);
        com.join.mgps.Util.j0.a().d(this);
        setSdv_icon_1((SimpleDraweeView) findViewById(R.id.sdv_icon_1));
        setSdv_icon_2((SimpleDraweeView) findViewById(R.id.sdv_icon_2));
        setTv_text_1((TextView) findViewById(R.id.tv_text_1));
        setTv_text_2((TextView) findViewById(R.id.tv_text_2));
        setTv_btn_1((TextView) findViewById(R.id.tv_btn_1));
        setTv_btn_2((TextView) findViewById(R.id.tv_btn_2));
        setCl_container((ConstraintLayout) findViewById(R.id.cl_container));
        getTv_btn_1().setOnClickListener(this);
        getTv_btn_2().setOnClickListener(this);
        IDialogActivityCallback iDialogActivityCallback = this.callback;
        if (iDialogActivityCallback instanceof com.join.mgps.callbacks.x) {
            Intrinsics.checkNotNull(iDialogActivityCallback, "null cannot be cast to non-null type com.join.mgps.callbacks.WarningDialogCallback");
            this.warmCallback = (com.join.mgps.callbacks.x) iDialogActivityCallback;
        }
        if (getIntent() != null) {
            this.gameId1 = getIntent().getStringExtra("gameId1");
            this.gameId2 = getIntent().getStringExtra("gameId2");
            this.task1 = q5.f.M().L(this.gameId1);
            this.task2 = q5.f.M().L(this.gameId2);
            DownloadTask downloadTask = this.task1;
            if (downloadTask != null) {
                getSdv_icon_1().setImageURI(downloadTask.getPortraitURL());
                getTv_text_1().setText(downloadTask.getShowName());
            }
            DownloadTask downloadTask2 = this.task2;
            if (downloadTask2 != null) {
                getSdv_icon_2().setImageURI(downloadTask2.getPortraitURL());
                getTv_text_2().setText(downloadTask2.getShowName());
            }
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFinishEvent(@Nullable com.join.mgps.event.v vVar) {
        if (vVar == null || !Intrinsics.areEqual(vVar.a(), this.EVENT_NAME)) {
            return;
        }
        finish();
    }

    public final void setCl_container(@NotNull ConstraintLayout constraintLayout) {
        Intrinsics.checkNotNullParameter(constraintLayout, "<set-?>");
        this.cl_container = constraintLayout;
    }

    public final void setEVENT_NAME(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.EVENT_NAME = str;
    }

    public final void setGameId1(@Nullable String str) {
        this.gameId1 = str;
    }

    public final void setGameId2(@Nullable String str) {
        this.gameId2 = str;
    }

    public final void setSdv_icon_1(@NotNull SimpleDraweeView simpleDraweeView) {
        Intrinsics.checkNotNullParameter(simpleDraweeView, "<set-?>");
        this.sdv_icon_1 = simpleDraweeView;
    }

    public final void setSdv_icon_2(@NotNull SimpleDraweeView simpleDraweeView) {
        Intrinsics.checkNotNullParameter(simpleDraweeView, "<set-?>");
        this.sdv_icon_2 = simpleDraweeView;
    }

    public final void setTask1(@Nullable DownloadTask downloadTask) {
        this.task1 = downloadTask;
    }

    public final void setTask2(@Nullable DownloadTask downloadTask) {
        this.task2 = downloadTask;
    }

    public final void setTv_btn_1(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tv_btn_1 = textView;
    }

    public final void setTv_btn_2(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tv_btn_2 = textView;
    }

    public final void setTv_text_1(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tv_text_1 = textView;
    }

    public final void setTv_text_2(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tv_text_2 = textView;
    }

    public final void setWarmCallback(@Nullable com.join.mgps.callbacks.x xVar) {
        this.warmCallback = xVar;
    }
}
