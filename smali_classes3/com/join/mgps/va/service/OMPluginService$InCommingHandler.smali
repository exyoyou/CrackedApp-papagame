.class Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/va/service/OMPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InCommingHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/va/service/OMPluginService;


# direct methods
.method constructor <init>(Lcom/join/mgps/va/service/OMPluginService;)V
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
    iput-object p1, p0, Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;->a:Lcom/join/mgps/va/service/OMPluginService;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "_extra_game_id"

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, v1, Lcom/join/mgps/va/service/OMPluginService;->c:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 23
    .line 24
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/join/mgps/va/service/OMPluginService;->b:Landroid/os/Messenger;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    invoke-static {v0, v1}, Lcom/join/mgps/va/service/OMPluginService;->a(Lcom/join/mgps/va/service/OMPluginService;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x3

    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, v1, Lcom/join/mgps/va/service/OMPluginService;->c:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 49
    .line 50
    const-string v2, "_extra_pkg"

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iput-object v2, v1, Lcom/join/mgps/va/service/OMPluginService;->e:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 59
    .line 60
    const-string v2, "_extra_mod_version"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iput-object v2, v1, Lcom/join/mgps/va/service/OMPluginService;->j:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 69
    .line 70
    const-string v2, "_extra_mod_code"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iput v2, v1, Lcom/join/mgps/va/service/OMPluginService;->f:I

    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 79
    .line 80
    const-string v2, "_extra_mod_type"

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iput v2, v1, Lcom/join/mgps/va/service/OMPluginService;->g:I

    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 89
    .line 90
    const-string v2, "_extra_mod_info"

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v1, v2}, Lcom/join/mgps/va/service/OMPluginService;->c(Lcom/join/mgps/va/service/OMPluginService;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 100
    .line 101
    const-string v2, "_extra_mod_path"

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iput-object v2, v1, Lcom/join/mgps/va/service/OMPluginService;->d:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 110
    .line 111
    const-string v2, "_extra_user_id"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput v0, v1, Lcom/join/mgps/va/service/OMPluginService;->i:I

    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/va/service/OMPluginService$InCommingHandler;->a:Lcom/join/mgps/va/service/OMPluginService;

    .line 120
    .line 121
    iget-object v1, v0, Lcom/join/mgps/va/service/OMPluginService;->c:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/service/OMPluginService;->o(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method
