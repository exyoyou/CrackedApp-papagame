.class public Lcom/haima/hmcp/business/IHttp$RequestWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/IHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private params:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private requestPolicy:Lcom/haima/hmcp/business/IRequestPolicy;

.field private requestTag:Ljava/lang/String;

.field private retryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->access$000(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->url:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->access$100(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->requestTag:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->access$200(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->params:Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->access$300(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;)Lcom/haima/hmcp/business/IRetryPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->retryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 7
    invoke-static {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;->access$400(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;)Lcom/haima/hmcp/business/IRequestPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->requestPolicy:Lcom/haima/hmcp/business/IRequestPolicy;

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;Lcom/haima/hmcp/business/IHttp$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;-><init>(Lcom/haima/hmcp/business/IHttp$RequestWrapper$Builder;)V

    return-void
.end method


# virtual methods
.method public getParams()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->params:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestPolicy()Lcom/haima/hmcp/business/IRequestPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->requestPolicy:Lcom/haima/hmcp/business/IRequestPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->requestTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRetryPolicy()Lcom/haima/hmcp/business/IRetryPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->retryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setParams(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->params:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setRequestPolicy(Lcom/haima/hmcp/business/IRequestPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->requestPolicy:Lcom/haima/hmcp/business/IRequestPolicy;

    .line 2
    .line 3
    return-void
.end method

.method public setRequestTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->requestTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRetryPolicy(Lcom/haima/hmcp/business/IRetryPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->retryPolicy:Lcom/haima/hmcp/business/IRetryPolicy;

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
