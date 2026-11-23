.class public Lcom/byazt/eg/yv$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0x7ec
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/eg/yv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/byazt/eg/md;

.field public c:Lcom/byazt/eg/my;

.field public n:Ljava/lang/Object;

.field public tt:Ljava/lang/String;

.field public uj:Lcom/byazt/eg/p;

.field public ve:Lcom/byazt/eg/rh$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 2
    iput-object v0, p0, Lcom/byazt/eg/yv$c;->tt:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/byazt/eg/rh$c;

    invoke-direct {v0}, Lcom/byazt/eg/rh$c;-><init>()V

    iput-object v0, p0, Lcom/byazt/eg/yv$c;->ve:Lcom/byazt/eg/rh$c;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/eg/yv;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lcom/byazt/eg/yv;->c:Lcom/byazt/eg/my;

    iput-object v0, p0, Lcom/byazt/eg/yv$c;->c:Lcom/byazt/eg/my;

    .line 6
    iget-object v0, p1, Lcom/byazt/eg/yv;->tt:Ljava/lang/String;

    iput-object v0, p0, Lcom/byazt/eg/yv$c;->tt:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/byazt/eg/yv;->uj:Lcom/byazt/eg/p;

    iput-object v0, p0, Lcom/byazt/eg/yv$c;->uj:Lcom/byazt/eg/p;

    .line 8
    iget-object v0, p1, Lcom/byazt/eg/yv;->n:Ljava/lang/Object;

    iput-object v0, p0, Lcom/byazt/eg/yv$c;->n:Ljava/lang/Object;

    .line 9
    iget-object v0, p1, Lcom/byazt/eg/yv;->ve:Lcom/byazt/eg/rh;

    invoke-virtual {v0}, Lcom/byazt/eg/rh;->tt()Lcom/byazt/eg/rh$c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/eg/yv$c;->ve:Lcom/byazt/eg/rh$c;

    .line 10
    iget-object p1, p1, Lcom/byazt/eg/yv;->a:Lcom/byazt/eg/md;

    iput-object p1, p0, Lcom/byazt/eg/yv$c;->a:Lcom/byazt/eg/md;

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/eg/my;)Lcom/byazt/eg/yv$c;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/byazt/eg/yv$c;->c:Lcom/byazt/eg/my;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/byazt/eg/rh;)Lcom/byazt/eg/yv$c;
    .locals 0

    .line 16
    invoke-virtual {p1}, Lcom/byazt/eg/rh;->tt()Lcom/byazt/eg/rh$c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/eg/yv$c;->ve:Lcom/byazt/eg/rh$c;

    return-object p0
.end method

.method public c(Lcom/byazt/eg/uj;)Lcom/byazt/eg/yv$c;
    .locals 2

    .line 17
    invoke-virtual {p1}, Lcom/byazt/eg/uj;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Cache-Control"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/byazt/eg/yv$c;->tt(Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    move-result-object p1

    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Lcom/byazt/eg/yv$c;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/byazt/eg/yv$c;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/eg/yv$c;
    .locals 6

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ws:"

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "wss:"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p1

    .line 5
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/byazt/eg/my;->n(Ljava/lang/String;)Lcom/byazt/eg/my;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcom/byazt/eg/yv$c;->c(Lcom/byazt/eg/my;)Lcom/byazt/eg/yv$c;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "unexpected url: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;Lcom/byazt/eg/p;)Lcom/byazt/eg/yv$c;
    .locals 2

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    .line 21
    invoke-static {p1}, Lcom/byazt/yx/a;->ve(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 23
    invoke-static {p1}, Lcom/byazt/yx/a;->tt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/byazt/eg/yv$c;->tt:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/byazt/eg/yv$c;->uj:Lcom/byazt/eg/p;

    return-object p0

    .line 27
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/eg/yv$c;->ve:Lcom/byazt/eg/rh$c;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/eg/rh$c;->ve(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/rh$c;

    return-object p0
.end method

.method public c(Ljava/net/URL;)Lcom/byazt/eg/yv$c;
    .locals 2

    if-eqz p1, :cond_1

    .line 11
    invoke-static {p1}, Lcom/byazt/eg/my;->c(Ljava/net/URL;)Lcom/byazt/eg/my;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, v0}, Lcom/byazt/eg/yv$c;->c(Lcom/byazt/eg/my;)Lcom/byazt/eg/yv$c;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "unexpected url: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lcom/byazt/eg/yv;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/byazt/eg/yv$c;->c:Lcom/byazt/eg/my;

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/byazt/eg/yv;

    invoke-direct {v0, p0}, Lcom/byazt/eg/yv;-><init>(Lcom/byazt/eg/yv$c;)V

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()Lcom/byazt/eg/yv$c;
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/kh/ve;->uj:Lcom/byazt/eg/p;

    invoke-virtual {p0, v0}, Lcom/byazt/eg/yv$c;->delete(Lcom/byazt/eg/p;)Lcom/byazt/eg/yv$c;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/byazt/eg/p;)Lcom/byazt/eg/yv$c;
    .locals 1

    const-string v0, "DELETE"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Lcom/byazt/eg/p;)Lcom/byazt/eg/yv$c;

    move-result-object p1

    return-object p1
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/eg/yv$c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/eg/yv$c;->ve:Lcom/byazt/eg/rh$c;

    invoke-virtual {v0, p1}, Lcom/byazt/eg/rh$c;->tt(Ljava/lang/String;)Lcom/byazt/eg/rh$c;

    return-object p0
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/yv$c;->ve:Lcom/byazt/eg/rh$c;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/eg/rh$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/rh$c;

    return-object p0
.end method
