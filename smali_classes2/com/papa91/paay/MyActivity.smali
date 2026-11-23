.class public Lcom/papa91/paay/MyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field paayReceiver:Lcom/papa91/paay/PaayReceiver;

.field token:Ljava/lang/String;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "3913852899"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa91/paay/MyActivity;->uid:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "5wnrKqSDPBCvHcWp"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa91/paay/MyActivity;->token:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public inquiry()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/paay/MyActivity;->uid:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/paay/MyActivity;->token:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Lcom/papa91/paay/MyActivity$2;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Lcom/papa91/paay/MyActivity$2;-><init>(Lcom/papa91/paay/MyActivity;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "123"

    .line 11
    .line 12
    invoke-static {p0, v0, v1, v3, v2}, Lcom/papa91/paay/PayCenter;->inquiryCheat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public lobbyPlayCheck()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/papa91/paay/MyActivity;->uid:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/papa91/paay/MyActivity;->token:Ljava/lang/String;

    .line 4
    .line 5
    const-string v3, "3913852899"

    .line 6
    .line 7
    const-string v4, "client"

    .line 8
    .line 9
    const-string v5, "20040032"

    .line 10
    .line 11
    new-instance v6, Lcom/papa91/paay/MyActivity$4;

    .line 12
    .line 13
    invoke-direct {v6, p0}, Lcom/papa91/paay/MyActivity$4;-><init>(Lcom/papa91/paay/MyActivity;)V

    .line 14
    .line 15
    .line 16
    move-object v0, p0

    .line 17
    invoke-static/range {v0 .. v6}, Lcom/papa91/paay/PayCenter;->lobbyPlayCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/papa91/paay/MyActivity$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/papa91/paay/MyActivity$1;-><init>(Lcom/papa91/paay/MyActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/papa91/paay/MyActivity;->paayReceiver:Lcom/papa91/paay/PaayReceiver;

    .line 10
    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    .line 12
    .line 13
    const-string v1, "com.join.android.app.mgsim.broadcast.action_login_success"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const/high16 p1, 0x7f030000

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/papa91/paay/MyActivity;->startLobbyGame()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/paay/MyActivity;->paayReceiver:Lcom/papa91/paay/PaayReceiver;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public startLobbyGame()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/papa91/paay/MyActivity;->uid:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/papa91/paay/MyActivity;->token:Ljava/lang/String;

    .line 4
    .line 5
    const-string v3, "3913852899"

    .line 6
    .line 7
    const-string v4, "client"

    .line 8
    .line 9
    const-string v5, "20040032"

    .line 10
    .line 11
    new-instance v6, Lcom/papa91/paay/MyActivity$3;

    .line 12
    .line 13
    invoke-direct {v6, p0}, Lcom/papa91/paay/MyActivity$3;-><init>(Lcom/papa91/paay/MyActivity;)V

    .line 14
    .line 15
    .line 16
    move-object v0, p0

    .line 17
    invoke-static/range {v0 .. v6}, Lcom/papa91/paay/PayCenter;->startLobby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
