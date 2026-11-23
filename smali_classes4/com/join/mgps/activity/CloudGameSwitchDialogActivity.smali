.class public final Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;
.super Lcom/join/mgps/base/dialog/BaseDialogActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010>\u001a\u00020?2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0014J\u0012\u0010B\u001a\u00020?2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0007J\u0008\u0010E\u001a\u00020FH\u0016J\u0008\u0010G\u001a\u00020?H\u0014J\u0012\u0010H\u001a\u00020?2\u0008\u0010I\u001a\u0004\u0018\u00010FH\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011\"\u0004\u0008\u001c\u0010\u0013R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010&\"\u0004\u0008+\u0010(R\u001c\u0010,\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010&\"\u0004\u0008.\u0010(R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001c\u00105\u001a\u0004\u0018\u000100X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00102\"\u0004\u00087\u00104R\u001c\u00108\u001a\u0004\u0018\u000109X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=\u00a8\u0006J"
    }
    d2 = {
        "Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;",
        "Lcom/join/mgps/base/dialog/BaseDialogActivity;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "sdv_icon_1",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "getSdv_icon_1",
        "()Lcom/facebook/drawee/view/SimpleDraweeView;",
        "setSdv_icon_1",
        "(Lcom/facebook/drawee/view/SimpleDraweeView;)V",
        "sdv_icon_2",
        "getSdv_icon_2",
        "setSdv_icon_2",
        "tv_text_1",
        "Landroid/widget/TextView;",
        "getTv_text_1",
        "()Landroid/widget/TextView;",
        "setTv_text_1",
        "(Landroid/widget/TextView;)V",
        "tv_text_2",
        "getTv_text_2",
        "setTv_text_2",
        "tv_btn_1",
        "getTv_btn_1",
        "setTv_btn_1",
        "tv_btn_2",
        "getTv_btn_2",
        "setTv_btn_2",
        "cl_container",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "getCl_container",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "setCl_container",
        "(Landroidx/constraintlayout/widget/ConstraintLayout;)V",
        "EVENT_NAME",
        "",
        "getEVENT_NAME",
        "()Ljava/lang/String;",
        "setEVENT_NAME",
        "(Ljava/lang/String;)V",
        "gameId1",
        "getGameId1",
        "setGameId1",
        "gameId2",
        "getGameId2",
        "setGameId2",
        "task1",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "getTask1",
        "()Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "setTask1",
        "(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V",
        "task2",
        "getTask2",
        "setTask2",
        "warmCallback",
        "Lcom/join/mgps/callbacks/WarningDialogCallback;",
        "getWarmCallback",
        "()Lcom/join/mgps/callbacks/WarningDialogCallback;",
        "setWarmCallback",
        "(Lcom/join/mgps/callbacks/WarningDialogCallback;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onFinishEvent",
        "event",
        "Lcom/join/mgps/event/FinishEvent;",
        "getContentView",
        "Landroid/view/View;",
        "onDestroy",
        "onClick",
        "v",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private EVENT_NAME:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public cl_container:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private gameId1:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gameId2:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public sdv_icon_1:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public sdv_icon_2:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private task1:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private task2:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public tv_btn_1:Landroid/widget/TextView;

.field public tv_btn_2:Landroid/widget/TextView;

.field public tv_text_1:Landroid/widget/TextView;

.field public tv_text_2:Landroid/widget/TextView;

.field private warmCallback:Lcom/join/mgps/callbacks/x;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "CloudGameSwitch"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->EVENT_NAME:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->gameId1:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->gameId2:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getCl_container()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->cl_container:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "cl_container"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->getCl_container()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getEVENT_NAME()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->EVENT_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameId1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->gameId1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameId2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->gameId2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSdv_icon_1()Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->sdv_icon_1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "sdv_icon_1"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getSdv_icon_2()Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->sdv_icon_2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "sdv_icon_2"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getTask1()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->task1:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTask2()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->task2:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTv_btn_1()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->tv_btn_1:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tv_btn_1"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getTv_btn_2()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->tv_btn_2:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tv_btn_2"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getTv_text_1()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->tv_text_1:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tv_text_1"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getTv_text_2()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->tv_text_2:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tv_text_2"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getWarmCallback()Lcom/join/mgps/callbacks/x;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->warmCallback:Lcom/join/mgps/callbacks/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->getTv_btn_1()Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lcom/papa/sim/statistic/EventP$TypeCode;->btnCancel:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->T0(Lcom/papa/sim/statistic/EventP$TypeCode;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->getTv_btn_2()Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->warmCallback:Lcom/join/mgps/callbacks/x;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-interface {p1, p0}, Lcom/join/mgps/callbacks/x;->a(Landroid/app/Activity;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object v0, Lcom/papa/sim/statistic/EventP$TypeCode;->btnOk:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->T0(Lcom/papa/sim/statistic/EventP$TypeCode;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0030

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const p1, 0x7f0a14a0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->setSdv_icon_1(Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 30
    .line 31
    .line 32
    const p1, 0x7f0a14a1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->setSdv_icon_2(Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f0a1a3b

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->setTv_text_1(Landroid/widget/TextView;)V

    .line 54
    .line 55
    .line 56
    const p1, 0x7f0a1a3c

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->setTv_text_2(Landroid/widget/TextView;)V

    .line 66
    .line 67
    .line 68
    const p1, 0x7f0a192f

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->setTv_btn_1(Landroid/widget/TextView;)V

    .line 78
    .line 79
    .line 80
    const p1, 0x7f0a1930

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->setTv_btn_2(Landroid/widget/TextView;)V

    .line 90
    .line 91
    .line 92
    const p1, 0x7f0a037a

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->setCl_container(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->getTv_btn_1()Landroid/widget/TextView;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->getTv_btn_2()Landroid/widget/TextView;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 119
    .line 120
    instance-of v0, p1, Lcom/join/mgps/callbacks/x;

    .line 121
    .line 122
    if-eqz v0, :cond_0

    .line 123
    .line 124
    const-string v0, "null cannot be cast to non-null type com.join.mgps.callbacks.WarningDialogCallback"

    .line 125
    .line 126
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    check-cast p1, Lcom/join/mgps/callbacks/x;

    .line 130
    .line 131
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->warmCallback:Lcom/join/mgps/callbacks/x;

    .line 132
    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_2

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string v0, "gameId1"

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->gameId1:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string v0, "gameId2"

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->gameId2:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->gameId1:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->task1:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 174
    .line 175
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->gameId2:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->task2:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 186
    .line 187
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->task1:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 188
    .line 189
    if-eqz p1, :cond_1

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->getSdv_icon_1()Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->getTv_text_1()Landroid/widget/TextView;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->task2:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 214
    .line 215
    if-eqz p1, :cond_2

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->getSdv_icon_2()Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->getTv_text_2()Landroid/widget/TextView;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onFinishEvent(Lcom/join/mgps/event/v;)V
    .locals 1
    .param p1    # Lcom/join/mgps/event/v;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/event/v;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->EVENT_NAME:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final setCl_container(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->cl_container:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    return-void
.end method

.method public final setEVENT_NAME(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->EVENT_NAME:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setGameId1(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->gameId1:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setGameId2(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->gameId2:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSdv_icon_1(Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/view/SimpleDraweeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->sdv_icon_1:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    .line 8
    return-void
.end method

.method public final setSdv_icon_2(Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/view/SimpleDraweeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->sdv_icon_2:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTask1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->task1:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-void
.end method

.method public final setTask2(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->task2:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-void
.end method

.method public final setTv_btn_1(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->tv_btn_1:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTv_btn_2(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->tv_btn_2:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTv_text_1(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->tv_text_1:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTv_text_2(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->tv_text_2:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setWarmCallback(Lcom/join/mgps/callbacks/x;)V
    .locals 0
    .param p1    # Lcom/join/mgps/callbacks/x;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameSwitchDialogActivity;->warmCallback:Lcom/join/mgps/callbacks/x;

    .line 2
    .line 3
    return-void
.end method
