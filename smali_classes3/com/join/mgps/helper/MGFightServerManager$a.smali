.class Lcom/join/mgps/helper/MGFightServerManager$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/MGFightServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/helper/MGFightServerManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightServerManager;)V
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
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$000(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/helper/MGFightServerManager$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightServerManager$b;->b()V

    .line 18
    .line 19
    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v1, 0x1a

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-lt p1, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->getApSSID()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->getApSSID()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "papa_"

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 61
    .line 62
    invoke-static {v3}, Lcom/join/mgps/helper/MGFightServerManager;->access$200(Lcom/join/mgps/helper/MGFightServerManager;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/4 v2, 0x0

    .line 81
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eq p1, v0, :cond_3

    .line 92
    .line 93
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$100(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/Util/WifiUtils;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->getWifiApStateInt()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    const/16 v0, 0xd

    .line 104
    .line 105
    if-ne p1, v0, :cond_5

    .line 106
    .line 107
    :cond_3
    if-eqz v2, :cond_5

    .line 108
    .line 109
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$300(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$300(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/join/mgps/aidl/MGWifiServerThread;->shutDown()V

    .line 124
    .line 125
    .line 126
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 127
    .line 128
    new-instance v0, Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$400(Lcom/join/mgps/helper/MGFightServerManager;)Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    new-instance v2, Lcom/join/mgps/helper/MGFightServerManager$a$a;

    .line 135
    .line 136
    invoke-direct {v2, p0}, Lcom/join/mgps/helper/MGFightServerManager$a$a;-><init>(Lcom/join/mgps/helper/MGFightServerManager$a;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/aidl/MGWifiServerThread;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1, v0}, Lcom/join/mgps/helper/MGFightServerManager;->access$302(Lcom/join/mgps/helper/MGFightServerManager;Lcom/join/mgps/aidl/MGWifiServerThread;)Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 146
    .line 147
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$300(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/aidl/MGWifiServerThread;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/join/mgps/aidl/MGWifiServerThread;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightServerManager$a;->a:Lcom/join/mgps/helper/MGFightServerManager;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightServerManager;->access$600(Lcom/join/mgps/helper/MGFightServerManager;)Lcom/join/mgps/callbacks/g;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const/16 v0, 0x232e

    .line 167
    .line 168
    invoke-interface {p1, v0}, Lcom/join/mgps/callbacks/g;->a(I)V

    .line 169
    .line 170
    .line 171
    :goto_1
    return-void
.end method
