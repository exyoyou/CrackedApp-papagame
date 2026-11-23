.class public Lcom/byazt/atv/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/x;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/atv/n;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/atv/tt;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/atv/n;


# direct methods
.method public constructor <init>(Lcom/byazt/atv/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/atv/n$2;->c:Lcom/byazt/atv/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/sz/i$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n$2;->c:Lcom/byazt/atv/n;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/atv/n;->t:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/byazt/sz/x;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Lcom/byazt/sz/x;->c(Lcom/byazt/sz/i$c;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/sz/i$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n$2;->c:Lcom/byazt/atv/n;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/atv/n;->t:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/byazt/sz/x;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Lcom/byazt/sz/x;->tt(Lcom/byazt/sz/i$c;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
