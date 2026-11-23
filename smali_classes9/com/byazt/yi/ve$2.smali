.class public Lcom/byazt/yi/ve$2;
.super Lcom/byazt/tn/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd8,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yi/ve;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/yi/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/yi/ve;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/tn/c;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    invoke-virtual {v0}, Lcom/byazt/yi/ve;->getLifecycleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/tn/c;->c()V

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "has_show_event"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    invoke-virtual {v2}, Lcom/byazt/yi/ve;->getLifecycleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/byazt/rgb/tt;->c(Ljava/lang/String;ZZ)V

    .line 3
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/tn/c;->c(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public c(ZILandroid/os/Bundle;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/tn/c;->c(ZILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public c(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 8
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/tn/c;->c(ZILjava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/tn/c;->n()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yi/ve;->getLifecycleId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/byazt/tn/c;->tt()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/tn/c;->uj()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/yi/ve$2;->c:Lcom/byazt/yi/ve;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/yi/ve;->uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/tn/c;->ve()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
