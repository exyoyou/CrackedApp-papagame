.class Lcom/papa91/VideoStrategyPop$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/VideoStrategyPop;->videoEndFunction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/VideoStrategyPop;


# direct methods
.method constructor <init>(Lcom/papa91/VideoStrategyPop;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/VideoStrategyPop$6;->this$0:Lcom/papa91/VideoStrategyPop;

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
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop$6;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/VideoStrategyPop;->access$300(Lcom/papa91/VideoStrategyPop;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop$6;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/papa91/VideoStrategyPop;->access$100(Lcom/papa91/VideoStrategyPop;)Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa91/VideoStrategyPop$6;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/papa91/VideoStrategyPop;->access$200(Lcom/papa91/VideoStrategyPop;)Landroid/widget/ImageView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
