.class Lcom/papa91/arc/view/MenuView$12$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView$12$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/papa91/arc/view/MenuView$12$1;


# direct methods
.method constructor <init>(Lcom/papa91/arc/view/MenuView$12$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$12$1$1;->this$2:Lcom/papa91/arc/view/MenuView$12$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$12$1$1;->this$2:Lcom/papa91/arc/view/MenuView$12$1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView$12$1;->this$1:Lcom/papa91/arc/view/MenuView$12;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-static {p1}, Lcom/papa91/arc/view/MenuView;->access$100(Lcom/papa91/arc/view/MenuView;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$12$1$1;->this$2:Lcom/papa91/arc/view/MenuView$12$1;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView$12$1;->this$1:Lcom/papa91/arc/view/MenuView$12;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->clReward:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$12$1$1;->this$2:Lcom/papa91/arc/view/MenuView$12$1;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView$12$1;->this$1:Lcom/papa91/arc/view/MenuView$12;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 39
    .line 40
    invoke-interface {p1}, Lcom/papa91/arc/view/MenuViewListener;->getPassRewardPoint()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/view/MenuView$12$1$1;->this$2:Lcom/papa91/arc/view/MenuView$12$1;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView$12$1;->this$1:Lcom/papa91/arc/view/MenuView$12;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView$12;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-interface {p1, v0}, Lcom/papa91/arc/view/MenuViewListener;->exitEndGame(Z)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    return-void
.end method
