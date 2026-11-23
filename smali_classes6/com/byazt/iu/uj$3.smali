.class public Lcom/byazt/iu/uj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/gu$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7f,
        0x67
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;Lcom/byazt/iuu/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic n:Lcom/byazt/iu/uj;

.field public final synthetic tt:Lcom/byazt/ete/bm;

.field public final synthetic uj:Lcom/byazt/iu/n;

.field public final synthetic ve:Lcom/byazt/iuu/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iuu/tt;Lcom/byazt/iu/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iu/uj$3;->n:Lcom/byazt/iu/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iu/uj$3;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/iu/uj$3;->tt:Lcom/byazt/ete/bm;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/iu/uj$3;->ve:Lcom/byazt/iuu/tt;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/iu/uj$3;->uj:Lcom/byazt/iu/n;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/iu/uj$3;->c:Lcom/byazt/dj/tt;

    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/byazt/iu/uj$3;->n:Lcom/byazt/iu/uj;

    iget-object v1, p0, Lcom/byazt/iu/uj$3;->tt:Lcom/byazt/ete/bm;

    iget v1, v1, Lcom/byazt/ete/bm;->sp:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/iu/tt;->c(Z)Lcom/byazt/dx/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/byazt/iu/uj$3;->n:Lcom/byazt/iu/uj;

    iget-object v1, p0, Lcom/byazt/iu/uj$3;->tt:Lcom/byazt/ete/bm;

    iget v1, v1, Lcom/byazt/ete/bm;->sp:I

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/byazt/iu/tt;->c(Z)Lcom/byazt/dx/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/iu/uj$3;->c:Lcom/byazt/dj/tt;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/byazt/dx/c;->c(Lcom/byazt/dj/tt;ILjava/lang/String;Lcom/byazt/ete/tt;)V

    .line 4
    :cond_2
    iget-object p3, p0, Lcom/byazt/iu/uj$3;->ve:Lcom/byazt/iuu/tt;

    if-eqz p3, :cond_3

    .line 5
    invoke-virtual {p3, p1, p2}, Lcom/byazt/iuu/tt;->c(ILjava/lang/String;)V

    return-void

    .line 6
    :cond_3
    iget-object p3, p0, Lcom/byazt/iu/uj$3;->uj:Lcom/byazt/iu/n;

    if-eqz p3, :cond_4

    .line 7
    invoke-interface {p3, p1, p2}, Lcom/byazt/iu/n;->c(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
    .locals 10

    .line 8
    iget-object v0, p0, Lcom/byazt/iu/uj$3;->c:Lcom/byazt/dj/tt;

    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/byazt/iu/uj$3;->n:Lcom/byazt/iu/uj;

    iget-object v1, p0, Lcom/byazt/iu/uj$3;->tt:Lcom/byazt/ete/bm;

    iget v1, v1, Lcom/byazt/ete/bm;->sp:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/iu/tt;->c(Z)Lcom/byazt/dx/c;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/byazt/iu/uj$3;->n:Lcom/byazt/iu/uj;

    iget v3, v0, Lcom/byazt/iu/tt;->c:I

    iget-object v6, p0, Lcom/byazt/iu/uj$3;->tt:Lcom/byazt/ete/bm;

    iget-object v7, p0, Lcom/byazt/iu/uj$3;->c:Lcom/byazt/dj/tt;

    iget-object v8, p0, Lcom/byazt/iu/uj$3;->uj:Lcom/byazt/iu/n;

    new-instance v9, Lcom/byazt/iu/uj$3$1;

    invoke-direct {v9, p0, p1, p2}, Lcom/byazt/iu/uj$3$1;-><init>(Lcom/byazt/iu/uj$3;Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/byazt/dx/c;->c(ILcom/byazt/ete/c;Lcom/byazt/ete/tt;Lcom/byazt/ete/bm;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/iu/sp;)V

    return-void
.end method
