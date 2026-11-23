.class public Lcom/byazt/omf/EmptyView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x9e1
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/EmptyView;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/EmptyView;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/EmptyView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/EmptyView$1;->c:Lcom/byazt/omf/EmptyView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$1;->c:Lcom/byazt/omf/EmptyView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->c(Lcom/byazt/omf/EmptyView;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/omf/EmptyView$1;->c:Lcom/byazt/omf/EmptyView;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/byazt/omf/EmptyView;->tt(Lcom/byazt/omf/EmptyView;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x14

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;II)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$1;->c:Lcom/byazt/omf/EmptyView;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lcom/byazt/omf/EmptyView;->c(Lcom/byazt/omf/EmptyView;Z)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/omf/EmptyView$1;->c:Lcom/byazt/omf/EmptyView;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/omf/EmptyView;->ve(Lcom/byazt/omf/EmptyView;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/byazt/rgb/uj;->uj(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
