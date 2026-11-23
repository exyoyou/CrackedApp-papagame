.class public Lcom/byazt/glq/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x289,
        0x14
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/glq/c;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c(Lcom/byazt/glq/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/glq/c;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lcom/byazt/glq/c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/glq/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Landroid/content/Context;Ljava/util/Map;Lcom/byazt/eia/i;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/eia/i;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 3
    invoke-interface {p3}, Lcom/byazt/eia/i;->yp()Lcom/byazt/ete/nu;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p3}, Lcom/byazt/eia/i;->yp()Lcom/byazt/ete/nu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/byazt/glq/c$1;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/byazt/glq/c$1;-><init>(Lcom/byazt/glq/c;Ljava/lang/String;Lcom/byazt/eia/i;Ljava/util/Map;Landroid/content/Context;)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
