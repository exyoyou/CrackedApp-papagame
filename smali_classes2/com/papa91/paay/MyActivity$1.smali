.class Lcom/papa91/paay/MyActivity$1;
.super Lcom/papa91/paay/PaayReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/paay/MyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/paay/MyActivity;


# direct methods
.method constructor <init>(Lcom/papa91/paay/MyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/paay/MyActivity$1;->this$0:Lcom/papa91/paay/MyActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/paay/PaayReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/papa91/paay/MyActivity$1;->this$0:Lcom/papa91/paay/MyActivity;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "uid"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/papa91/paay/MyActivity;->uid:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/papa91/paay/MyActivity$1;->this$0:Lcom/papa91/paay/MyActivity;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string v0, "token"

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p1, Lcom/papa91/paay/MyActivity;->token:Ljava/lang/String;

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string p2, "uid="

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/papa91/paay/MyActivity$1;->this$0:Lcom/papa91/paay/MyActivity;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/papa91/paay/MyActivity;->uid:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, ";token="

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/papa91/paay/MyActivity$1;->this$0:Lcom/papa91/paay/MyActivity;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/papa91/paay/MyActivity;->token:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/papa91/paay/MyActivity$1;->this$0:Lcom/papa91/paay/MyActivity;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/papa91/paay/MyActivity;->lobbyPlayCheck()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
