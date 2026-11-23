.class Lcom/join/mgps/activity/CommentSelfListActivity_$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/CommentSelfListActivity_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CommentSelfListActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentSelfListActivity_;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity_$2;->a:Lcom/join/mgps/activity/CommentSelfListActivity_;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentSelfListActivity_$2;->a:Lcom/join/mgps/activity/CommentSelfListActivity_;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/CommentSelfListActivity;->loginOut(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
