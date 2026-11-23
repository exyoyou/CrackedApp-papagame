.class Lcom/melnykov/fab/FloatingActionButton$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/melnykov/fab/FloatingActionButton;->C(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/melnykov/fab/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/melnykov/fab/FloatingActionButton;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$a;->d:Lcom/melnykov/fab/FloatingActionButton;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/melnykov/fab/FloatingActionButton$a;->b:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/melnykov/fab/FloatingActionButton$a;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$a;->d:Lcom/melnykov/fab/FloatingActionButton;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$a;->d:Lcom/melnykov/fab/FloatingActionButton;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/melnykov/fab/FloatingActionButton$a;->b:Z

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/melnykov/fab/FloatingActionButton$a;->c:Z

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-static {v0, v1, v2, v3}, Lcom/melnykov/fab/FloatingActionButton;->a(Lcom/melnykov/fab/FloatingActionButton;ZZZ)V

    .line 24
    .line 25
    .line 26
    return v3
.end method
