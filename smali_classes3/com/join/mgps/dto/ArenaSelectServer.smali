.class public Lcom/join/mgps/dto/ArenaSelectServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private area:I

.field private is_play:Z

.field private is_recommend:Z

.field private ping:I

.field private server_no:I


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
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Lcom/join/mgps/dto/ArenaSelectServer;

    .line 20
    .line 21
    iget v2, p0, Lcom/join/mgps/dto/ArenaSelectServer;->server_no:I

    .line 22
    .line 23
    iget p1, p1, Lcom/join/mgps/dto/ArenaSelectServer;->server_no:I

    .line 24
    .line 25
    if-ne v2, p1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    .line 30
    :cond_3
    :goto_1
    return v1
.end method

.method public getArea()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSelectServer;->area:I

    .line 2
    .line 3
    return v0
.end method

.method public getPing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSelectServer;->ping:I

    .line 2
    .line 3
    return v0
.end method

.method public getServer_no()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSelectServer;->server_no:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaSelectServer;->server_no:I

    .line 2
    .line 3
    return v0
.end method

.method public is_play()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArenaSelectServer;->is_play:Z

    .line 2
    .line 3
    return v0
.end method

.method public is_recommend()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ArenaSelectServer;->is_recommend:Z

    .line 2
    .line 3
    return v0
.end method

.method public setArea(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "area"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaSelectServer;->area:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_play(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_play"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ArenaSelectServer;->is_play:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIs_recommend(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_recommend"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ArenaSelectServer;->is_recommend:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPing(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ping"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaSelectServer;->ping:I

    .line 2
    .line 3
    return-void
.end method

.method public setServer_no(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "server_no"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaSelectServer;->server_no:I

    .line 2
    .line 3
    return-void
.end method
