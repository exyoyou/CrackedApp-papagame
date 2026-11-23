.class public Lcom/byazt/cc/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/EmptyView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0xcd
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/i;->c(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/byazt/ocd/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic tt:Lcom/byazt/cc/i;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/i;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/i$2;->tt:Lcom/byazt/cc/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cc/i$2;->c:Landroid/view/ViewGroup;

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
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/byazt/cc/i$2;->tt:Lcom/byazt/cc/i;

    invoke-static {v0}, Lcom/byazt/cc/i;->ve(Lcom/byazt/cc/i;)Lcom/byazt/pop/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/cc/i$2;->tt:Lcom/byazt/cc/i;

    invoke-static {v0}, Lcom/byazt/cc/i;->ve(Lcom/byazt/cc/i;)Lcom/byazt/pop/ve;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/pop/ve;->c()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/i$2;->tt:Lcom/byazt/cc/i;

    invoke-static {v0}, Lcom/byazt/cc/i;->ve(Lcom/byazt/cc/i;)Lcom/byazt/pop/ve;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/cc/i$2;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/cc/i$2;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 9
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/byazt/cc/i$2;->tt:Lcom/byazt/cc/i;

    invoke-static {v1}, Lcom/byazt/cc/i;->ve(Lcom/byazt/cc/i;)Lcom/byazt/pop/ve;

    move-result-object v1

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/byazt/pop/ve;->c(Landroid/app/Activity;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Landroid/view/View;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/i$2;->tt:Lcom/byazt/cc/i;

    invoke-static {v0}, Lcom/byazt/cc/i;->ve(Lcom/byazt/cc/i;)Lcom/byazt/pop/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/cc/i$2;->tt:Lcom/byazt/cc/i;

    invoke-static {v0}, Lcom/byazt/cc/i;->ve(Lcom/byazt/cc/i;)Lcom/byazt/pop/ve;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/pop/ve;->tt()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/i$2;->tt:Lcom/byazt/cc/i;

    invoke-virtual {v0, p1}, Lcom/byazt/cc/i;->c(Z)V

    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/i$2;->tt:Lcom/byazt/cc/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/cc/i;->ve(Lcom/byazt/cc/i;)Lcom/byazt/pop/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/cc/i$2;->tt:Lcom/byazt/cc/i;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/cc/i;->ve(Lcom/byazt/cc/i;)Lcom/byazt/pop/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/byazt/pop/ve;->ve()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
