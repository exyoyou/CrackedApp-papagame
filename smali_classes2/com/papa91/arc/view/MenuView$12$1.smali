.class Lcom/papa91/arc/view/MenuView$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView$12;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/view/MenuView$12;


# direct methods
.method constructor <init>(Lcom/papa91/arc/view/MenuView$12;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$12$1;->this$1:Lcom/papa91/arc/view/MenuView$12;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$12$1;->this$1:Lcom/papa91/arc/view/MenuView$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/papa91/arc/view/MenuView;->tvCloseTips:Landroid/widget/TextView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$12$1;->this$1:Lcom/papa91/arc/view/MenuView$12;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/papa91/arc/view/MenuView;->clSuccess:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    new-instance v1, Lcom/papa91/arc/view/MenuView$12$1$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/papa91/arc/view/MenuView$12$1$1;-><init>(Lcom/papa91/arc/view/MenuView$12$1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
