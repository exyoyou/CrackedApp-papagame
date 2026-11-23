.class Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameDetialGiftMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$002(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;Lcom/wufan/user/service/protobuf/UserInfo;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$100(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_type()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$200(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->getGiftPackageOperation(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$100(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showDialog(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_0
    return-void
.end method
