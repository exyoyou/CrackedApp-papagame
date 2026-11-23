.class public Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;
.super Lcom/papa91/arc/view/BaseDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;
    }
.end annotation


# instance fields
.field close:Landroid/view/View;

.field context:Landroid/content/Context;

.field onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;

.field private pref:Lcom/papa91/wrapper/UserPrefs;

.field tip:Landroid/widget/TextView;

.field video:Landroid/view/View;

.field vip:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    sget p2, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 5
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->init()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->resumeGame()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getOnTimeLimitedListener()Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;

    .line 2
    .line 3
    return-object v0
.end method

.method init()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/wrapper/UserPrefs;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 9
    .line 10
    return-void
.end method

.method initViews()V
    .locals 4

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tip:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->tip:Landroid/widget/TextView;

    .line 10
    .line 11
    sget v0, Lorg/ppsspp/ppsspp/R$id;->video:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->video:Landroid/view/View;

    .line 18
    .line 19
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vip:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->vip:Landroid/view/View;

    .line 26
    .line 27
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->close:Landroid/view/View;

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    new-array v1, v1, [Landroid/view/View;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iget-object v3, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->video:Landroid/view/View;

    .line 40
    .line 41
    aput-object v3, v1, v2

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    iget-object v3, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->vip:Landroid/view/View;

    .line 45
    .line 46
    aput-object v3, v1, v2

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    aput-object v0, v1, v2

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->setOnListener([Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public isNetworkConnected()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "connectivity"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vip:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;->onExit()V

    .line 19
    .line 20
    .line 21
    :cond_1
    const-string p1, "PSPLimitQuit"

    .line 22
    .line 23
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->sendLimitStat(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->video:I

    .line 28
    .line 29
    if-ne p1, v0, :cond_4

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->isNetworkConnected()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "\u8bf7\u8054\u7f51\u7ee7\u7eed\u6e38\u620f"

    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->startVideo()V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_0
    return-void
.end method

.method varargs setOnListener([Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    return-void
.end method

.method public setOnTimeLimitedListener(Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog$OnTimeLimitedListener;

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    .line 4
    .line 5
    sget v1, Lorg/ppsspp/ppsspp/R$layout;->dialog_time_limited_network_failed:I

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->initViews()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/16 v2, 0x11

    .line 40
    .line 41
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 42
    .line 43
    const/4 v2, -0x1

    .line 44
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 45
    .line 46
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/high16 v1, 0x4000000

    .line 71
    .line 72
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/high16 v1, 0x8000000

    .line 80
    .line 81
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->pauseGame()V

    .line 85
    .line 86
    .line 87
    return-void
.end method
