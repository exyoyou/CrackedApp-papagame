.class Lcom/join/mgps/activity/FriendInviteActivity$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FriendInviteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/FriendInviteActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FriendInviteActivity;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "millisInFuture",
            "countDownInterval"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "0"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/join/mgps/activity/FriendInviteActivity;->inviteNotification:Lcom/join/mgps/dto/FriendInviteBean;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/join/mgps/activity/FriendInviteActivity;->inviteNotification:Lcom/join/mgps/dto/FriendInviteBean;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, ""

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/join/mgps/activity/FriendInviteActivity;->inviteNotification:Lcom/join/mgps/dto/FriendInviteBean;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/4 v3, 0x1

    .line 73
    if-ne v2, v3, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string v1, "1"

    .line 77
    .line 78
    :goto_0
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget-object v2, Lcom/papa/sim/statistic/Event;->OverdueInvitation:Lcom/papa/sim/statistic/Event;

    .line 88
    .line 89
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/join/mgps/activity/FriendInviteActivity;->decline:Landroid/widget/TextView;

    .line 95
    .line 96
    const-string v1, "\u62d2\u7edd"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/FriendInviteActivity;->decline:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "\u62d2\u7edd("

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x3e8

    .line 16
    .line 17
    div-long/2addr p1, v2

    .line 18
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "s)"

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
