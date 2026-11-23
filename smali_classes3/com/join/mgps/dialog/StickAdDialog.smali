.class public Lcom/join/mgps/dialog/StickAdDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/StickAdDialog$a;,
        Lcom/join/mgps/dialog/StickAdDialog$MyReceiver;
    }
.end annotation


# instance fields
.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field private g:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

.field private h:Ljava/lang/String;

.field i:Landroid/content/Context;

.field private j:Z

.field private k:Lcom/join/mgps/dialog/StickAdDialog$a;

.field l:Lcom/join/mgps/dialog/StickAdDialog$MyReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cfgBean",
            "close"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->i:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/dialog/StickAdDialog;->g:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/join/mgps/dialog/StickAdDialog;->j:Z

    .line 9
    .line 10
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->g:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/dialog/StickAdDialog;->c:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;->getTip_text()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->d:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/dialog/StickAdDialog;->g:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;->getT_btn_text()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->f:Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/dialog/StickAdDialog;->g:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;->getB_btn_text()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->e:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/dialog/StickAdDialog;->g:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;->getCorner_text()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/StickAdDialog$MyReceiver;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/StickAdDialog$MyReceiver;-><init>(Lcom/join/mgps/dialog/StickAdDialog;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->l:Lcom/join/mgps/dialog/StickAdDialog$MyReceiver;

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/join/mgps/dialog/StickAdDialog;->l:Lcom/join/mgps/dialog/StickAdDialog$MyReceiver;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "gameId"
        }
    .end annotation

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
    const-string v1, "eventName"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p1, "gameId"

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public d(Lcom/join/mgps/dialog/StickAdDialog$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->k:Lcom/join/mgps/dialog/StickAdDialog$a;

    .line 2
    .line 3
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->l:Lcom/join/mgps/dialog/StickAdDialog$MyReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dialog/StickAdDialog;->l:Lcom/join/mgps/dialog/StickAdDialog$MyReceiver;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->l:Lcom/join/mgps/dialog/StickAdDialog$MyReceiver;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->i:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/ad/a;->g(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/ad/a;->b()V

    .line 24
    .line 25
    .line 26
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->k:Lcom/join/mgps/dialog/StickAdDialog$a;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->j:Z

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/StickAdDialog$a;->b(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->j:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget-object p1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdUnnecessary_Close:Lcom/papa/sim/statistic/Event;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->h:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/dialog/StickAdDialog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdMust_Close:Lcom/papa/sim/statistic/Event;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->h:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/dialog/StickAdDialog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/StickAdDialog;->dismiss()V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->f:Landroid/widget/TextView;

    .line 46
    .line 47
    if-ne p1, v0, :cond_6

    .line 48
    .line 49
    iget-boolean p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->j:Z

    .line 50
    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->g:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;->getB_btn_url()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->i:Landroid/content/Context;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/dialog/StickAdDialog;->g:Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;->getB_btn_url()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    sget-object p1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdMust_Buy:Lcom/papa/sim/statistic/Event;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->h:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/dialog/StickAdDialog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->k:Lcom/join/mgps/dialog/StickAdDialog$a;

    .line 95
    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/StickAdDialog$a;->b(Z)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lcom/papa/sim/statistic/Event;->Customgoldfinger_AdUnnecessary_Buy:Lcom/papa/sim/statistic/Event;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->h:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/dialog/StickAdDialog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/StickAdDialog;->dismiss()V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->d:Landroid/widget/TextView;

    .line 118
    .line 119
    if-ne p1, v0, :cond_8

    .line 120
    .line 121
    iget-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->k:Lcom/join/mgps/dialog/StickAdDialog$a;

    .line 122
    .line 123
    if-eqz p1, :cond_7

    .line 124
    .line 125
    invoke-interface {p1}, Lcom/join/mgps/dialog/StickAdDialog$a;->a()V

    .line 126
    .line 127
    .line 128
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/dialog/StickAdDialog;->dismiss()V

    .line 129
    .line 130
    .line 131
    :cond_8
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const v0, 0x106000d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x11

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    const p1, 0x7f0d0231

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 57
    .line 58
    .line 59
    const p1, 0x7f0a0a22

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/widget/ImageView;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->b:Landroid/widget/ImageView;

    .line 69
    .line 70
    const p1, 0x7f0a1911

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->c:Landroid/widget/TextView;

    .line 80
    .line 81
    const p1, 0x7f0a19ed

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->d:Landroid/widget/TextView;

    .line 91
    .line 92
    const p1, 0x7f0a19ef

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroid/widget/TextView;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->f:Landroid/widget/TextView;

    .line 102
    .line 103
    const p1, 0x7f0a1a6a

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/TextView;

    .line 111
    .line 112
    iput-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->e:Landroid/widget/TextView;

    .line 113
    .line 114
    iget-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->b:Landroid/widget/ImageView;

    .line 115
    .line 116
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->d:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/mgps/dialog/StickAdDialog;->f:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/StickAdDialog;->k:Lcom/join/mgps/dialog/StickAdDialog$a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/join/mgps/dialog/StickAdDialog$a;->onShow()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/dialog/StickAdDialog;->e()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/dialog/StickAdDialog;->a()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
