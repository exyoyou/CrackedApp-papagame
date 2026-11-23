.class public Lcom/byazt/gk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/gu$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x94,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/omf/gu$tt;

.field public tt:I


# direct methods
.method public constructor <init>(Lcom/byazt/omf/gu$tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/gk/c;->c:Lcom/byazt/omf/gu$tt;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/byazt/gk/c;)Lcom/byazt/omf/gu$tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gk/c;->c:Lcom/byazt/omf/gu$tt;

    return-object p0
.end method


# virtual methods
.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/gk/c;->tt:I

    return-void
.end method

.method public c(ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/gk/c;->c:Lcom/byazt/omf/gu$tt;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/omf/gu$tt;->c(ILjava/lang/String;Lcom/byazt/ete/tt;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
    .locals 4

    .line 5
    invoke-static {p1}, Lcom/byazt/yih/c;->c(Lcom/byazt/ete/c;)V

    .line 6
    iget v0, p0, Lcom/byazt/gk/c;->tt:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/by/n;->t()I

    move-result v1

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    move v3, v2

    :cond_3
    if-eqz v3, :cond_5

    .line 8
    iget-object v1, p0, Lcom/byazt/gk/c;->c:Lcom/byazt/omf/gu$tt;

    if-eqz v1, :cond_6

    .line 9
    new-instance v1, Lcom/byazt/gk/c$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/gk/c$1;-><init>(Lcom/byazt/gk/c;Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V

    if-eqz v0, :cond_4

    .line 10
    invoke-static {v1}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void

    .line 11
    :cond_4
    invoke-static {v1}, Lcom/byazt/bzd/x;->ve(Ljava/lang/Runnable;)V

    return-void

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/byazt/gk/c;->c:Lcom/byazt/omf/gu$tt;

    if-eqz v0, :cond_6

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/byazt/omf/gu$tt;->c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V

    :cond_6
    return-void
.end method
