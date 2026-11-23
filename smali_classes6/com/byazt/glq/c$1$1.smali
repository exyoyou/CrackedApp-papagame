.class public Lcom/byazt/glq/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x289,
        0x3ad
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/glq/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/glq/c$1;


# direct methods
.method public constructor <init>(Lcom/byazt/glq/c$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/glq/c$1$1;->c:Lcom/byazt/glq/c$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/glq/c$1$1;->c:Lcom/byazt/glq/c$1;

    iget-object v1, v0, Lcom/byazt/glq/c$1;->tt:Lcom/byazt/eia/i;

    iget-object v0, v0, Lcom/byazt/glq/c$1;->ve:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/glq/c$1$1;->c:Lcom/byazt/glq/c$1;

    iget-object v1, v1, Lcom/byazt/glq/c$1;->n:Lcom/byazt/glq/c;

    invoke-static {v1}, Lcom/byazt/glq/c;->c(Lcom/byazt/glq/c;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 2
    invoke-static {}, Lcom/byazt/ddx/x;->c()Lcom/byazt/ddx/x;

    move-result-object v5

    iget-object v0, p0, Lcom/byazt/glq/c$1$1;->c:Lcom/byazt/glq/c$1;

    iget-object v1, v0, Lcom/byazt/glq/c$1;->tt:Lcom/byazt/eia/i;

    iget-object v0, v0, Lcom/byazt/glq/c$1;->ve:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v6

    iget-object v0, p0, Lcom/byazt/glq/c$1$1;->c:Lcom/byazt/glq/c$1;

    iget-object v0, v0, Lcom/byazt/glq/c$1;->n:Lcom/byazt/glq/c;

    invoke-static {v0}, Lcom/byazt/glq/c;->c(Lcom/byazt/glq/c;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/byazt/ddx/x;->c(Lcom/byazt/ete/ic;Ljava/lang/String;ZZLcom/byazt/ddx/i$c;)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/glq/c$1$1;->c:Lcom/byazt/glq/c$1;

    iget-object v1, v0, Lcom/byazt/glq/c$1;->tt:Lcom/byazt/eia/i;

    iget-object v0, v0, Lcom/byazt/glq/c$1;->ve:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/glq/c$1$1;->c:Lcom/byazt/glq/c$1;

    iget-object v1, v1, Lcom/byazt/glq/c$1;->n:Lcom/byazt/glq/c;

    invoke-static {v1}, Lcom/byazt/glq/c;->c(Lcom/byazt/glq/c;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method
