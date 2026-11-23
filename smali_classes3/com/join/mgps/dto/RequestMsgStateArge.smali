.class public Lcom/join/mgps/dto/RequestMsgStateArge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private tag_id:I

.field private uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "content",
            "tag_id"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/dto/RequestMsgStateArge;->uid:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/dto/RequestMsgStateArge;->content:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/dto/RequestMsgStateArge;->tag_id:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestMsgStateArge;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestMsgStateArge;->tag_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestMsgStateArge;->uid:I

    .line 2
    .line 3
    return v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestMsgStateArge;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestMsgStateArge;->tag_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
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
    iput p1, p0, Lcom/join/mgps/dto/RequestMsgStateArge;->uid:I

    .line 2
    .line 3
    return-void
.end method
