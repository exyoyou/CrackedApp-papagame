.class Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->joinAction(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$action",
            "val$id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$3;->this$1:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$3;->val$action:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$3;->val$id:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$3;->this$1:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$3;->val$action:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$3;->val$id:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$3;->this$1:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->access$000(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;)Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lcom/papa/sim/statistic/t;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
