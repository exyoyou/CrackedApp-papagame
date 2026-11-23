.class public Lcom/join/mgps/dto/GameInformationBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private author:Ljava/lang/String;

.field private comment_count:I

.field private comment_switch:I

.field private content:Ljava/lang/String;

.field private game_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetailResultBean;",
            ">;"
        }
    .end annotation
.end field

.field private info_id:Ljava/lang/String;

.field private other_app_addr:Ljava/lang/String;

.field private praise:Ljava/lang/String;

.field private release_time:Ljava/lang/String;

.field private share_url:Ljava/lang/String;

.field private show_pic:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private weixin_app_addr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
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
            "author",
            "info_id",
            "title",
            "weixin_app_addr",
            "other_app_addr",
            "show_pic",
            "content",
            "share_url",
            "release_time",
            "praise",
            "game_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetailResultBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationBean;->author:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/GameInformationBean;->info_id:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/GameInformationBean;->title:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/GameInformationBean;->weixin_app_addr:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/GameInformationBean;->other_app_addr:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/GameInformationBean;->show_pic:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/GameInformationBean;->content:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/dto/GameInformationBean;->share_url:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/join/mgps/dto/GameInformationBean;->release_time:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/join/mgps/dto/GameInformationBean;->praise:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lcom/join/mgps/dto/GameInformationBean;->game_info:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationBean;->author:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getComment_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameInformationBean;->comment_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getComment_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameInformationBean;->comment_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationBean;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetailResultBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationBean;->game_info:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfo_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationBean;->info_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOther_app_addr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationBean;->other_app_addr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPraise()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationBean;->praise:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRelease_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationBean;->release_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShare_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationBean;->share_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShow_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationBean;->show_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWeixin_app_addr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameInformationBean;->weixin_app_addr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "author"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationBean;->author:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setComment_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameInformationBean;->comment_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setComment_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameInformationBean;->comment_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationBean;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetailResultBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationBean;->game_info:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setInfo_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationBean;->info_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOther_app_addr(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other_app_addr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationBean;->other_app_addr:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPraise(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "praise"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationBean;->praise:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRelease_time(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "release_time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationBean;->release_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShare_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "share_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationBean;->share_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShow_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationBean;->show_pic:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWeixin_app_addr(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weixin_app_addr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameInformationBean;->weixin_app_addr:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
