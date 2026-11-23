.class public Lcom/byazt/zu/n$1;
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
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zu/n;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zu/n;


# direct methods
.method public constructor <init>(Lcom/byazt/zu/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/n$1;->c:Lcom/byazt/zu/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/pp/c;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/byazt/zu/n$1;->c:Lcom/byazt/zu/n;

    invoke-static {v0}, Lcom/byazt/zu/n;->c(Lcom/byazt/zu/n;)Lcom/byazt/nh/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/byazt/zu/n$1;->c:Lcom/byazt/zu/n;

    invoke-static {v0}, Lcom/byazt/zu/n;->c(Lcom/byazt/zu/n;)Lcom/byazt/nh/a;

    move-result-object v0

    iget v1, p1, Lcom/byazt/pp/c;->c:I

    iget-object p1, p1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/nh/a;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 6
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
    iget-object v0, p0, Lcom/byazt/zu/n$1;->c:Lcom/byazt/zu/n;

    invoke-static {v0}, Lcom/byazt/zu/n;->c(Lcom/byazt/zu/n;)Lcom/byazt/nh/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/n$1;->c:Lcom/byazt/zu/n;

    invoke-static {v0}, Lcom/byazt/zu/n;->tt(Lcom/byazt/zu/n;)Lcom/byazt/ch/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/zu/n$1;->c:Lcom/byazt/zu/n;

    invoke-static {v0}, Lcom/byazt/zu/n;->tt(Lcom/byazt/zu/n;)Lcom/byazt/ch/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ch/c;->md()Lcom/byazt/ch/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/byazt/ch/tt;->da()Lcom/byazt/am/tt;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/yl/ve;

    .line 7
    new-instance v3, Lcom/byazt/zu/uj;

    iget-object v4, p0, Lcom/byazt/zu/n$1;->c:Lcom/byazt/zu/n;

    invoke-static {v4}, Lcom/byazt/zu/n;->ve(Lcom/byazt/zu/n;)Lcom/byazt/hz/i;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/zu/n$1;->c:Lcom/byazt/zu/n;

    invoke-static {v5}, Lcom/byazt/zu/n;->ve(Lcom/byazt/zu/n;)Lcom/byazt/hz/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/hz/tt;->my()Lcom/byazt/ll/tt;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5, v0}, Lcom/byazt/zu/uj;-><init>(Lcom/byazt/hz/i;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/am/tt;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/byazt/zu/n$1;->c:Lcom/byazt/zu/n;

    invoke-static {p1}, Lcom/byazt/zu/n;->c(Lcom/byazt/zu/n;)Lcom/byazt/nh/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/nh/a;->c(Ljava/util/List;)V

    return-void

    .line 9
    :cond_2
    new-instance p1, Lcom/byazt/pp/c;

    const v0, 0x13881

    const-string v1, "list is null"

    invoke-direct {p1, v0, v1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/byazt/zu/n$1;->c(Lcom/byazt/pp/c;)V

    :cond_3
    return-void
.end method
