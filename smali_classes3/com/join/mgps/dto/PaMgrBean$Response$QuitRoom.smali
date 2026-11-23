.class public Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuitRoom"
.end annotation


# instance fields
.field private charmCount:I

.field private currentCharm:I

.field private error:Ljava/lang/String;

.field private liveTime:J

.field private message:Ljava/lang/String;

.field private viewerCount:I


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
.method public getCharmCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;->charmCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentCharm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;->currentCharm:I

    .line 2
    .line 3
    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;->error:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLiveTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;->liveTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewerCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;->viewerCount:I

    .line 2
    .line 3
    return v0
.end method

.method public setCharmCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charmCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;->charmCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setCurrentCharm(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentCharm"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;->currentCharm:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;->error:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLiveTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "liveTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;->liveTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setViewerCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewerCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;->viewerCount:I

    .line 2
    .line 3
    return-void
.end method
