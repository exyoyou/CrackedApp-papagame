.class public Lcom/byazt/hz/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yl/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0xcd
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/i;->c(Ljava/util/List;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic tt:Lcom/byazt/hz/i;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/i;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/i$2;->tt:Lcom/byazt/hz/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/hz/i$2;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/i$2;->tt:Lcom/byazt/hz/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/byazt/hz/tt;->t:Z

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/i$2;->tt:Lcom/byazt/hz/i;

    iget-object v0, v0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/byazt/hz/i$2;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/yl/ve;)V
    .locals 3

    .line 4
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hz/i$2;->tt:Lcom/byazt/hz/i;

    iget-object v2, v1, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v1, v1, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->n()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/byazt/ix/uj;->ve(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/hz/i$2;->tt:Lcom/byazt/hz/i;

    invoke-static {v0}, Lcom/byazt/hz/i;->c(Lcom/byazt/hz/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/hz/i$2;->tt:Lcom/byazt/hz/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/hz/i;->c(Lcom/byazt/hz/i;Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/byazt/hz/i$2;->tt:Lcom/byazt/hz/i;

    invoke-virtual {v0, p1, v1}, Lcom/byazt/hz/i;->c(Lcom/byazt/yl/ve;Z)V

    .line 8
    iget-object v0, p0, Lcom/byazt/hz/i$2;->tt:Lcom/byazt/hz/i;

    invoke-static {v0, p1}, Lcom/byazt/hz/i;->c(Lcom/byazt/hz/i;Lcom/byazt/yl/ve;)V

    return-void
.end method
