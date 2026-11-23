.class public Lcom/join/mgps/dto/DiscoverListWeiboItemBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private add_time:Ljava/lang/String;

.field private avatar_src:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private id:I

.field private image_url:Ljava/lang/String;

.field private link_url:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private send_time:Ljava/lang/String;

.field private video_url:Ljava/lang/String;


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
.method public getAdd_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->add_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->id:I

    .line 11
    .line 12
    return v0
.end method

.method public getImage_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->image_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLink_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->link_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSend_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->send_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideo_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->video_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdd_time(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "add_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->add_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatar_src"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->avatar_src:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setImage_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->image_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLink_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "link_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->link_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->nickname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSend_time(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "send_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->send_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVideo_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "video_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->video_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
