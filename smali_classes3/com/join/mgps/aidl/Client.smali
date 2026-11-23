.class public Lcom/join/mgps/aidl/Client;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/aidl/Client$ClientStatus;
    }
.end annotation


# instance fields
.field private lastResponseTime:J

.field private lastSendTime:J

.field private retry:I

.field private sClient:Lcom/join/mgps/aidl/WifiServerThread$b;

.field private status:Lcom/join/mgps/aidl/Client$ClientStatus;

.field private sync:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/join/mgps/aidl/Client$ClientStatus;->UNBOUND:Lcom/join/mgps/aidl/Client$ClientStatus;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/aidl/Client;->status:Lcom/join/mgps/aidl/Client$ClientStatus;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/aidl/Client;->sync:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getLastResponseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/aidl/Client;->lastResponseTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastSendTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/aidl/Client;->lastSendTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRetry()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/aidl/Client;->retry:I

    .line 2
    .line 3
    return v0
.end method

.method public getStatus()Lcom/join/mgps/aidl/Client$ClientStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/Client;->status:Lcom/join/mgps/aidl/Client$ClientStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSync()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/Client;->sync:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/Client;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getsClient()Lcom/join/mgps/aidl/WifiServerThread$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/aidl/Client;->sClient:Lcom/join/mgps/aidl/WifiServerThread$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public setLastResponseTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastResponseTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/aidl/Client;->lastResponseTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setLastSendTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastSendTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/aidl/Client;->lastSendTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setRetry(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retry"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/aidl/Client;->retry:I

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(Lcom/join/mgps/aidl/Client$ClientStatus;)V
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
    iput-object p1, p0, Lcom/join/mgps/aidl/Client;->status:Lcom/join/mgps/aidl/Client$ClientStatus;

    .line 2
    .line 3
    return-void
.end method

.method public setSync(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sync"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/Client;->sync:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/Client;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setsClient(Lcom/join/mgps/aidl/WifiServerThread$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sClient"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/aidl/Client;->sClient:Lcom/join/mgps/aidl/WifiServerThread$b;

    .line 2
    .line 3
    return-void
.end method
