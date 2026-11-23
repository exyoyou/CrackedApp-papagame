.class public Lcom/join/mgps/dto/ForumData$ForumPostsData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumPostsData"
.end annotation


# instance fields
.field private comment_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private forum_gag_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;"
        }
    .end annotation
.end field

.field private game_info:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field private posts:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;


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
.method public getComment_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumCommentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->comment_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getForum_gag_type()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->forum_gag_type:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->game_info:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->posts:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    return-object v0
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
            "Lcom/join/mgps/dto/ForumBean$ForumCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->comment_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setForum_gag_type(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forum_gag_type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumGagType;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->forum_gag_type:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->game_info:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setPosts(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumData$ForumPostsData;->posts:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    return-void
.end method
