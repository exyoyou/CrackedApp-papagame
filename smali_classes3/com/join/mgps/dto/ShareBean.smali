.class public Lcom/join/mgps/dto/ShareBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private articleId:Ljava/lang/String;

.field private from:I

.field private gameId:Ljava/lang/String;

.field private imagePath:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private intentData:Lcom/join/mgps/dto/BannerBean;

.field private qZoneShareUrl:Ljava/lang/String;

.field private qqUrl:Ljava/lang/String;

.field private target:I

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private wechatFriendUrl:Ljava/lang/String;

.field private wechatShareUrl:Ljava/lang/String;

.field private weiboShareUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/rpc/h;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/upload/images/wf_ico.png?ver=2.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/dto/ShareBean;->imageUrl:Ljava/lang/String;

    const-string v0, "0"

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dto/ShareBean;->gameId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
            0x0
        }
        names = {
            "imageUrl",
            "title",
            "text",
            "weiboShareUrl",
            "qZoneShareUrl",
            "wechatShareUrl",
            "wechatFriendUrl",
            "qqUrl"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/rpc/h;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/upload/images/wf_ico.png?ver=2.2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/ShareBean;->gameId:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->imageUrl:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/join/mgps/dto/ShareBean;->title:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/join/mgps/dto/ShareBean;->text:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/join/mgps/dto/ShareBean;->weiboShareUrl:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/join/mgps/dto/ShareBean;->qZoneShareUrl:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/join/mgps/dto/ShareBean;->wechatShareUrl:Ljava/lang/String;

    .line 13
    iput-object p7, p0, Lcom/join/mgps/dto/ShareBean;->wechatFriendUrl:Ljava/lang/String;

    .line 14
    iput-object p8, p0, Lcom/join/mgps/dto/ShareBean;->qqUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->articleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ShareBean;->from:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->imagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->imageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentData()Lcom/join/mgps/dto/BannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->intentData:Lcom/join/mgps/dto/BannerBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getQqUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->qqUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTarget()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ShareBean;->target:I

    .line 2
    .line 3
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWechatFriendUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->wechatFriendUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWechatShareUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->wechatShareUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWeiboShareUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->weiboShareUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getqZoneShareUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ShareBean;->qZoneShareUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "articleId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->articleId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFrom(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ShareBean;->from:I

    .line 2
    .line 3
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imagePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->imagePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->imageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIntentData(Lcom/join/mgps/dto/BannerBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->intentData:Lcom/join/mgps/dto/BannerBean;

    .line 2
    .line 3
    return-void
.end method

.method public setQqUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qqUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->qqUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTarget(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ShareBean;->target:I

    .line 2
    .line 3
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->text:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWechatFriendUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wechatFriendUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->wechatFriendUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWechatShareUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wechatShareUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->wechatShareUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWeiboShareUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weiboShareUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->weiboShareUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setqZoneShareUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qZoneShareUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ShareBean;->qZoneShareUrl:Ljava/lang/String;

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
    const-string v1, "ShareBean{imageUrl=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/ShareBean;->imageUrl:Ljava/lang/String;

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
    const-string v2, ", title=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->title:Ljava/lang/String;

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
    const-string v2, ", text=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->text:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", weiboShareUrl=\'"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->weiboShareUrl:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ", qZoneShareUrl=\'"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->qZoneShareUrl:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, ", wechatShareUrl=\'"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->wechatShareUrl:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, ", wechatFriendUrl=\'"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->wechatFriendUrl:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, ", qqUrl=\'"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/join/mgps/dto/ShareBean;->qqUrl:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const/16 v1, 0x7d

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method
