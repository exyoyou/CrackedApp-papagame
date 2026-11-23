.class Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->shareFromJson(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$1;->this$1:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$1;->val$json:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$1;->this$1:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$1;->val$json:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/w;->s(Landroid/content/Context;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
