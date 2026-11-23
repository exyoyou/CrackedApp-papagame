.class Lcom/papa91/view/RoundedRectangularProgressView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/RoundedRectangularProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/RoundedRectangularProgressView;


# direct methods
.method constructor <init>(Lcom/papa91/view/RoundedRectangularProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$1;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/papa91/view/RoundedRectangularProgressView$1;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/papa91/view/RoundedRectangularProgressView;->mOnProgressListener:Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {p1}, Lcom/papa91/view/RoundedRectangularProgressView;->access$000(Lcom/papa91/view/RoundedRectangularProgressView;)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v1, p0, Lcom/papa91/view/RoundedRectangularProgressView$1;->this$0:Lcom/papa91/view/RoundedRectangularProgressView;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/papa91/view/RoundedRectangularProgressView;->getCoordinate()[F

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, p1, v1}, Lcom/papa91/view/RoundedRectangularProgressView$OnProgressListener;->onProgress(F[F)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method
