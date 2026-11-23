.class public Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/IHttp$RequestWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private params:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private requestPolicy:Lcom/haima/hmcp/business/IRequestPolicy;

.field private requestTag:Ljava/lang/String;

.field private retryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->url:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->requestTag:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->params:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->retryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->requestPolicy:Lcom/haima/hmcp/business/IRequestPolicy;

    .line 16
    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->requestTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->params:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;)Lcom/haima/hmcp/business/IRetryPolicy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->retryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;)Lcom/haima/hmcp/business/IRequestPolicy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->requestPolicy:Lcom/haima/hmcp/business/IRequestPolicy;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/haima/hmcp/business/IHttp$RequestWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/haima/hmcp/business/IHttp$RequestWrapper<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;-><init>(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;Lcom/haima/hmcp/business/IHttp$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public params(Ljava/lang/Object;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->params:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public requestPolicy(Lcom/haima/hmcp/business/IRequestPolicy;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/business/IRequestPolicy;",
            ")",
            "Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->requestPolicy:Lcom/haima/hmcp/business/IRequestPolicy;

    .line 2
    .line 3
    return-object p0
.end method

.method public requestTag(Ljava/lang/String;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->requestTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public retryPolicy(Lcom/haima/hmcp/business/IRetryPolicy;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/business/IRetryPolicy;",
            ")",
            "Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->retryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 2
    .line 3
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
