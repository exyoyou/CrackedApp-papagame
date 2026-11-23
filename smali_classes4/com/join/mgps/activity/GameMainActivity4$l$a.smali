.class Lcom/join/mgps/activity/GameMainActivity4$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity4$l;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameMainActivity4$l;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity4$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$l$a;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$l$a;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivity4;->pspBattleServers:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/dto/PspBattleServer;

    .line 12
    .line 13
    new-instance p2, Lcom/join/mgps/dto/NetBattleStartGameDto;

    .line 14
    .line 15
    invoke-direct {p2}, Lcom/join/mgps/dto/NetBattleStartGameDto;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/PspBattleServer;->getIp()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setServerIP(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/PspBattleServer;->getPort()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setServerPort(I)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object p3, p0, Lcom/join/mgps/activity/GameMainActivity4$l$a;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 38
    .line 39
    iget-object p3, p3, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 40
    .line 41
    iget-object p3, p3, Lcom/join/mgps/activity/GameMainActivity4;->gameId:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p3, ""

    .line 47
    .line 48
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGameID(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object p4, p0, Lcom/join/mgps/activity/GameMainActivity4$l$a;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 64
    .line 65
    iget-object p4, p4, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 66
    .line 67
    invoke-static {p4}, Lcom/join/mgps/activity/GameMainActivity4;->access$100(Lcom/join/mgps/activity/GameMainActivity4;)Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    invoke-static {p4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    invoke-virtual {p4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    invoke-virtual {p4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserID(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setOldGame(I)V

    .line 98
    .line 99
    .line 100
    iget-object p3, p0, Lcom/join/mgps/activity/GameMainActivity4$l$a;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 101
    .line 102
    iget-object p3, p3, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 103
    .line 104
    invoke-static {p3}, Lcom/join/mgps/activity/GameMainActivity4;->access$400(Lcom/join/mgps/activity/GameMainActivity4;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setClientIp(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p3, p0, Lcom/join/mgps/activity/GameMainActivity4$l$a;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 112
    .line 113
    iget-object p3, p3, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 114
    .line 115
    invoke-static {p3}, Lcom/join/mgps/activity/GameMainActivity4;->access$100(Lcom/join/mgps/activity/GameMainActivity4;)Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserName(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object p3, p0, Lcom/join/mgps/activity/GameMainActivity4$l$a;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 135
    .line 136
    iget-object p3, p3, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 137
    .line 138
    invoke-static {p3}, Lcom/join/mgps/activity/GameMainActivity4;->access$100(Lcom/join/mgps/activity/GameMainActivity4;)Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {p3}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserIcon(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setPorder(I)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity4$l$a;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 161
    .line 162
    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 163
    .line 164
    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivity4;->access$100(Lcom/join/mgps/activity/GameMainActivity4;)Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iget-object p3, p0, Lcom/join/mgps/activity/GameMainActivity4$l$a;->b:Lcom/join/mgps/activity/GameMainActivity4$l;

    .line 169
    .line 170
    iget-object p3, p3, Lcom/join/mgps/activity/GameMainActivity4$l;->b:Lcom/join/mgps/activity/GameMainActivity4;

    .line 171
    .line 172
    invoke-static {p3}, Lcom/join/mgps/activity/GameMainActivity4;->access$500(Lcom/join/mgps/activity/GameMainActivity4;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    const/16 p4, 0xd

    .line 177
    .line 178
    invoke-static {p1, p2, p3, p4}, Lcom/join/mgps/Util/UtilsMy;->x4(Landroid/content/Context;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 179
    .line 180
    .line 181
    return-void
.end method
