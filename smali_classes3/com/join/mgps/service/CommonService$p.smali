.class Lcom/join/mgps/service/CommonService$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/common/http/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->v(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/wufan/user/service/protobuf/UserInfo;

.field final synthetic e:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;ZLjava/lang/String;Ljava/lang/String;Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$fromSdk",
            "val$appkey",
            "val$gameid",
            "val$accountBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$p;->e:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/service/CommonService$p;->a:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/service/CommonService$p;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/service/CommonService$p;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/mgps/service/CommonService$p;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$p;->e:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/service/CommonService;->I1(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/dto/ResultMainBean;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/join/mgps/dto/PayGameDetialBean;

    .line 20
    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDetialBean;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "gameData"

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDetialBean;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$p;->e:Lcom/join/mgps/service/CommonService;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/join/mgps/service/CommonService$p;->a:Z

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    new-instance v0, Landroid/content/Intent;

    .line 55
    .line 56
    const-string v1, "com.join,mgps.sim.sdkgamePayfinish"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$p;->e:Lcom/join/mgps/service/CommonService;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/join/mgps/Util/x1;->c()Lcom/join/mgps/Util/x1;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$p;->e:Lcom/join/mgps/service/CommonService;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/join/mgps/service/CommonService;->j(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$p;->b:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$p;->c:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/x1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$p;->e:Lcom/join/mgps/service/CommonService;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDetialBean;->getGame_info()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/service/CommonService;->J1(Lcom/join/mgps/dto/CollectionBeanSub;Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$p;->e:Lcom/join/mgps/service/CommonService;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/join/mgps/service/CommonService$p;->c:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/dto/PayGameDetialBean;->getOrder_info()Lcom/join/mgps/dto/PayOrderInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v5, p0, Lcom/join/mgps/service/CommonService$p;->d:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 103
    .line 104
    iget-boolean v6, p0, Lcom/join/mgps/service/CommonService$p;->a:Z

    .line 105
    .line 106
    iget-object v7, p0, Lcom/join/mgps/service/CommonService$p;->b:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/service/CommonService;->O1(Ljava/lang/String;Lcom/join/mgps/dto/PayOrderInfo;Lcom/wufan/user/service/protobuf/UserInfo;ZLjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const-string v0, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    .line 113
    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_3

    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$p;->e:Lcom/join/mgps/service/CommonService;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/join/mgps/service/CommonService;->I1(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$p;->e:Lcom/join/mgps/service/CommonService;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lcom/join/mgps/service/CommonService;->I1(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_0
    return-void
.end method
