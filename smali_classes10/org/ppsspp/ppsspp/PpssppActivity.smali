.class public Lorg/ppsspp/ppsspp/PpssppActivity;
.super Lorg/ppsspp/ppsspp/NativeActivity;
.source "SourceFile"


# static fields
.field public static final SHORTCUT_EXTRA_KEY:Ljava/lang/String; = "org.ppsspp.ppsspp.Shortcuts"

.field private static final TAG:Ljava/lang/String; = "PpssppActivity"

.field public static libraryLoaded:Z

.field private static m_hasNoNativeBinary:Z

.field private static m_hasUnsupportedABI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static CheckABIAndLoadLibrary()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "exit CheckABIAndLoadLibrary "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->soPath:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "armeabi"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sput-boolean v1, Lorg/ppsspp/ppsspp/PpssppActivity;->m_hasUnsupportedABI:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->soPath:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, "/libppsspp_jni.so"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sput-boolean v1, Lorg/ppsspp/ppsspp/PpssppActivity;->libraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "LoadLibrary failed, UnsatifiedLinkError: "

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    sput-boolean v1, Lorg/ppsspp/ppsspp/PpssppActivity;->m_hasNoNativeBinary:Z

    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/ppsspp/ppsspp/PpssppActivity;->m_hasUnsupportedABI:Z

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public IsHapticFeedbackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public IsSoundEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public exitEndGame(Z)V
    .locals 0

    return-void
.end method

.method public getEndGameDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEndGameLimitTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndGameScore(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getGamePlayTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMiniRankTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPassRewardPoint()V
    .locals 0

    return-void
.end method

.method public isEndGame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRankAutoUpload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowAchievementIcon()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/ppsspp/ppsspp/NativeActivity;->isBside:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowCheating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowGate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowOnekey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowQuickSlot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needShowBottomBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needShowTimer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAdImageClick()V
    .locals 0

    return-void
.end method

.method public onChangeDisk()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-static {}, Lorg/ppsspp/ppsspp/PpssppActivity;->CheckABIAndLoadLibrary()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lorg/ppsspp/ppsspp/PpssppActivity;->m_hasUnsupportedABI:Z

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    sget-boolean v0, Lorg/ppsspp/ppsspp/PpssppActivity;->m_hasNoNativeBinary:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "Found Shortcut Parameter in data: "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-super {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->setShortcutParam(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "org.ppsspp.ppsspp.Shortcuts"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v3, "Found Shortcut Parameter in extra-data: "

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-super {p0, v0}, Lorg/ppsspp/ppsspp/NativeActivity;->setShortcutParam(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lorg/ppsspp/ppsspp/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    :goto_1
    new-instance p1, Lorg/ppsspp/ppsspp/PpssppActivity$a;

    .line 89
    .line 90
    invoke-direct {p1, p0}, Lorg/ppsspp/ppsspp/PpssppActivity$a;-><init>(Lorg/ppsspp/ppsspp/PpssppActivity;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 94
    .line 95
    .line 96
    const-wide/16 v0, 0xbb8

    .line 97
    .line 98
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :goto_2
    const/4 p1, -0x1

    .line 107
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public onHideMenu()V
    .locals 0

    return-void
.end method

.method public onScreenShot()V
    .locals 0

    return-void
.end method

.method public playVideoForReward()V
    .locals 0

    return-void
.end method

.method public postCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/ppsspp/ppsspp/PpssppActivity$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lorg/ppsspp/ppsspp/PpssppActivity$b;-><init>(Lorg/ppsspp/ppsspp/PpssppActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public restartEndGame()V
    .locals 0

    return-void
.end method

.method public saveGameConfig()V
    .locals 0

    return-void
.end method

.method public senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "gameId"

    .line 9
    .line 10
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "uid"

    .line 16
    .line 17
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v1, "position"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string p2, "eventName"

    .line 28
    .line 29
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public showMenuGate()V
    .locals 0

    return-void
.end method

.method public showMenuOnekey()V
    .locals 0

    return-void
.end method

.method public showReceivePointDialog()V
    .locals 0

    return-void
.end method

.method public startEndGame()V
    .locals 0

    return-void
.end method
