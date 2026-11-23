.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onLongClickAction(Lcom/haima/hmcp/beans/LongTouchBtnConfig;Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field final synthetic val$event:Landroid/view/KeyEvent;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$46;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$46;->val$event:Landroid/view/KeyEvent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$46;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$46;->val$event:Landroid/view/KeyEvent;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$3700(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Landroid/view/InputEvent;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
