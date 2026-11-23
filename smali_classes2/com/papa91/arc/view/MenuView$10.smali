.class Lcom/papa91/arc/view/MenuView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView;->startTimer(J)V
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
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$10;->this$0:Lcom/papa91/arc/view/MenuView;

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
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$10;->this$0:Lcom/papa91/arc/view/MenuView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/papa91/arc/view/MenuView;->isRankTimeStop:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    iput v1, v0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    .line 12
    .line 13
    :cond_0
    iget v1, v0, Lcom/papa91/arc/view/MenuView;->rankTime:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/MenuView;->updateTime(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
