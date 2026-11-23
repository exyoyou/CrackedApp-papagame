.class public Lcom/papa91/arc/view/GameTimeLimitedDialog;
.super Lcom/papa91/arc/view/BaseDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;
    }
.end annotation


# instance fields
.field private adConfig:Ljava/lang/String;

.field close:Landroid/view/View;

.field context:Landroid/content/Context;

.field private lBtnText:Ljava/lang/String;

.field private lBtnUrl:Ljava/lang/String;

.field onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;

.field private pref:Lcom/papa91/wrapper/UserPrefs;

.field private rBtnText:Ljava/lang/String;

.field textView17:Landroid/widget/TextView;

.field tip:Landroid/widget/TextView;

.field private tipText:Ljava/lang/String;

.field video:Landroid/view/View;

.field viewType:I

.field vip:Landroid/widget/TextView;


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
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->init()V

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
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->init()V

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

.method public getOnTimeLimitedListener()Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;

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
    iget-object v1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 9
    .line 10
    return-void
.end method

.method initViews()V
    .locals 7

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
    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->tip:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->video:Landroid/view/View;

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
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->vip:Landroid/widget/TextView;

    .line 28
    .line 29
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->close:Landroid/view/View;

    .line 36
    .line 37
    sget v0, Lorg/ppsspp/ppsspp/R$id;->textView17:I

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->textView17:Landroid/widget/TextView;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->lBtnText:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->vip:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->rBtnText:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->viewType:I

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    if-ne v0, v1, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 65
    .line 66
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 67
    .line 68
    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v2, v3}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Lcom/papa91/wrapper/UserPrefs;->getRemainTime(Ljava/lang/String;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->tip:Landroid/widget/TextView;

    .line 79
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v5, "\u60a8\u5c06\u5728"

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-wide/16 v5, 0x3e8

    .line 91
    .line 92
    div-long/2addr v2, v5

    .line 93
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, "\u79d2\u540e"

    .line 97
    .line 98
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->tipText:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    const/4 v0, 0x3

    .line 114
    new-array v0, v0, [Landroid/view/View;

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    iget-object v3, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->video:Landroid/view/View;

    .line 118
    .line 119
    aput-object v3, v0, v2

    .line 120
    .line 121
    iget-object v2, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->vip:Landroid/widget/TextView;

    .line 122
    .line 123
    aput-object v2, v0, v1

    .line 124
    .line 125
    const/4 v1, 0x2

    .line 126
    iget-object v2, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->close:Landroid/view/View;

    .line 127
    .line 128
    aput-object v2, v0, v1

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->setOnListener([Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
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
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->viewType:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->dismiss()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;

    .line 19
    .line 20
    if-eqz p1, :cond_5

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;->onExit()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vip:I

    .line 27
    .line 28
    if-ne p1, v0, :cond_3

    .line 29
    .line 30
    iget-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->lBtnUrl:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {p1, v0}, Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;->onBuyVip(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    const-string p1, "PSPLimitMember"

    .line 40
    .line 41
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->sendLimitStat(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->video:I

    .line 46
    .line 47
    if-ne p1, v0, :cond_5

    .line 48
    .line 49
    const-string p1, "PSPLimitPlay"

    .line 50
    .line 51
    invoke-static {p1}, Lcom/papa91/arc/EmuActivity_psp;->sendLimitStat(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->isNetworkConnected()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v0, "\u8bf7\u8054\u7f51\u7ee7\u7eed\u6e38\u620f"

    .line 65
    .line 66
    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    invoke-static {}, Lcom/papa91/arc/EmuActivity_psp;->startVideo()V

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_0
    return-void
.end method

.method public setAdConfig(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "r_btn_text"

    .line 2
    .line 3
    const-string v1, "l_btn_url"

    .line 4
    .line 5
    const-string v2, "l_btn_text"

    .line 6
    .line 7
    const-string v3, "tip_text"

    .line 8
    .line 9
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->adConfig:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_3

    .line 16
    .line 17
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->tipText:Ljava/lang/String;

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->lBtnText:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->lBtnUrl:Ljava/lang/String;

    .line 57
    .line 58
    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->rBtnText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :cond_3
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

.method public setOnTimeLimitedListener(Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->onTimeLimitedListener:Lcom/papa91/arc/view/GameTimeLimitedDialog$OnTimeLimitedListener;

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v1, 0x11

    .line 13
    .line 14
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 18
    .line 19
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/high16 v1, 0x4000000

    .line 45
    .line 46
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/high16 v1, 0x8000000

    .line 54
    .line 55
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lorg/ppsspp/ppsspp/NativeApp;->pauseGame()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public show1()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->viewType:I

    .line 3
    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_time_limited1:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->initViews()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->show()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public show2()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->viewType:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_time_limited2:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->initViews()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/yatoooon/screenadaptation/e;->a()Lcom/yatoooon/screenadaptation/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/yatoooon/screenadaptation/a;->f(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->show()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public updateTickTime(J)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->viewType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->tip:Landroid/widget/TextView;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "\u60a8\u5c06\u5728"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x3e8

    .line 19
    .line 20
    div-long/2addr p1, v2

    .line 21
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, "\u79d2\u540e\uff0c"

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/papa91/arc/view/GameTimeLimitedDialog;->tipText:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
