.class public Lcom/join/android/app/common/http/d$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
.end annotation


# instance fields
.field private final a:Lokhttp3/MediaType;

.field private final b:Lokhttp3/MediaType;

.field final synthetic c:Lcom/join/android/app/common/http/d;


# direct methods
.method public constructor <init>(Lcom/join/android/app/common/http/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "application/octet-stream;charset=utf-8"

    .line 7
    .line 8
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/join/android/app/common/http/d$o;->a:Lokhttp3/MediaType;

    .line 13
    .line 14
    const-string p1, "text/plain;charset=utf-8"

    .line 15
    .line 16
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/join/android/app/common/http/d$o;->b:Lokhttp3/MediaType;

    .line 21
    .line 22
    return-void
.end method

.method private a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "body",
            "tag"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/io/File;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "bodyFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/android/app/common/http/d$o;->c(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Lokhttp3/Response;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "bodyFile",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$o;->a:Lokhttp3/MediaType;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/android/app/common/http/d$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/join/android/app/common/http/d;->n(Lcom/join/android/app/common/http/d;)Lokhttp3/OkHttpClient;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "bodyStr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/android/app/common/http/d$o;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "bodyStr",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$o;->b:Lokhttp3/MediaType;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/android/app/common/http/d$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/join/android/app/common/http/d;->n(Lcom/join/android/app/common/http/d;)Lokhttp3/OkHttpClient;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public f(Ljava/lang/String;[B)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "bodyBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/android/app/common/http/d$o;->g(Ljava/lang/String;[BLjava/lang/Object;)Lokhttp3/Response;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public g(Ljava/lang/String;[BLjava/lang/Object;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "bodyBytes",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$o;->a:Lokhttp3/MediaType;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/android/app/common/http/d$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/join/android/app/common/http/d;->n(Lcom/join/android/app/common/http/d;)Lokhttp3/OkHttpClient;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public h(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/android/app/common/http/d$o;->i(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Ljava/lang/Object;)Lokhttp3/Response;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public i(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "params",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/join/android/app/common/http/d;->m(Lcom/join/android/app/common/http/d;Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Ljava/lang/Object;)Lokhttp3/Request;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/join/android/app/common/http/d;->n(Lcom/join/android/app/common/http/d;)Lokhttp3/OkHttpClient;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public j(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/android/app/common/http/d$o;->k(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public k(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "params",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/android/app/common/http/d$o;->i(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Ljava/lang/Object;)Lokhttp3/Response;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/io/File;Lcom/join/android/app/common/http/d$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "url",
            "bodyFile",
            "callback"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/android/app/common/http/d$o;->m(Ljava/lang/String;Ljava/io/File;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/io/File;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "url",
            "bodyFile",
            "callback",
            "tag"
        }
    .end annotation

    .line 1
    const-string v0, "application/octet-stream;charset=utf-8"

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/join/android/app/common/http/d$o;->w(Ljava/lang/String;Ljava/io/File;Lokhttp3/MediaType;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "url",
            "bodyStr",
            "callback"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/android/app/common/http/d$o;->o(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "url",
            "bodyStr",
            "callback",
            "tag"
        }
    .end annotation

    .line 1
    const-string v0, "application/json;charset=utf-8"

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/join/android/app/common/http/d$o;->x(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MediaType;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/util/Map;Lcom/join/android/app/common/http/d$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "url",
            "params",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/join/android/app/common/http/d$p;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/android/app/common/http/d$o;->q(Ljava/lang/String;Ljava/util/Map;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public q(Ljava/lang/String;Ljava/util/Map;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "url",
            "params",
            "callback",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/join/android/app/common/http/d$p;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/join/android/app/common/http/d;->o(Lcom/join/android/app/common/http/d;Ljava/util/Map;)[Lcom/join/android/app/common/http/d$n;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/android/app/common/http/d$o;->u(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public r(Ljava/lang/String;[BLcom/join/android/app/common/http/d$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "url",
            "bodyBytes",
            "callback"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/android/app/common/http/d$o;->s(Ljava/lang/String;[BLcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public s(Ljava/lang/String;[BLcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "url",
            "bodyBytes",
            "callback",
            "tag"
        }
    .end annotation

    .line 1
    const-string v0, "application/octet-stream;charset=utf-8"

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/join/android/app/common/http/d$o;->y(Ljava/lang/String;[BLokhttp3/MediaType;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public t(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "url",
            "params",
            "callback"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/android/app/common/http/d$o;->u(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public u(Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "url",
            "params",
            "callback",
            "tag"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p4}, Lcom/join/android/app/common/http/d;->m(Lcom/join/android/app/common/http/d;Ljava/lang/String;[Lcom/join/android/app/common/http/d$n;Ljava/lang/Object;)Lokhttp3/Request;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 8
    .line 9
    invoke-static {p2, p3, p1}, Lcom/join/android/app/common/http/d;->p(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;Lokhttp3/Request;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public v(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "url",
            "bodyStr",
            "callback",
            "tag"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p2, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p0, p1, p2, p4}, Lcom/join/android/app/common/http/d$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 55
    .line 56
    invoke-static {p2, p3, p1}, Lcom/join/android/app/common/http/d;->p(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;Lokhttp3/Request;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/io/File;Lokhttp3/MediaType;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "url",
            "bodyFile",
            "type",
            "callback",
            "tag"
        }
    .end annotation

    .line 1
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2, p5}, Lcom/join/android/app/common/http/d$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 10
    .line 11
    invoke-static {p2, p4, p1}, Lcom/join/android/app/common/http/d;->p(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;Lokhttp3/Request;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MediaType;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "url",
            "bodyStr",
            "type",
            "callback",
            "tag"
        }
    .end annotation

    .line 1
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2, p5}, Lcom/join/android/app/common/http/d$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 10
    .line 11
    invoke-static {p2, p4, p1}, Lcom/join/android/app/common/http/d;->p(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;Lokhttp3/Request;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public y(Ljava/lang/String;[BLokhttp3/MediaType;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "url",
            "bodyBytes",
            "type",
            "callback",
            "tag"
        }
    .end annotation

    .line 1
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2, p5}, Lcom/join/android/app/common/http/d$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/join/android/app/common/http/d$o;->c:Lcom/join/android/app/common/http/d;

    .line 10
    .line 11
    invoke-static {p2, p4, p1}, Lcom/join/android/app/common/http/d;->p(Lcom/join/android/app/common/http/d;Lcom/join/android/app/common/http/d$p;Lokhttp3/Request;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
