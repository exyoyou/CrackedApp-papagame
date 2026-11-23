.class Lcom/join/mgps/activity/SimulatorExitPlayActivity1$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->updateReward(Lcom/join/mgps/dto/ResponseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/Item;

.field final synthetic c:Lcom/join/mgps/activity/SimulatorExitPlayActivity1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;Lcom/join/mgps/dto/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$h;->c:Lcom/join/mgps/activity/SimulatorExitPlayActivity1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$h;->b:Lcom/join/mgps/dto/Item;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$h;->b:Lcom/join/mgps/dto/Item;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/Item;->getJumpUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorExitPlayActivity1$h;->c:Lcom/join/mgps/activity/SimulatorExitPlayActivity1;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {p1, v0}, Lcom/join/mgps/activity/SimulatorExitPlayActivity1;->access$002(Lcom/join/mgps/activity/SimulatorExitPlayActivity1;Z)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
