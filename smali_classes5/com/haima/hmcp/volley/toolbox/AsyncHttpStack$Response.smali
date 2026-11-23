.class Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Response"
.end annotation


# instance fields
.field authFailureError:Lcom/haima/hmcp/volley/AuthFailureError;

.field httpResponse:Lcom/haima/hmcp/volley/toolbox/HttpResponse;

.field ioException:Ljava/io/IOException;


# direct methods
.method private constructor <init>(Lcom/haima/hmcp/volley/toolbox/HttpResponse;Ljava/io/IOException;Lcom/haima/hmcp/volley/AuthFailureError;)V
    .locals 0
    .param p1    # Lcom/haima/hmcp/volley/toolbox/HttpResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/haima/hmcp/volley/AuthFailureError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack$Response;->httpResponse:Lcom/haima/hmcp/volley/toolbox/HttpResponse;

    .line 4
    iput-object p2, p0, Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack$Response;->ioException:Ljava/io/IOException;

    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack$Response;->authFailureError:Lcom/haima/hmcp/volley/AuthFailureError;

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/volley/toolbox/HttpResponse;Ljava/io/IOException;Lcom/haima/hmcp/volley/AuthFailureError;Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack$Response;-><init>(Lcom/haima/hmcp/volley/toolbox/HttpResponse;Ljava/io/IOException;Lcom/haima/hmcp/volley/AuthFailureError;)V

    return-void
.end method
