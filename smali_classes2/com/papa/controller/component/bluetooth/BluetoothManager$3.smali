.class Lcom/papa/controller/component/bluetooth/BluetoothManager$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/component/bluetooth/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/papa/controller/component/bluetooth/BluetoothManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

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

    .line 1
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 2
    .line 3
    const-string v0, "btReceiver-onReceive"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->d(Lcom/papa/controller/component/bluetooth/BluetoothManager;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->f(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_7

    .line 27
    .line 28
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->p()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_7

    .line 35
    .line 36
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->g(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_7

    .line 47
    .line 48
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->h(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_7

    .line 55
    .line 56
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->x()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->s()V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_0
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_1
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_4

    .line 127
    .line 128
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_4

    .line 135
    .line 136
    const-string v0, "android.bluetooth.device.action.FOUND"

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    :cond_4
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 145
    .line 146
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 154
    .line 155
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->i(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Landroid/os/Handler;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-nez p1, :cond_6

    .line 160
    .line 161
    const/16 p1, 0x1f4

    .line 162
    .line 163
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->w(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->s()V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/BluetoothManager$3;->a:Lcom/papa/controller/component/bluetooth/BluetoothManager;

    .line 173
    .line 174
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/BluetoothManager;->i(Lcom/papa/controller/component/bluetooth/BluetoothManager;)Landroid/os/Handler;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    new-instance p2, Lcom/papa/controller/component/bluetooth/BluetoothManager$3$a;

    .line 179
    .line 180
    invoke-direct {p2, p0}, Lcom/papa/controller/component/bluetooth/BluetoothManager$3$a;-><init>(Lcom/papa/controller/component/bluetooth/BluetoothManager$3;)V

    .line 181
    .line 182
    .line 183
    const-wide/16 v0, 0x1f4

    .line 184
    .line 185
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    .line 187
    .line 188
    :cond_7
    :goto_1
    return-void
.end method
