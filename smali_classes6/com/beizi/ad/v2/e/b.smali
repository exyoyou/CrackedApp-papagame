.class public Lcom/beizi/ad/v2/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method private a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x1388

    .line 98
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 99
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 101
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v0, "POST"

    .line 103
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Ljava/net/HttpURLConnection;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object v0

    iget-object v0, v0, Lcom/beizi/ad/internal/c;->e:Ljava/lang/String;

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    .line 105
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    .line 106
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/beizi/ad/internal/e/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Cookie"

    .line 109
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    array-length v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connect-Length"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 112
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 113
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 114
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 115
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 1
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(Lcom/beizi/ad/model/b;)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/beizi/ad/v2/e/b;->a(Lcom/beizi/ad/model/b;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method


# virtual methods
.method public a(Lcom/beizi/ad/model/b;)Ljava/lang/String;
    .locals 11

    .line 25
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/beizi/ad/internal/e/a;->a()Lcom/beizi/ad/internal/e/a;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/beizi/ad/model/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 28
    :goto_0
    new-instance v5, Lcom/beizi/ad/model/g$a$a;

    invoke-direct {v5}, Lcom/beizi/ad/model/g$a$a;-><init>()V

    .line 29
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->a(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 30
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->j(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 31
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->w()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->l(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 32
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->m(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 33
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->n(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    const-string v6, ""

    .line 34
    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->b(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 35
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->c(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    sget-object v6, Lcom/beizi/ad/model/i$e;->c:Lcom/beizi/ad/model/i$e;

    .line 36
    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->a(Lcom/beizi/ad/model/i$e;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 37
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->n()Lcom/beizi/ad/model/i$b;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->a(Lcom/beizi/ad/model/i$b;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 38
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->d(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 39
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->e(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 40
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->f(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 41
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->g(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 42
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->h(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 43
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->i(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 44
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->k(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 45
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->o(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 46
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->m()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->a(Z)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 47
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->p(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 48
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->q(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 49
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->r(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 50
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->s(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 51
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->t(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 52
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->u(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 53
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->v(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 54
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/beizi/ad/internal/c;->j()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->a(I)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 55
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->D()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->w(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 56
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/g$a$a;->x(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 57
    invoke-virtual {v5, v4}, Lcom/beizi/ad/model/g$a$a;->b(Z)Lcom/beizi/ad/model/g$a$a;

    move-result-object v5

    .line 58
    invoke-virtual {v5}, Lcom/beizi/ad/model/g$a$a;->a()Lcom/beizi/ad/model/g$a;

    move-result-object v5

    .line 59
    invoke-static {}, Lcom/beizi/ad/internal/e/q;->a()Lcom/beizi/ad/internal/e/q;

    move-result-object v6

    .line 60
    invoke-virtual {v6}, Lcom/beizi/ad/internal/e/q;->d()V

    .line 61
    new-instance v7, Lcom/beizi/ad/model/g$c$a;

    invoke-direct {v7}, Lcom/beizi/ad/model/g$c$a;-><init>()V

    .line 62
    invoke-virtual {v6}, Lcom/beizi/ad/internal/e/q;->b()Lcom/beizi/ad/model/i$d;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/beizi/ad/model/g$c$a;->a(Lcom/beizi/ad/model/i$d;)Lcom/beizi/ad/model/g$c$a;

    .line 63
    invoke-virtual {v6}, Lcom/beizi/ad/internal/e/q;->c()Lcom/beizi/ad/model/i$c;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/beizi/ad/model/g$c$a;->a(Lcom/beizi/ad/model/i$c;)Lcom/beizi/ad/model/g$c$a;

    .line 64
    invoke-virtual {v7, v4}, Lcom/beizi/ad/model/g$c$a;->a(Z)Lcom/beizi/ad/model/g$c$a;

    .line 65
    iget-object v8, v6, Lcom/beizi/ad/internal/e/q;->b:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v6, Lcom/beizi/ad/internal/e/q;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 66
    new-instance v8, Lcom/beizi/ad/model/g$b$a;

    invoke-direct {v8}, Lcom/beizi/ad/model/g$b$a;-><init>()V

    iget-object v9, v6, Lcom/beizi/ad/internal/e/q;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/beizi/ad/model/g$b$a;->b(Ljava/lang/String;)Lcom/beizi/ad/model/g$b$a;

    move-result-object v8

    iget-object v9, v6, Lcom/beizi/ad/internal/e/q;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/beizi/ad/model/g$b$a;->a(Ljava/lang/String;)Lcom/beizi/ad/model/g$b$a;

    move-result-object v8

    iget-object v9, v6, Lcom/beizi/ad/internal/e/q;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/beizi/ad/model/g$b$a;->c(Ljava/lang/String;)Lcom/beizi/ad/model/g$b$a;

    move-result-object v8

    iget-wide v9, v6, Lcom/beizi/ad/internal/e/q;->e:J

    invoke-virtual {v8, v9, v10}, Lcom/beizi/ad/model/g$b$a;->a(J)Lcom/beizi/ad/model/g$b$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/beizi/ad/model/g$b$a;->a()Lcom/beizi/ad/model/g$b;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/beizi/ad/model/g$c$a;->a(Lcom/beizi/ad/model/g$b;)Lcom/beizi/ad/model/g$c$a;

    .line 67
    :cond_1
    new-instance v6, Lcom/beizi/ad/model/a$b$a;

    invoke-direct {v6}, Lcom/beizi/ad/model/a$b$a;-><init>()V

    .line 68
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/beizi/ad/model/a$b$a;->a(Ljava/lang/String;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v6

    sget-object v8, Lcom/beizi/ad/model/i$h;->b:Lcom/beizi/ad/model/i$h;

    .line 69
    invoke-virtual {v6, v8}, Lcom/beizi/ad/model/a$b$a;->a(Lcom/beizi/ad/model/i$h;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v6

    .line 70
    sget-object v8, Lcom/beizi/ad/model/i$g;->b:Lcom/beizi/ad/model/i$g;

    .line 71
    invoke-virtual {v6, v8}, Lcom/beizi/ad/model/a$b$a;->a(Lcom/beizi/ad/model/i$g;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v6

    .line 72
    invoke-static {}, Lcom/beizi/ad/lance/a/q;->c()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/beizi/ad/model/a$b$a;->a(J)Lcom/beizi/ad/model/a$b$a;

    move-result-object v6

    .line 73
    invoke-virtual {v0}, Lcom/beizi/ad/internal/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/beizi/ad/model/a$b$a;->b(Ljava/lang/String;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v5}, Lcom/beizi/ad/model/a$b$a;->a(Lcom/beizi/ad/model/g$a;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v0

    .line 75
    invoke-virtual {v7}, Lcom/beizi/ad/model/g$c$a;->a()Lcom/beizi/ad/model/g$c;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/beizi/ad/model/a$b$a;->a(Lcom/beizi/ad/model/g$c;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v0

    .line 76
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->y()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/beizi/ad/model/a$b$a;->c(Ljava/lang/String;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v0

    .line 77
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/beizi/ad/model/a$b$a;->d(Ljava/lang/String;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v0

    .line 78
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->A()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/beizi/ad/model/a$b$a;->b(J)Lcom/beizi/ad/model/a$b$a;

    move-result-object v0

    .line 79
    invoke-virtual {v1}, Lcom/beizi/ad/internal/e/a;->B()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/beizi/ad/model/a$b$a;->c(J)Lcom/beizi/ad/model/a$b$a;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v4}, Lcom/beizi/ad/model/a$b$a;->a(Z)Lcom/beizi/ad/model/a$b$a;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/beizi/ad/model/a$a$a;

    invoke-direct {v1}, Lcom/beizi/ad/model/a$a$a;-><init>()V

    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {p1}, Lcom/beizi/ad/model/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/beizi/ad/model/a$a$a;->a(Ljava/lang/String;)Lcom/beizi/ad/model/a$a$a;

    .line 83
    invoke-virtual {p1}, Lcom/beizi/ad/model/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/beizi/ad/model/a$a$a;->b(Ljava/lang/String;)Lcom/beizi/ad/model/a$a$a;

    .line 84
    invoke-virtual {p1}, Lcom/beizi/ad/model/b;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/a$a$a;->a(I)Lcom/beizi/ad/model/a$a$a;

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {v1, v3}, Lcom/beizi/ad/model/a$a$a;->a(I)Lcom/beizi/ad/model/a$a$a;

    .line 87
    :goto_1
    invoke-virtual {p1}, Lcom/beizi/ad/model/b;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/a$a$a;->a(Ljava/util/List;)Lcom/beizi/ad/model/a$a$a;

    .line 88
    invoke-virtual {p1}, Lcom/beizi/ad/model/b;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/a$a$a;->b(I)Lcom/beizi/ad/model/a$a$a;

    .line 89
    invoke-virtual {p1}, Lcom/beizi/ad/model/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/beizi/ad/model/a$a$a;->c(Ljava/lang/String;)Lcom/beizi/ad/model/a$a$a;

    .line 90
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/ad/internal/c;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/beizi/ad/model/a$a$a;->d(Ljava/lang/String;)Lcom/beizi/ad/model/a$a$a;

    .line 91
    :cond_3
    invoke-virtual {v1}, Lcom/beizi/ad/model/a$a$a;->a()Lcom/beizi/ad/model/a$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/ad/model/a$b$a;->a(Lcom/beizi/ad/model/a$a;)V

    .line 92
    invoke-virtual {v0}, Lcom/beizi/ad/model/a$b$a;->a()Lcom/beizi/ad/model/a$b;

    move-result-object p1

    .line 93
    invoke-static {}, Lcom/beizi/ad/lance/a/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lcom/beizi/ad/model/a$b;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdkRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/ad/model/a$b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "lance"

    invoke-static {v1, p1}, Lcom/beizi/ad/lance/a/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 116
    invoke-static {}, Lcom/beizi/ad/internal/e/a;->a()Lcom/beizi/ad/internal/e/a;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/beizi/ad/model/g$a$a;

    invoke-direct {v1}, Lcom/beizi/ad/model/g$a$a;-><init>()V

    .line 118
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->a(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 119
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->j(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 120
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->l(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 121
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->m(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 122
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->n(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    const-string v2, ""

    .line 123
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->b(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 124
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->c(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    sget-object v2, Lcom/beizi/ad/model/i$e;->c:Lcom/beizi/ad/model/i$e;

    .line 125
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->a(Lcom/beizi/ad/model/i$e;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 126
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->n()Lcom/beizi/ad/model/i$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->a(Lcom/beizi/ad/model/i$b;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 127
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->d(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->e(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 129
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->f(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 130
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->g(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 131
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->h(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 132
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->i(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 133
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->k(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->o(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 135
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->a(Z)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 136
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->p(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 137
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->q(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 138
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->r(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 139
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->s(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 140
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->t(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->u(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 142
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->v(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 143
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beizi/ad/internal/c;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->a(I)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 144
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->w(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 145
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/g$a$a;->x(Ljava/lang/String;)Lcom/beizi/ad/model/g$a$a;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/beizi/ad/model/g$a$a;->a()Lcom/beizi/ad/model/g$a;

    move-result-object v1

    .line 147
    invoke-static {}, Lcom/beizi/ad/internal/e/q;->a()Lcom/beizi/ad/internal/e/q;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lcom/beizi/ad/internal/e/q;->d()V

    .line 149
    new-instance v3, Lcom/beizi/ad/model/g$c$a;

    invoke-direct {v3}, Lcom/beizi/ad/model/g$c$a;-><init>()V

    .line 150
    invoke-virtual {v2}, Lcom/beizi/ad/internal/e/q;->b()Lcom/beizi/ad/model/i$d;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beizi/ad/model/g$c$a;->a(Lcom/beizi/ad/model/i$d;)Lcom/beizi/ad/model/g$c$a;

    .line 151
    invoke-virtual {v2}, Lcom/beizi/ad/internal/e/q;->c()Lcom/beizi/ad/model/i$c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/beizi/ad/model/g$c$a;->a(Lcom/beizi/ad/model/i$c;)Lcom/beizi/ad/model/g$c$a;

    .line 152
    iget-object v4, v2, Lcom/beizi/ad/internal/e/q;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/beizi/ad/internal/e/q;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    new-instance v4, Lcom/beizi/ad/model/g$b$a;

    invoke-direct {v4}, Lcom/beizi/ad/model/g$b$a;-><init>()V

    iget-object v5, v2, Lcom/beizi/ad/internal/e/q;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/beizi/ad/model/g$b$a;->b(Ljava/lang/String;)Lcom/beizi/ad/model/g$b$a;

    move-result-object v4

    iget-object v5, v2, Lcom/beizi/ad/internal/e/q;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/beizi/ad/model/g$b$a;->a(Ljava/lang/String;)Lcom/beizi/ad/model/g$b$a;

    move-result-object v4

    iget-object v5, v2, Lcom/beizi/ad/internal/e/q;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/beizi/ad/model/g$b$a;->c(Ljava/lang/String;)Lcom/beizi/ad/model/g$b$a;

    move-result-object v4

    iget-wide v5, v2, Lcom/beizi/ad/internal/e/q;->e:J

    invoke-virtual {v4, v5, v6}, Lcom/beizi/ad/model/g$b$a;->a(J)Lcom/beizi/ad/model/g$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beizi/ad/model/g$b$a;->a()Lcom/beizi/ad/model/g$b;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/beizi/ad/model/g$c$a;->a(Lcom/beizi/ad/model/g$b;)Lcom/beizi/ad/model/g$c$a;

    .line 154
    :cond_0
    new-instance v2, Lcom/beizi/ad/model/a$b$a;

    invoke-direct {v2}, Lcom/beizi/ad/model/a$b$a;-><init>()V

    .line 155
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/a$b$a;->a(Ljava/lang/String;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v2

    sget-object v4, Lcom/beizi/ad/model/i$h;->b:Lcom/beizi/ad/model/i$h;

    .line 156
    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/a$b$a;->a(Lcom/beizi/ad/model/i$h;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v2

    .line 157
    sget-object v4, Lcom/beizi/ad/model/i$g;->b:Lcom/beizi/ad/model/i$g;

    .line 158
    invoke-virtual {v2, v4}, Lcom/beizi/ad/model/a$b$a;->a(Lcom/beizi/ad/model/i$g;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v2

    .line 159
    invoke-static {}, Lcom/beizi/ad/lance/a/q;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/beizi/ad/model/a$b$a;->a(J)Lcom/beizi/ad/model/a$b$a;

    move-result-object v2

    .line 160
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/a$b$a;->a(Lcom/beizi/ad/model/g$a;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v1

    .line 161
    invoke-virtual {v3}, Lcom/beizi/ad/model/g$c$a;->a()Lcom/beizi/ad/model/g$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/a$b$a;->a(Lcom/beizi/ad/model/g$c;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v1

    .line 162
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/a$b$a;->c(Ljava/lang/String;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v1

    .line 163
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/a$b$a;->d(Ljava/lang/String;)Lcom/beizi/ad/model/a$b$a;

    move-result-object v1

    .line 164
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->A()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/beizi/ad/model/a$b$a;->b(J)Lcom/beizi/ad/model/a$b$a;

    move-result-object v1

    .line 165
    invoke-virtual {v0}, Lcom/beizi/ad/internal/e/a;->B()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/beizi/ad/model/a$b$a;->c(J)Lcom/beizi/ad/model/a$b$a;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/beizi/ad/model/a$a$a;

    invoke-direct {v1}, Lcom/beizi/ad/model/a$a$a;-><init>()V

    .line 167
    invoke-virtual {v1, p1}, Lcom/beizi/ad/model/a$a$a;->b(Ljava/lang/String;)Lcom/beizi/ad/model/a$a$a;

    move-result-object p1

    .line 168
    invoke-virtual {p1, p2}, Lcom/beizi/ad/model/a$a$a;->a(I)Lcom/beizi/ad/model/a$a$a;

    move-result-object p1

    .line 169
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/beizi/ad/internal/c;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/beizi/ad/model/a$a$a;->d(Ljava/lang/String;)Lcom/beizi/ad/model/a$a$a;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lcom/beizi/ad/model/a$a$a;->a()Lcom/beizi/ad/model/a$a;

    move-result-object p1

    .line 171
    invoke-virtual {v0, p1}, Lcom/beizi/ad/model/a$b$a;->a(Lcom/beizi/ad/model/a$a;)V

    .line 172
    invoke-virtual {v0}, Lcom/beizi/ad/model/a$b$a;->a()Lcom/beizi/ad/model/a$b;

    move-result-object p1

    .line 173
    invoke-static {}, Lcom/beizi/ad/lance/a/m;->a()Ljava/lang/String;

    move-result-object p2

    .line 174
    invoke-virtual {p1}, Lcom/beizi/ad/model/a$b;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {p2, v0}, Lcom/beizi/ad/lance/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdkRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/ad/model/a$b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lance"

    invoke-static {v0, p1}, Lcom/beizi/ad/lance/a/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public a(Lcom/beizi/ad/model/b;Lcom/beizi/ad/v2/e/a;Lcom/beizi/ad/internal/f;)V
    .locals 3

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/internal/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/beizi/ad/internal/f;->f:Lcom/beizi/ad/internal/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "5.0.0"

    if-ne p3, v1, :cond_1

    .line 4
    :try_start_1
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/beizi/ad/internal/c;->f()Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p1, v2}, Lcom/beizi/ad/model/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lcom/beizi/ad/internal/f;->g:Lcom/beizi/ad/internal/f;

    if-ne p3, v1, :cond_2

    .line 8
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/beizi/ad/internal/c;->g()Ljava/lang/String;

    move-result-object p3

    .line 9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p1, v2}, Lcom/beizi/ad/model/b;->c(Ljava/lang/String;)V

    :goto_0
    move-object v0, p3

    :cond_2
    const-string p3, "lance"

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestBaseUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/beizi/ad/lance/a/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p3, Ljava/net/URL;

    invoke-direct {p3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/beizi/ad/v2/e/b;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p3

    .line 13
    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/e/b;->b(Lcom/beizi/ad/model/b;)[B

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x4

    .line 14
    invoke-interface {p2, p1}, Lcom/beizi/ad/v2/e/a;->a(I)V

    return-void

    .line 15
    :cond_3
    invoke-direct {p0, p3, p1}, Lcom/beizi/ad/v2/e/b;->a(Ljava/net/HttpURLConnection;[B)V

    .line 16
    invoke-virtual {p3}, Ljava/net/URLConnection;->connect()V

    .line 17
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/beizi/ad/v2/e/b;->a(I)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x2

    .line 18
    invoke-interface {p2, p1}, Lcom/beizi/ad/v2/e/a;->a(I)V

    return-void

    .line 19
    :cond_4
    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/beizi/ad/model/c$i;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p3

    .line 21
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 22
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    .line 23
    invoke-interface {p2, p1}, Lcom/beizi/ad/v2/e/a;->a(I)V

    return-void

    .line 24
    :cond_5
    invoke-interface {p2, p3}, Lcom/beizi/ad/v2/e/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    :goto_1
    return-void
.end method
