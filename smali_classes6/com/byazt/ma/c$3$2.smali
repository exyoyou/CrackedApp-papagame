.class public Lcom/byazt/ma/c$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xl/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28e,
        0x40e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ma/c$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ma/c$3;


# direct methods
.method public constructor <init>(Lcom/byazt/ma/c$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ma/c$3$2;->c:Lcom/byazt/ma/c$3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/ma/c$3$2;->c:Lcom/byazt/ma/c$3;

    iget-object v0, v0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    invoke-static {v0}, Lcom/byazt/ma/c;->nu(Lcom/byazt/ma/c;)Lcom/byazt/sy/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/ma/c$3$2;->c:Lcom/byazt/ma/c$3;

    iget-object v0, v0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    invoke-static {v0}, Lcom/byazt/ma/c;->rh(Lcom/byazt/ma/c;)Lcom/byazt/sy/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ma/c$3$2;->c:Lcom/byazt/ma/c$3;

    iget-object v1, v1, Lcom/byazt/ma/c$3;->ve:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/byazt/sy/c;->c(Landroid/view/ViewGroup;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/ma/c$3$2;->c:Lcom/byazt/ma/c$3;

    iget-object v0, v0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    invoke-static {v0}, Lcom/byazt/ma/c;->my(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/byazt/rgb/a;->tt(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Lcom/byazt/ma/c$3$2;->c:Lcom/byazt/ma/c$3;

    iget-object v0, v0, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    invoke-static {v0}, Lcom/byazt/ma/c;->gt(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ma/c$3$2;->c:Lcom/byazt/ma/c$3;

    iget-object v1, v1, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    iget-object v1, v1, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILjava/lang/String;)V

    return-void
.end method

.method public c(Landroid/view/View;Lcom/byazt/xl/yp;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/byazt/ma/c$3$2;->c:Lcom/byazt/ma/c$3;

    iget-object v0, p2, Lcom/byazt/ma/c$3;->uj:Lcom/byazt/ma/c;

    iget-object v1, p2, Lcom/byazt/ma/c$3;->ve:Landroid/view/ViewGroup;

    iget-object p2, p2, Lcom/byazt/ma/c$3;->tt:Landroid/view/View;

    invoke-static {v0, p1, v1, p2}, Lcom/byazt/ma/c;->c(Lcom/byazt/ma/c;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
