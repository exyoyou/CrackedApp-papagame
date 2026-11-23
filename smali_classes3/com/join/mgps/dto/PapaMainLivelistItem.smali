.class public Lcom/join/mgps/dto/PapaMainLivelistItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cover_img:Ljava/lang/String;

.field private end_timestamp:J

.field private start_timestamp:J

.field private title:Ljava/lang/String;


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
.method public getCover_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->cover_img:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnd_timestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->end_timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStart_timestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->start_timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCover_img(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cover_img"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->cover_img:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEnd_timestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "end_timestamp"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->end_timestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public setStart_timestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start_timestamp"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->start_timestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
