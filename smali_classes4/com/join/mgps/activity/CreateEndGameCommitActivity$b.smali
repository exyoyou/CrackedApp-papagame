.class Lcom/join/mgps/activity/CreateEndGameCommitActivity$b;
.super Lcom/papa91/arc/interfaces/DialogListenerWrap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onCreateSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CreateEndGameCommitActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CreateEndGameCommitActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$b;->a:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/interfaces/DialogListenerWrap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$b;->a:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onSystemTipClose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CreateEndGameCommitActivity$b;->a:Lcom/join/mgps/activity/CreateEndGameCommitActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/CreateEndGameCommitActivity;->onSystemTipClose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
