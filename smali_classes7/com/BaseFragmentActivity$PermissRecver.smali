.class Lcom/BaseFragmentActivity$PermissRecver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/BaseFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissRecver"
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/BaseFragmentActivity;)V
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
    iput-object p1, p0, Lcom/BaseFragmentActivity$PermissRecver;->a:Lcom/BaseFragmentActivity;

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
    .locals 2
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
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "com.wufun.get.downFinish"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string p1, "gameid"

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/BaseFragmentActivity$PermissRecver;->a:Lcom/BaseFragmentActivity;

    .line 33
    .line 34
    invoke-static {p2, p1}, Lcom/BaseFragmentActivity;->access$000(Lcom/BaseFragmentActivity;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string v0, "com.wufun.get.permission"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    new-instance p1, Lcom/BaseFragmentActivity$m;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/BaseFragmentActivity$PermissRecver;->a:Lcom/BaseFragmentActivity;

    .line 49
    .line 50
    invoke-direct {p1, v0}, Lcom/BaseFragmentActivity$m;-><init>(Lcom/BaseFragmentActivity;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "permission"

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p1, Lcom/BaseFragmentActivity$m;->a:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "filePath"

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iput-object p2, p1, Lcom/BaseFragmentActivity$m;->b:Ljava/lang/String;

    .line 68
    .line 69
    new-instance p2, Landroid/os/Message;

    .line 70
    .line 71
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    iput v0, p2, Landroid/os/Message;->what:I

    .line 76
    .line 77
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/BaseFragmentActivity$PermissRecver;->a:Lcom/BaseFragmentActivity;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/BaseFragmentActivity;->access$100(Lcom/BaseFragmentActivity;)Landroid/os/Handler;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-wide/16 v0, 0x1f4

    .line 86
    .line 87
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_0
    return-void
.end method
