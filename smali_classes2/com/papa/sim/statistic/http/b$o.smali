.class public Lcom/papa/sim/statistic/http/b$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/sim/statistic/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
.end annotation


# instance fields
.field private final a:Lokhttp3/MediaType;

.field private final b:Lokhttp3/MediaType;

.field final synthetic c:Lcom/papa/sim/statistic/http/b;


# direct methods
.method public constructor <init>(Lcom/papa/sim/statistic/http/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

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
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$o;->a:Lokhttp3/MediaType;

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
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$o;->b:Lokhttp3/MediaType;

    .line 21
    .line 22
    return-void
.end method

.method private a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->P()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "wufankey"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->L()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "wf-d"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->J()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "wf-a"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->K()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "wf-ad"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->N()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "wf-m"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->M()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "wf-i"

    .line 73
    .line 74
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->O()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "wf-pm"

    .line 85
    .line 86
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p3, :cond_0

    .line 99
    .line 100
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 101
    .line 102
    .line 103
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/io/File;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/papa/sim/statistic/http/b$o;->c(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Lokhttp3/Response;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$o;->a:Lokhttp3/MediaType;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/papa/sim/statistic/http/b;->n(Lcom/papa/sim/statistic/http/b;)Lokhttp3/OkHttpClient;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/papa/sim/statistic/http/b$o;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$o;->b:Lokhttp3/MediaType;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/papa/sim/statistic/http/b;->n(Lcom/papa/sim/statistic/http/b;)Lokhttp3/OkHttpClient;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/papa/sim/statistic/http/b$o;->g(Ljava/lang/String;[BLjava/lang/Object;)Lokhttp3/Response;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public g(Ljava/lang/String;[BLjava/lang/Object;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$o;->a:Lokhttp3/MediaType;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/papa/sim/statistic/http/b;->n(Lcom/papa/sim/statistic/http/b;)Lokhttp3/OkHttpClient;

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

.method public h(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/papa/sim/statistic/http/b$o;->i(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Response;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public i(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b;->m(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/papa/sim/statistic/http/b;->n(Lcom/papa/sim/statistic/http/b;)Lokhttp3/OkHttpClient;

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

.method public j(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/papa/sim/statistic/http/b$o;->k(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public k(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->i(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Response;

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

.method public l(Ljava/lang/String;Ljava/io/File;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa/sim/statistic/http/b$o;->m(Ljava/lang/String;Ljava/io/File;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/io/File;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 7

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
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/http/b$o;->v(Ljava/lang/String;Ljava/io/File;Lokhttp3/MediaType;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa/sim/statistic/http/b$o;->o(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 7

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
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/http/b$o;->w(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MediaType;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/papa/sim/statistic/http/b$p;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa/sim/statistic/http/b$o;->q(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public q(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/papa/sim/statistic/http/b$p;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/papa/sim/statistic/http/b;->o(Lcom/papa/sim/statistic/http/b;Ljava/util/Map;)[Lcom/papa/sim/statistic/http/b$n;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/papa/sim/statistic/http/b$o;->u(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public r(Ljava/lang/String;[BLcom/papa/sim/statistic/http/b$p;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa/sim/statistic/http/b$o;->s(Ljava/lang/String;[BLcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public s(Ljava/lang/String;[BLcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 7

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
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/http/b$o;->x(Ljava/lang/String;[BLokhttp3/MediaType;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public t(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa/sim/statistic/http/b$o;->u(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public u(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p4}, Lcom/papa/sim/statistic/http/b;->m(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 8
    .line 9
    invoke-static {p2, p3, p1}, Lcom/papa/sim/statistic/http/b;->p(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/io/File;Lokhttp3/MediaType;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2, p5}, Lcom/papa/sim/statistic/http/b$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 10
    .line 11
    invoke-static {p2, p4, p1}, Lcom/papa/sim/statistic/http/b;->p(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MediaType;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2, p5}, Lcom/papa/sim/statistic/http/b$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 10
    .line 11
    invoke-static {p2, p4, p1}, Lcom/papa/sim/statistic/http/b;->p(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public x(Ljava/lang/String;[BLokhttp3/MediaType;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2, p5}, Lcom/papa/sim/statistic/http/b$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 10
    .line 11
    invoke-static {p2, p4, p1}, Lcom/papa/sim/statistic/http/b;->p(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
