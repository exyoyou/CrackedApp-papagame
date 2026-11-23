.class public Lcom/byazt/gat/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x314,
        0x2e
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/gat/tt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/gat/tt<",
            "Lcom/byazt/im/a;",
            "Lcom/byazt/im/sp;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Z

.field public da:Lcom/byazt/cc/tt;

.field public i:Lcom/byazt/tdq/c;

.field public n:Lcom/byazt/im/n;

.field public sp:Lcom/byazt/im/sp;

.field public volatile tt:Z

.field public volatile uj:Z

.field public volatile ve:Z

.field public x:Lcom/byazt/im/a;


# direct methods
.method public constructor <init>(Lcom/byazt/im/n;Lcom/byazt/gat/tt;Lcom/byazt/tdq/c;Lcom/byazt/cc/tt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/im/n;",
            "Lcom/byazt/gat/tt<",
            "Lcom/byazt/im/a;",
            "Lcom/byazt/im/sp;",
            ">;",
            "Lcom/byazt/tdq/c;",
            "Lcom/byazt/cc/tt;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/byazt/gat/n;->n:Lcom/byazt/im/n;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/byazt/gat/n;->a:Lcom/byazt/gat/tt;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/byazt/gat/n;->i:Lcom/byazt/tdq/c;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/byazt/gat/n;->da:Lcom/byazt/cc/tt;

    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/byazt/gat/n;)Lcom/byazt/im/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gat/n;->x:Lcom/byazt/im/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/gat/n;)Lcom/byazt/gat/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gat/n;->a:Lcom/byazt/gat/tt;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/gat/n;Lcom/byazt/im/a;)Lcom/byazt/im/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/gat/n;->x:Lcom/byazt/im/a;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/gat/n;Lcom/byazt/im/sp;)Lcom/byazt/im/sp;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/gat/n;->sp:Lcom/byazt/im/sp;

    return-object p1
.end method

