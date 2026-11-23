.class public Lcom/join/mgps/dto/EverdayLogin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private filePath:Ljava/lang/String;

.field private hasGetGiftTime:J

.field private showTime:J

.field private source:Ljava/lang/String;

.field private uid:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/join/mgps/dto/EverdayLogin;->showTime:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/join/mgps/dto/EverdayLogin;->hasGetGiftTime:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/EverdayLogin;->filePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHasGetGiftTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/EverdayLogin;->hasGetGiftTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getShowTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/EverdayLogin;->showTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/EverdayLogin;->source:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/EverdayLogin;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/EverdayLogin;->version:I

    .line 2
    .line 3
    return v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/EverdayLogin;->filePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHasGetGiftTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasGetGiftTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/EverdayLogin;->hasGetGiftTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setShowTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/EverdayLogin;->showTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/EverdayLogin;->source:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/EverdayLogin;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/EverdayLogin;->version:I

    .line 2
    .line 3
    return-void
.end method
