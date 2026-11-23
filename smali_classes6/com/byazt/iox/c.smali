.class public Lcom/byazt/iox/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c3,
        0x14
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/dbo/c;

.field public c:Lcom/byazt/tdq/c;

.field public n:Z

.field public sp:Lcom/byazt/tdq/n;

.field public tt:Ljava/lang/String;

.field public uj:Lcom/byazt/im/sp;

.field public ve:Lcom/byazt/dj/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/tdq/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/im/sp;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/im/sp;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/iox/c;->uj:Lcom/byazt/im/sp;

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/dbo/c;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-direct {v0, v1}, Lcom/byazt/dbo/c;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/iox/c;->a:Lcom/byazt/dbo/c;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/iox/c;->c:Lcom/byazt/tdq/c;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/byazt/tdq/c;->tt()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->g()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Lcom/byazt/iox/c;->n:Z

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic c(Lcom/byazt/iox/c;)Lcom/byazt/im/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/iox/c;->uj:Lcom/byazt/im/sp;

    return-object p0
.end method

.method private c(Lcom/byazt/im/a;Lcom/byazt/gat/tt;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/im/a;",
            "Lcom/byazt/gat/tt<",
            "Lcom/byazt/im/a;",
            "Lcom/byazt/im/sp;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 16
    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object v6

    .line 18
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/byazt/iox/c$2;

    move-object v0, v9

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/byazt/iox/c$2;-><init>(Lcom/byazt/iox/c;JLcom/byazt/gat/tt;Lcom/byazt/im/a;)V

    .line 20
    invoke-interface {v6, v7, v8, v9}, Lcom/byazt/omf/gu;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/omf/gu$c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/iox/c;Lcom/byazt/im/a;Lcom/byazt/gat/tt;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/iox/c;->c(Lcom/byazt/im/a;Lcom/byazt/gat/tt;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/gat/tt;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/gat/tt<",
            "Lcom/byazt/im/a;",
            "Lcom/byazt/im/sp;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 14
    iget-object v6, p0, Lcom/byazt/iox/c;->c:Lcom/byazt/tdq/c;

    iget-object v7, p0, Lcom/byazt/iox/c;->uj:Lcom/byazt/im/sp;

    new-instance v8, Lcom/byazt/iox/c$1;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/byazt/iox/c$1;-><init>(Lcom/byazt/iox/c;JLcom/byazt/gat/tt;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/byazt/iox/c;->sp:Lcom/byazt/tdq/n;

    invoke-virtual {v6, v7, p1, v8, p2}, Lcom/byazt/tdq/c;->c(Lcom/byazt/im/sp;Ljava/lang/String;Lcom/byazt/tdq/c$c;Lcom/byazt/tdq/n;)V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/iox/c;)Lcom/byazt/dj/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/iox/c;->ve:Lcom/byazt/dj/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/iox/c;)Lcom/byazt/dbo/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/iox/c;->a:Lcom/byazt/dbo/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/iox/c;)Lcom/byazt/tdq/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/iox/c;->c:Lcom/byazt/tdq/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/iox/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/iox/c;->n:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public c(Lcom/byazt/im/n;Lcom/byazt/gat/tt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/im/n;",
            "Lcom/byazt/gat/tt<",
            "Lcom/byazt/im/a;",
            "Lcom/byazt/im/sp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/iox/c;->uj:Lcom/byazt/im/sp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->tt(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/byazt/im/n;->uj()Lcom/byazt/dj/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/iox/c;->ve:Lcom/byazt/dj/tt;

    .line 5
    invoke-virtual {p1}, Lcom/byazt/im/n;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/iox/c;->tt:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/byazt/im/n;->sp()Lcom/byazt/tdq/n;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/iox/c;->sp:Lcom/byazt/tdq/n;

    .line 7
    invoke-virtual {p1}, Lcom/byazt/im/n;->n()Lcom/byazt/ete/bm;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/byazt/iox/c;->ve:Lcom/byazt/dj/tt;

    invoke-static {v0, p1}, Lcom/byazt/gat/n;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/byazt/iox/c;->uj:Lcom/byazt/im/sp;

    invoke-virtual {p1, v1}, Lcom/byazt/im/sp;->tt(I)V

    .line 10
    iget-object p1, p0, Lcom/byazt/iox/c;->uj:Lcom/byazt/im/sp;

    const-string v0, "no cache"

    invoke-virtual {p1, v0}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/byazt/iox/c;->uj:Lcom/byazt/im/sp;

    invoke-interface {p2, p1}, Lcom/byazt/gat/tt;->c(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/byazt/iox/c;->tt:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/byazt/iox/c;->c(Ljava/lang/String;Lcom/byazt/gat/tt;)V

    :cond_2
    :goto_0
    return-void
.end method
