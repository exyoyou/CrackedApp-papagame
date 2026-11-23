.class Lcom/join/mgps/activity/CloudGameTimeActivity$a;
.super Lm6/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudGameTimeActivity;->openWebPage(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CloudGameTimeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudGameTimeActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CloudGameTimeActivity$a;->a:Lcom/join/mgps/activity/CloudGameTimeActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lm6/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEvent(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "event",
            "jsonParams"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lm6/d;->onEvent(Landroid/app/Activity;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/CloudGameTimeActivity$a;->a:Lcom/join/mgps/activity/CloudGameTimeActivity;

    .line 11
    .line 12
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/CloudGameTimeActivity;->onShowSignDialog(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
