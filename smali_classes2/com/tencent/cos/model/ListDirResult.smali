.class public Lcom/tencent/cos/model/ListDirResult;
.super Lcom/tencent/cos/model/COSResult;
.source "SourceFile"


# instance fields
.field public contentStr:Ljava/lang/String;

.field public context:Ljava/lang/String;

.field public infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public listover:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/model/COSResult;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/cos/model/ListDirResult;->infos:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getResponse(Lcom/tencent/cos/network/HttpResponse;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getRet()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/tencent/cos/model/COSResult;->code:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getMsg()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/tencent/cos/model/COSResult;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getContext()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/tencent/cos/model/ListDirResult;->context:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getListOver()Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput-boolean v0, p0, Lcom/tencent/cos/model/ListDirResult;->listover:Z

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getListDirInfos()Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/tencent/cos/model/ListDirResult;->infos:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getBody()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/tencent/cos/model/ListDirResult;->contentStr:Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method
