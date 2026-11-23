.class public Lcom/byazt/nm/c$tt$3;
.super Lcom/byazt/ft/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x90d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/c$tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/c$tt;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/c$tt;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/c$tt$3;->c:Lcom/byazt/nm/c$tt;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/ft/tt;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;FF)V
    .locals 0

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object p2, p0, Lcom/byazt/nm/c$tt$3;->c:Lcom/byazt/nm/c$tt;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p2, p0, Lcom/byazt/nm/c$tt$3;->c:Lcom/byazt/nm/c$tt;

    iget-object p2, p2, Lcom/byazt/nm/c$tt;->i:Lcom/byazt/nm/c;

    invoke-virtual {p2, p1}, Lcom/byazt/sp/tt;->notifyLoadSuccess(Ljava/util/List;)V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/nm/c$tt$3;->c:Lcom/byazt/nm/c$tt;

    invoke-static {p2}, Lcom/byazt/nm/c$tt;->uj(Lcom/byazt/nm/c$tt;)Lcom/byazt/zq/a;

    move-result-object p2

    instance-of p2, p2, Lcom/byazt/zq/c;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/byazt/nm/c$tt$3;->c:Lcom/byazt/nm/c$tt;

    invoke-static {p2}, Lcom/byazt/nm/c$tt;->ve(Lcom/byazt/nm/c$tt;)Lcom/byazt/zq/c;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/byazt/oc/c;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/byazt/nm/c$tt$3;->c:Lcom/byazt/nm/c$tt;

    iget-object p1, p1, Lcom/byazt/nm/c$tt;->i:Lcom/byazt/nm/c;

    new-instance v0, Lcom/byazt/pp/c;

    invoke-direct {v0, p3, p2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public tt(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/nm/c$tt$3;->c:Lcom/byazt/nm/c$tt;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/byazt/nm/c$tt;->n(Lcom/byazt/nm/c$tt;)Lcom/byazt/zq/a;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    instance-of p2, p2, Lcom/byazt/zq/c;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/byazt/nm/c$tt$3;->c:Lcom/byazt/nm/c$tt;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/byazt/nm/c$tt;->ve(Lcom/byazt/nm/c$tt;)Lcom/byazt/zq/c;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p2, p1}, Lcom/byazt/oc/c;->tt(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
