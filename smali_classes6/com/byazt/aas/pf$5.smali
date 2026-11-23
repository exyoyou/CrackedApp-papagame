.class public final Lcom/byazt/aas/pf$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x902
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/aas/pf;->c(Landroid/view/View;Lcom/byazt/aas/pf$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/View;

.field public final synthetic tt:Lcom/byazt/aas/pf$c;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/byazt/aas/pf$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/aas/pf$5;->c:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/aas/pf$5;->tt:Lcom/byazt/aas/pf$c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/aas/pf$5;->c:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/aas/pf$5;->tt:Lcom/byazt/aas/pf$c;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/aas/pf$5;->c:Landroid/view/View;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/byazt/aas/pf$c;->c(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
