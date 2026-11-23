.class public Lcom/byazt/pc/ve;
.super Lcom/byazt/pc/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b7,
        0x36
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pc/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "generate_key"

    return-object v0
.end method

.method public c(Lcom/byazt/oz/ve;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/oz/a;->n()Lcom/byazt/yj/rh;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lcom/byazt/yj/rh;->c(Lcom/byazt/yj/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/oz/ve;->tt(Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/yj/rh;->tt(Lcom/byazt/yj/t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance v0, Lcom/byazt/pc/sp;

    invoke-direct {v0}, Lcom/byazt/pc/sp;-><init>()V

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void
.end method
