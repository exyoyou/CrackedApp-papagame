.class public Lcom/join/mgps/dto/GameMainachieve;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lastShowVerTime:J

.field private pic_addr:Ljava/lang/String;

.field private time:J

.field private url:Ljava/lang/String;


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
.method public getLastShowVerTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameMainachieve;->lastShowVerTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPic_addr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainachieve;->pic_addr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameMainachieve;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainachieve;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setLastShowVerTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastShowVerTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameMainachieve;->lastShowVerTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setPic_addr(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic_addr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainachieve;->pic_addr:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameMainachieve;->time:J

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainachieve;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
