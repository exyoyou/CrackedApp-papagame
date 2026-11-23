.class public Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/EmuActivity_psp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string v0, "adAction"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x12

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x5

    .line 18
    if-ne v0, v1, :cond_3

    .line 19
    .line 20
    const-string v0, "extras"

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->handleAdError(Landroid/content/Context;Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->dismiss()V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 65
    .line 66
    invoke-virtual {v0, p1, p2}, Lcom/papa91/arc/EmuActivity_psp;->handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 73
    .line 74
    sget-object p2, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 75
    .line 76
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, p2, v0}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-nez p2, :cond_5

    .line 87
    .line 88
    iget-object p2, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 89
    .line 90
    iget-object p2, p2, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Lcom/papa91/wrapper/UserPrefs;->getRemainTime(Ljava/lang/String;)J

    .line 93
    .line 94
    .line 95
    move-result-wide p1

    .line 96
    goto :goto_1

    .line 97
    :cond_5
    const-wide/16 p1, 0x0

    .line 98
    .line 99
    :goto_1
    move-wide v3, p1

    .line 100
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 101
    .line 102
    iget-object v0, p1, Lcom/papa91/arc/EmuActivity_psp;->pref:Lcom/papa91/wrapper/UserPrefs;

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    sget-object v1, Lorg/ppsspp/ppsspp/NativeActivity;->GameID:Ljava/lang/String;

    .line 107
    .line 108
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->UserID:Ljava/lang/String;

    .line 109
    .line 110
    const/4 v5, 0x1

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/papa91/wrapper/UserPrefs;->setAdGamesConfig(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 112
    .line 113
    .line 114
    :cond_6
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 115
    .line 116
    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 117
    .line 118
    if-eqz p1, :cond_7

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedDialog:Lcom/papa91/arc/view/GameTimeLimitedDialog;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/papa91/arc/view/GameTimeLimitedDialog;->dismiss()V

    .line 131
    .line 132
    .line 133
    :cond_7
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    .line 136
    .line 137
    if-eqz p1, :cond_8

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_8

    .line 144
    .line 145
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 146
    .line 147
    iget-object p1, p1, Lcom/papa91/arc/EmuActivity_psp;->timeLimitedNetworkFailedDialog:Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/papa91/arc/view/GameTimeLimitedNetworkFailedDialog;->dismiss()V

    .line 150
    .line 151
    .line 152
    :cond_8
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$AdResultReceiver;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/papa91/arc/EmuActivity_psp;->hideAdCountDown()V

    .line 155
    .line 156
    .line 157
    :goto_2
    return-void
.end method
