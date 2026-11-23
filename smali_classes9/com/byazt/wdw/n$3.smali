.class public Lcom/byazt/wdw/n$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26d,
        0x1fb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wdw/n;->c(Ljava/lang/String;Lcom/byazt/ete/hq;Lcom/byazt/wdw/n$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/hq;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/wdw/n;

.field public final synthetic ve:Lcom/byazt/wdw/n$c;


# direct methods
.method public constructor <init>(Lcom/byazt/wdw/n;Lcom/byazt/ete/hq;Ljava/lang/String;Lcom/byazt/wdw/n$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wdw/n$3;->uj:Lcom/byazt/wdw/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wdw/n$3;->c:Lcom/byazt/ete/hq;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/wdw/n$3;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/wdw/n$3;->ve:Lcom/byazt/wdw/n$c;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/wdw/n$3;->c:Lcom/byazt/ete/hq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/hq;->tt(I)V

    .line 2
    iget-object v0, p0, Lcom/byazt/wdw/n$3;->uj:Lcom/byazt/wdw/n;

    invoke-virtual {v0}, Lcom/byazt/wdw/n;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/wdw/n$3;->tt:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 3
    invoke-static {}, Lcom/byazt/ddx/x;->c()Lcom/byazt/ddx/x;

    move-result-object v5

    iget-object v0, p0, Lcom/byazt/wdw/n$3;->uj:Lcom/byazt/wdw/n;

    invoke-virtual {v0}, Lcom/byazt/wdw/n;->tt()Lcom/byazt/ete/ic;

    move-result-object v6

    iget-object v7, p0, Lcom/byazt/wdw/n$3;->tt:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/byazt/wdw/n$3$1;

    invoke-direct {v10, p0}, Lcom/byazt/wdw/n$3$1;-><init>(Lcom/byazt/wdw/n$3;)V

    invoke-virtual/range {v5 .. v10}, Lcom/byazt/ddx/x;->c(Lcom/byazt/ete/ic;Ljava/lang/String;ZZLcom/byazt/ddx/i$c;)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/byazt/wdw/n$3;->uj:Lcom/byazt/wdw/n;

    invoke-virtual {v0}, Lcom/byazt/wdw/n;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/wdw/n$3;->tt:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 5
    iget-object p1, p0, Lcom/byazt/wdw/n$3;->c:Lcom/byazt/ete/hq;

    invoke-virtual {p1, v2}, Lcom/byazt/ete/hq;->tt(I)V

    .line 6
    iget-object p1, p0, Lcom/byazt/wdw/n$3;->ve:Lcom/byazt/wdw/n$c;

    if-eqz p1, :cond_0

    .line 7
    sget-object v0, Lcom/byazt/cr/a;->sp:Lcom/byazt/cr/a;

    invoke-interface {p1, v0}, Lcom/byazt/wdw/n$c;->c(Lcom/byazt/cr/c;)V

    :cond_0
    return-void
.end method
