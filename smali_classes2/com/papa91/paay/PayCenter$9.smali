.class final Lcom/papa91/paay/PayCenter$9;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/paay/PayCenter;->lobbyPlayCheck(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/paay/PayListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gameId:Ljava/lang/String;

.field final synthetic val$role:Ljava/lang/String;

.field final synthetic val$roomId:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/paay/PayCenter$9;->val$uid:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/paay/PayCenter$9;->val$gameId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/paay/PayCenter$9;->val$token:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa91/paay/PayCenter$9;->val$role:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/papa91/paay/PayCenter$9;->val$roomId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "uid"

    .line 11
    .line 12
    iget-object v3, p0, Lcom/papa91/paay/PayCenter$9;->val$uid:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v2, "game_id"

    .line 18
    .line 19
    iget-object v3, p0, Lcom/papa91/paay/PayCenter$9;->val$gameId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v2, "token"

    .line 25
    .line 26
    iget-object v3, p0, Lcom/papa91/paay/PayCenter$9;->val$token:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v2, "role"

    .line 32
    .line 33
    iget-object v3, p0, Lcom/papa91/paay/PayCenter$9;->val$role:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string v2, "room_id"

    .line 39
    .line 40
    iget-object v3, p0, Lcom/papa91/paay/PayCenter$9;->val$roomId:Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string v2, "http://anv3btapi.papa91.com/netbattle/lobby_play_check"

    .line 46
    .line 47
    invoke-static {v2, v0}, Lcom/papa91/paay/NetUtils;->getRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    new-instance v0, Lcom/papa91/paay/PayResponse;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/papa91/paay/PayResponse;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/papa91/paay/PayResponseData;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/papa91/paay/PayResponseData;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/papa91/paay/PayResponseData;->setBuy_error_message(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/papa91/paay/PayResponse;->setData(Lcom/papa91/paay/PayResponseData;)V

    .line 69
    .line 70
    .line 71
    const/4 v1, -0x1

    .line 72
    invoke-virtual {v0, v1}, Lcom/papa91/paay/PayResponse;->setError(I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/papa91/paay/PayCenter;->access$002(Lcom/papa91/paay/PayResponse;)Lcom/papa91/paay/PayResponse;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$300()Landroid/os/Handler;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$200()Lcom/google/gson/Gson;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-class v3, Lcom/papa91/paay/PayResponse;

    .line 92
    .line 93
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/papa91/paay/PayResponse;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/papa91/paay/PayCenter;->access$002(Lcom/papa91/paay/PayResponse;)Lcom/papa91/paay/PayResponse;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/papa91/paay/PayCenter;->access$300()Landroid/os/Handler;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    .line 108
    .line 109
    :goto_0
    return-void
.end method
