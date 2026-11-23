.class public Lcom/byazt/zu/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/me/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x397,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zu/c;->loadAdByAdm(Ljava/lang/String;Lcom/byazt/nh/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nh/ve;

.field public final synthetic tt:Lcom/byazt/zu/c;


# direct methods
.method public constructor <init>(Lcom/byazt/zu/c;Lcom/byazt/nh/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/c$1;->tt:Lcom/byazt/zu/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/zu/c$1;->c:Lcom/byazt/nh/ve;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/pp/c;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/zu/c$1;->c:Lcom/byazt/nh/ve;

    iget v1, p1, Lcom/byazt/pp/c;->c:I

    iget-object p1, p1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/nh/ve;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/byazt/zu/tt;

    iget-object v3, p0, Lcom/byazt/zu/c$1;->tt:Lcom/byazt/zu/c;

    invoke-static {v3}, Lcom/byazt/zu/c;->c(Lcom/byazt/zu/c;)Lcom/byazt/hz/i;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/zu/c$1;->tt:Lcom/byazt/zu/c;

    invoke-static {v4}, Lcom/byazt/zu/c;->c(Lcom/byazt/zu/c;)Lcom/byazt/hz/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/hz/tt;->my()Lcom/byazt/ll/tt;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/byazt/zu/tt;-><init>(Lcom/byazt/hz/i;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/byazt/zu/c$1;->c:Lcom/byazt/nh/ve;

    invoke-virtual {p1, v0}, Lcom/byazt/nh/ve;->c(Ljava/util/List;)V

    return-void

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/byazt/zu/c$1;->c:Lcom/byazt/nh/ve;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/byazt/nh/ve;->c(Ljava/util/List;)V

    return-void
.end method