.method public static c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Lcom/byazt/ete/bm;->n:I

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic n(Lcom/byazt/gat/n;)Lcom/byazt/im/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gat/n;->sp:Lcom/byazt/im/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/gat/n;)Lcom/byazt/tdq/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gat/n;->i:Lcom/byazt/tdq/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/gat/n;)Lcom/byazt/cc/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gat/n;->da:Lcom/byazt/cc/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/gat/n;)Lcom/byazt/im/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gat/n;->n:Lcom/byazt/im/n;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/byazt/gat/n;->uj:Z

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/byazt/gat/n;->n:Lcom/byazt/im/n;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/byazt/gat/n;->a:Lcom/byazt/gat/tt;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "loadAd Type "

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Splash_FullLink"

    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/byazt/iox/c;

    iget-object v0, p0, Lcom/byazt/gat/n;->i:Lcom/byazt/tdq/c;

    invoke-direct {p1, v0}, Lcom/byazt/iox/c;-><init>(Lcom/byazt/tdq/c;)V

    iget-object v0, p0, Lcom/byazt/gat/n;->n:Lcom/byazt/im/n;

    new-instance v1, Lcom/byazt/gat/n$6;

    invoke-direct {v1, p0}, Lcom/byazt/gat/n$6;-><init>(Lcom/byazt/gat/n;)V

    invoke-virtual {p1, v0, v1}, Lcom/byazt/iox/c;->c(Lcom/byazt/im/n;Lcom/byazt/gat/tt;)V

    :goto_0
    return-void

    .line 7
    :cond_2
    new-instance v0, Lcom/byazt/iox/ve;

    invoke-direct {v0}, Lcom/byazt/iox/ve;-><init>()V

    iget-object v1, p0, Lcom/byazt/gat/n;->n:Lcom/byazt/im/n;

    new-instance v2, Lcom/byazt/gat/n$4;

    invoke-direct {v2, p0, p1}, Lcom/byazt/gat/n$4;-><init>(Lcom/byazt/gat/n;I)V

    invoke-virtual {v0, v1, v2}, Lcom/byazt/iox/ve;->c(Lcom/byazt/im/n;Lcom/byazt/gat/tt;)V

    .line 8
    new-instance p1, Lcom/byazt/iox/c;

    iget-object v0, p0, Lcom/byazt/gat/n;->i:Lcom/byazt/tdq/c;

    invoke-direct {p1, v0}, Lcom/byazt/iox/c;-><init>(Lcom/byazt/tdq/c;)V

    iget-object v0, p0, Lcom/byazt/gat/n;->n:Lcom/byazt/im/n;

    new-instance v1, Lcom/byazt/gat/n$5;

    invoke-direct {v1, p0}, Lcom/byazt/gat/n$5;-><init>(Lcom/byazt/gat/n;)V

    invoke-virtual {p1, v0, v1}, Lcom/byazt/iox/c;->c(Lcom/byazt/im/n;Lcom/byazt/gat/tt;)V

    return-void

    .line 9
    :cond_3
    new-instance p1, Lcom/byazt/iox/ve;

    invoke-direct {p1}, Lcom/byazt/iox/ve;-><init>()V

    iget-object v0, p0, Lcom/byazt/gat/n;->n:Lcom/byazt/im/n;

    new-instance v1, Lcom/byazt/gat/n$2;

    invoke-direct {v1, p0}, Lcom/byazt/gat/n$2;-><init>(Lcom/byazt/gat/n;)V

    invoke-virtual {p1, v0, v1}, Lcom/byazt/iox/ve;->c(Lcom/byazt/im/n;Lcom/byazt/gat/tt;)V

    .line 10
    new-instance p1, Lcom/byazt/iox/c;

    iget-object v0, p0, Lcom/byazt/gat/n;->i:Lcom/byazt/tdq/c;

    invoke-direct {p1, v0}, Lcom/byazt/iox/c;-><init>(Lcom/byazt/tdq/c;)V

    iget-object v0, p0, Lcom/byazt/gat/n;->n:Lcom/byazt/im/n;

    new-instance v1, Lcom/byazt/gat/n$3;

    invoke-direct {v1, p0}, Lcom/byazt/gat/n$3;-><init>(Lcom/byazt/gat/n;)V

    invoke-virtual {p1, v0, v1}, Lcom/byazt/iox/c;->c(Lcom/byazt/im/n;Lcom/byazt/gat/tt;)V

    return-void

    .line 11
    :cond_4
    new-instance v0, Lcom/byazt/iox/c;

    iget-object v1, p0, Lcom/byazt/gat/n;->i:Lcom/byazt/tdq/c;

    invoke-direct {v0, v1}, Lcom/byazt/iox/c;-><init>(Lcom/byazt/tdq/c;)V

    iget-object v1, p0, Lcom/byazt/gat/n;->n:Lcom/byazt/im/n;

    new-instance v2, Lcom/byazt/gat/n$1;

    invoke-direct {v2, p0, p1}, Lcom/byazt/gat/n$1;-><init>(Lcom/byazt/gat/n;I)V

    invoke-virtual {v0, v1, v2}, Lcom/byazt/iox/c;->c(Lcom/byazt/im/n;Lcom/byazt/gat/tt;)V

    return-void

    .line 12
    :cond_5
    new-instance p1, Lcom/byazt/iox/ve;

    invoke-direct {p1}, Lcom/byazt/iox/ve;-><init>()V

    iget-object v0, p0, Lcom/byazt/gat/n;->n:Lcom/byazt/im/n;

    iget-object v1, p0, Lcom/byazt/gat/n;->a:Lcom/byazt/gat/tt;

    invoke-virtual {p1, v0, v1}, Lcom/byazt/iox/ve;->c(Lcom/byazt/im/n;Lcom/byazt/gat/tt;)V

    :cond_6
    :goto_1
    return-void
.end method
