.class public Lcom/join/mgps/dto/GameListItemBean;
.super Lcom/join/mgps/dto/CollectionBeanSub;
.source "SourceFile"


# instance fields
.field bg_color_tag_type:I

.field private comment_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field comment_score_switch:I

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field private game_describe_second:Ljava/lang/String;

.field game_score:Lcom/join/mgps/dto/GameScore;

.field itemType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/CollectionBeanSub;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GameListItemBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method


# virtual methods
.method public getBg_color_tag_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameListItemBean;->bg_color_tag_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getComment_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListItemBean;->comment_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getComment_score_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameListItemBean;->comment_score_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListItemBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_describe_second()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListItemBean;->game_describe_second:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_score()Lcom/join/mgps/dto/GameScore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameListItemBean;->game_score:Lcom/join/mgps/dto/GameScore;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameListItemBean;->itemType:I

    .line 2
    .line 3
    return v0
.end method

.method public setBg_color_tag_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bg_color_tag_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameListItemBean;->bg_color_tag_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setComment_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListItemBean;->comment_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setComment_score_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_score_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameListItemBean;->comment_score_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListItemBean;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_describe_second(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_describe_second"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListItemBean;->game_describe_second:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_score(Lcom/join/mgps/dto/GameScore;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_score"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameListItemBean;->game_score:Lcom/join/mgps/dto/GameScore;

    .line 2
    .line 3
    return-void
.end method

.method public setItemType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameListItemBean;->itemType:I

    .line 2
    .line 3
    return-void
.end method
