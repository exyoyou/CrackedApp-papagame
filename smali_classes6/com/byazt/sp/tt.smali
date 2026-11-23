.class public abstract Lcom/byazt/sp/tt;
.super Lcom/byazt/fb/uj;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/db/c;
.implements Lcom/byazt/db/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5b,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/db/tt;

.field public tt:Z

.field public ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/db/tt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/fb/uj;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/sp/tt;->tt:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/byazt/sp/tt;->ve:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/sp/tt;->c:Lcom/byazt/db/tt;

    .line 10
    .line 11
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/dv/tt;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/sp/tt;->tt:Z

    .line 3
    iput-boolean v0, p0, Lcom/byazt/sp/tt;->ve:Z

    .line 4
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->lr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/sp/tt;->startLoad(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V

    .line 6
    invoke-direct {p0, p2}, Lcom/byazt/sp/tt;->c(Lcom/byazt/dv/tt;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/sp/tt;->startLoad(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V

    .line 8
    invoke-direct {p0, p2}, Lcom/byazt/sp/tt;->c(Lcom/byazt/dv/tt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 9
    new-instance p2, Lcom/byazt/pp/c;

    invoke-static {p1}, Lcom/byazt/qe/tt;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/byazt/pp/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    .line 10
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Lcom/byazt/dv/tt;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/byazt/xx/ve;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/sp/tt;Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/sp/tt;->c(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final adnStartLoad(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/dv/tt;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const-string v0, "mintegral"

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string v0, "baidu"

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/byazt/sp/tt$1;

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    move-object v2, p0

    .line 31
    move-object v3, p1

    .line 32
    move-object v4, p2

    .line 33
    move-object v5, p3

    .line 34
    move-object v6, p4

    .line 35
    invoke-direct/range {v1 .. v6}, Lcom/byazt/sp/tt$1;-><init>(Lcom/byazt/sp/tt;Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/sp/tt;->c(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public applyFunction(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/PluginValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBiddingToken(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasNotifyFail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/sp/tt;->ve:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasNotifySuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/sp/tt;->tt:Z

    .line 2
    .line 3
    return v0
.end method

.method public nativeDislikeClick(Lcom/byazt/yl/ve;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sp/tt;->c:Lcom/byazt/db/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/db/tt;->nativeDislikeClick(Lcom/byazt/yl/ve;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public notifyLoadFail(Lcom/byazt/pp/c;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/sp/tt;->ve:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/byazt/sp/tt;->tt:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean v0, p0, Lcom/byazt/sp/tt;->tt:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/sp/tt;->c:Lcom/byazt/db/tt;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/byazt/db/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public notifyLoadSuccess(Lcom/byazt/yl/ve;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/byazt/sp/tt;->notifyLoadSuccess(Ljava/util/List;)V

    return-void
.end method

.method public notifyLoadSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/byazt/sp/tt;->tt:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/sp/tt;->tt:Z

    .line 6
    iget-object v0, p0, Lcom/byazt/sp/tt;->c:Lcom/byazt/db/tt;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/db/tt;->notifyLoadSuccess(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public notifyVideoCache(Lcom/byazt/yl/ve;Lcom/byazt/pp/c;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/byazt/sp/tt;->notifyVideoCache(Ljava/util/List;Lcom/byazt/pp/c;)V

    return-void
.end method

.method public notifyVideoCache(Ljava/util/List;Lcom/byazt/pp/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/pp/c;",
            ")V"
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/byazt/sp/tt;->ve:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/sp/tt;->c:Lcom/byazt/db/tt;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1, p2}, Lcom/byazt/db/tt;->notifyVideoCache(Ljava/util/List;Lcom/byazt/pp/c;)V

    :cond_1
    return-void
.end method

.method public abstract startLoad(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/dv/tt;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
