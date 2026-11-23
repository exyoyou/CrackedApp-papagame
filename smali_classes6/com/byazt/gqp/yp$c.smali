.class public Lcom/byazt/gqp/yp$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x143,
        0x1b3
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/gqp/yp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/byazt/gqp/z;

.field public c:Lcom/byazt/gqp/c;

.field public n:Ljava/lang/Object;

.field public sp:Lcom/byazt/gqp/a$c;

.field public tt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public uj:Ljava/lang/String;

.field public ve:Lcom/byazt/gqp/sp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/byazt/gqp/yp$c;->tt:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/byazt/gqp/a$c;

    invoke-direct {v0}, Lcom/byazt/gqp/a$c;-><init>()V

    iput-object v0, p0, Lcom/byazt/gqp/yp$c;->sp:Lcom/byazt/gqp/a$c;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/gqp/yp;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->tt()Lcom/byazt/gqp/sp;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/gqp/yp$c;->ve:Lcom/byazt/gqp/sp;

    .line 6
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->ve()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/gqp/yp$c;->uj:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->uj()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/gqp/yp$c;->tt:Ljava/util/Map;

    .line 8
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->c()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/gqp/yp$c;->n:Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->a()Lcom/byazt/gqp/z;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/gqp/yp$c;->a:Lcom/byazt/gqp/z;

    .line 10
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->n()Lcom/byazt/gqp/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/gqp/yp$c;->c:Lcom/byazt/gqp/c;

    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/gqp/yp$c;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;Lcom/byazt/gqp/z;)Lcom/byazt/gqp/yp$c;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/byazt/gqp/a;)Lcom/byazt/gqp/yp$c;
    .locals 0

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/byazt/gqp/a;->tt()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/gqp/yp$c;->tt:Ljava/util/Map;

    :cond_0
    return-object p0
.end method

.method public c(Lcom/byazt/gqp/c;)Lcom/byazt/gqp/yp$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gqp/yp$c;->c:Lcom/byazt/gqp/c;

    return-object p0
.end method

.method public c(Lcom/byazt/gqp/sp;)Lcom/byazt/gqp/yp$c;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/byazt/gqp/yp$c;->ve:Lcom/byazt/gqp/sp;

    return-object p0
.end method

.method public c(Lcom/byazt/gqp/z;)Lcom/byazt/gqp/yp$c;
    .locals 1

    const-string v0, "POST"

    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/byazt/gqp/yp$c;->c(Ljava/lang/String;Lcom/byazt/gqp/z;)Lcom/byazt/gqp/yp$c;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Lcom/byazt/gqp/yp$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/gqp/yp$c;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/gqp/yp$c;
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
    invoke-static {p1}, Lcom/byazt/gqp/sp;->ve(Ljava/lang/String;)Lcom/byazt/gqp/sp;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcom/byazt/gqp/yp$c;->c(Lcom/byazt/gqp/sp;)Lcom/byazt/gqp/yp$c;

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

.method public c(Ljava/lang/String;Lcom/byazt/gqp/z;)Lcom/byazt/gqp/yp$c;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/byazt/gqp/yp$c;->uj:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/byazt/gqp/yp$c;->a:Lcom/byazt/gqp/z;

    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/yp$c;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/byazt/gqp/yp$c;->tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/yp$c;

    move-result-object p1

    return-object p1
.end method

.method public tt(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/gqp/yp$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/gqp/yp$c;->tt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/gqp/yp$c;->tt:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/gqp/yp$c;->tt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public tt()Lcom/byazt/gqp/yp;
    .locals 1

    .line 4
    new-instance v0, Lcom/byazt/gqp/yp$c$1;

    invoke-direct {v0, p0}, Lcom/byazt/gqp/yp$c$1;-><init>(Lcom/byazt/gqp/yp$c;)V

    return-object v0
.end method
