.class Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->goBackUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;

.field final synthetic val$url:Ljava/lang/String;


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
            "val$url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$7;->this$1:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$7;->val$url:Ljava/lang/String;

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
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$7;->val$url:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$7;->this$1:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean;->this$0:Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment;->web:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/gamedetail/CommonWebviewFragment$WebJSPInterfaceMethedBean$7;->val$url:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJNestScrollWebView;->v(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
