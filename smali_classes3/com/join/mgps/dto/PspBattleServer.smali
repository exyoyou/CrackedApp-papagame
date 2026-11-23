.class public Lcom/join/mgps/dto/PspBattleServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ip:Ljava/lang/String;

.field private people:Ljava/lang/String;

.field private port:I

.field private server_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PspBattleServer;->ip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPeople()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PspBattleServer;->people:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PspBattleServer;->port:I

    .line 2
    .line 3
    return v0
.end method

.method public getServer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PspBattleServer;->server_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PspBattleServer;->ip:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPeople(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "people"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PspBattleServer;->people:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "port"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PspBattleServer;->port:I

    .line 2
    .line 3
    return-void
.end method

.method public setServer_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "server_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PspBattleServer;->server_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
