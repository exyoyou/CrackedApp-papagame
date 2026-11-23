.class public Lcom/byazt/ma/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28e,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ma/ve;->tt(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic tt:Landroid/view/View;

.field public final synthetic ve:Lcom/byazt/ma/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ma/ve;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ma/ve$2;->ve:Lcom/byazt/ma/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ma/ve$2;->c:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ma/ve$2;->tt:Landroid/view/View;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/ma/ve$2;->ve:Lcom/byazt/ma/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ma/ve;->n(Lcom/byazt/ma/ve;)Lcom/byazt/ete/ic;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/ma/ve$2;->ve:Lcom/byazt/ma/ve;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/byazt/ma/ve;->tt()Lcom/byazt/ete/u;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v0, v1, v2}, Lcom/byazt/sy/ve;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/ma/ve$2;->ve:Lcom/byazt/ma/ve;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/ma/ve$2;->c:Landroid/view/ViewGroup;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/byazt/ma/ve$2;->tt:Landroid/view/View;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/ma/ve;->c(Lcom/byazt/ma/ve;)Lcom/byazt/sy/PlayableFeedWebView;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/ma/ve;->c(Lcom/byazt/ma/ve;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;[F)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
