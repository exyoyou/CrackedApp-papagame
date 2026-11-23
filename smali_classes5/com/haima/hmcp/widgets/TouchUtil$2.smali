.class Lcom/haima/hmcp/widgets/TouchUtil$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/TouchUtil;->processTouchModeMouseDown(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/TouchUtil;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/TouchUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil$2;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$2;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/TouchUtil;->sendLMouseClickEvent(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$2;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$102(Lcom/haima/hmcp/widgets/TouchUtil;Z)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$2;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$202(Lcom/haima/hmcp/widgets/TouchUtil;Ljava/util/Timer;)Ljava/util/Timer;

    .line 16
    .line 17
    .line 18
    return-void
.end method
