.class Lcom/join/mgps/service/CommonService$LoginReceive;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginReceive"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;)V
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
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$LoginReceive;->a:Lcom/join/mgps/service/CommonService;

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
    .locals 1
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
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$LoginReceive;->a:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/service/CommonService;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$LoginReceive;->a:Lcom/join/mgps/service/CommonService;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/join/mgps/service/CommonService;->e:Landroid/content/Intent;

    .line 10
    .line 11
    const-string p2, "type"

    .line 12
    .line 13
    const-string v0, "11"

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$LoginReceive;->a:Lcom/join/mgps/service/CommonService;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/join/mgps/service/CommonService;->e:Landroid/content/Intent;

    .line 21
    .line 22
    const-string p2, "msg"

    .line 23
    .line 24
    const-string v0, "\u767b\u5f55\u5931\u8d25"

    .line 25
    .line 26
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$LoginReceive;->a:Lcom/join/mgps/service/CommonService;

    .line 30
    .line 31
    iget-object p2, p1, Lcom/join/mgps/service/CommonService;->e:Landroid/content/Intent;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method
