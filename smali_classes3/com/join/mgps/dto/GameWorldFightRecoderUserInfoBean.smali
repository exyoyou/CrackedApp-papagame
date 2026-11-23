.class public Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar_src:Ljava/lang/String;

.field private battle_count:Ljava/lang/String;

.field private battle_winning_rate:Ljava/lang/String;

.field private match_count:I

.field private match_curr_ex:I

.field private match_defeat_count:I

.field private match_level:I

.field private match_next_ex:I

.field private match_winning_count:I

.field private match_winning_rate:I

.field private nickname:Ljava/lang/String;

.field private papa_money:I

.field private svip_level:I

.field private uid:I

.field private vip_expire_time:J

.field private vip_level:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_level:I

    .line 3
    iput v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->svip_level:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_expire_time:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "nickname",
            "papa_money",
            "match_next_ex",
            "match_curr_ex",
            "match_level",
            "match_winning_rate",
            "match_count",
            "match_winning_count",
            "match_defeat_count"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_level:I

    .line 7
    iput v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->svip_level:I

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_expire_time:J

    .line 9
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->uid:I

    .line 10
    iput-object p2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->nickname:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->papa_money:I

    .line 12
    iput p4, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_next_ex:I

    .line 13
    iput p5, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_curr_ex:I

    .line 14
    iput p6, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_level:I

    .line 15
    iput p7, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_rate:I

    .line 16
    iput p8, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_count:I

    .line 17
    iput p9, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_count:I

    .line 18
    iput p10, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_defeat_count:I

    return-void
.end method


# virtual methods
.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBattle_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->battle_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBattle_winning_rate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->battle_winning_rate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMatch_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getMatch_curr_ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_curr_ex:I

    .line 2
    .line 3
    return v0
.end method

.method public getMatch_defeat_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_defeat_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getMatch_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_level:I

    .line 2
    .line 3
    return v0
.end method

.method public getMatch_next_ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_next_ex:I

    .line 2
    .line 3
    return v0
.end method

.method public getMatch_winning_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getMatch_winning_rate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_rate:I

    .line 2
    .line 3
    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPapa_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->papa_money:I

    .line 2
    .line 3
    return v0
.end method

.method public getSvip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->svip_level:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getVip_expire_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_expire_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVip_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_level:I

    .line 2
    .line 3
    return v0
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatar_src"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBattle_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battle_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->battle_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBattle_winning_rate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battle_winning_rate"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->battle_winning_rate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMatch_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setMatch_curr_ex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match_curr_ex"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_curr_ex:I

    .line 2
    .line 3
    return-void
.end method

.method public setMatch_defeat_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match_defeat_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_defeat_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setMatch_level(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match_level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_level:I

    .line 2
    .line 3
    return-void
.end method

.method public setMatch_next_ex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match_next_ex"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_next_ex:I

    .line 2
    .line 3
    return-void
.end method

.method public setMatch_winning_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match_winning_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setMatch_winning_rate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match_winning_rate"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_rate:I

    .line 2
    .line 3
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPapa_money(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "papa_money"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->papa_money:I

    .line 2
    .line 3
    return-void
.end method

.method public setSvip_level(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "svip_level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->svip_level:I

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setVip_expire_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vip_expire_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_expire_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setVip_level(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vip_level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->vip_level:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "GameWorldFightRecoderUserInfoBean{uid="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->uid:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", nickname=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->nickname:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", papa_money="

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->papa_money:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", match_next_ex="

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_next_ex:I

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ", match_curr_ex="

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_curr_ex:I

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, ", match_level="

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_level:I

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, ", match_winning_rate="

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_rate:I

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, ", match_count="

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_count:I

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, ", match_winning_count="

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_winning_count:I

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v2, ", match_defeat_count="

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->match_defeat_count:I

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, ", avatar_src=\'"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->avatar_src:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v2, ", battle_winning_rate=\'"

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->battle_winning_rate:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v2, ", battle_count=\'"

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;->battle_count:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const/16 v1, 0x7d

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    return-object v0
.end method
