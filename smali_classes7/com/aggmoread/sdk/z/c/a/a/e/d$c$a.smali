.class Lcom/aggmoread/sdk/z/c/a/a/e/d$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/e/d$c;->b(Ljava/lang/String;[BLjava/util/Map;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/e/d$e;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/e/d$c;Lcom/aggmoread/sdk/z/c/a/a/e/d$e;)V
    .locals 0

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/e/d$c$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    const v0, 0x3baa1415

    const-string v1, "HTTP error, network error."

    invoke-direct {p1, v0, v1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/e/d$c$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/d$e;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/d$e;->a(I[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p2

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    const-string v1, "POST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ok response"

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a([BLjava/lang/String;)V

    :cond_0
    move-object p1, v2

    move-object v2, p2

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP error\uff0cstatusCode="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v1, 0x3baa1411

    invoke-direct {p1, v1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/j;-><init>(ILjava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/e/d$c$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/d$e;

    invoke-interface {p2, v0, v2, p1}, Lcom/aggmoread/sdk/z/c/a/a/e/d$e;->a(I[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method
