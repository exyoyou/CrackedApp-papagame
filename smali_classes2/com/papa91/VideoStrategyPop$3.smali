.class Lcom/papa91/VideoStrategyPop$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/VideoStrategyPop;-><init>(Landroid/app/Activity;ILjava/lang/String;Lcom/papa91/VideoStrategyPop$VideoPopListener;)V
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
    iput-object p1, p0, Lcom/papa91/VideoStrategyPop$3;->this$0:Lcom/papa91/VideoStrategyPop;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$3;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa91/VideoStrategyPop;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$3;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$400(Lcom/papa91/VideoStrategyPop;)Lcom/papa91/VideoStrategyPop$VideoPopListener;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/papa91/VideoStrategyPop$3;->this$0:Lcom/papa91/VideoStrategyPop;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/papa91/VideoStrategyPop;->access$400(Lcom/papa91/VideoStrategyPop;)Lcom/papa91/VideoStrategyPop$VideoPopListener;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/papa91/VideoStrategyPop$VideoPopListener;->onClose()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
