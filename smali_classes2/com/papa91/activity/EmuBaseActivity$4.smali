.class Lcom/papa91/activity/EmuBaseActivity$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$4;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/16 v1, 0x64

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x65

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$4;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 27
    .line 28
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 29
    .line 30
    iput v1, v0, Lcom/papa91/activity/EmuBaseActivity;->endGameResult:I

    .line 31
    .line 32
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 33
    .line 34
    iput v2, v0, Lcom/papa91/activity/EmuBaseActivity;->endGameMills:I

    .line 35
    .line 36
    if-eqz v1, :cond_6

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/activity/EmuBaseActivity;->updateEndGameResultV2(IILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()Lcom/papa91/activity/EmuBaseActivity;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 48
    .line 49
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->complainMsg(II)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()Lcom/papa91/activity/EmuBaseActivity;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->raseVipToMgsim(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()Lcom/papa91/activity/EmuBaseActivity;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 70
    .line 71
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->startAdActivity(II)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()Lcom/papa91/activity/EmuBaseActivity;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->startPrefecture(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()Lcom/papa91/activity/EmuBaseActivity;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/papa91/activity/EmuBaseActivity;->startBBK_GOINEE_sysAPP()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()Lcom/papa91/activity/EmuBaseActivity;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->access$1000(Lcom/papa91/activity/EmuBaseActivity;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()Lcom/papa91/activity/EmuBaseActivity;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$900()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->selectSpAndCheat(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()Lcom/papa91/activity/EmuBaseActivity;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->startAPPActivity()V

    .line 119
    .line 120
    .line 121
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
