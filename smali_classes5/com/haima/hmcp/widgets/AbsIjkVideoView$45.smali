.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$45;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->checkLongClickDown(ILandroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$longTouchBtnConfig:Lcom/haima/hmcp/beans/LongTouchBtnConfig;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/beans/LongTouchBtnConfig;Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$45;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$45;->val$longTouchBtnConfig:Lcom/haima/hmcp/beans/LongTouchBtnConfig;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$45;->val$event:Landroid/view/KeyEvent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$45;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$45;->val$longTouchBtnConfig:Lcom/haima/hmcp/beans/LongTouchBtnConfig;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$45;->val$event:Landroid/view/KeyEvent;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onLongClickAction(Lcom/haima/hmcp/beans/LongTouchBtnConfig;Landroid/view/KeyEvent;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
