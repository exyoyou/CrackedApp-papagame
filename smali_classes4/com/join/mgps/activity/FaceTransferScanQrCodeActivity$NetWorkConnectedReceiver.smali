.class Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetWorkConnectedReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

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
    .locals 3
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
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    const-string v0, "wifi_state"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v0, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->access$000()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 31
    .line 32
    iget-boolean v2, v0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->openWifi:Z

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->connectApWifi()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->access$000()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    const-string p1, "networkInfo"

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    check-cast p1, Landroid/net/NetworkInfo;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object p2, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$d;->a:[I

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    aget p1, p2, p1

    .line 72
    .line 73
    if-eq p1, v1, :cond_4

    .line 74
    .line 75
    const/4 p2, 0x4

    .line 76
    if-eq p1, p2, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-static {}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->access$000()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 92
    .line 93
    iget-object p2, p2, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/WifiUtils;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->access$000()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v0, "onReceive: wifi \u8fde\u63a5\u4e0a\u7684\u540d\u79f0"

    .line 108
    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    iget-object p2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 118
    .line 119
    iget-object p2, p2, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->SSID:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 128
    .line 129
    iget-boolean p2, p1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->hasConnectedWifi:Z

    .line 130
    .line 131
    if-nez p2, :cond_5

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->connected2Service()V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 137
    .line 138
    iput-boolean v1, p1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->hasConnectedWifi:Z

    .line 139
    .line 140
    :cond_5
    :goto_1
    return-void
.end method
