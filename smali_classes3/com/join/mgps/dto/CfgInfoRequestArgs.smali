.class public Lcom/join/mgps/dto/CfgInfoRequestArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private client_time:Ljava/lang/Long;

.field private uid:I

.field private unknown_source_cfg:Ljava/lang/String;


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
.method public getClient_time()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CfgInfoRequestArgs;->client_time:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CfgInfoRequestArgs;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnknown_source_cfg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CfgInfoRequestArgs;->unknown_source_cfg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setClient_time(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CfgInfoRequestArgs;->client_time:Ljava/lang/Long;

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
    iput p1, p0, Lcom/join/mgps/dto/CfgInfoRequestArgs;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setUnknown_source_cfg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unknown_source_cfg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CfgInfoRequestArgs;->unknown_source_cfg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
