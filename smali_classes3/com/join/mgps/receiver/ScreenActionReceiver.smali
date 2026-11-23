.class public Lcom/join/mgps/receiver/ScreenActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/os/Handler;

.field c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/receiver/ScreenActionReceiver;->a:Z

    .line 6
    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/receiver/ScreenActionReceiver;->b:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/receiver/ScreenActionReceiver$a;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/mgps/receiver/ScreenActionReceiver$a;-><init>(Lcom/join/mgps/receiver/ScreenActionReceiver;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/receiver/ScreenActionReceiver;->c:Ljava/lang/Runnable;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInitReady()Lorg/androidannotations/api/sharedpreferences/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    const-string v0, "power"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/os/PowerManager;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-static {}, Lcom/join/mgps/Util/d2;->b()Lcom/join/mgps/dto/WebDiskCfg;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/WebDiskCfg;->getCommon_cfg()Lcom/join/mgps/dto/CommonCfgBean;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonCfgBean;->getAct_type()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v1, 0x3

    .line 71
    if-ne v0, v1, :cond_1

    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->quark_first_launch_time()Lorg/androidannotations/api/sharedpreferences/k;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/Long;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonCfgBean;->getAct_start_day()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    mul-int/lit8 v2, v2, 0x18

    .line 99
    .line 100
    mul-int/lit16 v2, v2, 0xe10

    .line 101
    .line 102
    mul-int/lit16 v2, v2, 0x3e8

    .line 103
    .line 104
    int-to-long v2, v2

    .line 105
    add-long/2addr v0, v2

    .line 106
    invoke-static {v0, v1}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->quark_launch_app_times()Lorg/androidannotations/api/sharedpreferences/i;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Ljava/lang/Integer;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-gtz v0, :cond_2

    .line 133
    .line 134
    const/4 v0, 0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    const/4 v0, 0x0

    .line 137
    :goto_0
    if-eqz v0, :cond_3

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonCfgBean;->getAct_type()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    const/4 v0, 0x2

    .line 144
    if-ne p1, v0, :cond_3

    .line 145
    .line 146
    iget-object p1, p0, Lcom/join/mgps/receiver/ScreenActionReceiver;->b:Landroid/os/Handler;

    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/receiver/ScreenActionReceiver;->c:Ljava/lang/Runnable;

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/join/mgps/receiver/ScreenActionReceiver;->b:Landroid/os/Handler;

    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/receiver/ScreenActionReceiver;->c:Ljava/lang/Runnable;

    .line 156
    .line 157
    const-wide/16 v1, 0x5dc

    .line 158
    .line 159
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    .line 161
    .line 162
    :cond_3
    :goto_1
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContext"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/receiver/ScreenActionReceiver;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/receiver/ScreenActionReceiver;->a:Z

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContext"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/receiver/ScreenActionReceiver;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/receiver/ScreenActionReceiver;->a:Z

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/receiver/ScreenActionReceiver;->a(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/join/mgps/receiver/ScreenActionReceiver;->a(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
