.class public Lcom/tencent/cos/model/HeadBucketResult;
.super Lcom/tencent/cos/model/COSResult;
.source "SourceFile"


# instance fields
.field public CORSConfiguration:Ljava/lang/String;

.field public authority:Ljava/lang/String;

.field public biz_attr:Ljava/lang/String;

.field public blackRefers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cname:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ctime:J

.field public migrate_source_domain:Ljava/lang/String;

.field public mtime:J

.field public need_preview:I

.field public refers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/cos/model/COSResult;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getResponse(Lcom/tencent/cos/network/HttpResponse;)V
    .locals 2

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
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getRefers()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->refers:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getCname()Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->cname:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getBlackRefers()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->blackRefers:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getAuthority()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->authority:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getCtime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->ctime:J

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getMtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iput-wide v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->mtime:J

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getBizattr()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->biz_attr:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getMigrateSourceDomain()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->migrate_source_domain:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getNeedPreview()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/tencent/cos/model/HeadBucketResult;->need_preview:I

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpResponse;->getCORSConfiguration()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/tencent/cos/model/HeadBucketResult;->CORSConfiguration:Ljava/lang/String;

    .line 72
    .line 73
    return-void
.end method
