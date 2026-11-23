.class public Lcom/join/mgps/dto/NetBattleInviteBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private client_ip:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

.field private status:Ljava/lang/String;

.field private user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->client_ip:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "status",
            "error",
            "client_ip",
            "server",
            "user_info"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->status:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->error:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->client_ip:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

    .line 6
    iput-object p5, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;

    return-void
.end method


# virtual methods
.method public getClient_ip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->client_ip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->error:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServer()Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUser_info()Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setClient_ip(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client_ip"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->client_ip:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->error:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setServer(Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "server"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->status:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUser_info(Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;

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
    const-string v1, "NetBattleInviteBean{status=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->status:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", error=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->error:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", server="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->server:Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", user_info="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/dto/NetBattleInviteBean;->user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x7d

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method
