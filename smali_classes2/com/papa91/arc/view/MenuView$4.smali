.class Lcom/papa91/arc/view/MenuView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView;->dismissMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/view/MenuView;


# direct methods
.method constructor <init>(Lcom/papa91/arc/view/MenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$4;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$4;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->menuBar:Landroid/view/View;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$4;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Lcom/papa91/arc/view/MenuView;->access$002(Lcom/papa91/arc/view/MenuView;Z)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$4;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->saveGameConfig()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
