.class public Lcom/byazt/kyz/ve$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x222,
        0x481
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kyz/ve;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/app/Dialog;

.field public final synthetic tt:[Ljava/lang/Integer;

.field public final synthetic ve:Lcom/byazt/kyz/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/kyz/ve;Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve$9;->ve:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/kyz/ve$9;->c:Landroid/app/Dialog;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/kyz/ve$9;->tt:[Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/byazt/kyz/ve$9;->ve:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/kyz/ve$9;->ve:Lcom/byazt/kyz/ve;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/kyz/ve$9;->c:Landroid/app/Dialog;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/kyz/ve$9;->tt:[Ljava/lang/Integer;

    .line 26
    .line 27
    new-instance v2, Lcom/byazt/kyz/ve$9$1;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/byazt/kyz/ve$9$1;-><init>(Lcom/byazt/kyz/ve$9;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0, v1, v2}, Lcom/byazt/pr/tt;->c(Lcom/byazt/vo/tt;Landroid/app/Dialog;[Ljava/lang/Integer;Lcom/byazt/pr/tt$c;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
