.class Lcom/join/mgps/customview/LightningView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/LightningView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/LightningView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/LightningView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LightningView$b;->b:Lcom/join/mgps/customview/LightningView;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$b;->b:Lcom/join/mgps/customview/LightningView;

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
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$b;->b:Lcom/join/mgps/customview/LightningView;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/customview/LightningView;->i(Lcom/join/mgps/customview/LightningView;Z)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$b;->b:Lcom/join/mgps/customview/LightningView;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/customview/LightningView;->j(Lcom/join/mgps/customview/LightningView;)Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$b;->b:Lcom/join/mgps/customview/LightningView;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/customview/LightningView;->j(Lcom/join/mgps/customview/LightningView;)Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
