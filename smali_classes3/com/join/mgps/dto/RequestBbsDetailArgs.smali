.class public Lcom/join/mgps/dto/RequestBbsDetailArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private postId:Ljava/lang/Integer;

.field private uid:Ljava/lang/Integer;


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
.method public getPostId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsDetailArgs;->postId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsDetailArgs;->uid:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public setPostId(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsDetailArgs;->postId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setUid(Ljava/lang/Integer;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsDetailArgs;->uid:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
