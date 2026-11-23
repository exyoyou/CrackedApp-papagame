.class Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private counter:I

.field final synthetic this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;

    .line 2
    .line 3
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->counter:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    iput v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->counter:I

    .line 18
    .line 19
    if-gtz v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x64

    .line 22
    .line 23
    iput v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->counter:I

    .line 24
    .line 25
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;->this$1:Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;

    .line 26
    .line 27
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
