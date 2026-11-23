.class Lcom/beizi/fusion/work/g/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/g/b;->aS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/g/b;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/g/b$7;->a:Lcom/beizi/fusion/work/g/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b$7;->a:Lcom/beizi/fusion/work/g/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/work/g/a;->x:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b$7;->a:Lcom/beizi/fusion/work/g/b;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/beizi/fusion/work/g/b;->d(Lcom/beizi/fusion/work/g/b;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b$7;->a:Lcom/beizi/fusion/work/g/b;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/beizi/fusion/work/g/b;->e(Lcom/beizi/fusion/work/g/b;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
